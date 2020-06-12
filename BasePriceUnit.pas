unit BasePriceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, FIBDataSet, pFIBDataSet, Buttons,
  ExtCtrls, DBCtrls, StdCtrls, FIBQuery, pFIBQuery, Menus, NiceSettings,
  Mask, DBCtrlsEh, DBLookupEh, FIBDatabase, pFIBDatabase, pFIBScripter, StrUtils, AppEvnts;

type
  TFrmBasePrice = class(TForm)
    PpMnuBasePrice: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    NiceSetFrmBasePrice: TNiceSettings;
    PnlBtnBar: TPanel;
    BtnCreate: TButton;
    BtnClose: TButton;
    PnlViewBasePrice: TPanel;
    GridEhBasePrice: TDBGridEh;
    PnlAddBasePrice_1: TPanel;
    SpBtnProcAdd: TSpeedButton;
    SpBtnProcEdt: TSpeedButton;
    SpBtnProcDelete: TSpeedButton;
    PnlEdtBasePrice: TPanel;
    PnlCaption: TPanel;
    LblCapt: TLabel;
    BtnSave: TButton;
    BtnCancel: TButton;
    LblWarning: TLabel;
    SpBtnPlus_1: TSpeedButton;
    PnlAddBasePrice_2: TPanel;
    SpBtnPlus_2: TSpeedButton;
    SpBtnMinus_2: TSpeedButton;
    PnlAddBasePrice_3: TPanel;
    SpBtnPlus_3: TSpeedButton;
    SpBtnMinus_3: TSpeedButton;
    PnlAddBasePrice_4: TPanel;
    SpBtnPlus_4: TSpeedButton;
    SpBtnMinus_4: TSpeedButton;
    PnlAddBasePrice_5: TPanel;
    SpBtnMinus_5: TSpeedButton;
    BtnHlp: TButton;
    EhEdtPnlBPEdt_ProcCode: TDBEditEh;
    EhEdtPnlBPEdt_ProcName: TDBEditEh;
    EhEdtPnlBPAdd_1: TDBEditEh;
    EhEdtPnlBPAdd_2: TDBEditEh;
    EhEdtPnlBPAdd_3: TDBEditEh;
    EhEdtPnlBPAdd_4: TDBEditEh;
    EhEdtPnlBPAdd_5: TDBEditEh;
    CbBoxEhPnlBPAdd_1: TDBLookupComboboxEh;
    CbBoxEhPnlBPAdd_2: TDBLookupComboboxEh;
    CbBoxEhPnlBPAdd_3: TDBLookupComboboxEh;
    CbBoxEhPnlBPAdd_4: TDBLookupComboboxEh;
    CbBoxEhPnlBPAdd_5: TDBLookupComboboxEh;
    CbBoxEhPnlBPEdt: TDBLookupComboboxEh;
    Label1: TLabel;
    Label2: TLabel;
    WriteTransBP: TpFIBTransaction;
    FIBTmpScripterBP: TpFIBScripter;
    FIBTmpDSetBP: TpFIBDataSet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DSetEhDBCbBox: TpFIBDataSet;
    DSDSetEhDBCbBox: TDataSource;
    BtnResetCountPrice: TButton;
    SpBtnPlus_5: TSpeedButton;
    PnlAddBasePrice_6: TPanel;
    SpBtnMinus_6: TSpeedButton;
    SpBtnPlus_6: TSpeedButton;
    EhEdtPnlBPAdd_6: TDBEditEh;
    CbBoxEhPnlBPAdd_6: TDBLookupComboboxEh;
    PnlAddBasePrice_7: TPanel;
    SpBtnMinus_7: TSpeedButton;
    SpBtnPlus_7: TSpeedButton;
    EhEdtPnlBPAdd_7: TDBEditEh;
    CbBoxEhPnlBPAdd_7: TDBLookupComboboxEh;
    PnlAddBasePrice_8: TPanel;
    SpBtnMinus_8: TSpeedButton;
    SpBtnPlus_8: TSpeedButton;
    EhEdtPnlBPAdd_8: TDBEditEh;
    CbBoxEhPnlBPAdd_8: TDBLookupComboboxEh;
    PnlAddBasePrice_9: TPanel;
    SpBtnMinus_9: TSpeedButton;
    SpBtnPlus_9: TSpeedButton;
    EhEdtPnlBPAdd_9: TDBEditEh;
    CbBoxEhPnlBPAdd_9: TDBLookupComboboxEh;
    PnlAddBasePrice_10: TPanel;
    SpBtnMinus_10: TSpeedButton;
    EhEdtPnlBPAdd_10: TDBEditEh;
    CbBoxEhPnlBPAdd_10: TDBLookupComboboxEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GridEhBasePriceDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnCreateClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnProcAddClick(Sender: TObject);
    procedure SpBtnProcEdtClick(Sender: TObject);
    procedure SpBtnProcDeleteClick(Sender: TObject);
    procedure SpBtnPlus_1Click(Sender: TObject);
    procedure SpBtnPlus_2Click(Sender: TObject);
    procedure SpBtnMinus_2Click(Sender: TObject);
    procedure SpBtnPlus_3Click(Sender: TObject);
    procedure SpBtnMinus_3Click(Sender: TObject);
    procedure SpBtnPlus_4Click(Sender: TObject);
    procedure SpBtnMinus_4Click(Sender: TObject);
    procedure SpBtnMinus_5Click(Sender: TObject);
    procedure CbBoxEhPnlBPAdd_1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPEdtEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EhEdtPnlBPEdt_ProcCodeKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnResetCountPriceClick(Sender: TObject);
    procedure SpBtnPlus_5Click(Sender: TObject);
    procedure SpBtnPlus_6Click(Sender: TObject);
    procedure SpBtnPlus_7Click(Sender: TObject);
    procedure SpBtnPlus_8Click(Sender: TObject);
    procedure SpBtnPlus_9Click(Sender: TObject);
    procedure SpBtnMinus_6Click(Sender: TObject);
    procedure SpBtnMinus_7Click(Sender: TObject);
    procedure SpBtnMinus_8Click(Sender: TObject);
    procedure SpBtnMinus_9Click(Sender: TObject);
    procedure SpBtnMinus_10Click(Sender: TObject);
    procedure CbBoxEhPnlBPAdd_6EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_8EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_9EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbBoxEhPnlBPAdd_10EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ShowPnlViewBasePrice(Sender: TObject);
    procedure ShowPnlEdtBasePrice(Sender: TObject);
    procedure PrepareAllDBLookUpCbBox(Sender: TObject);
    procedure PrepareAnyDBLookUpCbBox(Sender: TDBLookupComboboxEh);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmBasePrice: TFrmBasePrice;

implementation

uses
  DMFIBUnit, TblPriceUnit, MainAndrUnit, VarAndrUnit;

var
    TmpBasePriceFlag, //флаг инсерта-апдейта таблицы
    CtrlVisFlag, //флаг видимости некоторых контроллов в зависимости от роли юзера
    FocusFlag: Boolean;//флаг фокуса на форме
    ProcCodeStr, ProcNameStr: String;//строковые переменные для внутренних нужд
    ProcKeyValue: Variant;//число для внутренних нужд

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.FormCreate(Sender: TObject);
begin
NiceSetFrmBasePrice.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmBasePrice.LoadSettings;
DMFIB.DSetBasePrice.FullRefresh;
DSetEhDBCbBox.FullRefresh;

//сдвигаем кнопки на "рабочие" места
BtnSave.Left:= BtnCreate.Left + BtnCreate.Width - BtnSave.Width;
BtnCancel.Left:= BtnClose.Left;

ProcCodeStr:= '';
ProcNameStr:= '';
ProcKeyValue:= 0;
FocusFlag:= True;

CtrlVisFlag:= ((AnsiUpperCase(Trim(UsrRoleName)) = 'ADMINISTR') or (AnsiUpperCase(Trim(UsrLgn)) = 'SYSDBA'));
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.FormKeyPress(Sender: TObject; var Key: Char);
var Handled: Boolean;
begin
Handled:= False;
if not PnlViewBasePrice.Enabled //если панель просмотра недоступна, значит табля в режиме редактирования
  then
    begin
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
      if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отменить"

      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) then
        begin
          //кнопки редактирования DBComboBox'ов
          if CbBoxEhPnlBPEdt.Focused then CbBoxEhPnlBPEdtEditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_1.Focused then CbBoxEhPnlBPAdd_1EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_2.Focused then CbBoxEhPnlBPAdd_2EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_3.Focused then CbBoxEhPnlBPAdd_3EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_4.Focused then CbBoxEhPnlBPAdd_4EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_5.Focused then CbBoxEhPnlBPAdd_5EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_6.Focused then CbBoxEhPnlBPAdd_6EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_7.Focused then CbBoxEhPnlBPAdd_7EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_8.Focused then CbBoxEhPnlBPAdd_8EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_9.Focused then CbBoxEhPnlBPAdd_9EditButtons0Click(Self,Handled);
          if CbBoxEhPnlBPAdd_10.Focused then CbBoxEhPnlBPAdd_10EditButtons0Click(Self,Handled);
        end;

      //кнопки "добавления" панелей
      if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) then
        begin
          if SpBtnPlus_1.Enabled and PnlAddBasePrice_1.Visible
            then SpBtnPlus_1Click(Self)
            else
              if SpBtnPlus_2.Enabled and PnlAddBasePrice_2.Visible
                then SpBtnPlus_2Click(Self)
                else
                  if SpBtnPlus_3.Enabled and PnlAddBasePrice_3.Visible
                    then SpBtnPlus_3Click(Self)
                    else
                      if SpBtnPlus_4.Enabled and PnlAddBasePrice_4.Visible
                        then SpBtnPlus_4Click(Self)
                        else
                          if SpBtnPlus_5.Enabled and PnlAddBasePrice_5.Visible
                          then SpBtnPlus_5Click(Self)
                            else
                              if SpBtnPlus_6.Enabled and PnlAddBasePrice_6.Visible
                              then SpBtnPlus_6Click(Self)
                              else
                                if SpBtnPlus_7.Enabled and PnlAddBasePrice_7.Visible
                                  then SpBtnPlus_7Click(Self)
                                  else
                                    if SpBtnPlus_8.Enabled and PnlAddBasePrice_8.Visible
                                      then SpBtnPlus_8Click(Self)
                                      else
                                        if SpBtnPlus_9.Enabled and PnlAddBasePrice_9.Visible
                                          then SpBtnPlus_9Click(Self);
        end;

      //кнопки "удаления" панелей
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) then
        begin
          if SpBtnMinus_10.Enabled and PnlAddBasePrice_10.Visible
            then SpBtnMinus_10Click(Self)
            else
              if SpBtnMinus_9.Enabled and PnlAddBasePrice_9.Visible
                then SpBtnMinus_9Click(Self)
                else
                  if SpBtnMinus_8.Enabled and PnlAddBasePrice_8.Visible
                    then SpBtnMinus_8Click(Self)
                    else
                      if SpBtnMinus_7.Enabled and PnlAddBasePrice_7.Visible
                        then SpBtnMinus_7Click(Self)
                        else
                          if SpBtnMinus_6.Enabled and PnlAddBasePrice_6.Visible
                            then SpBtnMinus_6Click(Self)
                            else
                              if SpBtnMinus_5.Enabled and PnlAddBasePrice_5.Visible
                                then SpBtnMinus_5Click(Self)
                                else
                                  if SpBtnMinus_4.Enabled and PnlAddBasePrice_4.Visible
                                    then SpBtnMinus_4Click(Self)
                                    else
                                      if SpBtnMinus_3.Enabled and PnlAddBasePrice_3.Visible
                                        then SpBtnMinus_3Click(Self)
                                        else
                                          if SpBtnMinus_2.Enabled and PnlAddBasePrice_2.Visible
                                            then SpBtnMinus_2Click(Self);
        end;
    end
  else
    begin
      if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Закрыть"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnCreateClick(Self);//эмулируем нажатие клавиши "Создать прайс-лист"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('D')) < 0) then BtnResetCountPriceClick(Self);//эмулируем нажатие клавиши "Обнулить счетчики"

      //эмулируем нажатия клавиш редактирования грида
      if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnProcAdd.Enabled then SpBtnProcAddClick(Self);
      if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnProcEdt.Enabled then SpBtnProcEdtClick(Self);
      if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnProcDelete.Enabled then SpBtnProcDeleteClick(Self);
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmBasePrice.SaveSettings;

if DMFIB.DSetBasePrice.Active then DMFIB.DSetBasePrice.Close;
if DSetEhDBCbBox.Active then DSetEhDBCbBox.Close;

end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.FormShow(Sender: TObject);
begin
ShowPnlViewBasePrice(Sender);
end;
//----------------------------------------------------------------------------------

procedure TFrmBasePrice.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//центруем заголовок

with LblWarning do
  begin
    Parent:= GridEhBasePrice;
    Left:= (GridEhBasePrice.Width - LblWarning.Width) div 2;
    Top:= GridEhBasePrice.Height div 2;
  end;

end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.GridEhBasePriceDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridEhBasePrice.DataSource.DataSet.RecNo mod 2 = 1
	then GridEhBasePrice.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		GridEhBasePrice.Canvas.Brush.Color:= clMoneyGreen;
		GridEhBasePrice.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	GridEhBasePrice.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.BtnCloseClick(Sender: TObject);
begin
if DMFIB.DSetBasePrice.Modified then DMFIB.DSetBasePrice.Post;
Close;
BasePriceFlag:= False;//выключим флаг, чтобы форма-сендер знала кнопку-сендера
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.BtnCreateClick(Sender: TObject);
var NamePrice: string;
begin
DMFIB.DSetBasePrice.FullRefresh;
if DMFIB.DSetBasePrice.IsEmpty then
  begin
    Application.MessageBox('Заполните базовый прайс!', 'Недостаточно данных',
                                                              MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

if not InputQuery('Новый прайс-лист ','Введите название нового прайс-листа '
              + '(не более 35 знаков)', NamePrice)
  then Exit
  else
    with DMFIB do
      begin
        //если имя ввода пустое, то предупредим и выйдем
        if Trim(NamePrice) = '' then
          begin
            Application.MessageBox('Название прайса не может быть пустой строкой!',
                                      'Некорректные данные', MB_ICONINFORMATION + MB_OK);
            Exit;
          end;
        NamePrice:= LeftStr(Trim(NamePrice),35);
        //проверка на существование имени прайса-листа
        with DSetTemp do
          begin
            if Active then Close;
            SQLs.SelectSQL.Clear;
            SQLs.SelectSQL.Text:= 'SELECT NAME_PRICE FROM TBL_PRICE '
                                              + 'WHERE NAME_PRICE LIKE :prmNamePrice';
            Prepare;
            ParamByName('prmNamePrice').AsString:= Trim(NamePrice);
            Open;
            if not IsEmpty then
              begin
                Application.MessageBox('Прайс с таким именем уже существует!', 'Ошибка '
                + 'ввода данных', MB_ICONINFORMATION + MB_OK);
                Exit;
              end;
          end;{with DSetTemp do}

        //вставка нового прайса в общую таблицу, если все корректно

        with DMFIB, QryTemp do
          begin
            try{1}
              SQL.Clear;
              SQL.Text:= 'INSERT INTO TBL_PRICE (FK_BASEPRICE) '
                       + 'SELECT BASEPRICE_ID FROM TBL_BASEPRICE';

              //выполним запрос на вставку
              ExecQuery;

              //пробуем дальше, если все успешно
              try{2}
                SQL.Text:= 'UPDATE TBL_PRICE '
                         + 'SET NAME_PRICE = :prmNamePrice '
                         + 'WHERE NAME_PRICE = CURRENT_USER';
                ParamCheck:= True;
                Prepare;
                ParamByName('prmNamePrice').AsString:= NamePrice;
                ExecQuery;

                PriceListName:= NamePrice;//введем новое значение читаемого прайса
                BasePriceFlag:= True;//включим флаг, чтобы форма-сендер знала кнопку-сендера
              except{2}
                BasePriceFlag:= False;//выключим флаг, чтобы форма-сендер не знала эту кнопку-сендера

                Application.MessageBox(PChar(ErrorMsg),'Ошибка обновления данных', MB_ICONINFORMATION);
                Exit;//вылетаем из процедуры
              end;{try..except 2}
            except{1}
              BasePriceFlag:= False;//выключим флаг, чтобы форма-сендер не знала эту кнопку-сендера
              Application.MessageBox(PChar(ErrorMsg),'Ошибка добавления данных', MB_ICONINFORMATION);
              Exit;//вылетаем из процедуры
            end;{try..except 1}
          end;{with DMFIB, QryTemp do}
          
      //сохраним изменения базового прайса, если они были не зафиксированы
      if DSetBasePrice.Modified then DSetBasePrice.Post;
      end;{with DMFIB do}

Close;//закроем форму
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxBasePrice);
end;

//----------------------------------------------------------------------------------
//показываем панель добавления/редактирования записей
procedure TFrmBasePrice.ShowPnlEdtBasePrice(Sender: TObject);
begin
//покажем/спрячем соответствующие панели редактирования
PnlEdtBasePrice.Visible:= not TmpBasePriceFlag;
PnlEdtBasePrice.Align:= alTop;
PnlAddBasePrice_1.Visible:= TmpBasePriceFlag;
PnlAddBasePrice_1.Align:= alTop;

SpBtnPlus_1.Enabled:= True;
SpBtnPlus_2.Enabled:= True;
SpBtnPlus_3.Enabled:= True;
SpBtnPlus_4.Enabled:= True;
SpBtnPlus_5.Enabled:= True;
SpBtnPlus_6.Enabled:= True;
SpBtnPlus_7.Enabled:= True;
SpBtnPlus_8.Enabled:= True;
SpBtnPlus_9.Enabled:= True;

PnlAddBasePrice_2.Visible:= False;
PnlAddBasePrice_3.Visible:= False;
PnlAddBasePrice_4.Visible:= False;
PnlAddBasePrice_5.Visible:= False;
PnlAddBasePrice_6.Visible:= False;
PnlAddBasePrice_7.Visible:= False;
PnlAddBasePrice_8.Visible:= False;
PnlAddBasePrice_9.Visible:= False;
PnlAddBasePrice_10.Visible:= False;

PnlViewBasePrice.Enabled:= False;
PnlViewBasePrice.Align:= alBottom;
FrmMainProg.SwitchGrid(GridEhBasePrice, False);

//прячем кнопки сохранения
BtnClose.Visible:= False;
BtnCreate.Visible:= False;
BtnResetCountPrice.Visible:= False;

//покажем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

//сделаем недоступными кнопки редактирования таблицы
SpBtnProcAdd.Enabled:= False;
SpBtnProcEdt.Enabled:= False;
SpBtnProcDelete.Enabled:= False;

CbBoxEhPnlBPAdd_1.Clear;
CbBoxEhPnlBPAdd_2.Clear;
CbBoxEhPnlBPAdd_3.Clear;
CbBoxEhPnlBPAdd_4.Clear;
CbBoxEhPnlBPAdd_5.Clear;
CbBoxEhPnlBPAdd_6.Clear;
CbBoxEhPnlBPAdd_7.Clear;
CbBoxEhPnlBPAdd_8.Clear;
CbBoxEhPnlBPAdd_9.Clear;
CbBoxEhPnlBPAdd_10.Clear;
CbBoxEhPnlBPEdt.Clear;

EhEdtPnlBPEdt_ProcCode.Clear;
EhEdtPnlBPEdt_ProcName.Clear;
EhEdtPnlBPAdd_1.Clear;
EhEdtPnlBPAdd_2.Clear;
EhEdtPnlBPAdd_3.Clear;
EhEdtPnlBPAdd_4.Clear;
EhEdtPnlBPAdd_5.Clear;
EhEdtPnlBPAdd_6.Clear;
EhEdtPnlBPAdd_7.Clear;
EhEdtPnlBPAdd_8.Clear;
EhEdtPnlBPAdd_9.Clear;
EhEdtPnlBPAdd_10.Clear;


with DMFIB do
  begin
    DSetLaborIssue.FullRefresh;//освежим табличку корневых разделов прайса
    if TmpBasePriceFlag //если добавляем запись
      then
        begin
          LblCapt.Caption:= 'Добавьте новые услуги в базовый прайс';//нажата кнопка "Добавить"
          PrepareAllDBLookUpCbBox(Sender);//заполним лукапы значениями разделов
          if not DSetLaborIssue.IsEmpty then //если таблица раздела не пустая
            begin
              //поставим во всех лукапах значение первой записи
              DSetLaborIssue.First;
              CbBoxEhPnlBPAdd_1.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_2.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_3.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_4.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_5.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_6.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_7.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_8.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_9.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
              CbBoxEhPnlBPAdd_10.KeyValue:= DSetLaborIssue.FN('LABORISSUE_ID').Value;
            end;
        end
      else
        begin
          LblCapt.Caption:= 'Отредактируйте данные по медицинской услуге';//нажата кнопка "Редактировать"

          //сопоставим курсоры
          if not DSetLaborIssue.IsEmpty then
            begin
              DSetLaborIssue.Locate('LABORISSUE_ID',DSetBasePrice['BASEPRICE_PROC_ISSUE_FK'],[]);
              DSetEhDBCbBox.Locate('LABORISSUE_ID',DSetBasePrice['BASEPRICE_PROC_ISSUE_FK'],[]);
            end;

          //заполним "редакторский" лукап значениями разделов
          PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPEdt);

          with DSetBasePrice do
            begin
              EhEdtPnlBPEdt_ProcCode.Text:= Trim(FN('BASEPRICE_PROC_CODE').AsString);
              EhEdtPnlBPEdt_ProcName.Text:= Trim(FN('BASEPRICE_PROC_NAME').AsString);

              //заполняем временные переменные для последующего отслеживания изменений
              ProcCodeStr:= Trim(FN('BASEPRICE_PROC_CODE').AsString);
              ProcNameStr:= Trim(FN('BASEPRICE_PROC_NAME').AsString);
              ProcKeyValue:= CbBoxEhPnlBPEdt.KeyValue;
            end;{with..do}
        end;
  end;

LblWarning.Font.Color:= clGray;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//показываем панель с табличкой
procedure TFrmBasePrice.ShowPnlViewBasePrice(Sender: TObject);
begin
LblCapt.Caption:= 'Базовый прайс на медицинские услуги ЛПУ';//название заголовка

PnlEdtBasePrice.Visible:= False;//прячем панель редактирования
PnlAddBasePrice_1.Visible:= False;//прячем панель редактирования #1
PnlAddBasePrice_2.Visible:= False;//прячем панель редактирования #2
PnlAddBasePrice_3.Visible:= False;//прячем панель редактирования #3
PnlAddBasePrice_4.Visible:= False;//прячем панель редактирования #4
PnlAddBasePrice_5.Visible:= False;//прячем панель редактирования #5
PnlAddBasePrice_6.Visible:= False;//прячем панель редактирования #6
PnlAddBasePrice_7.Visible:= False;//прячем панель редактирования #7
PnlAddBasePrice_8.Visible:= False;//прячем панель редактирования #8
PnlAddBasePrice_9.Visible:= False;//прячем панель редактирования #9
PnlAddBasePrice_10.Visible:= False;//прячем панель редактирования #10

PnlEdtBasePrice.Align:= alNone;
PnlAddBasePrice_1.Align:= alNone;
PnlAddBasePrice_2.Align:= alNone;
PnlAddBasePrice_3.Align:= alNone;
PnlAddBasePrice_4.Align:= alNone;
PnlAddBasePrice_5.Align:= alNone;
PnlAddBasePrice_6.Align:= alNone;
PnlAddBasePrice_7.Align:= alNone;
PnlAddBasePrice_8.Align:= alNone;
PnlAddBasePrice_9.Align:= alNone;
PnlAddBasePrice_10.Align:= alNone;

PnlViewBasePrice.Enabled:= True;//включаем панель с таблицей
PnlViewBasePrice.Align:= alClient;

//включаем/выключаем кнопки редактирования
BtnClose.Visible:= True;
SpBtnProcAdd.Enabled:= True;

BtnCreate.Visible:= CtrlVisFlag;
BtnResetCountPrice.Visible:= CtrlVisFlag;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

LblWarning.Font.Color:= clRed;//красим предупреждающую надпись

//перерисуем форму
FormResize(Sender);

with DMFIB, DSetBasePrice do
  begin
    FullRefresh;//"освежаем" набор
    SpBtnProcEdt.Enabled:= not IsEmpty;
    SpBtnProcDelete.Enabled:= not IsEmpty;
    LblWarning.Visible:= IsEmpty;//спрячем предупреждение, если табля не пустая
    BtnCreate.Enabled:= not IsEmpty;
    BtnResetCountPrice.Enabled:= not IsEmpty;

    FrmMainProg.SwitchGrid(GridEhBasePrice, not IsEmpty);
  end;

if GridEhBasePrice.CanFocus then
  begin
    GridEhBasePrice.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
    GridEhBasePrice.Columns[0].Title.SortMarker:= smUpEh;
    GridEhBasePrice.Columns[0].Title.SetNextSortMarkerValue(False);
    GridEhBasePrice.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------------
//сохранение изменений
procedure TFrmBasePrice.BtnSaveClick(Sender: TObject);
var TmpCount: Integer;//условный счетчик пустых эдитов
begin
TmpCount:= 0;
FIBTmpScripterBP.Script.Clear;//почистим скриптер

DMFIB.DSetLaborIssue.FullRefresh;//освежим набор

//если мастер-набор DSetLaborIssue (таблица корневых разделов прайса) пустой
if DMFIB.DSetLaborIssue.IsEmpty then
    begin
      //выдадим предупреждение
      Application.MessageBox('Не заполнена таблица разделов прайса !', 'Недостаточно данных',
                                                                            MB_ICONINFORMATION);
      PrepareAllDBLookUpCbBox(Sender);//покажем предупреждение в лукапе
      if TmpBasePriceFlag//если запись добавляется
        then //фокус на самый первый лукап
          begin
            if CbBoxEhPnlBPAdd_1.CanFocus then CbBoxEhPnlBPAdd_1.SetFocus;
          end
        else //фокус на "редакторский" лукап
          begin
            if CbBoxEhPnlBPEdt.CanFocus then CbBoxEhPnlBPEdt.SetFocus;
          end;

      Exit;//выйдем из процедуры
    end; {if DSetLaborIssue.IsEmpty .. then}

//если не вышли при проверке выше, значит мастер-набор
//DSetLaborIssue (таблица корневых разделов прайса) не пустой - можно двигать дальше
if TmpBasePriceFlag //проверим флаг добавить-редактировать
  then//если запись добавляется
    begin
      //подготовим датасет для проверки на уникальность названия выводимой мед.услуги
      with FIBTmpDSetBP do
        begin
          if Active then Close;
          SQLs.SelectSQL.Clear;
          SQLs.SelectSQL.Text:= 'SELECT BASEPRICE_PROC_CODE, BASEPRICE_PROC_NAME '
                              + 'FROM TBL_BASEPRICE '
                              + 'WHERE UPPER(BASEPRICE_PROC_NAME) = UPPER(:StrName)';
          Prepare;//подготовим параметр

          //*** анализируем заполненность эдитов
          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_1.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_1.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_1.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_1.CanFocus then EhEdtPnlBPAdd_1.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_1.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_1.Text) + ''');');
                  end;
            end;{if Trim(EhEdtPnlBPAdd_1.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_2.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_2.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_2.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_2.CanFocus then EhEdtPnlBPAdd_2.SetFocus;
                    Exit;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_2.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_2.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_2.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_3.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_3.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_3.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_3.CanFocus then EhEdtPnlBPAdd_3.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_3.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_3.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_3.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_4.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_4.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_4.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_4.CanFocus then EhEdtPnlBPAdd_4.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_4.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_4.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_4.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_5.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_5.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_5.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_5.CanFocus then EhEdtPnlBPAdd_5.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_5.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_5.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_5.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_6.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_6.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_6.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_6.CanFocus then EhEdtPnlBPAdd_6.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_6.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_6.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_6.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_7.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_7.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_7.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_7.CanFocus then EhEdtPnlBPAdd_7.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_7.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_7.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_7.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_8.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_8.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_8.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_8.CanFocus then EhEdtPnlBPAdd_8.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_8.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_8.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_8.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_9.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_9.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_9.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_9.CanFocus then EhEdtPnlBPAdd_9.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_9.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_9.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_9.Text) <> '' then}

          {------------------------------------------------------------}
          if Trim(EhEdtPnlBPAdd_10.Text) <> '' then //если эдит не пустой
            begin
              TmpCount:= 1;//пометим счетчик

              if Active then Close;
              Prepare;//подготовим параметр
              ParamByName('StrName').AsString:= Trim(EhEdtPnlBPAdd_10.Text);
              Open;//поищем подобную запись в БД

              if not IsEmpty //если в БД такое поле уже есть,
                then  //то предупредим и выйдем, иначе получим ошибку нарушения уникальности поля
                  begin
                    Application.MessageBox(PChar('Медицинская услуга "'
                     + Trim(EhEdtPnlBPAdd_10.Text) + '" УЖЕ СУЩЕСТВУЕТ (!) в базовом прайсе c '
                     + 'кодом ''' + Trim(FN('BASEPRICE_PROC_CODE').AsString) + ''' ! ' + #13#10
                     + 'Пожалуйста, введите принципиально новое название медицинской услуги.'),
                       'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPAdd_10.CanFocus then EhEdtPnlBPAdd_10.SetFocus;
                    Abort;
                  end
                else
                  begin
                    //добавим текст в скриптер
                    FIBTmpScripterBP.Script.
                      Add('INSERT INTO TBL_BASEPRICE (BASEPRICE_PROC_ISSUE_FK, BASEPRICE_PROC_NAME) '
                      + 'VALUES (' + VarToStr(CbBoxEhPnlBPAdd_10.KeyValue) + ' ,'''
                      + Trim(EhEdtPnlBPAdd_10.Text) + ''');');
                  end;
            end; {if Trim(EhEdtPnlBPAdd_10.Text) <> '' then}

        end;  {with FIBTmpDSetBP .. do}

      //если все эдиты пустые, то предупредим и запретим дальнейшее сохранение
      if TmpCount = 0
        then
          begin
            Application.MessageBox('Введите название хотя бы одной медицинской услуги!',
                                             'Недостаточно данных', MB_ICONINFORMATION);
            if EhEdtPnlBPAdd_1.CanFocus then EhEdtPnlBPAdd_1.SetFocus;
            Abort;
          end
        else//заполнен хотя бы один эдит и соблюдены условия уникальности
          begin
            //на всякий случай проверим заполненность скриптера стейтментами
            FIBTmpScripterBP.Parse;//парсим
            if FIBTmpScripterBP.StatementsCount > 0 then //анализируем
              begin
              WriteTransBP.StartTransaction;
                  try
                    FIBTmpScripterBP.ExecuteScript;
                    WriteTransBP.Commit;
                  except
                    WriteTransBP.Rollback;
                    Application.MessageBox(PChar(ErrorMsg),'Ошибка выполнения скрипта', MB_ICONINFORMATION);
                    Exit;//тихо гасим сгенерированные самой формой исключения
                  end;
              end;
          end;
    end {if TmpBasePriceFlag .. then}
  else//если запись редактируется
    begin
      //******* отслеживаем попытки редактирования *******
      //если вообще ничего не изменяли
      if (Trim(EhEdtPnlBPEdt_ProcCode.Text) = ProcCodeStr)
            and (Trim(EhEdtPnlBPEdt_ProcName.Text) = ProcNameStr)
                and (CbBoxEhPnlBPEdt.KeyValue = ProcKeyValue)
        then //то предупредим об этом и выйдем из процедуры
          begin
            Application.MessageBox('Данные Вами не изменялись - сохранять нечего !',
                                                      'Некорректные изменения', MB_ICONINFORMATION);
            Exit;//безаппеляционно вернемся к редактированию
          end;


      //если хоть что-то меняли, то анализируем изменения
      if (Trim(EhEdtPnlBPEdt_ProcCode.Text) <> ProcCodeStr)
            or (Trim(EhEdtPnlBPEdt_ProcName.Text) <> ProcNameStr)
                or (CbBoxEhPnlBPEdt.KeyValue <> ProcKeyValue)
        then
          begin
            //отследим соответствие выбранного раздела в ДБкомбе обозначенному коду
            if FIBTmpDSetBP.Active then FIBTmpDSetBP.Close;
            FIBTmpDSetBP.SQLs.SelectSQL.Clear;
            FIBTmpDSetBP.SQLs.SelectSQL.Text:= 'SELECT LABORISSUE_NAME, LABORISSUE_CODELITER '
                                             + 'FROM TBL_LABORISSUE '
                                             + 'WHERE LABORISSUE_ID = :prmKeyVal';
            FIBTmpDSetBP.Prepare;
            FIBTmpDSetBP.ParamByName('prmKeyVal').Value:= CbBoxEhPnlBPEdt.KeyValue;
            FIBTmpDSetBP.Open;

            //если в отредактированном коде отсутствует литера выбранного корневого раздела
            //и при этом поле с кодом не пустое
            if (pos(AnsiUpperCase(Trim(FIBTmpDSetBP.FN('LABORISSUE_CODELITER').AsString)),
                                              AnsiUpperCase(Trim(EhEdtPnlBPEdt_ProcCode.Text))) = 0)
                                                     and ((EhEdtPnlBPEdt_ProcCode.Text) <> '') then
              //предупредим об этом и предложим вернуться для коррекции
              if Application.MessageBox(PChar('В введенном Вами коде медицинской услуги "'
                     + Trim(EhEdtPnlBPEdt_ProcCode.Text) + '" отсутствует литера "'
                     + Trim(FIBTmpDSetBP.FN('LABORISSUE_CODELITER').AsString) + '", автоматически '
                     + 'вставляемая в составной код всех медицинских услуг корневого раздела "'
                     + AnsiUpperCase(Trim(DSetEhDBCbBox.FN('LABORISSUE_NAME').AsString))
                     + '". В дальнейшем такое несоответствие может вызвать путаницу при '
                     + 'поиске медицинской услуги по коду корневого раздела. Хотите исправить '
                     + 'неточность?'),'Некорректные данные', MB_ICONINFORMATION + MB_YESNO) = IDYes
                then Exit;//выйдем (вернемся к редактированию), если нажали кнопку "Да"

            //отследим наличие в коде пробелов, если поле с кодом не пустое
            if (Pos(' ',Trim(EhEdtPnlBPEdt_ProcCode.Text)) > 0) and (Trim(EhEdtPnlBPEdt_ProcCode.Text) <> '')
              then //если пробелы имеются, то предупредим о недопустимости "дырок" и заставим их убрать
                begin
                  Application.MessageBox('Текст кода медицинской услуги не должен содержать пробелов !',
                                                                  'Некорректные данные', MB_ICONINFORMATION);
                  if EhEdtPnlBPEdt_ProcCode.CanFocus then EhEdtPnlBPEdt_ProcCode.SetFocus;
                  Exit;
                end;

            //отследим изменения обоих эдитов
            if (Trim(EhEdtPnlBPEdt_ProcCode.Text) <> ProcCodeStr)
                                        or (Trim(EhEdtPnlBPEdt_ProcName.Text) <> ProcNameStr) then
              begin
                //*** проверка пустых строк ***
                if Trim(EhEdtPnlBPEdt_ProcCode.Text) = '' then
                  begin
                    Application.MessageBox('Вы не ввели код медицинской услуги !',
                                                        'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPEdt_ProcCode.CanFocus then EhEdtPnlBPEdt_ProcCode.SetFocus;
                    Exit;
                  end;

                if Trim(EhEdtPnlBPEdt_ProcName.Text) = '' then
                  begin
                    Application.MessageBox('Вы не ввели наименование медицинской услуги !',
                                                        'Некорректные данные', MB_ICONINFORMATION);
                    if EhEdtPnlBPEdt_ProcName.CanFocus then EhEdtPnlBPEdt_ProcName.SetFocus;
                    Exit;
                  end;

                //*** проверка уникальности вводимых значений ***
                //кода медуслуги
                if Trim(EhEdtPnlBPEdt_ProcCode.Text) <> ProcCodeStr then
                  begin
                    if FIBTmpDSetBP.Active then FIBTmpDSetBP.Close;
                    FIBTmpDSetBP.SQLs.SelectSQL.Clear;
                    FIBTmpDSetBP.SQLs.SelectSQL.Text:=
                                        'SELECT BASEPRICE_PROC_CODE, BASEPRICE_PROC_NAME '
                                      + 'FROM TBL_BASEPRICE '
                                      + 'WHERE UPPER(BASEPRICE_PROC_CODE) = UPPER(:prmProcCode)';
                    FIBTmpDSetBP.Prepare;
                    FIBTmpDSetBP.ParamByName('prmProcCode').AsString:= Trim(EhEdtPnlBPEdt_ProcCode.Text);
                    FIBTmpDSetBP.Open;

                    if not FIBTmpDSetBP.IsEmpty then
                      begin
                        Application.MessageBox(PChar('В базовом прайс-листе уже существующему коду "'
                        + Trim(EhEdtPnlBPEdt_ProcCode.Text) + '" соответствует медицинская услуга "'
                        + Trim(FIBTmpDSetBP.FN('BASEPRICE_PROC_NAME').AsString) + '" !' + #13#10
                        + 'Введите другое значение кода услуги, либо оставьте прежнее (до начала '
                        + 'редактирования код был "' + ProcCodeStr + '").'),
                                                                  'Некорректные данные', MB_ICONINFORMATION);
                        if EhEdtPnlBPEdt_ProcCode.CanFocus then EhEdtPnlBPEdt_ProcCode.SetFocus;
                        Exit;
                      end;
                  end;

                //названия медицинской услуги
                if Trim(EhEdtPnlBPEdt_ProcName.Text) <> ProcNameStr then
                  begin
                    if FIBTmpDSetBP.Active then FIBTmpDSetBP.Close;
                    FIBTmpDSetBP.SQLs.SelectSQL.Clear;
                    FIBTmpDSetBP.SQLs.SelectSQL.Text:=
                                        'SELECT BASEPRICE_PROC_CODE, BASEPRICE_PROC_NAME '
                                      + 'FROM TBL_BASEPRICE '
                                      + 'WHERE UPPER(BASEPRICE_PROC_NAME) = UPPER(:prmProcName)';
                    FIBTmpDSetBP.Prepare;
                    FIBTmpDSetBP.ParamByName('prmProcName').AsString:= Trim(EhEdtPnlBPEdt_ProcName.Text);
                    FIBTmpDSetBP.Open;

                    if not FIBTmpDSetBP.IsEmpty then
                      begin
                        Application.MessageBox(PChar('В базовом прайс-листе уже имеется медицинская услуга "'
                            + Trim(FIBTmpDSetBP.FN('BASEPRICE_PROC_NAME').AsString) + '", но с кодом "'
                            + Trim(FIBTmpDSetBP.FN('BASEPRICE_PROC_CODE').AsString) + '" !' + #13#10
                            + 'Введите другое название медицинской услуги, либо оставьте прежнее (до начала '
                            + 'редактирования оно было "' + ProcNameStr + '").'),
                                                                  'Некорректные данные', MB_ICONINFORMATION);
                        if EhEdtPnlBPEdt_ProcName.CanFocus then EhEdtPnlBPEdt_ProcName.SetFocus;
                        Exit;
                      end;
                  end;
              end;{если меняли в одном их эдитов}
          end;{если хоть что-то меняли}

      //поскольку прошли все проверки благополучно то изменяем данные в датасете
      try
        with DMFIB.DSetBasePrice do
          begin
            Edit;
            FN('BASEPRICE_PROC_ISSUE_FK').Value:= CbBoxEhPnlBPEdt.KeyValue;
            FN('BASEPRICE_PROC_CODE').AsString:= AnsiUpperCase(Trim(EhEdtPnlBPEdt_ProcCode.Text));
            FN('BASEPRICE_PROC_NAME').AsString:= Trim(EhEdtPnlBPEdt_ProcName.Text);
            if DMFIB.DSetBasePrice.Modified then Post;
          end;

      except
        if DMFIB.DSetBasePrice.Modified then DMFIB.DSetBasePrice.Cancel;
        Application.MessageBox(PChar(ErrorMsg),'Ошибка изменения данных', MB_ICONINFORMATION);
        Exit;
      end;
    end; {if TmpBasePriceFlag .. else}
    
ShowPnlViewBasePrice(Sender);
end;

//----------------------------------------------------------------------------------
//отмена изменений
procedure TFrmBasePrice.BtnCancelClick(Sender: TObject);
begin
ShowPnlViewBasePrice(Sender);
end;

//----------------------------------------------------------------------------------
//добавить запись
procedure TFrmBasePrice.SpBtnProcAddClick(Sender: TObject);
begin
TmpBasePriceFlag:= True;
ShowPnlEdtBasePrice(Sender);
end;

//----------------------------------------------------------------------------------
//изменить запись
procedure TFrmBasePrice.SpBtnProcEdtClick(Sender: TObject);
begin
TmpBasePriceFlag:= False;
ShowPnlEdtBasePrice(Sender);
end;

//----------------------------------------------------------------------------------
//удалить запись
procedure TFrmBasePrice.SpBtnProcDeleteClick(Sender: TObject);
begin
  with DMFIB.DSetBasePrice do
    begin
      if IsEmpty then Exit;
      if Application.MessageBox(PChar('Вы действительно хотите удалить из базового прайса медицинскую '
                                             + 'услугу "' + Trim(FN('BASEPRICE_PROC_NAME').AsString) + '" ?'),
                                              'Удаление данных', MB_ICONINFORMATION + MB_YESNO) = IDYes then
        try
          Delete;
        except
          Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных', MB_ICONINFORMATION);
          Exit;//тихо гасим сгенерированные самой формой исключения
        end;
    end;
end;

(********************    Обработчики кнопок добавления/удаления панелей   *********************)
//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_2
procedure TFrmBasePrice.SpBtnPlus_1Click(Sender: TObject);
begin
PnlAddBasePrice_2.Top:= PnlAddBasePrice_1.Top + PnlAddBasePrice_1.Height;
PnlAddBasePrice_2.Visible:= True;
PnlAddBasePrice_2.Align:= alTop;
SpBtnMinus_2.Enabled:= True;
SpBtnPlus_1.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_2.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_3
procedure TFrmBasePrice.SpBtnPlus_2Click(Sender: TObject);
begin
PnlAddBasePrice_3.Top:= PnlAddBasePrice_2.Top + PnlAddBasePrice_2.Height;
PnlAddBasePrice_3.Visible:= True;
PnlAddBasePrice_3.Align:= alTop;
SpBtnMinus_3.Enabled:= True;
SpBtnPlus_2.Enabled:= False;
SpBtnMinus_2.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_3.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_2
procedure TFrmBasePrice.SpBtnMinus_2Click(Sender: TObject);
begin
PnlAddBasePrice_2.Visible:= False;
PnlAddBasePrice_2.Align:= alNone;
SpBtnMinus_2.Enabled:= False;
SpBtnPlus_1.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_2.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_4
procedure TFrmBasePrice.SpBtnPlus_3Click(Sender: TObject);
begin
PnlAddBasePrice_4.Top:= PnlAddBasePrice_3.Top + PnlAddBasePrice_3.Height;
PnlAddBasePrice_4.Visible:= True;
PnlAddBasePrice_4.Align:= alTop;
SpBtnMinus_4.Enabled:= True;
SpBtnPlus_3.Enabled:= False;
SpBtnMinus_3.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_4.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_3
procedure TFrmBasePrice.SpBtnMinus_3Click(Sender: TObject);
begin
PnlAddBasePrice_3.Visible:= False;
PnlAddBasePrice_3.Align:= alNone;
SpBtnMinus_3.Enabled:= False;
SpBtnPlus_2.Enabled:= True;
SpBtnMinus_2.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_3.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_5
procedure TFrmBasePrice.SpBtnPlus_4Click(Sender: TObject);
begin
PnlAddBasePrice_5.Top:= PnlAddBasePrice_4.Top + PnlAddBasePrice_4.Height;
PnlAddBasePrice_5.Visible:= True;
PnlAddBasePrice_5.Align:= alTop;
SpBtnMinus_5.Enabled:= True;
SpBtnPlus_4.Enabled:= False;
SpBtnMinus_4.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_5.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_4
procedure TFrmBasePrice.SpBtnMinus_4Click(Sender: TObject);
begin
PnlAddBasePrice_4.Visible:= False;
PnlAddBasePrice_4.Align:= alNone;
SpBtnMinus_4.Enabled:= False;
SpBtnPlus_3.Enabled:= True;
SpBtnMinus_3.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_4.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_6
procedure TFrmBasePrice.SpBtnPlus_5Click(Sender: TObject);
begin
PnlAddBasePrice_6.Top:= PnlAddBasePrice_5.Top + PnlAddBasePrice_5.Height;
PnlAddBasePrice_6.Visible:= True;
PnlAddBasePrice_6.Align:= alTop;
SpBtnMinus_6.Enabled:= True;
SpBtnPlus_5.Enabled:= False;
SpBtnMinus_5.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_6.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_5
procedure TFrmBasePrice.SpBtnMinus_5Click(Sender: TObject);
begin
PnlAddBasePrice_5.Visible:= False;
PnlAddBasePrice_5.Align:= alNone;
SpBtnMinus_5.Enabled:= False;
SpBtnPlus_4.Enabled:= True;
SpBtnMinus_4.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_5.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_7
procedure TFrmBasePrice.SpBtnPlus_6Click(Sender: TObject);
begin
PnlAddBasePrice_7.Top:= PnlAddBasePrice_6.Top + PnlAddBasePrice_6.Height;
PnlAddBasePrice_7.Visible:= True;
PnlAddBasePrice_7.Align:= alTop;
SpBtnMinus_7.Enabled:= True;
SpBtnPlus_6.Enabled:= False;
SpBtnMinus_6.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_7.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_6
procedure TFrmBasePrice.SpBtnMinus_6Click(Sender: TObject);
begin
PnlAddBasePrice_6.Visible:= False;
PnlAddBasePrice_6.Align:= alNone;
SpBtnMinus_6.Enabled:= False;
SpBtnPlus_5.Enabled:= True;
SpBtnMinus_5.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_6.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_8
procedure TFrmBasePrice.SpBtnPlus_7Click(Sender: TObject);
begin
PnlAddBasePrice_8.Top:= PnlAddBasePrice_7.Top + PnlAddBasePrice_7.Height;
PnlAddBasePrice_8.Visible:= True;
PnlAddBasePrice_8.Align:= alTop;
SpBtnMinus_8.Enabled:= True;
SpBtnPlus_7.Enabled:= False;
SpBtnMinus_7.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_8.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_7
procedure TFrmBasePrice.SpBtnMinus_7Click(Sender: TObject);
begin
PnlAddBasePrice_7.Visible:= False;
PnlAddBasePrice_7.Align:= alNone;
SpBtnMinus_7.Enabled:= False;
SpBtnPlus_6.Enabled:= True;
SpBtnMinus_6.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_7.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_9
procedure TFrmBasePrice.SpBtnPlus_8Click(Sender: TObject);
begin
PnlAddBasePrice_9.Top:= PnlAddBasePrice_8.Top + PnlAddBasePrice_8.Height;
PnlAddBasePrice_9.Visible:= True;
PnlAddBasePrice_9.Align:= alTop;
SpBtnMinus_9.Enabled:= True;
SpBtnPlus_8.Enabled:= False;
SpBtnMinus_8.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_9.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_8
procedure TFrmBasePrice.SpBtnMinus_8Click(Sender: TObject);
begin
PnlAddBasePrice_8.Visible:= False;
PnlAddBasePrice_8.Align:= alNone;
SpBtnMinus_8.Enabled:= False;
SpBtnPlus_7.Enabled:= True;
SpBtnMinus_7.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_8.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//добавляем PnlAddBasePrice_10
procedure TFrmBasePrice.SpBtnPlus_9Click(Sender: TObject);
begin
PnlAddBasePrice_10.Top:= PnlAddBasePrice_9.Top + PnlAddBasePrice_9.Height;
PnlAddBasePrice_10.Visible:= True;
PnlAddBasePrice_10.Align:= alTop;
SpBtnMinus_10.Enabled:= True;
SpBtnPlus_9.Enabled:= False;
SpBtnMinus_9.Enabled:= False;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height - PnlAddBasePrice_10.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_9
procedure TFrmBasePrice.SpBtnMinus_9Click(Sender: TObject);
begin
PnlAddBasePrice_9.Visible:= False;
PnlAddBasePrice_9.Align:= alNone;
SpBtnMinus_9.Enabled:= False;
SpBtnPlus_8.Enabled:= True;
SpBtnMinus_8.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_9.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------
//удаляем PnlAddBasePrice_10
procedure TFrmBasePrice.SpBtnMinus_10Click(Sender: TObject);
begin
PnlAddBasePrice_10.Visible:= False;
PnlAddBasePrice_10.Align:= alNone;
SpBtnMinus_10.Enabled:= False;
SpBtnPlus_9.Enabled:= True;
SpBtnMinus_9.Enabled:= True;
PnlViewBasePrice.Height:= PnlViewBasePrice.Height + PnlAddBasePrice_10.Height;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.PrepareAllDBLookUpCbBox(Sender: TObject);
begin
DSetEhDBCbBox.FullRefresh;

//заполним лукап значениями разделов
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_1);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_2);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_3);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_4);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_5);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_6);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_7);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_8);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_9);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPAdd_10);
PrepareAnyDBLookUpCbBox(CbBoxEhPnlBPEdt);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_5EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_6EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_7EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_8EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_9EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPAdd_10EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.CbBoxEhPnlBPEdtEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
FrmMainProg.ActLaborIssueExecute(Sender);
PrepareAllDBLookUpCbBox(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.PrepareAnyDBLookUpCbBox(Sender: TDBLookupComboboxEh);
begin
  //освежаем DBLookUp и подключаем его к набору
  with TDBLookupComboboxEh(Sender) do
    begin
      if not DSetEhDBCbBox.IsEmpty
        then //если набор не пустой
          begin
            ListSource:= nil;
            ListSource:= DSDSetEhDBCbBox;
            KeyField:= 'LABORISSUE_ID';
            ListField:= 'NAMELITER';
            KeyValue:= DSetEhDBCbBox.FN('LABORISSUE_ID').Value;
            Font.Color:= clWindowText;
          end{if not..then}
        else //если набор пустой
          begin
            KeyField:= '';
            ListField:= '';
            KeyValue:= 0;
            ListSource:= nil;
            Text:= 'Добавьте разделы !';
            Font.Color:= clRed;
          end;{if not..else}
    end;{with}
end;

//----------------------------------------------------------------------------------

procedure TFrmBasePrice.EhEdtPnlBPEdt_ProcCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < #65) or (Key > #90))
    and ((Key < #97) or (Key > #122))
      and ((Key < '0') or (Key > '9'))
        and (Key <> #8) and (Key <> #46)
          and (Key <> #13) and (Key <> '_')
  then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только символы латинского алфавита, цифры '
      + 'и знак подчеркивания ''_'' !', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------------
//обнуляем генератор TBL_BASERPRICE, чтобы отсчет кода медуслуг начался с нуля
procedure TFrmBasePrice.BtnResetCountPriceClick(Sender: TObject);
begin
  with DMFIB do
    begin
      DSetBasePrice.FullRefresh;
      //проверим, пуст ли базовый прайс
      if not DSetBasePrice.IsEmpty then //если не пуст
        begin
        //попытаем еще раз вразумить юзера от этого шага по "наведению красоты" в гридах
        if Application.MessageBox('Эта кнопка предназначена для "обнуления" счетчика кода медицинских процедур, '
          + 'который формируется автоматически при добавлении новой записи в таблицу базового прайса. '
          + 'Результатом будет "наведение красоты" в вашей таблице, т.е. вместо номеров LAB_30071, '
          + 'LAB_30072, LAB_30073 Вы вновь сможете получать "красивые" номера типа LAB_1, LAB_2, LAB_3 '
          + ' и т.д.' + #13#10 + #13#10
          + 'Однако нажатие этой кнопки приведет к последующим действиям, которые некотором роде '
          + 'нарушают основные принципы работы с базами данных, а именно: СЧЕТЧИКИ уникальных значений записей в '
          + 'таблицах НЕ ДОЛЖНЫ ИЗМЕНЯТЬСЯ на протяжении "жизни" базы данных.' + #13#10 + #13#10
          + 'Но из каждого правила всегда бывают исключения при соблюдении некоторых условий. '
          + 'Применительно к данной ситуации это будет означать, что сначала придется удалить все '
          + 'прайс-листы с их ценами на услуги, имеющимися в базе на данный момент, а затем и весь '
          + 'список услуг базового прайса.' + #13#10 + #13#10
          + 'Таким образом, Вам придется ЗАНОВО ВВОДИТЬ сначала весь список оказываемых медицинских '
          + 'услуг в базовом прайс-листе, а потом ЗАНОВО ФОРМИРОВАТЬ из них прайсы с актуальными на '
          + 'момент формирования прайса ценами на услуги. Поэтому БЕЗ крайней НЕОБХОДИМОСТИ делать это '
          + 'настоятельно НЕ РЕКОМЕНДУЕТСЯ.' + #13#10 + #13#10
          + 'Прочитав выше описанное и четко представляя конечный результат, Вы по-прежнему хотите "обнулить" '
          + 'счетчики?', 'Прочтите это внимательно!',MB_ICONINFORMATION + MB_YESNO) = IDNo then Exit;


          FIBTmpScripterBP.Script.Clear;
          //проверим, заполнена ли деталька услугами вообще (без учета цены)
          if FIBTmpDSetBP.Active then FIBTmpDSetBP.Close;
          FIBTmpDSetBP.SQLs.SelectSQL.Clear;
          FIBTmpDSetBP.SQLs.SelectSQL.Text:= 'SELECT FIRST 1 ID_PRICE FROM TBL_PRICE';
          FIBTmpDSetBP.Open;

          if not FIBTmpDSetBP.IsEmpty then //если деталька содержит хоть одну запись
            begin
              FIBTmpScripterBP.Script.Add('DELETE FROM TBL_PRICE;');//то почистим сначала ее
              FIBTmpScripterBP.Script.Add('ALTER SEQUENCE GEN_TBL_PRICE_ID RESTART WITH 0;');//сбросим счетчик
              FIBTmpScripterBP.Parse;
            end;

          //теперь чистим и базовый прайс
          FIBTmpScripterBP.Script.Add('DELETE FROM TBL_BASEPRICE;');//чистим базовый прайс
          FIBTmpScripterBP.Script.Add('ALTER SEQUENCE GEN_TBL_BASEPRICE_ID RESTART WITH 0;');//сбросим счетчик
          FIBTmpScripterBP.Parse;

          WriteTransBP.StartTransaction;
          try
            FIBTmpScripterBP.ExecuteScript;
            WriteTransBP.Commit;
          except
            WriteTransBP.Rollback;
            Application.MessageBox(PChar(ErrorMsg),'Ошибка выполнения скрипта', MB_ICONINFORMATION);
            Exit;
          end;
        end;
    end;

ShowPnlViewBasePrice(Sender);
end;

//----------------------------------------------------------------------------------

end.


