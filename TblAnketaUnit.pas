unit TblAnketaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Spin, DB, DBTables, StrUtils, ExtCtrls, DateUtils,
  DBGridEh, DBCtrlsEh, DBLookupEh, NiceSettings, AppEvnts, FIBDataSet, pFIBDataSet;

type
  TFrmTblAnketa = class(TForm)
    BtnCancel: TButton;
    BtnOK: TButton;
    NiceSetFrmTblAnketa: TNiceSettings;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    DTPickDateBorn: TDateTimePicker;
    Label37: TLabel;
    PnlSex: TPanel;
    Label36: TLabel;
    RdBtnMale: TRadioButton;
    RdBtnFemale: TRadioButton;
    Label5: TLabel;
    DBLookupCBViewTown: TDBLookupComboboxEh;
    LblWarnTblTown: TLabel;
    Label30: TLabel;
    Label6: TLabel;
    EdtAdress: TEdit;
    Label16: TLabel;
    EdtPhone: TEdit;
    Label10: TLabel;
    CBSocial: TComboBox;
    Label38: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    AppEventsFrmAnketa: TApplicationEvents;
    EdtLastName: TDBEditEh;
    EdtFirstName: TDBEditEh;
    EdtThirdName: TDBEditEh;
    DSetMRUAnketa: TpFIBDataSet;
    BtnHlp: TButton;
    LblKeyBrdLayot: TLabel;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure DBLookupCBViewTownEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdtAdressKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmAnketaShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure EdtLastNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLastNameChange(Sender: TObject);
    procedure EdtFirstNameChange(Sender: TObject);
    procedure EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckValidTables(Sender: TObject);
    procedure AddEdtAnketaControl(Sender: TObject);
    procedure CheckSymbolEdtEhStr(Sender: TDBEditEh);
    procedure CheckEdtEhEmpty(Sender: TDBEditEh; const MesStr: String);//проверяем "пустоту" Eh-эдитов
    procedure FillEdtEhMRULst(Sender: TDBEditEh);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblAnketa: TFrmTblAnketa;

implementation

uses
  MainAndrUnit, VarAndrUnit, TblPriceUnit,
  TblClinicUnit, TblDoctorUnit, TblTownUnit, StatusPatUnit,
  ReseachLuesUnit, StLocalisTemplUnit, StPraesensTemplUnit, DMFIBUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormShow(Sender: TObject);
begin
AddEdtAnketaControl(Sender);//проверяем, чем заполнять контроллы (добавить-редактировать)
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnOKClick(Sender: TObject);
begin
(***** проверяем заполнение обязательных полей *****)
//проверяем эдиты
if Trim(EdtLastName.Text) = ''
  then CheckEdtEhEmpty(EdtLastName, 'Вы не указали ФАМИЛИЮ пациента!');

if Trim(EdtFirstName.Text) = ''
  then CheckEdtEhEmpty(EdtFirstName, 'Вы не указали ИМЯ пациента!');

if Trim(EdtThirdName.Text) = ''
  then CheckEdtEhEmpty(EdtThirdName, 'Вы не указали ОТЧЕСТВО пациента!');

//проверяем значение DBLookUpCB для таблицы городов
if Trim(DBLookupCBViewTown.Text) = '' then
  begin
  Application.MessageBox('Вы не указали населенный пункт!', 'Внимание!',
                                 MB_OK + MB_ICONINFORMATION);
  if DBLookupCBViewTown.CanFocus then DBLookupCBViewTown.SetFocus;//фокус на LookUp
  Abort;
  end;


(***** Начинаем занесение значений в таблицу *****)

with DMFIB,DSetAnketa do
  begin
   if TblAnketaFlag//флаг помечен
    then
      Append//добавим запись
    else
      Edit;//редактируем запись

    FieldByName('Ank_LinkTown').Value:= DBLookupCBViewTown.KeyValue;
    FieldByName('AnkLastName').AsString:= Trim(EdtLastName.Text);
    FieldByName('AnkFirstName').AsString:= Trim(EdtFirstName.Text);
    FieldByName('AnkThirdName').AsString:= Trim(EdtThirdName.Text);
    FieldByName('Sex').AsInteger:= BoolConvertInt(RdBtnMale.Checked);
    FieldByName('AnkDateBorn').AsDateTime:= DTPickDateBorn.Date;
    FieldByName('AnkAdress').AsString:= Trim(EdtAdress.Text);
    FieldByName('AnkPhone').AsString:= Trim(EdtPhone.Text);
    FieldByName('Social').AsInteger:= CBSocial.ItemIndex;
  end;{with}

  try
    if DMFIB.DSetAnketa.CanModify then DMFIB.DSetAnketa.Post;//сохраняем изменения
    VarID_Tbl_Anketa:= DMFIB.DSetAnketa.FN('ID_ANKETA').AsInteger;//запоминаем эту запись
  except
    if DMFIB.DSetAnketa.CanModify then DMFIB.DSetAnketa.Cancel;//откатываем изменения
  end;{try..except}

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.AppEventsFrmAnketaShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) then
      begin
        if DBLookupCBViewTown.Focused then DBLookupCBViewTownEditButtons0Click(Self,Handled)
      end;

    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnOKClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmAnketa.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnCancelClick(Sender: TObject);
begin
//если какое либо из полей ввода не пустое
if (Length(Trim(EdtLastName.Text)) <> 0) or
      (Length(Trim(EdtFirstName.Text)) <> 0) or
          (Length(Trim(EdtThirdName.Text)) <> 0) or
              (Length(Trim(EdtAdress.Text)) <> 0) or
                  (Length(Trim(EdtPhone.Text)) <> 0) then
  begin
    if Application.MessageBox('Вновь введенные Вами данные или исправления будут отменены. Вы уверены, что хотите '
                         + 'закрыть окно?','Отмена изменения данных',MB_ICONINFORMATION + MB_YESNO) = IDNo
      then
        Exit; //если отказываемся закрывать окно, то выйдем из процедуры
  end;

Close;//иначе в любом случае закроем окно
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxAnketa);
end;

//----------------------------------------------------------------------------------
//проверяем справочники
procedure TFrmTblAnketa.CheckValidTables(Sender: TObject);
begin
//готовим LookUpCBoxViewTown
DMFIB.DSetTown.FullRefresh;//освежим таблицу

if not DMFIB.DSetTown.IsEmpty//если она не пустая
  then
    begin
    LblWarnTblTown.Visible:= False;//спрячем предупреждение
    if TblAnketaFlag
      //добавляется запись
      then DBLookupCBViewTown.KeyValue:=
                        DMFIB.DSetTown.FN('ID_TOWN').Value
      //редактируется запись
      else DBLookupCBViewTown.KeyValue:=
                        DMFIB.DSetAnketa.FN('ANK_LINKTOWN').Value;
    end {if..then}
  else //если таблица городов пустая
    begin
    LblWarnTblTown.Visible:= True;//покажем предупреждение
    DBLookupCBViewTown.Text:= '';//LookUp'у пустую строку
    end;{if..else}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.AddEdtAnketaControl(Sender: TObject);
begin

//проверяем справочники, соответствующие надписи и значения DBLookUpCB
CheckValidTables(Sender);

if TblAnketaFlag
  then //данные будут добавляться
    begin
      //очищаем эдиты
      EdtLastName.Clear;
      EdtFirstName.Clear;
      EdtThirdName.Clear;
      EdtAdress.Clear;
      EdtPhone.Clear;
      RdBtnMale.Checked:= True;//по умолчанию это мужик
      DTPickDateBorn.Date:= Today;//пикеру текущую дату
      CBSocial.ItemIndex:= 0;

      if EdtLastName.CanFocus then EdtLastName.SetFocus;//фокус в первый эдит
    end {if..then}
  else //данные будут редактироваться
    with DMFIB, DSetAnketa do
      begin
        EdtLastName.Text:= Trim(FieldByName('AnkLastName').AsString);
        EdtFirstName.Text:= Trim(FieldByName('AnkFirstName').AsString);
        EdtThirdName.Text:= Trim(FieldByName('AnkThirdName').AsString);
        RdBtnMale.Checked:= IntConvertBool(FieldByName('Sex').AsInteger);
        RdBtnFemale.Checked:= not IntConvertBool(FieldByName('Sex').AsInteger);
        DTPickDateBorn.Date:= FieldByName('AnkDateBorn').AsDateTime;
        EdtAdress.Text:= Trim(FieldByName('AnkAdress').AsString);
        CBSocial.ItemIndex:= FieldByName('Social').AsInteger;
        EdtPhone.Text:= Trim(FieldByName('AnkPhone').AsString);
      end;{with}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.DBLookupCBViewTownEditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
FrmMainProg.ActTblTownExecute(Sender);//откроем таблицу городов
//обновим DBLookUp  городов
if not DMFIB.DSetTown.IsEmpty//если она не пустая
        then
          begin
          LblWarnTblTown.Visible:= False;//спрячем предупреждение
          DBLookupCBViewTown.KeyValue:= DMFIB.DSetTown.FieldByName('ID_TOWN').Value;
          end {if..then}
        else //если
          begin
          LblWarnTblTown.Visible:= True;//покажем предупреждение
          DBLookupCBViewTown.Text:= '';//LookUp'у пустую строку
          end;{if..else}
//обновим DBLookUp
DBLookupCBViewTown.ListSource:= nil;
DBLookupCBViewTown.ListSource:= DMFIB.DSTown;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtLastNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtLastName);
UpFirstCharEhEdt(EdtLastName);
FillEdtEhMRULst(EdtLastName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtLastNameKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8) and (Key <> #13)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//  then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита '
//      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtFirstNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtFirstName);
UpFirstCharEhEdt(EdtFirstName);
FillEdtEhMRULst(EdtFirstName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
begin
//проверяем не являются
if (Key <> '-') and (Key <> #8) and (Key <> #13{Esc}) and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl}
  and (Key <> #27) and (Key <> #32{пробел}) and (Key <> #40) and (Key <> #41){круглые скобки}
    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
  then //проверяем на содержание символов латиницы и кириллицы
    if (not PrmIsLatinSymb(Key)) and (not PrmIsCyrillicSymb(Key)) then
      begin
        Beep;
        Application.MessageBox('Вы можете вводить только буквенные символы '
        + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
        Key:= #0;
      end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtThirdNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtThirdName);
UpFirstCharEhEdt(EdtThirdName);
FillEdtEhMRULst(EdtThirdName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8) and (Key <> #13) and (Key <> #32)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//  then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита, пробел '
//      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtAdressKeyPress(Sender: TObject; var Key: Char);
begin
//if not((Key < #60) or (Key > #126))
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы не можете вводить символы латинского алфавита!',
//       'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
//проверяем не являются
if (Key <> '-') and (Key <> #8{backspace}) and (Key <> #13{Enter}) and (Key <> '#') and (Key <> '№')
    and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl} and (Key <> '.') and (Key <> ',') and (Key <> '/')
      and (Key <> #27{Esc}) and (Key <> #32{пробел}) and (Key <> '(') and (Key <> ')')
        and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
    then //проверяем на содержание символов латиницы и кириллицы и цифр
      if (not PrmIsLatinSymb(Key)) and (not PrmIsCyrillicSymb(Key) and (not PrmIsDigitSymb(Key))) then
        begin
          Beep;
          Application.MessageBox('Вы ввели некорректный символ!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
          Key:= #0;
        end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtPhoneKeyPress(Sender: TObject; var Key: Char);
begin
//if not (((Key < #60) or (Key > #90)) and ((Key < #96) or (Key > #122))) and (Key <> #8)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы не можете вводить символы латинского алфавита!',
//      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
if (Key <> '-') and (Key <> #8{backspace}) and (Key <> #13{Enter}) and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl}
    and (not PrmIsDigitSymb(Key)) and (Key <> #27{Esc}) and (Key <> #32{пробел}) and (Key <> '(') and (Key <> ')')
        and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
         then
          begin
            Beep;
            Application.MessageBox('Вы ввели некорректный символ!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
            Key:= #0;
          end;
end;

//----------------------------------------------------------------------------------
//определяем и анализируем первый символ Eh-эдита
procedure TFrmTblAnketa.CheckEdtEhEmpty(Sender: TDBEditEh; const MesStr: String);
begin
Application.MessageBox(PChar(MesStr), 'Внимание!', MB_OK + MB_ICONINFORMATION);
TDBEditEh(Sender).Clear;
if TDBEditEh(Sender).CanFocus then TDBEditEh(Sender).SetFocus;
Abort;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.CheckSymbolEdtEhStr(Sender: TDBEditEh);
var FirstChar: String;
begin
FirstChar:= AnsiUpperCase(LeftStr(Trim(TDBEditEh(Sender).Text),1));
if (FirstChar = '-') or (FirstChar = 'Й') or (FirstChar = 'Ь') or (FirstChar = 'Ы')
    or (FirstChar = 'Ъ')
  then
    begin
      Application.MessageBox(PChar('В именах собственных первый символ на должен быть '''
      + FirstChar + ''' !'), 'Некорректные данные', MB_ICONINFORMATION);
      TDBEditEh(Sender).Clear;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormCreate(Sender: TObject);
begin
NiceSetFrmTblAnketa.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblAnketa.LoadSettings;

//восстанавливаем последнюю использовавшуюся раскладку
if PrmIsDigit(LblKeyBrdLayot.Caption) //если там цифра
  then // то анализируем и выставляем раскладку
    begin
      {"волшебные" цифры 68748313(дял русской клавы) и 67699721(для аглицкой) получены через }
      {функцию GetKeyboardLayout - см. метод OnClose этой формы}
      //67568647 german 407
      //4035316746 spain ?
      //68158480 italian 410
      //67696332 france ?
      
      case StrToInt(LblKeyBrdLayot.Caption) of
        68748313: LoadKeyboardLayout('00000419',KLF_ACTIVATE); //переключаемся на кириллицу
        else// в противном случае будет латиница
          LoadKeyboardLayout('00000409',KLF_ACTIVATE);//переключаемся на латиницу
      end;
    end
  else //иначе поставим по дефолту русскую, а реестре сохраним ту, которая будет на момент закрытия окна
    LoadKeyboardLayout('00000419',KLF_ACTIVATE);//переключаемся на русскую раскладку клавиатуры

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------
//заполняем MRU-лист первыми 20 подходящими значениями из базы данных
procedure TFrmTblAnketa.FillEdtEhMRULst(Sender: TDBEditEh);
var FldName: string;
begin
if (DMFIB.DSetAnketa.IsEmpty) or (Length(Trim(TDBEditEh(Sender).Text)) < 3) then
  begin
    TDBEditEh(Sender).MRUList.CloseUp(True);//схлопываем MRU-лист
    TDBEditEh(Sender).MRUList.Active:= False;//отключаем MRU-лист
    Exit;//уходим, т.к. не из чего выбирать или потенциально слишком большой выбор
  end;

  //выбираем поле, которое будем подставлять в MRU-лист
  case TDBEditEh(Sender).Tag of
    1: FldName:= 'ANKLASTNAME';
    2: FldName:= 'ANKFIRSTNAME';
    3: FldName:= 'ANKTHIRDNAME';
  end;

with DSetMRUAnketa do
 begin
   if Active then Close;
   SQLs.SelectSQL.Text:= //выбираем 10 первых наиболее подходящих записей
        'SELECT FIRST 10 DISTINCT ' + FldName + ' ' +
        'FROM TBL_ANKETA ' +
        'WHERE LOWER(' + FldName + ') STARTING WITH :prmStr ' +
        'ORDER BY 1';
   Prepare;
   ParamByName('prmStr').Value:= AnsiLowerCase(Trim(TDBEditEh(Sender).Text));
   Open;
 end;

//если датасет пуст, то опять разговора не получится
if DSetMRUAnketa.IsEmpty then Exit;

//устанавливаем опции и заполняем MRU-лист значениями
with TDBEditEh(Sender).MRUList do
  begin
    Active:= True;//включаем MRU-лист
    Items.Clear;//чистим MRU-лист
    Rows:= 10;//показываем только 10 строк
  end;


DSetMRUAnketa.First;//встаем в начало списка

while not DSetMRUAnketa.Eof do
  begin
    TDBEditEh(Sender).MRUList.Add(Trim(DSetMRUAnketa.FN(FldName).AsString));
    DSetMRUAnketa.Next;
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

//сохраняем параметры формы
NiceSetFrmTblAnketa.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
