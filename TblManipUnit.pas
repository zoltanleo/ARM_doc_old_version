unit TblManipUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  DataDriverEh, MemTableEh, AppEvnts;

type
  TFrmTblManip = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblManip: TPanel;
    PnlViewTblManip: TPanel;
    LblCapt: TLabel;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    SpBtnManipAdd: TSpeedButton;
    SpBtnManipEdit: TSpeedButton;
    SpBtnManipDelete: TSpeedButton;
    DBGridTblManip: TDBGridEh;
    Lbl1: TLabel;
    Lbl2: TLabel;
    EdtManipName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtManipUse: TEdit;
    Label3: TLabel;
    EdtManipCure: TEdit;
    LblWarning: TLabel;
    PpMnuTblManip: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblManip: TNiceSettings;
    PnlChoiceTblManip: TPanel;
    DBGridChoiceManip: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    MTEChoiceTblManip: TMemTableEh;
    dsdChoiceTblManip: TDataSetDriverEh;
    MTEViewTblManip: TMemTableEh;
    dsdViewTblManip: TDataSetDriverEh;
    DSChoiceTblManip: TDataSource;
    DSViewTblManip: TDataSource;
    DSetChoiceTblManip: TpFIBDataSet;
    AppEventsManip: TApplicationEvents;
    BtnHlp: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnManipAddClick(Sender: TObject);
    procedure SpBtnManipEditClick(Sender: TObject);
    procedure SpBtnManipDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure DBGridTblManipDblClick(Sender: TObject);
    procedure DBGridTblManipDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblManipCellClick(Column: TColumnEh);
    procedure DBGridChoiceManipDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridTblManipDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridTblManipDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceManipDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceManipDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsManipShortCut(var Msg: TWMKey; var Handled: Boolean);
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
  FrmTblManip: TFrmTblManip;

implementation

uses VarAndrUnit, MainAndrUnit, StatusPatUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmTblManip.SaveSettings;

if DMFIB.DSetManip.Active then DMFIB.DSetManip.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//центрируем заголовок
with LblWarning do
  begin
  Parent:= DBGridTblManip;
  Left:= (DBGridTblManip.Width - LblWarning.Width) div 2;//центрируем предупреждение
  Top:= DBGridTblManip.Height div 2;//центрируем предупреждение по высоте
  end;

//перемещаем кнопки на "рабочие" места
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//полная ширина формы
    TmpSQLTxt: String;
begin
NiceSetFrmTblManip.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblManip.LoadSettings;

FrmLongWidth:= Self.Width;//запомним ширину формы в DesignTime

//если форма открыта для просмотра без права выбора, то "укорачиваем" ее
if not ManipChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblManip.Width;//укорачиваем форму
      Self.Caption:= 'Перечень манипуляций и процедур';
    end
  else //иначе все отображаем, как в Design Time
    begin
      Self.Width:= FrmLongWidth;

      //рисуем заголовок в зависимости от пола
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //если это мужчина
            Self.Caption:= 'Выбор манипуляций и процедур (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //если это женщина
            Self.Caption:= 'Выбор манипуляций и процедур (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblManip.Visible:= ManipChoiceBtn;//показываем доп.панельку в зависимости от множественности выбора


//прописываем селекты для базовых наборов
with DMFIB.DSetManip do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_MANIP, MANIPNAME, MANIPUSE, MANIPCURE, ROLE_NAME, USR_NAME '
    + 'FROM TBL_MANIP ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
  end;

with DSetChoiceTblManip do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_MANIP, MANIPNAME, MANIPUSE, MANIPCURE, ROLE_NAME, USR_NAME '
    + 'FROM TBL_MANIP ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) and (1=2)) '
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormShow(Sender: TObject);
begin
FrmTblManip.Caption:= 'Список лечебных манипуляций и процедур';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblManip.Visible:= True;
PnlViewTblManip.Enabled:= False;

//отключаем и "обесцвечиваем" кнопки редактирования
BtnClose.Visible:= False;
BtnChoice.Visible:= False;

SpBtnManipAdd.Enabled:= False;
SpBtnManipEdit.Enabled:= False;
SpBtnManipDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;
LblWarning.Font.Color:= clGray;

if TblManipFlag
  then LblCapt.Caption:= 'Добавьте название новой манипуляции'//нажата кнопка "Добавить"
  else LblCapt.Caption:= 'Отредактируйте название манипуляции';//нажата кнопка "Редактировать"

FrmMainProg.SwitchGrid(DBGridTblManip, False);
FrmMainProg.SwitchGrid(DBGridChoiceManip, False);

FormResize(Sender);  
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= 'Перечень манипуляций';//название заголовка
PnlEdtTblManip.Visible:= False;//прячем панель редактирования
PnlViewTblManip.Enabled:= True;//включаем панель с таблицей

//включаем кнопки редактирования
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
SpBtnManipAdd.Enabled:= True;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;
LblWarning.Font.Color:= clRed;

//множ.выбор добавим, если форма открыта для выбора
if ManipChoiceBtn
  then DBGridTblManip.Options:= DBGridTblManip.Options + [dgMultiSelect]
  else DBGridTblManip.Options:= DBGridTblManip.Options - [dgMultiSelect];

Lbl1.Visible:= ManipChoiceBtn;//покажем совет, если будем выбирать
Lbl2.Visible:= ManipChoiceBtn;//покажем совет, если будем выбирать

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);

with DMFIB, DSetManip do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblManip, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceManip, not IsEmpty);
  end;

if DBGridTblManip.CanFocus then
  begin
    DBGridTblManip.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
//    DBGridTblManip.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblManip.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblManip.DefaultApplySorting;
  end;
FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipAddClick(Sender: TObject);
begin
TblManipFlag:= True;
BtnEdtRecOff(Sender);

EdtManipName.Clear;
EdtManipUse.Clear;
EdtManipCure.Clear;

if EdtManipName.CanFocus then EdtManipName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipEditClick(Sender: TObject);
begin
TblManipFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetManip do
  begin
    Locate('ID_MANIP',MTEViewTblManip['ID_MANIP'],[]);//сопоставим курсор с гридом
    EdtManipName.Text:= Trim(FieldByName('ManipName').AsString);
    EdtManipUse.Text:= Trim(FieldByName('ManipUse').AsString);
    EdtManipCure.Text:= Trim(FieldByName('ManipCure').AsString);
  end;{with}

if EdtManipName.CanFocus then EdtManipName.SetFocus;  
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipDeleteClick(Sender: TObject);
begin
if Application.MessageBox('Вы уверены, что хотите удалить данную манипуляцию (процедуру)'
                        + ' из справочника?', 'Внимание!',
                                                    MB_ICONINFORMATION + MB_YESNO)= IDNo
  then Exit
  else
    try
      if DMFIB.DSetManip.IsEmpty then Exit;

      DMFIB.DSetManip.Locate('ID_MANIP',MTEViewTblManip['ID_MANIP'],[]);//сопоставим курсор с гридом
      DMFIB.DSetManip.Delete;
    except
      Application.MessageBox(Pchar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.AppEventsManipShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //имитируем нажатие "горячих" клавиш
    if ManipChoiceBtn then //если форма открыта для выбора
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblManip.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridTblManip.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblManip.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
              then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblManip.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridChoiceManip.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnRtnOneClick(Self);
              end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblManip.Visible) //иначе в режиме редактирования работают кнокпи перемещения записей
              then BtnRtnAllClick(Self);
      end;

    //анализируем ситуацию на форме, реагируем клавишами по-разному
    if PnlEdtTblManip.Visible
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

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnManipAdd.Enabled then SpBtnManipAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnManipEdit.Enabled then SpBtnManipEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnManipDelete.Enabled then SpBtnManipDeleteClick(Self);
  end;

//чтобы другие формы не реагировали по этому событию
AppEventsManip.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetManip.Modified then DMFIB.DSetManip.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnSaveClick(Sender: TObject);
begin
//контроллируем отсутствие "пустых" записей
with FrmMainProg do
  begin
    if Trim(EdtManipName.Text) = '' then CheckEdtEmpty(EdtManipName,
                                        'Вы не ввели название манипуляции (процедуры)!');
    if Trim(EdtManipUse.Text) = '' then CheckEdtEmpty(EdtManipUse,
                                            'Вы не указали кратность приема процедуры!');
    if Trim(EdtManipCure.Text) = '' then CheckEdtEmpty(EdtManipCure,
                                            'Вы не указали длительность курса лечения!');
  end;

  try
    with DMFIB,DSetManip do
    begin
      if State = dsBrowse then//если набор в режиме чтения
      begin
        if TblManipFlag //флаг помечен
          then Insert //добавляем запись
          else Edit;  // редактируем запись

        FieldByName('ManipName').AsString:= Trim(EdtManipName.Text);
        FieldByName('ManipUse').AsString:= Trim(EdtManipUse.Text);
        FieldByName('ManipCure').AsString:= Trim(EdtManipCure.Text);

        if DSetManip.Modified then DSetManip.Post;
      end;
    end;{with}
  except
    DMFIB.DSetManip.Cancel;
    Application.MessageBox(Pchar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipCellClick(Column: TColumnEh);
begin
// не позволяем юзеру редактировать или удалять процедуру из таблицы,
// если "работает" множественный выбор
//SpBtnManipEdit.Enabled:= not (DBGridTblManip.SelectedRows.Count > 1);
//SpBtnManipDelete.Enabled:= not (DBGridTblManip.SelectedRows.Count > 1);

SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDblClick(Sender: TObject);
begin
//SpBtnManipEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnChoiceClick(Sender: TObject);
var TmpTxt, FullTxt: String;
    TmpRE: TRichEdit;
begin
// ---> если ничего не выбрано

if DBGridChoiceManip.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('Не выбрано ни одной строки. Для выбора перенесите манипуляции '
                  + 'из таблицы слева в таблицу справа кнопками, расположенными между ними, или перетащите '
                  + 'мышкой. Для множественного выбора манипуляций в левой таблице удерживайте нажатой клавишу '
                  + '<Ctrl>. Хотите повторить попытку?', 'Внимание', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          Exit //вернемся в форму
        else
          begin
           Close;
           Exit;
          end; //закроем форму
    end;

// ---> если выбрано не меньше одной строки

FullTxt:= '';
TmpTxt:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;

        Lines.Add('Манипуляции: ');
        SelStart:= 0;
        SelLength:= Length(Trim('Манипуляции: '));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= SelLength;
        SelAttributes.Assign(DefAttributes);
      end;

    //"складываем" выбранные строки в рич-эдит
    with MTEChoiceTblManip do
      begin
        First;//переходим в начало набора

        while not Eof do
          begin
            FullTxt:= '- ' + Trim(FieldByName('ManipName').AsString) + ' '
                    + Trim(FieldByName('ManipCure').AsString) + ' '
                    + Trim(FieldByName('ManipUse').AsString);

            TmpRE.Lines.Add(FullTxt);//добавляем строку в рич-эдит
            Next;//следующая запись
          end;

      end;

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextManip;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст списка манипуляций
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextManip:= FullTxt //смело изменяем "форматную" текстовую переменную
      else//если что-то содержит
        if TextManip <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный текст списка манипуляций ' +
               'сейчас будет заменен на вновь сформированный текст. Разрешить замену?',
               'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextManip:= FullTxt;//заменяем, если ответ "Да"

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblManip.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblManip.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblManip.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblManip.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblManip.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.ActivatingControlls(Sender: TObject);
begin
//переоткрываем все наборы
DMFIB.DSetManip.FullRefresh;
DSetChoiceTblManip.FullRefresh;

if MTEViewTblManip.Active then MTEViewTblManip.Close;
MTEViewTblManip.Open;

if MTEChoiceTblManip.Active then MTEChoiceTblManip.Close;
MTEChoiceTblManip.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SwitchOnOffBtn(Sender: TObject);
begin
if ManipChoiceBtn //если форма открыта для множественного выбора
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblManip.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblManip.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);

      //отображаем кнопку выбора соответственно наличию в правом гриде выбранных записей
      BtnChoice.Visible:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);
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
SpBtnManipEdit.Enabled:= ((DBGridTblManip.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblManip.SelectedRows.Count > 1)));
SpBtnManipDelete.Enabled:= ((DBGridTblManip.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblManip.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceManip.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceManip.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridChoiceManip.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceManip.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridChoiceManip.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceManip) and ManipChoiceBtn //и форма открыта для множ.выбора
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceManip then
    begin
      DBGridTblManip.DataSource.DataSet.DisableControls;
      DBGridChoiceManip.DataSource.DataSet.DisableControls;
      DBGridTblManip.SaveBookmark;
      if DBGridChoiceManip.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceManip.SelectedRows.Count-1 do
          begin
            DBGridChoiceManip.DataSource.DataSet.Bookmark := DBGridChoiceManip.SelectedRows[I];
            DBGridTblManip.DataSource.DataSet.Append;
            DBGridTblManip.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblManip.DataSource.DataSet.FieldCount-1 do
              DBGridTblManip.DataSource.DataSet.Fields[j].Value := DBGridChoiceManip.DataSource.DataSet.Fields[j].Value;

            DBGridTblManip.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceManip.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceManip.DataSource.DataSet.First;

            while  not DBGridChoiceManip.DataSource.DataSet.EOF do
              begin
                DBGridTblManip.DataSource.DataSet.Append;
                DBGridTblManip.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblManip.DataSource.DataSet.FieldCount-1 do
                  DBGridTblManip.DataSource.DataSet.Fields[j].Value := DBGridChoiceManip.DataSource.DataSet.Fields[j].Value;

                DBGridTblManip.DataSource.DataSet.Post;
                DBGridChoiceManip.DataSource.DataSet.Delete;
              end;
            DBGridChoiceManip.Selection.Clear;
          end;
      DBGridTblManip.RestoreBookmark;
      DBGridChoiceManip.SelectedRows.Delete;
      DBGridChoiceManip.DataSource.DataSet.Refresh;
      DBGridChoiceManip.DataSource.DataSet.EnableControls;
      DBGridTblManip.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblManip) and ManipChoiceBtn //и форма открыта для множ.выбора
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblManip then
    begin
      DBGridChoiceManip.DataSource.DataSet.DisableControls;
      DBGridTblManip.DataSource.DataSet.DisableControls;
      DBGridChoiceManip.SaveBookmark;

      if DBGridTblManip.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblManip.SelectedRows.Count-1 do
            begin
              DBGridTblManip.DataSource.DataSet.Bookmark := DBGridTblManip.SelectedRows[I];
              DBGridChoiceManip.DataSource.DataSet.Append;
              DBGridChoiceManip.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceManip.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceManip.DataSource.DataSet.Fields[j].Value := DBGridTblManip.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceManip.DataSource.DataSet.Post;
            end
        else
          if DBGridTblManip.Selection.SelectionType = gstAll then
            begin
              DBGridTblManip.DataSource.DataSet.First;
              while  not DBGridTblManip.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceManip.DataSource.DataSet.Append;
                  DBGridChoiceManip.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceManip.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceManip.DataSource.DataSet.Fields[j].Value := DBGridTblManip.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceManip.DataSource.DataSet.Post;
                  DBGridTblManip.DataSource.DataSet.Delete;
                end;
              DBGridTblManip.Selection.Clear;
            end;

      DBGridChoiceManip.RestoreBookmark;
      DBGridTblManip.SelectedRows.Delete;
      DBGridTblManip.DataSource.DataSet.Refresh;
      DBGridTblManip.DataSource.DataSet.EnableControls;
      DBGridChoiceManip.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblManip,DBGridChoiceManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxManip);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblManip,DBGridChoiceManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceManip,DBGridTblManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceManip,DBGridTblManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
