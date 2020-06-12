unit TblDsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  MemTableEh, DataDriverEh, StrUtils, AppEvnts;

type
  TFrmTblDs = class(TForm)
    PnlCaption: TPanel;
    LblCapt: TLabel;
    PnlEdtTblDs: TPanel;
    Label1: TLabel;
    EdtDsName: TEdit;
    PnlViewTblDs: TPanel;
    SpBtnDsAdd: TSpeedButton;
    SpBtnDsEdit: TSpeedButton;
    SpBtnDsDelete: TSpeedButton;
    Lbl2: TLabel;
    Lbl1: TLabel;
    DBGridTblDs: TDBGridEh;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    Label2: TLabel;
    EdtDsNumber: TEdit;
    BitBtnMKBchoice: TBitBtn;
    PpMnuTblDs: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDs: TNiceSettings;
    BtnHlp: TButton;
    PnlChoiceTblDs: TPanel;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    DBGridChoiceTblDs: TDBGridEh;
    dsdViewTblDs: TDataSetDriverEh;
    MTEViewTblDs: TMemTableEh;
    MTEChoiceTblDs: TMemTableEh;
    dsdChoiceTblDs: TDataSetDriverEh;
    DSViewTblDs: TDataSource;
    DSChoiceTblDs: TDataSource;
    DSetChoiceTblDs: TpFIBDataSet;
    LblWarning: TLabel;
    AppEventsDs: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnDsAddClick(Sender: TObject);
    procedure SpBtnDsEditClick(Sender: TObject);
    procedure SpBtnDsDeleteClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure DBGridTblDsDblClick(Sender: TObject);
    procedure EdtDsNameChange(Sender: TObject);
    procedure DBGridTblDsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtnMKBchoiceClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblDsCellClick(Column: TColumnEh);
    procedure DBGridChoiceTblDsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridChoiceTblDsDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceTblDsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridTblDsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsDsShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure BtnEdtRecOn(Sender: TObject);
    procedure BtnEdtRecOff(Sender: TObject);
    procedure ActivatingControlls(Sender: TObject);
    procedure SwitchOnOffBtn(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
    FrmTblDs: TFrmTblDs;
    DsNumb, DsName, MKB_IDNUMBER: String;
    FocusFlag: Boolean;
    
implementation

uses VarAndrUnit, StatusPatUnit, MainAndrUnit, DMFIBUnit, MKBUnit;

var iii: integer;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblDs.Visible:= True;
PnlViewTblDs.Enabled:= False;

//отключаем и "обесцвечиваем" кнопки редактирования
BtnClose.Visible:= False;
BtnChoice.Visible:= False;
DBGridTblDs.Enabled:= False;

SpBtnDsAdd.Enabled:= False;
SpBtnDsEdit.Enabled:= False;
SpBtnDsDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

FrmMainProg.SwitchGrid(DBGridTblDs, False);
FrmMainProg.SwitchGrid(DBGridChoiceTblDs, False);

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDsFlag
  then LblCapt.Caption:= 'Добавьте в справочник новый диагноз'//нажата кнопка "Добавить"
  else LblCapt.Caption:= 'Отредактируйте формулировку диагноза';//нажата кнопка "Редактировать"

FormResize(Sender);

if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= 'Справочник диагнозов';//название заголовка
PnlEdtTblDs.Visible:= False;//прячем панель редактирования
PnlViewTblDs.Enabled:= True;//включаем панель с таблицей

//включаем кнопки редактирования
BtnClose.Visible:= True;
BtnChoice.Visible:= False;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//множ.выбор добавим, если форма открыта для выбора
if DsChoiceBtn
  then DBGridTblDs.Options:= DBGridTblDs.Options + [dgMultiSelect]
  else DBGridTblDs.Options:= DBGridTblDs.Options - [dgMultiSelect];

Lbl1.Visible:= DsChoiceBtn;//покажем совет, если будем выбирать
Lbl2.Visible:= DsChoiceBtn;//покажем совет, если будем выбирать

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);//контроллируем отображение кнопок

SpBtnDsAdd.Enabled:= True;

with DMFIB. DSetDs do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblDs, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceTblDs, not IsEmpty);//включим грид выбранных препаратов
  end;



if DBGridTblDs.CanFocus then
  begin
    DBGridTblDs.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
//    DBGridTblDs.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblDs.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblDs.DefaultApplySorting;
  end;

FormResize(Sender);//перерисуем окно со всеми надписями
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmTblDs.SaveSettings;

if DMFIB.DSetDs.Active then DMFIB.DSetDs.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//полная ширина формы
    TmpSQLTxt: String;
begin
NiceSetFrmTblDs.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblDs.LoadSettings;

FrmLongWidth:= Self.Width;//запомним ширину формы в DesignTime

//если форма открыта для просмотра без права выбора, то "укорачиваем" ее
if not DsChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblDs.Width;//укорачиваем форму
      Self.Caption:= 'Справочник диагнозов';
    end
  else //иначе все отображаем, как в Design Time
    begin
      Self.Width:= FrmLongWidth;

      //рисуем заголовок в зависимости от пола
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //если это мужчина
            Self.Caption:= 'Выбор диагноза (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //если это женщина
            Self.Caption:= 'Выбор диагноза (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblDs.Visible:= DsChoiceBtn;//показываем доп.панельку в зависимости от множественности выбора

DsNumb:= '';
DsName:='';
MKB_IDNUMBER:= '';

iii:= 0;
FocusFlag:= True;

//определяем текст датасетов и показываем каждому врачу данные согласно ролям и привилегиям
with DMFIB.DSetDs do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_DS, DS_MKB_IDNUMBER, DSNUMBER, DSNAME, ROLE_NAME, USR_NAME FROM TBL_DS ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) '
                                             + 'or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 4';
    Prepare;
  end;

with DSetChoiceTblDs do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_DS, DS_MKB_IDNUMBER, DSNUMBER, DSNAME, ROLE_NAME, USR_NAME FROM TBL_DS ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) '
                                                                + 'or (USR_NAME LIKE CURRENT_USER)) AND (1=2)) '
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 4';
    Prepare;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.ActivatingControlls(Sender: TObject);
begin
//переоткрываем все наборы
DMFIB.DSetDs.FullRefresh;
DSetChoiceTblDs.FullRefresh;

if MTEViewTblDs.Active then MTEViewTblDs.Close;
MTEViewTblDs.Open;

if MTEChoiceTblDs.Active then MTEChoiceTblDs.Close;
MTEChoiceTblDs.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormShow(Sender: TObject);
begin
FrmTblDs.Caption:= 'Справочник диагнозов';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormResize(Sender: TObject);
begin
LblCapt.Left:= (ClientWidth - LblCapt.Width) div 2;//центрируем заголовок
with LblWarning do
  begin
    Parent:= DBGridTblDs;//владелец
    //центрируем предупреждение
    Left:= (DBGridTblDs.Width - Width) div 2;//по горизонтали
    Top:= DBGridTblDs.Height div 3;//по вертикали
  end;

//перемещаем кнопки на "рабочие" места
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsAddClick(Sender: TObject);
begin
TblDsFlag:= True;
BtnEdtRecOff(Sender);

EdtDsName.Clear;
EdtDsNumber.Clear;
MKB_IDNUMBER:= '';

if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsEditClick(Sender: TObject);
begin
TblDsFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetDs do
  begin
    Locate('ID_DS',MTEViewTblDs['ID_DS'],[]);//сопоставим курсор с гридом
    EdtDsName.Text:= Trim(FieldByName('DsName').AsString);
    EdtDsNumber.Text:= Trim(FieldByName('DsNumber').AsString);
  end;{with}

  if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsDeleteClick(Sender: TObject);
begin
if Application.MessageBox('Вы уверены, что хотите удалить диагноз из справочника?',
                          'Внимание!', MB_ICONINFORMATION + MB_YESNO) = IDYES
  then
    begin
      if DMFIB.DSetDs.IsEmpty then Exit;
      DMFIB.DSetDs.Locate('ID_DS',MTEViewTblDs['ID_DS'],[]);//сопоставляем курсор с гридом
      try
        DMFIB.DSetDs.Delete;
      except
        Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
      end;
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnChoiceClick(Sender: TObject);
var TmpTxt, FullTxt, ID_text: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> если ничего не выбрано

if DBGridChoiceTblDs.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('Не выбрано ни одной строки. Для выбора перенесите нозологические формы'
                  + ' из таблицы слева в таблицу справа кнопками, расположенными между ними, или перетащите '
                  + 'мышкой. Для множественного выбора диагнозов в левой таблице удерживайте нажатой клавишу '
                  + '<Ctrl>. Хотите повторить попытку?', 'Внимание', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          Exit  //вернемся в форму
        else
          begin
           Close;
           Exit;
          end; //закроем форму
    end;

// ---> если выбрано не меньше одной строки
FullTxt:= '';
ID_text:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    //"складываем" выбранные строки в рич-эдит
    with MTEChoiceTblDs do
      begin
        First;//переходим в начало набора

        while not Eof do//пока не достигли конца меморитабли
          begin
            TmpTxt:= '';
            FullTxt:= FullTxt + Trim(FieldByName('DsName').AsString);

            if Trim(FieldByName('DsNumber').AsString) <> ''
              then TmpTxt:= ' [' + Trim(FieldByName('DsNumber').AsString) + ']';

            //проверяем точку в конце строки
            if RightStr(Trim(FullTxt),1) = '.'
              then //если точка есть
                FullTxt:= LeftStr(Trim(FullTxt), Length(Trim(FullTxt)) - 1); //обрежем ее

            FullTxt:= FullTxt + TmpTxt + '. ';

            if Trim(FieldByName('DS_MKB_IDNUMBER').AsString) <> ''
              then ID_text:= ID_text + '#' + Trim(FieldByName('DS_MKB_IDNUMBER').AsString) + '^';

            Next;//переходим к следующей записи
          end;
      end;

    TmpRE.Lines.Add('Ds: ' + Trim(FullTxt));//добавляем строку в рич-эдит

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextDs;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст списка диагнозов
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        begin
          TextDs:= FullTxt; //смело изменяем "форматную" текстовую переменную
          DsMKBnumberID:= Trim(ID_text);//добавляем список ID диагнозов
        end
      else//если что-то содержит
        if TextDs <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный текст со списком диагнозов ' +
               'сейчас будет заменен на вновь сформированный текст. Разрешить замену?',
               'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then
                begin
                  TextDs:= FullTxt;//заменяем, если ответ "Да"
                  DsMKBnumberID:= Trim(ID_text);
                end;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDs.Modified then DMFIB.DSetDs.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnSaveClick(Sender: TObject);
begin
//контроллируем отсутствие "пустых" записей
if (Trim(EdtDsName.Text) = '')
  then
    begin
      if Application.MessageBox('Вы не заполнили строку с диагнозом. Будете '
                              + 'заполнять?', 'Неполные данные',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
          if EdtDsName.CanFocus then EdtDsName.SetFocus;
      Exit;
    end;

  try
    with DMFIB,DSetDs do
    begin
      if State = dsBrowse then//если набор в режиме чтения
      begin
        if TblDsFlag //флаг помечен
          then Insert //добавляем запись
          else Edit;  // редактируем запись

        FieldByName('DsName').AsString:= Trim(EdtDsName.Text);
        FieldByName('DsNumber').AsString:= Trim(EdtDsNumber.Text);
        FN('DS_MKB_IDNUMBER').AsString:= Trim(MKB_IDNUMBER);

        if DSetDs.Modified then DSetDs.Post;
      end;{if .. State}
    end{with..do}
  except
    DMFIB.DSetDs.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsCellClick(Column: TColumnEh);
begin
// не позволяем юзеру редактировать или удалять диагноз из таблицы,
// если "работает" множественный выбор
//SpBtnDsEdit.Enabled:= not (DBGridTblDs.SelectedRows.Count > 1);
//SpBtnDsDelete.Enabled:= not (DBGridTblDs.SelectedRows.Count > 1);
SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDblClick(Sender: TObject);
begin
//SpBtnDsEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.EdtDsNameChange(Sender: TObject);
begin
UpFirstChar(EdtDsName);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDs.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDs.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblDs.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDs.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblDs.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.AppEventsDsShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then //если форма в фокусе
  begin
    //имитируем нажатие "горячих" клавиш
    if DsChoiceBtn then //если форма открыта для выбора
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridTblDs.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblDs.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
              then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridChoiceTblDs.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnRtnOneClick(Self);
              end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then BtnRtnAllClick(Self);
      end;

    //анализируем ситуацию на форме, реагируем клавишами по-разному
    if PnlEdtTblDs.Visible
      then //если находимся в режиме редактирования
        begin
          if GetKeyState(VK_ESCAPE) < 0 then BtnCancelClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
            begin
              if BtnChoice.Visible //если кнопка выбора не спрятана
                then
                  BtnChoiceClick(Self)
                else
                  BtnCloseClick(Self);
            end;
        end;

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnDsAdd.Enabled then SpBtnDsAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnDsEdit.Enabled then SpBtnDsEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDsDelete.Enabled then SpBtnDsDeleteClick(Self);
  end;

//чтобы другие формы не реагировали по этому событию
AppEventsDs.CancelDispatch;
end;

//----------------------------------------------------------------------------
//вызываем окно выбора болезней по МКБ-10
procedure TFrmTblDs.BitBtnMKBchoiceClick(Sender: TObject);
begin
with TFrmMKBView.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

if Trim(DsNumb) <> '' then
  EdtDsNumber.Text:= Trim(DsNumb);
if Trim(DsName) <> '' then
  EdtDsName.Text:= Trim(DsName);

BtnEdtRecOff(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SwitchOnOffBtn(Sender: TObject);
begin
if DsChoiceBtn //если форма открыта для множественного выбора
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblDs.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblDs.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);

      //отображаем кнопку выбора соответственно наличию в правом гриде выбранных записей
      BtnChoice.Visible:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);
    end {if DsChoiceBtn..then}
  else
    begin
      BtnFwdOne.Enabled:= False;
      BtnFwdAll.Enabled:= False;

      BtnRtnOne.Enabled:= False;
      BtnRtnAll.Enabled:= False;

      BtnChoice.Visible:= False;
    end; {if DsChoiceBtn.. else}

//кнопки редактирования и удаления записей из грида будут доступны, если грид не пустой
//и количество выбранных записей в текущий момент не больше одной
SpBtnDsEdit.Enabled:= ((DBGridTblDs.DataSource.DataSet.RecordCount > 0)
                                                                  and (not (DBGridTblDs.SelectedRows.Count > 1)));
SpBtnDsDelete.Enabled:= ((DBGridTblDs.DataSource.DataSet.RecordCount > 0)
                                                                  and (not (DBGridTblDs.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceTblDs.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceTblDs.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridChoiceTblDs.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceTblDs.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridChoiceTblDs.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblDs) and DsChoiceBtn //и форма открыта для множ.выбора
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblDs then
    begin
      DBGridChoiceTblDs.DataSource.DataSet.DisableControls;
      DBGridTblDs.DataSource.DataSet.DisableControls;
      DBGridChoiceTblDs.SaveBookmark;

      if DBGridTblDs.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblDs.SelectedRows.Count-1 do
            begin
              DBGridTblDs.DataSource.DataSet.Bookmark := DBGridTblDs.SelectedRows[I];
              DBGridChoiceTblDs.DataSource.DataSet.Append;
              DBGridChoiceTblDs.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceTblDs.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value := DBGridTblDs.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceTblDs.DataSource.DataSet.Post;
            end
        else
          if DBGridTblDs.Selection.SelectionType = gstAll then
            begin
              DBGridTblDs.DataSource.DataSet.First;
              while  not DBGridTblDs.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceTblDs.DataSource.DataSet.Append;
                  DBGridChoiceTblDs.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceTblDs.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value := DBGridTblDs.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceTblDs.DataSource.DataSet.Post;
                  DBGridTblDs.DataSource.DataSet.Delete;
                end;
              DBGridTblDs.Selection.Clear;
            end;

      DBGridChoiceTblDs.RestoreBookmark;
      DBGridTblDs.SelectedRows.Delete;
      DBGridTblDs.DataSource.DataSet.Refresh;
      DBGridTblDs.DataSource.DataSet.EnableControls;
      DBGridChoiceTblDs.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceTblDs) and DsChoiceBtn //и форма открыта для множ.выбора
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceTblDs then
    begin
      DBGridTblDs.DataSource.DataSet.DisableControls;
      DBGridChoiceTblDs.DataSource.DataSet.DisableControls;
      DBGridTblDs.SaveBookmark;
      if DBGridChoiceTblDs.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceTblDs.SelectedRows.Count-1 do
          begin
            DBGridChoiceTblDs.DataSource.DataSet.Bookmark := DBGridChoiceTblDs.SelectedRows[I];
            DBGridTblDs.DataSource.DataSet.Append;
            DBGridTblDs.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblDs.DataSource.DataSet.FieldCount-1 do
              DBGridTblDs.DataSource.DataSet.Fields[j].Value := DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value;

            DBGridTblDs.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceTblDs.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceTblDs.DataSource.DataSet.First;

            while  not DBGridChoiceTblDs.DataSource.DataSet.EOF do
              begin
                DBGridTblDs.DataSource.DataSet.Append;
                DBGridTblDs.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblDs.DataSource.DataSet.FieldCount-1 do
                  DBGridTblDs.DataSource.DataSet.Fields[j].Value := DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value;

                DBGridTblDs.DataSource.DataSet.Post;
                DBGridChoiceTblDs.DataSource.DataSet.Delete;
              end;
            DBGridChoiceTblDs.Selection.Clear;
          end;
      DBGridTblDs.RestoreBookmark;
      DBGridChoiceTblDs.SelectedRows.Delete;
      DBGridChoiceTblDs.DataSource.DataSet.Refresh;
      DBGridChoiceTblDs.DataSource.DataSet.EnableControls;
      DBGridTblDs.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblDs,DBGridChoiceTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxDs);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblDs,DBGridChoiceTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceTblDs,DBGridTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceTblDs,DBGridTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
