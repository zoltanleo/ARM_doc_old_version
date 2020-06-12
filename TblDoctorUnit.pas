unit TblDoctorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, Buttons, DBLookupEh,
  Menus, NiceSettings, Mask, DBCtrlsEh, FIBDataSet, ComCtrls, QStrings, AppEvnts;

type
  TFrmTblDoctor = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblDoctor: TPanel;
    PnlViewTblDoctor: TPanel;
    PnlBtnBar: TPanel;
    BtnClose: TButton;
    LblCapt: TLabel;
    DBGridTblDoc: TDBGridEh;
    SpBtnDoctAdd: TSpeedButton;
    SpBtnDoctEdit: TSpeedButton;
    SpBtnDoctDelete: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtLastName: TEdit;
    EdtFirstName: TEdit;
    EdtThirdName: TEdit;
    Label4: TLabel;
    EdtProfil: TEdit;
    CBCategory: TComboBox;
    CBStepen: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    BtnCancel: TButton;
    BtnSave: TButton;
    LblWarning: TLabel;
    PpMnuTblDoctor: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDoctor: TNiceSettings;
    Label7: TLabel;
    CbBoxDocJob: TComboBox;
    Label8: TLabel;
    EdtContactPhone: TEdit;
    ChkBoxVisiblePhone: TCheckBox;
    Label10: TLabel;
    BtnConsultEdt: TButton;
    BtnDocHlp: TButton;
    AppEventsFrmDoctor: TApplicationEvents;
    LblKeyBrdLayot: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure SpBtnDoctAddClick(Sender: TObject);
    procedure SpBtnDoctEditClick(Sender: TObject);
    procedure SpBtnDoctDeleteClick(Sender: TObject);
    procedure DBGridTblDocDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure EdtLastNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProfilKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridTblDocDblClick(Sender: TObject);
    procedure EdtLastNameChange(Sender: TObject);
    procedure EdtFirstNameChange(Sender: TObject);
    procedure EdtThirdNameChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtContactPhoneChange(Sender: TObject);
    procedure BtnConsultEdtClick(Sender: TObject);
    procedure EdtContactPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProfilExit(Sender: TObject);
    procedure AppEventsFrmDoctorShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnDocHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPnlViewDoctor(Sender: TObject);
    procedure ShowPnlEdtDoctor(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblDoctor: TFrmTblDoctor;

implementation

uses MainAndrUnit, ReseachLuesUnit,
  StatusPatUnit, StPraesensTemplUnit, TblAnketaUnit, TblClinicUnit,
  TblPriceUnit, TblTownUnit, VarAndrUnit, DMFIBUnit, uFrmConsultation;

var PhoneNumFlag, //отслеживаем ввод телефона доктора
    ReturnEdtFlag //отслеживаем возврат к панели редактирования (чтоб не затирать введенные неправильно данные)
              : integer;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormShow(Sender: TObject);
begin
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
//MinWidth:= 680;
//MaxWidth:= 680;
//MinHeight:= 400;
//MaxHeight:= 650;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//центруем заголовок

with LblWarning do
  begin
    Parent:= DBGridTblDoc;
    Left:= (DBGridTblDoc.Width - LblWarning.Width) div 2;
    Top:= DBGridTblDoc.Height div 2;
  end;

end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.ShowPnlEdtDoctor(Sender: TObject);
begin
PnlEdtTblDoctor.Visible:= True;
PnlViewTblDoctor.Enabled:= False;
FrmMainProg.SwitchGrid(DBGridTblDoc, False);

BtnClose.Visible:= False;
SpBtnDoctAdd.Enabled:= False;
SpBtnDoctEdit.Enabled:= False;
SpBtnDoctDelete.Enabled:= False;
BtnConsultEdt.Visible:= False;
BtnDocHlp.Visible:= False;
EdtContactPhoneChange(Sender);//проверим, введен ли номер телефона

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDoctorFlag
  then
    begin
      LblCapt.Caption:= 'Введите данные врача';//нажата кнопка "Добавить"
      CbBoxDocJob.ItemIndex:= 1;

      if ReturnEdtFlag = 0 then //если вводим данные в первый раз, а не возвращаемся, чтобы их подправить
        begin
          EdtLastName.Clear;
          EdtFirstName.Clear;
          EdtThirdName.Clear;
          EdtContactPhone.Clear;
          EdtProfil.Clear;
        end;
      CBCategory.ItemIndex:= 0;
      CBStepen.ItemIndex:= 0;
      ChkBoxVisiblePhone.Checked:= False;
    end
  else
    begin
      LblCapt.Caption:= 'Отредактируйте данные врача';//нажата кнопка "Редактировать"
    with DMFIB.DSetDoctor do
      begin
        EdtLastName.Text:= Trim(FieldByName('Doc_LastName').AsString);
        EdtFirstName.Text:= Trim(FieldByName('Doc_FirstName').AsString);
        EdtThirdName.Text:= Trim(FieldByName('Doc_ThirdName').AsString);
        EdtContactPhone.Text:= Trim(FN('DOC_CONTACTPHONE').AsString);
        EdtProfil.Text:= Trim(FieldByName('Doc_Profil').AsString);
        CBCategory.ItemIndex:= FieldByName('Doc_Category').AsInteger;
        CBStepen.ItemIndex:= FieldByName('Doc_Stepen').AsInteger;
        CbBoxDocJob.ItemIndex:= FieldByName('DOC_STUFFSTATUS').AsInteger;
        ChkBoxVisiblePhone.Checked:= IntConvertBool(FN('DOC_PHONENUMBACCESS').AsInteger);
      end;{with..do}
    end;

if EdtLastName.CanFocus then EdtLastName.SetFocus;
LblWarning.Font.Color:= clGray;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.ShowPnlViewDoctor(Sender: TObject);
begin
LblCapt.Caption:= 'Таблица врачей ЛПУ';//название заголовка

PnlEdtTblDoctor.Visible:= False;//прячем панель редактирования
PnlViewTblDoctor.Enabled:= True;//включаем панель с таблицей

//включаем кнопки редактирования
BtnClose.Visible:= True;
SpBtnDoctAdd.Enabled:= True;
BtnDocHlp.Visible:= True;
BtnConsultEdt.Visible:= (SenderTag <> 668);

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;
LblWarning.Font.Color:= clRed;

FormResize(Sender);

with DMFIB, DSetDoctor do
  begin
    FullRefresh;//"освежаем" набор
    SpBtnDoctEdit.Enabled:= not IsEmpty;
    SpBtnDoctDelete.Enabled:= not IsEmpty;
    LblWarning.Visible:= IsEmpty;//спрячем предупреждение, если табля не пустая
    BtnConsultEdt.Enabled:= not IsEmpty;

    FrmMainProg.SwitchGrid(DBGridTblDoc, not IsEmpty);
  end;

if DBGridTblDoc.CanFocus then
  begin
    DBGridTblDoc.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
    DBGridTblDoc.Columns[0].Title.SortMarker:= smUpEh;
    DBGridTblDoc.Columns[0].Title.SetNextSortMarkerValue(False);
    DBGridTblDoc.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctAddClick(Sender: TObject);
begin
TblDoctorFlag:= True;
ShowPnlEdtDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctEditClick(Sender: TObject);
begin
TblDoctorFlag:= False;
ShowPnlEdtDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctDeleteClick(Sender: TObject);
var MesRez: Integer;
    TmpMes: String;
begin
with DMFIB.DSetDoctor do
  begin
  TmpMes:= 'Вы хотите, чтобы врач ' + Trim(FieldByName('Doc_LastName').AsString) + ' '
           + Trim(FieldByName('Doc_FirstName').AsString) + ' '
           + Trim(FieldByName('Doc_ThirdName').AsString) + ' был удален?';
  end;{with}
MesRez:= Application.MessageBox(PChar(TmpMes), 'Внимание!', MB_YESNO + MB_ICONQUESTION);
if  MesRez = IDYes then
  try
    DMFIB.DSetDoctor.Delete;
  except
    Application.MessageBox(Pchar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    Exit;//тихо гасим сгенерированные самой формой исключения
  end;
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.DBGridTblDocDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDoc.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDoc.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblDoc.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDoc.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblDoc.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnSaveClick(Sender: TObject);
var res: Integer;
    TmpText, TmpStepen, TmpCateg: String;
begin
(*************      проверяем заполнение эдитов      ***********************)
if Trim(EdtLastName.Text) = '' then
  begin
  Application.MessageBox('Вы не ввели ФАМИЛИЮ доктора!','Внимание!',MB_OK + MB_ICONINFORMATION);
  EdtLastName.Clear;
  if EdtLastName.CanFocus then EdtLastName.SetFocus;
  Exit;
  end;

if Trim(EdtFirstName.Text) = '' then
  begin
  Application.MessageBox('Вы не ввели ИМЯ доктора!','Внимание!',MB_OK + MB_ICONINFORMATION);
  EdtFirstName.Clear;
  if EdtFirstName.CanFocus then EdtFirstName.SetFocus;
  Exit;
  end;

if Trim(EdtThirdName.Text) = '' then
  begin
  Application.MessageBox('Вы не ввели ОТЧЕСТВО доктора!', 'Внимание!',MB_OK + MB_ICONINFORMATION);
  EdtThirdName.Clear;
  if EdtThirdName.CanFocus then EdtThirdName.SetFocus;
  Exit;
  end;

if PhoneNumFlag = 0 then //если еще не спрашивали про телефон
  begin
    if Trim(EdtContactPhone.Text) = '' then
      begin
        if Application.MessageBox('Вы не ввели НОМЕР ТЕЛЕФОНА доктора! Будете вводить?', 'Внимание!',
                                                               MB_YESNO + MB_ICONINFORMATION)= IDYes
            then
              begin
                PhoneNumFlag:= PhoneNumFlag + 1;
                EdtContactPhone.Clear;
                if EdtContactPhone.CanFocus then EdtContactPhone.SetFocus;
                Exit;
              end;
      end;
  end;

if Trim(EdtProfil.Text) = '' then
  begin
  Application.MessageBox('Вы забыли указать СПЕЦИАЛЬНОСТЬ врача!', 'Внимание!',
                                                                    MB_OK + MB_ICONINFORMATION);
  EdtProfil.Clear;
  if EdtProfil.CanFocus then EdtProfil.SetFocus;
  Exit;
  end;

(******************** анализируем списки ***********************************)
case CBStepen.ItemIndex of
 0 : TmpStepen:= '';
 1 : TmpStepen:= 'к.м.н., ';
 2 : TmpStepen:= 'д.м.н., ';
end;{case}

case CBCategory.ItemIndex of
 0 : TmpCateg:= '';
 1 : TmpCateg:= 'второй категории, ';
 2 : TmpCateg:= 'первой категории, ';
 3 : TmpCateg:= 'высшей категории, ';
end;{case}

(************ окончательно редактируем таблицу *********)
with DMFIB.DSetDoctor do
  begin
    if TblDoctorFlag //нажата кнопка "Добавить"
      then Append
      else Edit;//нажата кнопка "Редактировать"

    FieldByName('Doc_LastName').AsString:= Trim(EdtLastName.Text);
    FieldByName('Doc_FirstName').AsString:= Trim(EdtFirstName.Text);
    FieldByName('Doc_ThirdName').AsString:= Trim(EdtThirdName.Text);
    FN('DOC_CONTACTPHONE').AsString:= Trim(EdtContactPhone.Text);
    FieldByName('Doc_Profil').AsString:= Trim(EdtProfil.Text);
    FieldByName('Doc_Category').AsInteger:= CBCategory.ItemIndex;
    FieldByName('Doc_Stepen').AsInteger:= CBStepen.ItemIndex;
    FieldByName('DOC_STUFFSTATUS').AsInteger:= CbBoxDocJob.ItemIndex;
    FN('DOC_PHONENUMBACCESS').AsInteger:= BoolConvertInt(ChkBoxVisiblePhone.Checked);
  end;{with}

TmpText:= 'Введенные Вами в базу данных сведения о враче будут отражаться следующим '
          + 'образом:' + #13#10 + #13#10 + TmpStepen + 'врач ' + TmpCateg
          + Trim(EdtProfil.Text) + ' ' + Trim(EdtLastName.Text)
          + ' ' + Trim(EdtFirstName.Text) + ' ' + Trim(EdtThirdName.Text);


if Trim(EdtContactPhone.Text) <> '' then
  begin
    TmpText:= TmpText + #13#10 + 'контактный телефон: ' + Trim(EdtContactPhone.Text);
    if ChkBoxVisiblePhone.Checked
      then
        TmpText:=  TmpText + ' (только для служебного пользования)'
      else
        TmpText:= TmpText + ' (с возможностью показа пациентам)';
  end;

TmpText:= TmpText + #13#10 + #13#10 + 'Все правильно?'; 

res:= Application.MessageBox(PChar(TmpText),'Проверьте вводимые данные:', MB_YESNO
                                                                             + MB_ICONINFORMATION);

if res = IDYes
  then
    begin
      try
        if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Post;
      except
        if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
        Application.MessageBox(Pchar(ErrorMsg),'Ошибка изменения данных',MB_ICONINFORMATION);
      end;{try..except}
      ShowPnlViewDoctor(Sender);
      PhoneNumFlag:= 0;//сбрасываем флаг, чтобы в следующий раз опять спросить про телефон
      ReturnEdtFlag:= 0;//сбрасываем флаг, чтобы не затирать неверные данные в эдитах
    end{then}
  else
    begin
      if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
      ReturnEdtFlag:= ReturnEdtFlag + 1;
      ShowPnlEdtDoctor(Sender);
    end;{else}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormCreate(Sender: TObject);
begin
NiceSetFrmTblDoctor.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblDoctor.LoadSettings;

//восстанавливаем последнюю использовавшуюся раскладку
if PrmIsDigit(LblKeyBrdLayot.Caption) //если там цифра
  then // то анализируем и выставляем раскладку
    begin
      {"волшебные" цифры 68748313(для русской клавы) и 67699721(для аглицкой) получены через }
      {функцию GetKeyboardLayout - см. метод OnClose этой формы}
      case StrToInt(LblKeyBrdLayot.Caption) of
        68748313: LoadKeyboardLayout('00000419',KLF_ACTIVATE); //переключаемся на кириллицу
        else// в противном случае будет латиница
          LoadKeyboardLayout('00000409',KLF_ACTIVATE);//переключаемся на латиницу
      end;
    end
  else //иначе поставим по дефолту русскую, а реестре сохраним ту, которая будет на момент закрытия окна
    LoadKeyboardLayout('00000419',KLF_ACTIVATE);//переключаемся на русскую раскладку клавиатуры

BtnCancel.Left:= BtnClose.Left;
BtnCancel.Visible:= False;
BtnSave.Visible:= False;
PnlViewTblDoctor.Align:= alClient;
FrmTblDoctor.Caption:= 'Справочник врачей';

//инициализируем флаги
PhoneNumFlag:= 0;
ReturnEdtFlag:= 0;
FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.AppEventsFrmDoctorShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblDoctor.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Закрыть"

          //эмулируем нажатия клавиш редактирования грида
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnDoctAdd.Enabled then SpBtnDoctAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnDoctEdit.Enabled then SpBtnDoctEditClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnDoctDelete.Enabled then SpBtnDoctDeleteClick(Self);

          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0)) and BtnConsultEdt.Enabled and BtnConsultEdt.Visible
            then BtnConsultEdtClick(Self);
        end;
  end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmDoctor.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtLastNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8)
//  and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
//    and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита '
//      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;

//проверяем не является ли нажатая клавиша той, которой не позволено быть нажатой
if (Key <> '-') and (Key <> #8) and (Key <> #13) and (not(GetKeyState(VK_CONTROL) < 0)) and FocusFlag  and (Key <> #27)
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

procedure TFrmTblDoctor.EdtFirstNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> #8) and (not(GetKeyState(VK_CONTROL) < 0))
//  and (Key <> #27) and (Key <> #13) and FocusFlag
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита !',
//      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtThirdNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8) and (not(GetKeyState(VK_CONTROL) < 0))
//    and (Key <> #13) and (Key <> #27) and FocusFlag
//      and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита '
//      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtProfilKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8) and (Key <> #32)
//  and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
//    and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита, пробел '
//      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtContactPhoneKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> '-') and (Key <> #8) and (Key <> #32) and
      (Key <> '+') and (Key <> '(') and (Key <> ')') and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
        and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только цифры, круглые скобки, пробел '
      + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.DBGridTblDocDblClick(Sender: TObject);
begin
if DMFIB.DSetDoctor.IsEmpty then Exit;
SpBtnDoctEditClick(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtLastNameChange(Sender: TObject);
begin
UpFirstChar(EdtLastName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtFirstNameChange(Sender: TObject);
begin
UpFirstChar(EdtFirstName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtThirdNameChange(Sender: TObject);
begin
UpFirstChar(EdtThirdName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраним раскладку
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

//сохраняем параметры формы
NiceSetFrmTblDoctor.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtContactPhoneChange(Sender: TObject);
begin
ChkBoxVisiblePhone.Enabled:= (Trim(EdtContactPhone.Text) <> '');
end;

//----------------------------------------------------------------------------------
//вызов формы с расписанием врачей
procedure TFrmTblDoctor.BtnConsultEdtClick(Sender: TObject);
begin
TblConsultFlag:= True;

  with TFrmConsultation.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;

//переотобразим панель с таблей докторов
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnDocHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnDocHlp,HlpCtxDoctor);
end;

//----------------------------------------------------------------------------------
//удаляем слово "врач", если оно там есть
procedure TFrmTblDoctor.EdtProfilExit(Sender: TObject);
begin
  if Pos('врач',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0 then
    begin
      if Pos('врач ',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0
        then EdtProfil.Text:= Q_ReplaceText(Trim(EdtProfil.Text),'врач ','');
      if Pos('врач-',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0
        then EdtProfil.Text:= Q_ReplaceText(Trim(EdtProfil.Text),'врач-','');
      Application.MessageBox('Слово "врач" вводить не нужно','Автоматическая коррекция текста',
                                                                                MB_ICONINFORMATION);
    end;
end;

//----------------------------------------------------------------------------------

end.
