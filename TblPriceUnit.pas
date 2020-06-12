unit TblPriceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh,
  GridsEh, Buttons, ComCtrls, ADODB, FIBDataSet, pFIBDataSet, DB, Menus,
  NiceSettings, FIBDatabase, pFIBDatabase, AppEvnts;

type
  TFrmTblPrice = class(TForm)
    PnlBtnBar: TPanel;
    BtnEscape: TButton;
    BtnChoice: TButton;
    PnlCaption: TPanel;
    LblTitle: TLabel;
    BtnClose: TButton;
    PnlEdtGrid: TPanel;
    LblCautionZeroPrice: TLabel;
    PnlViewGrid: TPanel;
    LblCautionEmptyPrice: TLabel;
    SpBtnCostAdd: TSpeedButton;
    SpBtnCostDelete: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    LblWarningCbBox: TLabel;
    GridTblPriceView: TDBGridEh;
    CbBoxPriceIssue: TComboBox;
    CbBoxPriceLists: TComboBox;
    SpBtnPriceAdd: TSpeedButton;
    SpBtnPriceDel: TSpeedButton;
    Lbl1: TLabel;
    Lbl2: TLabel;
    PpMnuTblPrice: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    NiceSetFrmTblPrice: TNiceSettings;
    BtnHlp: TButton;
    DSetPriceList: TpFIBDataSet;
    DSetPriceIssue: TpFIBDataSet;
    GridTblPriceEdit: TDBGridEh;
    DSPriceEdt: TDataSource;
    DSetPriceEdt: TpFIBDataSet;
    WriteTransPriceEdt: TpFIBTransaction;
    StTxtNoGrant: TStaticText;
    AppEventsFrmTblPrice: TApplicationEvents;
    LblStoreCbBoxPriceLists: TLabel;
    LblStoreCbBoxPriceIssue: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnEscapeClick(Sender: TObject);
    procedure SpBtnCostAddClick(Sender: TObject);
    procedure GridTblPriceViewDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure CbBoxIssueChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CbBoxPriceListsChange(Sender: TObject);
    procedure CbBoxPriceIssueChange(Sender: TObject);
    procedure SpBtnCostDeleteClick(Sender: TObject);
    procedure GridTblPriceEditDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure GridTblPriceEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTblPriceViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpBtnPriceAddClick(Sender: TObject);
    procedure SpBtnPriceDelClick(Sender: TObject);
    procedure GridTblPriceViewCellClick(Column: TColumnEh);
    procedure GridTblPriceEditDblClick(Sender: TObject);
    procedure DSetPriceEdtBeforeInsert(DataSet: TDataSet);
    procedure DSetPriceEdtBeforePost(DataSet: TDataSet);
    procedure AppEventsFrmTblPriceShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ViewGridRate(Sender: TObject);
    procedure EditGridRate(Sender: TObject);
    procedure GetValueCbBoxPriceLists(Sender: TObject);
    procedure GetValueCbBoxPriceIssue(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblPrice: TFrmTblPrice;
  CbPriceIssueItem,        //номер item'a комба с разделами прайса
  CbPriceListItem: Integer;//номер item'a комба с прайсами
  BasePriceFlag: Boolean;//флаг для внутренних целей
  PriceListName: String;//имя прайса для внутренних целей


implementation

uses MainAndrUnit, TblAnketaUnit, VarAndrUnit,
  TblClinicUnit, TblDoctorUnit, TblTownUnit,
  StatusPatUnit, DMFIBUnit, BasePriceUnit, FIBQuery, pFIBQuery, Math,
  TblPaymentUnit, StrUtils;

var CtrlVisFlag, FocusFlag: Boolean; //флаг видимости некоторых контроллов в зависимости от роли юзера
    SumVal: Currency;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormCreate(Sender: TObject);
begin
NiceSetFrmTblPrice.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblPrice.LoadSettings;

PnlViewGrid.Align:= alClient;
PnlEdtGrid.Align:= alClient;
BasePriceFlag:= False;
PriceListName:= '';

//восстанавливаем последние значения комбов с прайсами и разделами прайса
if PrmIsDigit(LblStoreCbBoxPriceLists.Caption)
  then
    CbPriceListItem:= StrToInt(Trim(LblStoreCbBoxPriceLists.Caption))
  else
    CbPriceListItem:= -1;

if PrmIsDigit(LblStoreCbBoxPriceIssue.Caption)
  then
    CbPriceIssueItem:= StrToInt(Trim(LblStoreCbBoxPriceIssue.Caption))
  else
    CbPriceIssueItem:= -1;

//ставим кнопку
BtnClose.Left:= BtnEscape.Left;
BtnClose.Top:= BtnEscape.Top;

//покажем контроллы только VIP-юзерам
CtrlVisFlag:= ((AnsiUpperCase(Trim(UsrRoleName)) = 'ADMINISTR') or (AnsiUpperCase(Trim(UsrLgn)) = 'SYSDBA'));

DMFIB.DSetBasePrice.FullRefresh;
FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormShow(Sender: TObject);
begin
ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//закроем ненужные датасеты
with DMFIB do
  begin
    if DSetPriceList.Active then DSetPriceList.Close;
    if DSetPriceIssue.Active then DSetPriceIssue.Close;
    if DSetPrice.Active then DSetPrice.Close;
  end;

LblStoreCbBoxPriceLists.Caption:= IntToStr(CbBoxPriceLists.ItemIndex);
LblStoreCbBoxPriceIssue.Caption:= IntToStr(CbBoxPriceIssue.ItemIndex);
  
//сохраняем параметры формы
NiceSetFrmTblPrice.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnEscapeClick(Sender: TObject);
begin
ModRes:= 0;//"костыли", т.к. не работает ModalResult формы
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblPrice.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxPrice);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.AppEventsFrmTblPriceShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtGrid.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Закрыть"
        end
      else
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnChoice.Visible then BtnChoiceClick(Self);//эмулируем нажатие клавиши "Выбрать"
          if (GetKeyState(VK_ESCAPE) < 0) then BtnEscapeClick(Self);//эмулируем нажатие клавиши "Выйти"

          //эмулируем нажатия клавиш редактирования грида
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnCostAdd.Enabled then SpBtnCostAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnCostDelete.Enabled then SpBtnCostDeleteClick(Self);

          //эмулируем нажатия клавиш добавления/удаления прайсов
          if ((GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0)) and SpBtnPriceAdd.Enabled then SpBtnPriceAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0)) and SpBtnPriceDel.Enabled then SpBtnPriceDelClick(Self);
        end;
  end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmTblPrice.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnChoiceClick(Sender: TObject);
var i: Integer;
    FullTxt, TmpTxt: String;
begin
TmpTxt:= '';
FullTxt:= '';

ModRes:= 1;//"костыли", т.к. не работает ModalResult формы

//если форма вызвана из таблицы платежей, то сформируем платеж
if TblPriceFlag then
  begin
    if GridTblPriceView.SelectedRows.Count > 0
      then //если выбрана хоть одна строка
        begin
          //присвоим в таблице платежей расчетную сумму
          PaySum:= SumVal;
          //"складываем" выбранные строки в рич-эдит
          for i:=0 to GridTblPriceView.SelectedRows.Count-1 do
            begin
              //встаем на очередную выбранную запись
              GridTblPriceView.DataSource.DataSet.
                            GotoBookmark(pointer(GridTblPriceView.SelectedRows.Items[i]));

              TmpTxt:= Trim(DMFIB.DSetPricePROC_NAME.AsString);
(*
              if i = 0 //если это первая выбранная запись
                then // то делаем первую букву заглавной (прописной)
                  TmpTxt:= AnsiUpperCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1)
                else //иначе первая буква строчная
                  TmpTxt:= AnsiLowerCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1);
*)

              // делаем первую букву заглавной (прописной)
              TmpTxt:= AnsiUpperCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1);
              FullTxt:= FullTxt + '[' + Trim(DMFIB.DSetPricePROC_CODE.AsString) + '] '
                                                                          + TmpTxt + ', ';

              //запишем в таблицу платежей список "расчетных" манипуляций
              PayText:= LeftStr(Trim(FullTxt), Length(Trim(FullTxt)) - 1) + '.';
            end;{for .. to .. do}
      end{if GridTblPriceView.SelectedRows.Count > 0 .. then}
    else
      begin
        PaySum:= 0;
        PayText:= 'нет сведений...';
      end;{if GridTblPriceView.SelectedRows.Count > 0 .. else}
  end;{if TblPriceFlag .. then}

Close;
end;

//----------------------------------------------------------------------------------
(**************  кнопки редактирования записей таблицы  **************)

procedure TFrmTblPrice.SpBtnCostAddClick(Sender: TObject);
begin
LblCautionZeroPrice.Caption:= 'Все наименования из базового прайса выбраны.';
StTxtNoGrant.Caption:= '' + #13#10 + #13#10 + 'У Вас нет прав на изменение данных в этой таблице!';
EditGridRate(Sender);

CbPriceListItem:= CbBoxPriceLists.ItemIndex;//сохраним номер прайса в списке комба
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;//то же для разделов прайса
PriceListName:= CbBoxPriceLists.Text;

//перечитаем набор с нулевыми ценами
with DSetPriceEdt do
  begin
    if Active then Close;
    SelectSQL.Clear;
    SelectSQL.Text:=
               'SELECT '
                   + 'P.ID_PRICE, '
                   + 'P.FK_BASEPRICE, '
                   + 'P.NAME_PRICE, '
                   + 'P.COST_PROC_PRICE, '
                   + 'P.CHOICE_PROC_PRICE, '
                   + 'BP.BASEPRICE_ID, '
                   + 'BP.BASEPRICE_PROC_ISSUE_FK, '
                   + 'BP.BASEPRICE_PROC_CODE, '
                   + 'BP.BASEPRICE_PROC_NAME, '
                   + 'LI.LABORISSUE_ID, '
                   + 'LI.LABORISSUE_NAME, '
                   + 'LI.LABORISSUE_CODELITER '
             + 'FROM TBL_LABORISSUE LI '
                   + 'JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PROC_ISSUE_FK) '
                   + 'JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE) '
             + 'WHERE (P.NAME_PRICE = :prmPriceName) and (P.COST_PROC_PRICE = 0) '
             + 'ORDER BY LABORISSUE_NAME';
    Prepare;
    ParamByName('prmPriceName').AsString:= PriceListName;
    Open;
    StTxtNoGrant.Visible:= (not CtrlVisFlag);
    LblCautionZeroPrice.Visible:= (IsEmpty and CtrlVisFlag);

    //включим-отключим элементы грида в зависимости от его "наполнености" и роли (прав доступа) юзера
    FrmMainProg.SwitchGrid(GridTblPriceEdit,((not IsEmpty) and (CtrlVisFlag)));
//    FrmMainProg.SwitchGrid(GridTblPriceEdit, (not IsEmpty));

    if not IsEmpty
      then LblTitle.Caption:= 'Добавьте в прайс-лист "' + PriceListName
                                                  + '" услуги, определив их стоимость'
      else LblTitle.Caption:= '';
  end;

FormResize(Sender);//перерисуем надписи

//если можно, фокус в грид
if GridTblPriceEdit.CanFocus then GridTblPriceEdit.SetFocus;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.SpBtnCostDeleteClick(Sender: TObject);
begin
CbPriceListItem:= CbBoxPriceLists.ItemIndex;//сохраним номер прайса в списке комба
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;//то же для разделов прайса
PriceListName:= CbBoxPriceLists.Text;

  with DMFIB, DSetPrice do
    begin
      try
        //пытаемся "обнулить" стоимость процедуры, чтобы формально удалить услугу из набора
        if IsEmpty then Exit;
        Delete;
        ViewGridRate(Sender);//переоткрываем итоговый набор с учетов выбора в комбах
      except
        Application.MessageBox(PChar(ErrorMsg),'Удаление данных', MB_ICONINFORMATION);
        Exit;//выходим из процедуры
      end;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceViewDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridTblPriceView.DataSource.DataSet.RecNo mod 2 = 1
	then GridTblPriceView.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		GridTblPriceView.Canvas.Brush.Color:= clMoneyGreen;
		GridTblPriceView.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	GridTblPriceView.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------
//Заполняем комбобокс с датами прайсов
procedure TFrmTblPrice.GetValueCbBoxPriceLists(Sender: TObject);
begin
  with DSetPriceList do
    begin
      //читаем Tbl_price
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT DISTINCT NAME_PRICE FROM TBL_PRICE ORDER BY 1 DESC';
      Prepare;
      Open;
    end;{with DMFIB,DSetTemp do..}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GetValueCbBoxPriceIssue(Sender: TObject);
begin
  with DSetPriceIssue do
    begin
      //читаем Tbl_LaborIssue
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT LABORISSUE_ID, LABORISSUE_NAME FROM TBL_LABORISSUE ORDER BY 1';
      Prepare;
      Open;

      //почистим комб
      CbBoxPriceIssue.Items.Clear;

      //заполним комб, если не пустой датасет
      if not IsEmpty //если таблица разделов базового прайса не пустая
        then //заполняем комбобокс
          begin
            CbBoxPriceIssue.Items.Add('все разделы');//добавим пункт, которого нет в датасете
            First;//курсор на первую запись

            while not Eof do
              begin
                CbBoxPriceIssue.Items.Add(Trim(FN('LABORISSUE_NAME').AsString));//добавим пункт
                Next;//следующая запись
              end;{while not Eof do..}

            CbBoxPriceIssue.ItemIndex:= CbPriceIssueItem;//установим значение
          end
        else
          begin
            CbBoxPriceIssue.Items.Add('отсутствуют разделы прайса');
          end;
    end;{with DMFIB,DSetTemp do..}        
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.CbBoxIssueChange(Sender: TObject);
begin
CbBoxPriceListsChange(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormResize(Sender: TObject);
begin
//перерисуем все надписи
with LblCautionEmptyPrice do
  begin
    Parent:= GridTblPriceView;//назначаем родителя надписи
    Left:= (GridTblPriceView.Width - Width) div 2;
    Top:= GridTblPriceView.Height div 2;
  end;{with LblCautionEmptyPrice do..}

LblTitle.Left:= (ClientWidth - LblTitle.Width) div 2;

//надпись на комбе прайсов
with LblWarningCbBox do
  begin
    Parent:= CbBoxPriceLists;
    Left:= CbBoxPriceLists.Left + 5;
    Top:= (CbBoxPriceLists.Height - Height) div 2;
  end;

//надпись на панели эдитов
with LblCautionZeroPrice do
  begin
    Parent:= GridTblPriceEdit;
    Left:= (GridTblPriceEdit.Width - Width) div 2;
    Top:= GridTblPriceEdit.Height div 2;
  end;

with StTxtNoGrant do
  begin
    Parent:= GridTblPriceEdit;
    Left:= (Parent.Width - Width) div 2;
    Top:= (Parent.Height - Height) div 2;
//    Color:= RGB(150,0,0);
    Color:= clWindow;
    Font.Color:= clRed;//(ColorToRGB = 255)

    //если в системе контрастность у этих цветов ужасная, то скорректируем цвета
    if (Abs(ColorToRGB(clWindow)- ColorToRGB(Font.Color)) < 150)
      then
        Font.Color:= clWindowText;
//    ShowMessage('clWindow = ' + IntToStr(ColorToRGB(clWindow)));
  end;

end;

//----------------------------------------------------------------------------------
//редактируем грид
procedure TFrmTblPrice.EditGridRate(Sender: TObject);
begin
//спрячем кнопки выхода из формы
BtnChoice.Visible:= False;
BtnEscape.Visible:= False;
BtnClose.Visible:= True;

PnlViewGrid.Visible:= False;//спрячем основной грид
PnlEdtGrid.Visible:= True;//покажем грид с "нулевыми" ценами

end;

//----------------------------------------------------------------------------------
//просматриваем грид
procedure TFrmTblPrice.ViewGridRate(Sender: TObject);
begin
PnlViewGrid.Visible:= True;//показываем основной грид
PnlEdtGrid.Visible:= False;//спрячем грид с "нулевыми" ценами

//покажем кнопки выхода из формы
BtnChoice.Visible:= False;
BtnEscape.Visible:= True;
BtnClose.Visible:= False;

//покажем кнопки добавления-удаления прайсов, если у роли юзера есть соответствующие права
SpBtnPriceAdd.Visible:= CtrlVisFlag;
SpBtnPriceDel.Visible:= CtrlVisFlag;
SpBtnCostAdd.Visible:= CtrlVisFlag;
SpBtnCostDelete.Visible:= CtrlVisFlag;

LblTitle.Caption:= 'Прайс-лист медицинских услуг';

//множ.выбор добавим, если форма открыта для выбора
if TblPriceFlag
  then GridTblPriceView.Options:= GridTblPriceView.Options + [dgMultiSelect]
  else GridTblPriceView.Options:= GridTblPriceView.Options - [dgMultiSelect];

Lbl1.Visible:= TblPriceFlag;//покажем совет, если будем выбирать
Lbl2.Visible:= TblPriceFlag;//покажем совет, если будем выбирать


FormResize(Sender);

//формируем список из имен прайсов в комбобоксе
GetValueCbBoxPriceLists(Sender);

//формируем список из разделов прайса в комбобоксе
GetValueCbBoxPriceIssue(Sender);


with DSetPriceList do
  begin
    //включаем элементы относительно заполненности прайса
    SpBtnPriceDel.Enabled:= ((not IsEmpty) and CtrlVisFlag);//видимость кнопки удаления прайсов
    CbBoxPriceLists.Enabled:= not IsEmpty;//доступность самого комба
    CbBoxPriceIssue.Enabled:= not IsEmpty;//соответственно и комба с разделами
    LblWarningCbBox.Visible:= IsEmpty;//предупреждающей надписи на комбе
    CbBoxPriceLists.Items.Clear;//очистим комб

    //пытаемся заполнить комб
    if not IsEmpty //если таблица прайсов не пустая
      then //заполняем комбобокс
        begin
          First;//курсор на первую запись (последняя по алфавиту)
          while not Eof do
            begin
              CbBoxPriceLists.Items.Add(FN('NAME_PRICE').AsString);//добавим пункт
              Next;//следующая запись
            end;{while not Eof do..}

//          //отображаем в комбе последний сохраненный ItemIndex
//          if Trim(PriceListName) <> ''
//            then //по последнему названию
//              CbBoxPriceLists.ItemIndex:= CbBoxPriceLists.Items.IndexOf(PriceListName)
//            else //по последнему номеру
//              CbBoxPriceLists.ItemIndex:= NumPriceList;

            CbBoxPriceLists.ItemIndex:= CbPriceListItem;

          SpBtnCostAdd.Enabled:= ((not IsEmpty) and CtrlVisFlag);//кнопку добавления записей
          CbBoxPriceLists.Font.Color:= clWindowText;

          if TblPriceFlag //если разрешен множественный выбор
            then
              GridTblPriceView.FooterRowCount:= 1 //покажем подвал
            else
              GridTblPriceView.FooterRowCount:= 0;//спрячем подвал

          //отфильтруем и покажем данные прайса соответственно имени прайса в комбе
          CbBoxPriceListsChange(Sender);
        end{if not IsEmpty..then}
      else //если таблица прайсов пустая
        begin
          //перечитаем "пустой" набор
          with DMFIB, DSetPrice do
            begin
              if Active then Close;
              //SQLs.SelectSQL.Clear;
              SQLs.SelectSQL.Text:= 'SELECT * FROM TBL_PRICE';
              Open;
            end;

          GridTblPriceView.FooterRowCount:= 0;// спрячем подвал
          //отключим
          FrmMainProg.SwitchGrid(GridTblPriceView,(not IsEmpty));//грид
          SpBtnCostAdd.Enabled:= ((not IsEmpty) and CtrlVisFlag);//кнопку добавления записей
          SpBtnCostDelete.Enabled:= ((not IsEmpty) and CtrlVisFlag);//кнопку удаления записей

          //зададим надпись, если придется показывать(см.проц. CbBoxPriceListsChange)
          LblCautionEmptyPrice.Caption:= 'На данный момент в базе данных не найдено '
                                       + 'ни одного прайс-листа.';
          LblCautionEmptyPrice.Visible:= IsEmpty;
        end;{if not IsEmpty..else}
  end;{with DMFIB, DSetTemp do..}

//фокус в грид, если можно
if GridTblPriceView.CanFocus then GridTblPriceView.SetFocus;
end;

//----------------------------------------------------------------------------------
//переоткрываем текущий прайс с выборкой при смене значения комба
procedure TFrmTblPrice.CbBoxPriceListsChange(Sender: TObject);
var TmpStr: String;
begin
//присвоим переменной имя и соответствующий номер в списке текущего прайса в комбе
PriceListName:= Trim(CbBoxPriceLists.Text);
CbPriceListItem:= CbBoxPriceLists.ItemIndex;//запомним позицию item'a комбов
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;

if CbBoxPriceIssue.ItemIndex > 0
  then
    begin
    //все ниже описанное можно реализовать и с помощью DBLookUpCbBox, но лень :-)
    if not DSetPriceIssue.Active then DSetPriceIssue.Open;//откроем, если закрыт

    //позиционируем курсор на раздел, соответствующий указанному в комбе
    if not DSetPriceIssue.IsEmpty then
      begin
        if DSetPriceIssue.Locate('LABORISSUE_NAME',CbBoxPriceIssue.Text,[])
          then
            TmpStr:= '(P.NAME_PRICE = :prmPriceName) AND (BP.BASEPRICE_PROC_ISSUE_FK = '
                                     + IntToStr(DSetPriceIssue.FN('LABORISSUE_ID').AsInteger) + ')';
      end;
    end
  else
    TmpStr:= 'P.NAME_PRICE = :prmPriceName';
    
  //формируем запрос для отображения в гриде
  with DMFIB, DSetPrice do
    begin
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:=
        'SELECT '
         + 'P.ID_PRICE, '
         + 'P.FK_BASEPRICE, '
         + 'P.NAME_PRICE, '
         + 'P.COST_PROC_PRICE, '
         + 'P.CHOICE_PROC_PRICE, '
         + 'BP.BASEPRICE_ID, '
         + 'BP.BASEPRICE_PROC_ISSUE_FK, '
         + 'BP.BASEPRICE_PROC_CODE, '
         + 'BP.BASEPRICE_PROC_NAME, '
         + 'LI.LABORISSUE_ID, '
         + 'LI.LABORISSUE_NAME, '
         + 'LI.LABORISSUE_CODELITER '
      + 'FROM TBL_LABORISSUE LI '
        + 'INNER JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PROC_ISSUE_FK) '
        + 'INNER JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE) '
      + 'WHERE (' + TmpStr + ') and (P.COST_PROC_PRICE > 0) '
      + 'ORDER BY 2 DESC';

      Prepare;
      ParamByName('prmPriceName').AsString:= PriceListName;
      FullRefresh;

      //"включим/отключим"
      FrmMainProg.SwitchGrid(GridTblPriceView,(not isEmpty));//грид
      SpBtnCostDelete.Enabled:= ((not IsEmpty) and CtrlVisFlag);//кнопку удаления

      LblCautionEmptyPrice.Visible:= IsEmpty;
      if CbBoxPriceIssue.ItemIndex = 0
        then
          LblCautionEmptyPrice.Caption:= 'В прайс-листе "'  + PriceListName
          + '" ни у одной из процедур стоимость не определена.'
        else
          LblCautionEmptyPrice.Caption:= 'В разделе "' + Trim(CbBoxPriceIssue.Text)
          + '" прайс-листа "' + Trim(CbBoxPriceLists.Text) + '" ни у одной из процедур '
          + 'стоимость не определена.';
      if IsEmpty
        then FormResize(Sender);//перерисуем предупреждающую надпись
    end;{with DMFIB, DSetPrice do..}

//"почистим" подвал после смены прайса
GridTblPriceView.Columns[2].Footer.Value:= '';
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.CbBoxPriceIssueChange(Sender: TObject);
begin
CbBoxPriceListsChange(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceEditDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridTblPriceEdit.DataSource.DataSet.RecNo mod 2 = 1
	then GridTblPriceEdit.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		GridTblPriceEdit.Canvas.Brush.Color:= clMoneyGreen;
		GridTblPriceEdit.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	GridTblPriceEdit.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnSaveClick(Sender: TObject);
begin
ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnCloseClick(Sender: TObject);
begin
  try
    //сохраняем изменения в датасете, если в гриде была последняя запись
    if DMFIB.DSetPrice.Modified then DMFIB.DSetPrice.Post;
  except
    //откатываем изменения в датасете в случае ошибки
    if DMFIB.DSetPrice.Modified then DMFIB.DSetPrice.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных', MB_ICONINFORMATION);
  end;

ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------
//запрещаем "автодобавление" записей в "нулевой" грид кнопками со стрелками
procedure TFrmTblPrice.GridTblPriceEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) and (Key = VK_DELETE) then
  begin
    Key:= 0;
    Exit;
  end;

//if (Key = VK_DOWN) or (Key = VK_TAB) then
//  with DSetPriceEdt do
//    begin
//      DisableControls;
//      Next;
//      if Eof then Key:= 0 else Prior;
//      EnableControls;
//    end;{with DSetPriceEdt do}
//
////ненавязчиво запретим кнопке "Enter" сохранять новую пустую строку
//if (Key = VK_RETURN) and DSetPriceEdt.FN('BASEPRICE_PROC_NAME').IsNull then
//  with DSetPriceEdt do
//    begin
//      DisableControls;
//      Next;
//      if Eof then Key:= 0 else Prior;
//      EnableControls;
//    end;{with DSetPriceEdt do}

//см. BeforeInsert датасета

//если действуют клавиши навигации
if (Key = VK_UP) or (Key = VK_DOWN) or (Key = VK_TAB) then
  try
    if DSetPriceEdt.Modified then DSetPriceEdt.Post;
  except
    if DSetPriceEdt.Modified then DSetPriceEdt.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'Ошибка изменение данных',MB_ICONINFORMATION);
  end;

end;

//----------------------------------------------------------------------------------
//запрещаем "автодобавление" записей в основной грид кнопками со стрелками
procedure TFrmTblPrice.GridTblPriceViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((Key = VK_DOWN) or (Key = VK_TAB)) then
  with DMFIB, DSetPrice do
    begin
      DisableControls;
      Next;
      if Eof then Key:= 0 else Prior;
      EnableControls;
    end;{with DMFIB, DSetPrice do}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------
//добавляем новый прайс
procedure TFrmTblPrice.SpBtnPriceAddClick(Sender: TObject);
begin
with TFrmBasePrice.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

if BasePriceFlag
  then //если была нажата кнопка создания нового прайса
     with DMFIB, DSetTemp do
       begin
        GetValueCbBoxPriceLists(Sender);//подготовим и переоткроем запрос
        if not IsEmpty //если таблица прайсов не пустая
          then //заполняем комбобокс
            begin
              First;//курсор на первую запись (последняя по алфавиту)
              while not Eof do
                begin
                  CbBoxPriceLists.Items.Add(FN('NAME_PRICE').AsString);//добавим пункт
                  Next;//следующая запись
                end;{while not Eof do..}

              //находим номер позиции в комбе по названию
              //NumPriceList:= CbBoxPriceLists.Items.IndexOf(PriceListName);
              //CbBoxPriceLists.ItemIndex:= NumPriceList;
              CbBoxPriceLists.ItemIndex:= CbBoxPriceLists.Items.IndexOf(PriceListName);
              SpBtnCostAddClick(Sender);//нажмем кнопку определения цен
            end {if not IsEmpty...then}
          else //если комб почему-то пуст
            ViewGridRate(Sender);//откатимся назад и перерисуем грид просмотра
       end{with DMFIB, DSetTemp do}
  else //если была нажата кнопка закрытия базового прайса
    ViewGridRate(Sender);//откатимся назад и перерисуем грид просмотра
end;

//----------------------------------------------------------------------------------
//удаляем текущий прайс
procedure TFrmTblPrice.SpBtnPriceDelClick(Sender: TObject);
begin
//если комб пустой, то выходим
if CbBoxPriceLists.Items.Count = 0 then Exit;

with DMFIB,QryTemp do
  begin
    SQL.Clear;
    SQL.Text:= 'DELETE FROM TBL_PRICE '
             + 'WHERE NAME_PRICE LIKE :prmNamePrice';
    Prepare;
    ParamByName('prmNamePrice').AsString:= Trim(CbBoxPriceLists.Text);

    if Application.MessageBox(PChar('Вы действительно хотите удалить прайс-лист "'
                              + Trim(CbBoxPriceLists.Text) + '" из списка?'),
                              'Удаление прайсов', MB_ICONINFORMATION + MB_YESNO) = IDNo
      then Exit
      else
        begin
          try
            ExecQuery;//удаляем заданный прайс
            PriceListName:= '';
            CbPriceListItem:= CbBoxPriceLists.Items.Count - 2;
          except
            Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
            Exit;
          end;{try..except}
        end;
  end;{with DMFIB,QryTemp do}

ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceViewCellClick(Column: TColumnEh);
var   i: Integer;
begin
//если позволяют права юзера, то
// не позволяем юзеру редактировать прайс,
// если "работает" множественный выбор

SpBtnCostAdd.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnCostDelete.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnPriceAdd.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnPriceDel.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);


//отображаем кнопку выбора соответственно наличию выделенных записей
//при условии, что форма открыта для выбора
if TblPriceFlag
  then
    BtnChoice.Visible:= (GridTblPriceView.SelectedRows.Count > 0)
  else
    BtnChoice.Visible:= False;

//просуммируем выбранные услуги
if GridTblPriceView.SelectedRows.Count = 0
  then
    GridTblPriceView.Columns[2].Footer.Value:= '0'
  else
    begin
      SumVal:= 0;
      //суммируем выбранные строки
      for i:=0 to GridTblPriceView.SelectedRows.Count-1 do
        begin
          GridTblPriceView.DataSource.DataSet.
                              GotoBookmark(pointer(GridTblPriceView.SelectedRows.Items[i]));
          SumVal:= SumVal + DMFIB.DSetPrice.FieldByName('COST_PROC_PRICE').AsCurrency;
        end;
      GridTblPriceView.Columns[2].Footer.Value:= CurrToStrF(SumVal,ffNumber, 2) + ' руб.';
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceEditDblClick(Sender: TObject);
begin
BtnCloseClick(Sender);
end;

//----------------------------------------------------------------------------------
//запретим добавлять новую запись в таблицу
procedure TFrmTblPrice.DSetPriceEdtBeforeInsert(DataSet: TDataSet);
begin
Abort;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.DSetPriceEdtBeforePost(DataSet: TDataSet);
begin
//если забыли поставить цену, то сделаем это сами
if DSetPriceEdt.FN('COST_PROC_PRICE').IsNull
  then DSetPriceEdt.FN('COST_PROC_PRICE').AsCurrency:= 0;
end;

//----------------------------------------------------------------------------------

end.
