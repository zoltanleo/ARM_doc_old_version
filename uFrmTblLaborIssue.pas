unit uFrmTblLaborIssue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, GridsEh, DBGridEh, EhLibADO, DB,
  Menus, NiceSettings, Mask, DBCtrlsEh, FIBDataSet, pFIBDataSet, AppEvnts;

type
  TFrmTblLaborIssue = class(TForm)
    PnlBtnBar: TPanel;
    PnlEdtTblLaborIssue: TPanel;
    PnlViewTblLaborIssue: TPanel;
    BtnClose: TButton;
    LblLaborIssue: TLabel;
    GridEhTblLaborIssue: TDBGridEh;
    SpBtnDelLaborIssue: TSpeedButton;
    SpBtnAddLaborIssue: TSpeedButton;
    SpBtnEdtLaborIssue: TSpeedButton;
    PnlCapt: TPanel;
    LblCap: TLabel;
    LblEmptyWarn: TLabel;
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmTblLaborIssue: TNiceSettings;
    EdtLaborCodeLiter: TDBEditEh;
    EdtLaborIssue: TDBEditEh;
    LblCodeLiter: TLabel;
    AppEventsLaborIssue: TApplicationEvents;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormShow(Sender: TObject);
    procedure SpBtnAddLaborIssueClick(Sender: TObject);
    procedure SpBtnEdtLaborIssueClick(Sender: TObject);
    procedure SpBtnDelLaborIssueClick(Sender: TObject);
    procedure GridEhTblLaborIssueDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure GridEhTblLaborIssueDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtLaborCodeLiterKeyPress(Sender: TObject; var Key: Char);
    procedure AppEventsLaborIssueShortCut(var Msg: TWMKey; var Handled: Boolean);
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
  FrmTblLaborIssue: TFrmTblLaborIssue;

implementation

uses
  DMFIBUnit, MainAndrUnit, VarAndrUnit;

var
  DesTimeWidthEdtLaborIssue: Integer;//длина эдита в DesignTime
  TblLaborIssueFlag, FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

(**************** выключение кнопок редактирования ********************)
procedure TFrmTblLaborIssue.BtnEditRecOff(Sender: TObject);
begin
//меняем название заголовка соответственно моменту
if TblLaborIssueFlag
  then
    begin
      LblCap.Caption:= 'Введите новый раздел прайса и его литеру кода';
      EdtLaborIssue.Left:= EdtLaborCodeLiter.Left + EdtLaborCodeLiter.Width + 7;
      EdtLaborIssue.Width:= DesTimeWidthEdtLaborIssue;//задаем "конструкторскую" длину эдита
    end
  else
    begin
      LblCap.Caption:= 'Отредактируйте название раздела прайса';
      EdtLaborIssue.Left:= EdtLaborCodeLiter.Left;

      //растянем эдит на величину сдвига влево
      EdtLaborIssue.Width:= EdtLaborCodeLiter.Width + 7 + DesTimeWidthEdtLaborIssue;
    end;

LblCap.Left:= (ClientWidth - LblCap.Width) div 2;
LblEmptyWarn.Visible:= False;//отключим "пустое" предупреждение

//литеру кода не редактируем - только добавляем, поэтому прячем при редактировании
EdtLaborCodeLiter.Visible:= TblLaborIssueFlag;
LblCodeLiter.Visible:= TblLaborIssueFlag;//аналогично для поясняющего лейбла
LblLaborIssue.Left:= EdtLaborIssue.Left;//сдвигаем лейбл влево вслед за хозяином

//отключаем кнопки
BtnClose.Visible:= False;
SpBtnAddLaborIssue.Enabled:= False;
SpBtnEdtLaborIssue.Enabled:= False;
SpBtnDelLaborIssue.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

PnlEdtTblLaborIssue.Visible:= True;//показываем панель редактирования
if GridEhTblLaborIssue.Enabled then GridEhTblLaborIssue.Enabled:= False;//отключаем грид
if EdtLaborCodeLiter.Visible then
  begin
    if EdtLaborCodeLiter.CanFocus
      then
        EdtLaborCodeLiter.SetFocus //фокус на строку редактирования
      else
        if EdtLaborIssue.CanFocus then EdtLaborIssue.SetFocus;
  end;
end;

//----------------------------------------------------------------------------------

(**************** включение кнопок редактирования *********************)
procedure TFrmTblLaborIssue.BtnEditRecOn(Sender: TObject);
begin
//название заголовка
LblCap.Caption:= 'Список основных разделов базового прайса';
LblCap.Left:= (ClientWidth - LblCap.Width) div 2;

////включаем сами кнопки
BtnClose.Visible:= True;
SpBtnAddLaborIssue.Enabled:= True;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

with DMFIB,DSetLaborIssue do
  begin
    FullRefresh;
    SpBtnEdtLaborIssue.Enabled:= not IsEmpty;
    SpBtnDelLaborIssue.Enabled:= not IsEmpty;
    LblEmptyWarn.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(GridEhTblLaborIssue, not IsEmpty);
  end;

PnlEdtTblLaborIssue.Visible:= False;//спрячем панель редактирования

if not DMFIB.DSetLaborIssue.IsEmpty then
  begin
    if GridEhTblLaborIssue.CanFocus then GridEhTblLaborIssue.SetFocus;//фокус на сетку

    //включаем автосортировку по алфавиту
    GridEhTblLaborIssue.Columns[1].Title.SortMarker:= smUpEh;
    GridEhTblLaborIssue.Columns[1].Title.SetNextSortMarkerValue(False);
    GridEhTblLaborIssue.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------------

(****************** ограничение "растягиваемости" окна ****************)
procedure TFrmTblLaborIssue.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: Integer);
begin
//MinHeight:= 390;
//MinWidth:= 426;
//MaxHeight:= 500;
//MaxWidth:= 426;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.FormShow(Sender: TObject);
begin
BtnEditRecOn(Sender);//включим кнопки редактирования
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.SpBtnAddLaborIssueClick(Sender: TObject);
begin
TblLaborIssueFlag:= True;
BtnEditRecOff(Sender);
EdtLaborIssue.Clear;
EdtLaborCodeLiter.Clear;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.SpBtnEdtLaborIssueClick(Sender: TObject);
begin
TblLaborIssueFlag:= False;
BtnEditRecOff(Sender);
EdtLaborIssue.Text:= Trim(DMFIB.DSetLaborIssue.FieldByName('LABORISSUE_NAME').AsString);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.SpBtnDelLaborIssueClick(Sender: TObject);
begin
if Application.MessageBox(PChar('Вы уверены, что хотите удалить из базы данных раздел "'
                               + Trim(DMFIB.DSetLaborIssue.FN('LABORISSUE_NAME').AsString) + '" ?'),
                                                    'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYes
  then
    try
      if DMFIB.DSetLaborIssue.IsEmpty then Exit;
      DMFIB.DSetLaborIssue.Delete;
    except
      Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
      Exit;//вылетаем из процедуры
    end;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.GridEhTblLaborIssueDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridEhTblLaborIssue.DataSource.DataSet.RecNo mod 2 = 1
	then GridEhTblLaborIssue.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		GridEhTblLaborIssue.Canvas.Brush.Color:= clMoneyGreen;
		GridEhTblLaborIssue.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	GridEhTblLaborIssue.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.FormCreate(Sender: TObject);
begin
NiceSetFrmTblLaborIssue.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblLaborIssue.LoadSettings;

//освежим датасет
DMFIB.DSetLaborIssue.FullRefresh;

BtnCancel.Left:= BtnClose.Left;
DesTimeWidthEdtLaborIssue:= EdtLaborIssue.Width;//запомним начальную длину эдита

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.BtnSaveClick(Sender: TObject);
var TmpDSet: TpFIBDataSet;
begin
if Trim(EdtLaborCodeLiter.Text) = '' then
  begin
    Application.MessageBox('Вы не ввели литеру кода для данного раздела прайса',
                                                            'Неполные данные', MB_ICONINFORMATION);
    if EdtLaborCodeLiter.CanFocus then EdtLaborCodeLiter.SetFocus;
    Exit;
  end;

if Trim(EdtLaborIssue.Text) = '' then
  begin
    Application.MessageBox('Вы не ввели название базового раздела прайса',
                                                            'Неполные данные', MB_ICONINFORMATION);
    if EdtLaborIssue.CanFocus then EdtLaborIssue.SetFocus;
    Exit;
  end;

//проверим уникальность вводимых данных - создадим временный датасет, через него все и проверим
TmpDSet:= TpFIBDataSet.Create(Self);
  with TmpDSet do
    begin
      try
        //задаем параметры датасета
        Database:= DMFIB.Database;
        Transaction:= DMFIB.ReadTrans;
        AutoCommit:= True;

        //проверим уникальность литеры кода, только если запись добавляется
        if TblLaborIssueFlag then
          begin
            if TmpDSet.Active then TmpDSet.Close;
            SQLs.SelectSQL.Clear;
            SQLs.SelectSQL.Text:= 'SELECT LABORISSUE_CODELITER '
                                + 'FROM TBL_LABORISSUE '
                                + 'WHERE UPPER(LABORISSUE_CODELITER) = UPPER('''
                                                             + Trim(EdtLaborCodeLiter.Text) + ''')';
            Open;

            if not TmpDSet.IsEmpty then
              begin
                Application.MessageBox('Литера кода должна быть уникальной, а введенная Вами '
                                    +'значение литеры уже имеется в базе данных! Попробуйте ввести '
                                    + 'другое значение.','Неверные данные',MB_ICONINFORMATION);
                if EdtLaborCodeLiter.CanFocus then EdtLaborCodeLiter.SetFocus;
                Exit;
              end;
          end;

        //проверим уникальность названия раздела
        if TmpDSet.Active then TmpDSet.Close;
        SQLs.SelectSQL.Clear;
        SQLs.SelectSQL.Text:= 'SELECT LABORISSUE_NAME '
                            + 'FROM TBL_LABORISSUE '
                            + 'WHERE UPPER(LABORISSUE_NAME) = UPPER('''
                                                                + Trim(EdtLaborIssue.Text) + ''')';
        Open;

        if not TmpDSet.IsEmpty then
          begin
            Application.MessageBox('Наименование раздела должно быть уникальным вне зависимости '
                                 + 'от регистра букв, а введенная Вами название уже имеется в базе '
                                 + 'данных! Попробуйте ввести другое значение.',
                                                              'Неверные данные',MB_ICONINFORMATION);
            if EdtLaborIssue.CanFocus then EdtLaborIssue.SetFocus;
            Exit;
          end;
      finally
        Free;
      end;
    end;

with DMFIB, DSetLaborIssue do
begin
 if TblLaborIssueFlag //если нажата кнопка "Добавить"
  then
    begin
      Append;
      //литеру кода сохраняем только при добавлении - она нередактируема
      FN('LABORISSUE_CODELITER').AsString:= Trim(EdtLaborCodeLiter.Text);
    end
  else
    Edit;//нажата кнопка "Редактировать"

FN('LABORISSUE_NAME').AsString:= Trim(EdtLaborIssue.Text);

  try
    if DSetLaborIssue.Modified then Post;
  except
    if DSetLaborIssue.Modified then Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
  end;
end;{with}

BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.AppEventsLaborIssueShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblLaborIssue.Visible
      then
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnSave.Visible then BtnSaveClick(Self);
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);

          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnAddLaborIssue.Enabled
            then SpBtnAddLaborIssueClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnEdtLaborIssue.Enabled
            then SpBtnEdtLaborIssueClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDelLaborIssue.Enabled
            then SpBtnDelLaborIssueClick(Self);
        end;  
  end;
AppEventsLaborIssue.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetLaborIssue.Modified then DMFIB.DSetLaborIssue.Cancel;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.GridEhTblLaborIssueDblClick(Sender: TObject);
begin
if DMFIB.DSetLaborIssue.IsEmpty then Exit;
SpBtnEdtLaborIssueClick(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmTblLaborIssue.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblLaborIssue.EdtLaborCodeLiterKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < #65) or (Key > #90)) and ((Key < #97) or (Key > #122))
      and (Key <> #8) and (Key <> #46) and (Key <> #13) and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только символы латинского алфавита!',
       'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------------

end.
