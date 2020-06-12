unit TblPaymentUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, Buttons, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, ComCtrls, Menus, NiceSettings, DB, FIBDataSet,
  pFIBDataSet, StrUtils, padegFIO, AppEvnts;

type
  TFrmPayment = class(TForm)
    PnlBtn: TPanel;
    PnlViewGrid: TPanel;
    DBGridTblPayment: TDBGridEh;
    SpBtnAddPayment: TSpeedButton;
    SpBtnEdtPayment: TSpeedButton;
    SpBtnDelPayment: TSpeedButton;
    PnlEdtValue: TPanel;
    DTPickPay: TDateTimePicker;
    CalcEdtChargeSum: TJvCalcEdit;
    CalcEdtPaySum: TJvCalcEdit;
    SpBtnCalcEdtChargeSum: TSpeedButton;
    RichEdtService: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblWarning: TLabel;
    BtnClose: TButton;
    BtnSave: TButton;
    BtnCancel: TButton;
    LblSubCaption: TLabel;
    PpMnuTblPayment: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmPayment: TNiceSettings;
    DSetPmtTmp: TpFIBDataSet;
    AppEventsFrmTblPayment: TApplicationEvents;
    BtnHlp: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure SpBtnAddPaymentClick(Sender: TObject);
    procedure SpBtnEdtPaymentClick(Sender: TObject);
    procedure SpBtnDelPaymentClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure RichEdtServiceEnter(Sender: TObject);
    procedure DBGridTblPaymentDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridTblPaymentDblClick(Sender: TObject);
    procedure SpBtnCalcEdtChargeSumClick(Sender: TObject);
    procedure AppEventsFrmTblPaymentShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPnlViewGrid(Sender: TObject);
    procedure ShowPnlEdtValue(Sender: TObject);
    
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmPayment: TFrmPayment;
  ModRes: Integer;
  PaySum: Currency;
  PayText: String;

implementation

uses MainAndrUnit, DMFIBUnit, VarAndrUnit, TblPriceUnit;

var TblPaymentFlag,//внутренние флаги
     FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmPayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DMFIB.DSetPayment.Modified then DMFIB.DSetPayment.Cancel;
if DMFIB.DSetPayment.Active then DMFIB.DSetPayment.Close;

//сохраняем параметры формы
NiceSetFrmPayment.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.FormCreate(Sender: TObject);
begin
NiceSetFrmPayment.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmPayment.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Платежи (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Платежи (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


ModRes:= 0;
PaySum:= 0;
PayText:= '';
TblPaymentFlag:= True;

with DMFIB, DSetPayment do
  begin
    if Active then Close;
    ParamByName('prmID_ANKETA').Value:= DSetAnketa.FN('ID_ANKETA').Value;
    Prepare;
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.FormShow(Sender: TObject);
begin
ShowPnlViewGrid(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.ShowPnlEdtValue(Sender: TObject);
begin
DMFIB.DSetPayment.DisableControls;
FrmMainProg.SwitchGrid(DBGridTblPayment, False);//отключим грид
PnlEdtValue.Visible:= True;//покажем панель редактирования
BtnSave.Visible:= True;//покажем кнопку сохранения изменений
BtnCancel.Visible:= True;//покажем кнопку отмены изменений
BtnClose.Visible:= False;//спрячем кнопку закрытия формы

//тотально отключаем панель и кнопки
PnlViewGrid.Enabled:= False;
SpBtnAddPayment.Enabled:= False;
SpBtnEdtPayment.Enabled:= False;
SpBtnDelPayment.Enabled:= False;
LblWarning.Font.Color:= clGray;

with DMFIB, DSetPayment do
  begin
    if TblPaymentFlag //если нажата кнопка добавить
      then //добавим запись
        begin
          try
            Insert;
          except
            Application.MessageBox(PChar(ErrorMsg),'Ошибка добавления данных',MB_ICONINFORMATION);
            ShowPnlViewGrid(Sender);
            Exit;//вылетаем из процедуры
          end;

          DTPickPay.DateTime:= Now;
          CalcEdtChargeSum.Value:= 0;
          CalcEdtPaySum.Value:= 0;
          RichEdtService.Text:= 'Список оказанных услуг будет сформирован автоматически, '
                              + 'если расчет стоимости оказанных услуг также '
                              + 'производился автоматически (нажмите кнопку с многоточием'
                              + ' выше)';
          LblSubCaption.Caption:= 'добавление данных';
        end
      else //редактируем запись
        begin
          try
            Edit;
          except
            Cancel;
            Application.MessageBox(PChar(ErrorMsg),'Ошибка изменения данных',MB_ICONINFORMATION);
            ShowPnlViewGrid(Sender);
            Exit;//вылетаем из процедуры
          end;

          DTPickPay.DateTime:= FN('PAYDATE').AsDateTime;
          CalcEdtChargeSum.Value:= FN('CHARGESUM').AsCurrency;
          CalcEdtPaySum.Value:= FN('PAYSUM').AsCurrency;
          RichEdtService.Text:= FN('PAY_NOTE').AsString;
          LblSubCaption.Caption:= 'редактирование данных';
        end;
  end;{with DMFIB, DSetPayment do}

FormResize(Sender);//перерисуем надписи
if DTPickPay.CanFocus then DTPickPay.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.ShowPnlViewGrid(Sender: TObject);
begin
DMFIB.DSetPayment.EnableControls;
FormResize(Sender);
PnlEdtValue.Visible:= False;//спрячем панель редактирования
BtnSave.Visible:= False;//спрячем кнопку сохранения изменений
BtnCancel.Visible:= False;//спрячем кнопку отмены изменений
BtnClose.Visible:= True;//покажем кнопку закрытия формы

//включаем кнопки и панель после тотального выключения
PnlViewGrid.Enabled:= True;
SpBtnAddPayment.Enabled:= True;
SpBtnEdtPayment.Enabled:= True;
SpBtnDelPayment.Enabled:= True;
LblWarning.Font.Color:= clRed;

with DMFIB, DSetPayment do
  begin
    FullRefresh;
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblPayment, not IsEmpty);
    SpBtnEdtPayment.Enabled:= not IsEmpty;
    SpBtnDelPayment.Enabled:= not IsEmpty;
  end;

if DBGridTblPayment.CanFocus then DBGridTblPayment.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.FormResize(Sender: TObject);
begin
with LblWarning do
  begin
    Parent:= DBGridTblPayment;
    Left:= (DBGridTblPayment.Width - Width) div 2;
    Top:= DBGridTblPayment.Height div 2;
  end;

with BtnCancel do
  begin
    Left:= BtnClose.Left;
    Top:= BtnClose.Top;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmPayment.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxPayment);
end;

//----------------------------------------------------------------------------
//добавляем запись
procedure TFrmPayment.SpBtnAddPaymentClick(Sender: TObject);
begin
TblPaymentFlag:= True;
ShowPnlEdtValue(Sender);
end;

//----------------------------------------------------------------------------
//редактируем запись
procedure TFrmPayment.SpBtnEdtPaymentClick(Sender: TObject);
begin
TblPaymentFlag:= False;
ShowPnlEdtValue(Sender);
end;

//----------------------------------------------------------------------------
//удаляем запись
procedure TFrmPayment.SpBtnDelPaymentClick(Sender: TObject);
begin
  try
    if DMFIB.DSetPayment.IsEmpty then Exit;
    DMFIB.DSetPayment.Delete;
  except
    Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    ShowPnlViewGrid(Sender);
  end;

ShowPnlViewGrid(Sender);
end;

//----------------------------------------------------------------------------
//сохраним изменения
procedure TFrmPayment.BtnSaveClick(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
//проверим, не успели ли удалить пациента из БД, пока мы добавляли пометку
with DSetPmtTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= VarID_Tbl_Anketa;
    Open;
    if IsEmpty then //если пациента уже "нет в живых", то поругаемся и закроем форму
      begin
        if DMFIB.DSetTotalPat.FN('SEX').AsInteger =1
          then
            begin
              TmpStr1:= 'пациента ';
              TmpStr2:= 'его';
              TmpStr3:= 'этого ';
            end
          else
            begin
              TmpStr1:= 'пациентки ';
              TmpStr2:= 'ее';
              TmpStr3:= 'этой ';
            end;

        //"собираем" текст мессаги
        TmpStr1:= 'Увы, добавить или отредактировать платеж для ' + TmpStr1 +
                        GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                        AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                        AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                        (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' уже не удастся, '
                        + 'так как кто-то из пользователей, работающий параллельно с Вами, уже успел удалить '
                        + TmpStr2 + ' из базы данных ! Попробуйте ввести данные ' + TmpStr3 + TmpStr1 + ' вновь.';

        DSetPmtTmp.Close;//закроем датасет
        //выдаем предупреждение
        Application.MessageBox(Pchar(TmpStr1),'Некорректные данные',MB_ICONINFORMATION);
        BtnCloseClick(Sender);//закрываем окошко
        Exit;//выходим из процедуры
      end;
  end;

//иначе пациент "на месте", записываем ему новую пометку

with DMFIB, DSetPayment do
  begin
    FN('PAY_LINKANKETA').Value:= DSetAnketa.FN('ID_ANKETA').Value;
    FN('PAYDATE').AsDateTime:= DTPickPay.DateTime;
    FN('CHARGESUM').AsCurrency:= CalcEdtChargeSum.Value;
    FN('PAYSUM').AsCurrency:= CalcEdtPaySum.Value;
    if LeftStr(Trim(RichEdtService.Text),16) = 'Список оказанных'
      then RichEdtService.Text:= 'нет сведений...';
    FN('PAY_NOTE').AsString:= Trim(RichEdtService.Text);
  end;

  try
    if DMFIB.DSetPayment.Modified then DMFIB.DSetPayment.Post;
  except
    if DMFIB.DSetPayment.Modified then DMFIB.DSetPayment.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
  end;
ShowPnlViewGrid(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.AppEventsFrmTblPaymentShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtValue.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"

          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) then
            begin
              if CalcEdtChargeSum.Focused then SpBtnCalcEdtChargeSumClick(Self);
            end;
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Закрыть"

          //эмулируем нажатия клавиш редактирования грида
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnAddPayment.Enabled then SpBtnAddPaymentClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnEdtPayment.Enabled then SpBtnEdtPaymentClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnDelPayment.Enabled then SpBtnDelPaymentClick(Self);
        end;
  end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmTblPayment.CancelDispatch;
end;

//----------------------------------------------------------------------------
//отменим изменения
procedure TFrmPayment.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetPayment.Modified then DMFIB.DSetPayment.Cancel;
ShowPnlViewGrid(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.RichEdtServiceEnter(Sender: TObject);
begin
//запись добавлена, то выделяем весь текст в эдите в ответ на фокус ввода
if TblPaymentFlag then RichEdtService.SelectAll;
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.DBGridTblPaymentDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblPayment.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblPayment.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblPayment.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblPayment.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblPayment.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.DBGridTblPaymentDblClick(Sender: TObject);
begin
SpBtnEdtPaymentClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmPayment.SpBtnCalcEdtChargeSumClick(Sender: TObject);
begin
//можем формировать прайс с возможностью выбора
TblPriceFlag:= True;

with TFrmTblPrice.Create(nil) do
  try
    ShowModal;
    if ModRes = 1 then
      begin
        CalcEdtChargeSum.Value:= PaySum;
        RichEdtService.Clear;
        RichEdtService.Text:= PayText;
      end;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

end.
