unit TblRecomUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  MemTableEh, DataDriverEh, AppEvnts;

type
  TFrmTblRecom = class(TForm)
    PnlCaption: TPanel;
    LblCapt: TLabel;
    PnlEdtTblRecom: TPanel;
    Label1: TLabel;
    EdtRecomStr: TEdit;
    PnlViewTblRecom: TPanel;
    SpBtnRecomAdd: TSpeedButton;
    SpBtnRecomEdit: TSpeedButton;
    SpBtnRecomDelete: TSpeedButton;
    Lbl2: TLabel;
    Lbl1: TLabel;
    DBGridTblRecom: TDBGridEh;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    PpMnuTblRecom: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblRecom: TNiceSettings;
    PnlChoiceTblRecom: TPanel;
    LblWarning: TLabel;
    BtnHlp: TButton;
    DBGridChoiceRecom: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    dsdChoiceTblRecom: TDataSetDriverEh;
    MTEChoiceTblRecom: TMemTableEh;
    DSChoiceTblRecom: TDataSource;
    DSetChoiceTblRecom: TpFIBDataSet;
    dsdViewTblRecom: TDataSetDriverEh;
    MTEViewTblRecom: TMemTableEh;
    DSViewTblRecom: TDataSource;
    AppEventsRecom: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnRecomAddClick(Sender: TObject);
    procedure SpBtnRecomEditClick(Sender: TObject);
    procedure SpBtnRecomDeleteClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure DBGridTblRecomDblClick(Sender: TObject);
    procedure DBGridTblRecomDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblRecomCellClick(Column: TColumnEh);
    procedure DBGridChoiceRecomDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridTblRecomDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridTblRecomDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceRecomDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceRecomDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsRecomShortCut(var Msg: TWMKey; var Handled: Boolean);
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
  FrmTblRecom: TFrmTblRecom;

implementation

uses VarAndrUnit, MainAndrUnit, StatusPatUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblRecom.Visible:= True;
PnlViewTblRecom.Enabled:= False;//отключим панель
FrmMainProg.SwitchGrid(DBGridTblRecom,False);//отключим грид слева
FrmMainProg.SwitchGrid(DBGridChoiceRecom,False);//отключим грид справа

//отключим кнопки редактирования
SpBtnRecomAdd.Enabled:= False;
SpBtnRecomEdit.Enabled:= False;
SpBtnRecomDelete.Enabled:= False;

//отключаем и "обесцвечиваем" кнопки редактирования
BtnClose.Visible:= False;
BtnChoice.Visible:= False;

//то же  для кнопок перемещения записей
BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblRecomFlag
  then LblCapt.Caption:= 'Добавьте рекомендацию в список'//нажата кнопка "Добавить"
  else LblCapt.Caption:= 'Отредактируйте текст рекомендации';//нажата кнопка "Редактировать"

if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;//фокус в строку

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= 'Список рекомендаций';//название заголовка
PnlEdtTblRecom.Visible:= False;//прячем панель редактирования
PnlViewTblRecom.Enabled:= True;//включаем панель с таблицей

//включаем кнопки
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
SpBtnRecomAdd.Enabled:= True;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//множ.выбор добавим, если форма открыта для выбора
if RecomChoiceBtn
  then DBGridTblRecom.Options:= DBGridTblRecom.Options + [dgMultiSelect]
  else DBGridTblRecom.Options:= DBGridTblRecom.Options - [dgMultiSelect];

Lbl1.Visible:= RecomChoiceBtn;//покажем совет, если будем выбирать
Lbl2.Visible:= RecomChoiceBtn;//покажем совет, если будем выбирать

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);//контроллируем отображение кнопок

with DMFIB, DSetRecom do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblRecom, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceRecom, not IsEmpty);//включим грид выбранных рекомендаций
  end;

if DBGridTblRecom.CanFocus then
  begin
    DBGridTblRecom.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
//    DBGridTblRecom.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblRecom.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblRecom.DefaultApplySorting;
  end;

FormResize(Sender);//перерисуем кнопки и надписи   
end;
 
//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmTblRecom.SaveSettings;

if DMFIB.DSetRecom.Active then DMFIB.DSetRecom.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormResize(Sender: TObject);
begin
LblCapt.Left:= (ClientWidth - LblCapt.Width) div 2;//центрируем заголовок
with LblWarning do
  begin
    Parent:= DBGridTblRecom;
    Left:= (DBGridTblRecom.Width - Width) div 2;
    Top:= DBGridTblRecom.Height div 2;
  end;

//перемещаем кнопки на "рабочие" места
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//полная ширина формы
    TmpSQLTxt: String;
begin
NiceSetFrmTblRecom.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblRecom.LoadSettings;

FrmLongWidth:= Self.Width;//запомним ширину формы в DesignTime

//если форма открыта для просмотра без права выбора, то "укорачиваем" ее
if not RecomChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblRecom.Width;//укорачиваем форму
      Self.Caption:= 'Список рекомендаций';
    end
  else //иначе все отображаем, как в Design Time
    begin
      Self.Width:= FrmLongWidth;

      //рисуем заголовок в зависимости от пола
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //если это мужчина
            Self.Caption:= 'Выбор рекомендаций (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //если это женщина
            Self.Caption:= 'Выбор рекомендаций (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblRecom.Visible:= RecomChoiceBtn;//показываем доп.панельку в зависимости от множественности выбора
FocusFlag:= True;

//запросы для обоих датасетов
with DMFIB.DSetRecom do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_RECOM, RECOMSTR, ROLE_NAME, USR_NAME FROM TBL_RECOM ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) '
                                             + 'or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
    Prepare;
  end;

with DSetChoiceTblRecom do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_RECOM, RECOMSTR, ROLE_NAME, USR_NAME FROM TBL_RECOM ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) and (1=2))'
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2)';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
    Prepare;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormShow(Sender: TObject);
begin
FrmTblRecom.Caption:= 'Список рекомендаций';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomAddClick(Sender: TObject);
begin
TblRecomFlag:= True;
BtnEdtRecOff(Sender);

EdtRecomStr.Clear;
if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomEditClick(Sender: TObject);
begin
TblRecomFlag:= False;
BtnEdtRecOff(Sender);

DMFIB.DSetRecom.Locate('ID_RECOM',MTEViewTblRecom['ID_RECOM'],[]);//сопоставим курсор с гридом
EdtRecomStr.Text:= Trim(DMFIB.DSetRecom.FieldByName('RecomStr').AsString);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomDeleteClick(Sender: TObject);
begin
if Application.MessageBox('Вы уверены, что хотите удалить данную рекомендацию из списка?',
                          'Внимание!', MB_ICONINFORMATION + MB_YESNO)= IDNo
  then Exit
  else
    try
      if DMFIB.DSetRecom.IsEmpty then Exit;

      DMFIB.DSetRecom.Locate('ID_RECOM',MTEViewTblRecom['ID_RECOM'],[]);//сопоставим курсор с гридом
      DMFIB.DSetRecom.Delete;
    except
      Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    end;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnChoiceClick(Sender: TObject);
var FullTxt: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> если ничего не выбрано
if DBGridChoiceRecom.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('Не выбрано ни одной строки. Для выбора перенесите рекомендации '
                  + 'из таблицы слева в таблицу справа кнопками, расположенными между ними, или перетащите '
                  + 'мышкой. Для множественного выбора рекомендаций в левой таблице удерживайте нажатой клавишу '
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

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;

        Lines.Add('Рекомендовано: ');
        SelStart:= 0;
        SelLength:= Length(Trim('Рекомендовано: '));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= SelLength;
        SelAttributes.Assign(DefAttributes);

      end;

    //"складываем" выбранные строки в рич-эдит

    with MTEChoiceTblRecom do
      begin
        First;//переход в начало набора

        while not Eof do  //пока не достигли конца меморитабли
          begin
            FullTxt:= '- ' + Trim(FieldByName('RecomStr').AsString);
            TmpRE.Lines.Add(FullTxt);//добавляем строку в рич-эдит
            Next;//переход к следующей записи
          end;

      end;

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextRecom;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст списка рекомендаций
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextRecom:= FullTxt //смело изменяем "форматную" текстовую переменную
      else//если что-то содержит
        if TextRecom <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный текст списка рекомендаций ' +
               'сейчас будет заменен на вновь сформированный текст. Разрешить замену?',
               'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextRecom:= FullTxt;//заменяем, если ответ "Да"

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.AppEventsRecomShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //имитируем нажатие "горячих" клавиш
    if RecomChoiceBtn then //если форма открыта для выбора
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridTblRecom.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridChoiceRecom.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnRtnOneClick(Self);
              end;
        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then BtnRtnAllClick(Self);
      end;

    //анализируем ситуацию на форме, реагируем клавишами по-разному
    if PnlEdtTblRecom.Visible
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

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnRecomAdd.Enabled then SpBtnRecomAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnRecomEdit.Enabled then SpBtnRecomEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnRecomDelete.Enabled then SpBtnRecomDeleteClick(Self);

  end;
//чтобы другие формы не реагировали по этому событию
AppEventsRecom.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetRecom.Modified then DMFIB.DSetRecom.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnSaveClick(Sender: TObject);
begin
//контроллируем отсутствие "пустых" записей
if (Trim(EdtRecomStr.Text) = '')
  then
    begin
      if Application.MessageBox('Вы не заполнили строку с рекомендацией. Будете '
                              + 'заполнять?', 'Неполные данные',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
          if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;
      Exit;
    end;

  try
    with DMFIB,DSetRecom do
    begin
      if State = dsBrowse then//если набор в режиме чтения
      begin
        if TblRecomFlag //флаг помечен
          then Insert //добавляем запись
          else Edit;  // редактируем запись
        FieldByName('RecomStr').AsString:= Trim(EdtRecomStr.Text);

        if DSetRecom.Modified then DSetRecom.Post;
      end;
    end;{with}
  except
    DMFIB.DSetRecom.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDblClick(Sender: TObject);
begin
//SpBtnRecomEditClick(Sender);
end;

//----------------------------------------------------------------------------
procedure TFrmTblRecom.DBGridTblRecomCellClick(Column: TColumnEh);
begin
// не позволяем юзеру редактировать или удалять рекомендацию из таблицы,
// если "работает" множественный выбор
//SpBtnRecomEdit.Enabled:= not (DBGridTblRecom.SelectedRows.Count > 1);
//SpBtnRecomDelete.Enabled:= not (DBGridTblRecom.SelectedRows.Count > 1);

//отображаем кнопку выбора соответственно наличию выделенных записей
//при условии, что форма открыта для выбора
//if RecomChoiceBtn
//  then
//    BtnChoice.Visible:= (DBGridTblRecom.SelectedRows.Count > 0)
//  else
//    BtnChoice.Visible:= False;

SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblRecom.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblRecom.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblRecom.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblRecom.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblRecom.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.ActivatingControlls(Sender: TObject);
begin
//переоткрываем все наборы
DMFIB.DSetRecom.FullRefresh;
DSetChoiceTblRecom.FullRefresh;

if MTEViewTblRecom.Active then MTEViewTblRecom.Close;
MTEViewTblRecom.Open;

if MTEChoiceTblRecom.Active then MTEChoiceTblRecom.Close;
MTEChoiceTblRecom.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SwitchOnOffBtn(Sender: TObject);
begin
if RecomChoiceBtn //если форма открыта для множественного выбора
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblRecom.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblRecom.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);

      //отображаем кнопку выбора соответственно наличию в правом гриде выбранных записей
      BtnChoice.Visible:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);
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
SpBtnRecomEdit.Enabled:= ((DBGridTblRecom.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblRecom.SelectedRows.Count > 1)));
SpBtnRecomDelete.Enabled:= ((DBGridTblRecom.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblRecom.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceRecom.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceRecom.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridChoiceRecom.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceRecom.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridChoiceRecom.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceRecom) and RecomChoiceBtn //и форма открыта для множ.выбора
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceRecom then
    begin
      DBGridTblRecom.DataSource.DataSet.DisableControls;
      DBGridChoiceRecom.DataSource.DataSet.DisableControls;
      DBGridTblRecom.SaveBookmark;
      if DBGridChoiceRecom.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceRecom.SelectedRows.Count-1 do
          begin
            DBGridChoiceRecom.DataSource.DataSet.Bookmark := DBGridChoiceRecom.SelectedRows[I];
            DBGridTblRecom.DataSource.DataSet.Append;
            DBGridTblRecom.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblRecom.DataSource.DataSet.FieldCount-1 do
              DBGridTblRecom.DataSource.DataSet.Fields[j].Value := DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value;

            DBGridTblRecom.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceRecom.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceRecom.DataSource.DataSet.First;

            while  not DBGridChoiceRecom.DataSource.DataSet.EOF do
              begin
                DBGridTblRecom.DataSource.DataSet.Append;
                DBGridTblRecom.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblRecom.DataSource.DataSet.FieldCount-1 do
                  DBGridTblRecom.DataSource.DataSet.Fields[j].Value := DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value;

                DBGridTblRecom.DataSource.DataSet.Post;
                DBGridChoiceRecom.DataSource.DataSet.Delete;
              end;
            DBGridChoiceRecom.Selection.Clear;
          end;
      DBGridTblRecom.RestoreBookmark;
      DBGridChoiceRecom.SelectedRows.Delete;
      DBGridChoiceRecom.DataSource.DataSet.Refresh;
      DBGridChoiceRecom.DataSource.DataSet.EnableControls;
      DBGridTblRecom.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblRecom) and RecomChoiceBtn //и форма открыта для множ.выбора
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblRecom then
    begin
      DBGridChoiceRecom.DataSource.DataSet.DisableControls;
      DBGridTblRecom.DataSource.DataSet.DisableControls;
      DBGridChoiceRecom.SaveBookmark;

      if DBGridTblRecom.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblRecom.SelectedRows.Count-1 do
            begin
              DBGridTblRecom.DataSource.DataSet.Bookmark := DBGridTblRecom.SelectedRows[I];
              DBGridChoiceRecom.DataSource.DataSet.Append;
              DBGridChoiceRecom.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceRecom.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value := DBGridTblRecom.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceRecom.DataSource.DataSet.Post;
            end
        else
          if DBGridTblRecom.Selection.SelectionType = gstAll then
            begin
              DBGridTblRecom.DataSource.DataSet.First;
              while  not DBGridTblRecom.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceRecom.DataSource.DataSet.Append;
                  DBGridChoiceRecom.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceRecom.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value := DBGridTblRecom.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceRecom.DataSource.DataSet.Post;
                  DBGridTblRecom.DataSource.DataSet.Delete;
                end;
              DBGridTblRecom.Selection.Clear;
            end;

      DBGridChoiceRecom.RestoreBookmark;
      DBGridTblRecom.SelectedRows.Delete;
      DBGridTblRecom.DataSource.DataSet.Refresh;
      DBGridTblRecom.DataSource.DataSet.EnableControls;
      DBGridChoiceRecom.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblRecom,DBGridChoiceRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxRecom);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblRecom,DBGridChoiceRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceRecom,DBGridTblRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceRecom,DBGridTblRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
