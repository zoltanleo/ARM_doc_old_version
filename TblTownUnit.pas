unit TblTownUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, GridsEh, DBGridEh, EhLibADO, DB,
  Menus, NiceSettings, AppEvnts;

type
  TFrmTblTown = class(TForm)
    PnlBtnBar: TPanel;
    PnlEdtTblTown: TPanel;
    PnlVisTblTown: TPanel;
    BtnClose: TButton;
    Label1: TLabel;
    DBGridEhTblTown: TDBGridEh;
    RBTown: TRadioButton;
    RBVillage: TRadioButton;
    EdtCity: TEdit;
    SpBtnDelTown: TSpeedButton;
    SpBtnAddTown: TSpeedButton;
    SpBtnEditTown: TSpeedButton;
    PnlCapt: TPanel;
    LblCap: TLabel;
    LblEmptyWarn: TLabel;
    BtnSave: TButton;
    BtnCancel: TButton;
    PpMnuTblTown: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblTown: TNiceSettings;
    AppEventsFrmTown: TApplicationEvents;
    BtnHlp: TButton;
    LblKeyBrdLayot: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnAddTownClick(Sender: TObject);
    procedure SpBtnEditTownClick(Sender: TObject);
    procedure SpBtnDelTownClick(Sender: TObject);
    procedure SpBtnCancelTownClick(Sender: TObject);
    procedure DBGridEhTblTownDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure EdtCityKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure DBGridEhTblTownDblClick(Sender: TObject);
    procedure EdtCityChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure AppEventsFrmTownShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure BtnEditRecOn(Sender: TObject);//включение кнопок редактирования
    procedure BtnEditRecOff(Sender: TObject);//выключение кнопок редактирования
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblTown: TFrmTblTown;

implementation

uses MainAndrUnit, TblAnketaUnit, TblClinicUnit, TblPriceUnit,
  VarAndrUnit, TblDoctorUnit, StatusPatUnit, DMFIBUnit, ConvUtils,
  FIBDataSet;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblTown.FormCreate(Sender: TObject);
begin
NiceSetFrmTblTown.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblTown.LoadSettings;
FrmTblTown.Caption:= 'Справочник городов';

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


BtnEditRecOn(Sender);//включим кнопки редактирования

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.FormResize(Sender: TObject);
begin
LblCap.Left:= (ClientWidth - LblCap.Width) div 2;
LblEmptyWarn.Visible:= DMFIB.DSetTown.IsEmpty;//включим-отключим "пустое" предупреждение

BtnCancel.Left:= BtnClose.Left;//перемещаем кнопку "на место"
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.BtnSaveClick(Sender: TObject);
begin
if Trim(EdtCity.Text) = ''
  then  FrmMainProg.CheckEdtEmpty(EdtCity,'Вы не ввели название населенного пункта!')
  else
    with DMFIB do
    begin
     if TblTownFlag //если нажата кнопка "Добавить"
      then DSetTown.Append
      else DSetTown.Edit;//нажата кнопка "Редактировать"

    DSetTown.FieldByName('TownVillage').AsString:= Trim(EdtCity.Text);
    if RBTown.Checked
      then DSetTown.FieldByName('CityCheck').AsInteger:= 1
      else DSetTown.FieldByName('CityCheck').AsInteger:= 0;

      try
        if DSetTown.Modified then DSetTown.Post;
      except
        if DSetTown.Modified then DSetTown.Cancel;
        Application.MessageBox(PChar(ErrorMsg),'Ошибка изменения данных',MB_ICONINFORMATION);
      end;
    end;{with}
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

(**************** выключение кнопок редактирования ********************)
procedure TFrmTblTown.BtnEditRecOff(Sender: TObject);
begin
//меняем название заголовка соответственно моменту
if TblTownFlag
  then LblCap.Caption:= 'Введите название населенного пункта'
  else LblCap.Caption:= 'Отредактируйте название населенного пункта';

//отключаем кнопки
BtnClose.Visible:= False;
SpBtnAddTown.Enabled:= False;
SpBtnEditTown.Enabled:= False;
SpBtnDelTown.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

PnlEdtTblTown.Visible:= True;//показываем панель редактирования
FrmMainProg.SwitchGrid(DBGridEhTblTown, False);//отключаем грид
if EdtCity.CanFocus then EdtCity.SetFocus;//фокус на строку редактирования

FormResize(Sender);
end;

//----------------------------------------------------------------------------------

(**************** включение кнопок редактирования *********************)
procedure TFrmTblTown.BtnEditRecOn(Sender: TObject);
begin
//название заголовка
LblCap.Caption:= 'Таблица населенных пунктов';

//включаем сами кнопки
BtnClose.Visible:= True;
SpBtnAddTown.Enabled:= True;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

with DMFIB,DSetTown do
  begin
    FullRefresh;
    SpBtnEditTown.Enabled:= not IsEmpty;
    SpBtnDelTown.Enabled:= not IsEmpty;
    LblEmptyWarn.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridEhTblTown, not IsEmpty);
  end;

PnlEdtTblTown.Visible:= False;//спрячем панель редактирования

  //включаем автосортировку по алфавиту
  DBGridEhTblTown.Columns[1].Title.SortMarker:= smUpEh;
  DBGridEhTblTown.Columns[1].Title.SetNextSortMarkerValue(False);
  DBGridEhTblTown.DefaultApplySorting;

FormResize(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxTown);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.FormShow(Sender: TObject);
begin
{}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.SpBtnAddTownClick(Sender: TObject);
begin
TblTownFlag:= True;
BtnEditRecOff(Sender);
EdtCity.Clear;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.SpBtnEditTownClick(Sender: TObject);
begin
TblTownFlag:= False;
BtnEditRecOff(Sender);
EdtCity.Text:= Trim(DMFIB.DSetTown.FieldByName('TownVillage').AsString);
if DMFIB.DSetTown.FieldByName('CityCheck').AsInteger = 1
  then RBTown.Checked:= True
  else RBVillage.Checked:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.SpBtnDelTownClick(Sender: TObject);
var TmpMes: String;
begin
TmpMes:= 'Вы уверены, что хотите удалить из базы данных населенный пункт "' +
          Trim(DMFIB.DSetTown.FieldByName('TownVillage').AsString) + '" ?';
//if Application.MessageBox(PChar(TmpMes), 'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYes
if Application.MessageBox(PChar('Вы уверены, что хотите удалить из базы данных населенный пункт "' +
          Trim(DMFIB.DSetTown.FieldByName('TownVillage').AsString) + '" ?'),
          'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYes
  then
    try
      if DMFIB.DSetTown.IsEmpty then Exit;
      DMFIB.DSetTown.Delete;
    except
      Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    end;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.SpBtnCancelTownClick(Sender: TObject);
begin
if DMFIB.DSetTown.Modified then DMFIB.DSetTown.Cancel;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.DBGridEhTblTownDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridEhTblTown.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridEhTblTown.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridEhTblTown.Canvas.Brush.Color:= clMoneyGreen;
		DBGridEhTblTown.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridEhTblTown.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.EdtCityKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < 'А') or (Key > 'я')) and (Key <> #32) and (Key <> #8) and (Key <> #13)  and (not(GetKeyState(VK_CONTROL) < 0))
//  and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('Вы можете вводить только символы русского алфавита !',
//      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
//проверяем не является ли нажатая клавиша той, которой не позволено быть нажатой
if (Key <> '-') and (Key <> #8) and (Key <> #32) and (Key <> #13) and (not(GetKeyState(VK_CONTROL) < 0)) and FocusFlag and (Key <> #27)
    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {заменяют соответственно Ctrl+C [или #3], Ctrl+V [или #22] и Ctrl+X [или #24]}
  then //проверяем на содержание символов латиницы и кириллицы
    if (not PrmIsLatinSymb(Key)) and (not PrmIsCyrillicSymb(Key)) then
      begin
        Beep;
        Application.MessageBox('Вы можете вводить только буквенные символы, пробелы '
        + 'и дефис!', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
        Key:= #0;
      end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.AppEventsFrmTownShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblTown.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Сохранить"
        end;

    //кнопки редактирования
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnAddTown.Enabled then SpBtnAddTownClick(Self);//добавляем
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnEditTown.Enabled then SpBtnEditTownClick(Self);//редактируем
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDelTown.Enabled then SpBtnDelTownClick(Self);//удаляем
  end;

//"спрячем" нажатие кнопарей от других форм
AppEventsFrmTown.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTown.Modified then DMFIB.DSetTown.Cancel;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.DBGridEhTblTownDblClick(Sender: TObject);
begin
if DMFIB.DSetTown.IsEmpty then Exit;
SpBtnEditTownClick(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.EdtCityChange(Sender: TObject);
begin
UpFirstChar(EdtCity);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblTown.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраним раскладку
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

//сохраняем параметры формы
NiceSetFrmTblTown.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
