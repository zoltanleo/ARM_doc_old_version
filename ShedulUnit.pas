unit ShedulUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, Buttons, ComCtrls, pFIBDataSet,
  FIBDataSet, DB, StrUtils, ImgList, NiceSettings, PngImageList, padegFIO, AppEvnts;

type
  TFrmShedul = class(TForm)
    PnlBtnBar: TPanel;
    PnlEdtShedul: TPanel;
    PnlViewShedul: TPanel;
    DBGridTblShedul: TDBGridEh;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    SpBtnEventAdd: TSpeedButton;
    SpBtnEventEdt: TSpeedButton;
    SpBtnEventDel: TSpeedButton;
    ChBoxShedul: TCheckBox;
    DTPickShedul: TDateTimePicker;
    Label1: TLabel;
    LblWarning: TLabel;
    Label2: TLabel;
    REdtTask: TRichEdit;
    NiceSetFrmShedul: TNiceSettings;
    PngImgLstAct: TPngImageList;
    PngImgLstEmption: TPngImageList;
    Label3: TLabel;
    CbBoxEmotion: TComboBox;
    DSetShedulTmp: TpFIBDataSet;
    AppEventsFrmShedul: TApplicationEvents;
    BtnHlp: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnEventAddClick(Sender: TObject);
    procedure SpBtnEventEdtClick(Sender: TObject);
    procedure SpBtnEventDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbBoxEmotionDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure DBGridTblShedulDblClick(Sender: TObject);
    procedure AppEventsFrmShedulShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowViewPnlShedul(Sender: TObject);
    procedure ShowEdtPnlShedul(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmShedul: TFrmShedul;

implementation

uses MainAndrUnit, VarAndrUnit, DMFIBUnit;

var TblShedulFlag, FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmShedul.FormCreate(Sender: TObject);
var TmpSQLTxt: String;
begin
NiceSetFrmShedul.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmShedul.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Заметки на полях (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Заметки на полях (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

PnlViewShedul.Align:= alClient;//растягиваем панель
BtnCancel.Left:= BtnClose.Left;//перемещаем кнопку на "рабочее" место

with DMFIB, DSetShedule do
  begin
    if Active then Close;
    TmpSQLTxt:=
        'SELECT ' +
        'ID_SHEDULE, ' +
        'SHEDUL_LINKANKETA, ' +
        'SHEDULDATE, ' +
        'SHEDULNOTE, ' +
        'SHEDULCHECK, ' +
        'ROLE_NAME, ' +
        'USR_NAME, ' +
        'SHEDUL_EMOT ' +
        'FROM TBL_SHEDULE ' +
        'WHERE (SHEDUL_LINKANKETA = :prmID_ANKETA) ';

    //если это не SYSDBA или администратор
    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then TmpSQLTxt:= TmpSQLTxt + 'and ((ROLE_NAME LIKE CURRENT_ROLE) '
                                             + 'or (USR_NAME LIKE CURRENT_USER)) ';

    SQLs.SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 3 DESC';
    Prepare;
    ParamByName('prmID_ANKETA').Value:= DSetAnketa.FN('ID_ANKETA').Value;
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.FormShow(Sender: TObject);
begin
ShowViewPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.FormResize(Sender: TObject);
begin
with LblWarning do
  begin
    Parent:= DBGridTblShedul;
    Left:= (DBGridTblShedul.Width - Width) div 2;
    Top:= 5 * (DBGridTblShedul.Height div 8);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp, HlpCtxShedul);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.BtnSaveClick(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
if LeftStr(Trim(REdtTask.Text), 18) = 'Введите в это поле' then
  begin
    Application.MessageBox('Вы забыли добавить заметку!', 'Неполные данные',
                                                                    MB_ICONINFORMATION);
    Exit;                                                                
  end;

//проверим, не успели ли удалить пациента из БД, пока мы добавляли пометку
with DSetShedulTmp do
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
        TmpStr1:= 'Увы, добавить или отредактировать заметку для ' + TmpStr1 +
                        GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                        AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                        AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                        (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' уже не удастся, '
                        + 'так как кто-то из пользователей, работающий параллельно с Вами, уже успел удалить '
                        + TmpStr2 + ' из базы данных ! Попробуйте ввести данные ' + TmpStr3 + TmpStr1 + ' вновь.';

        DSetShedulTmp.Close;//закроем датасет
        //выдаем предупреждение
        Application.MessageBox(Pchar(TmpStr1),'Некорректные данные',MB_ICONINFORMATION);
        BtnCloseClick(Sender);//закрываем окошко
        Exit;//выходим из процедуры
      end;
  end;

//иначе пациент "на месте", записываем ему новую пометку  
with DMFIB, DSetShedule do
  begin
    FN('SHEDUL_LINKANKETA').AsInteger:= DSetAnketa.FN('ID_ANKETA').AsInteger;
    FN('SHEDULDATE').AsDateTime:= DTPickShedul.DateTime;
    FN('SHEDULCHECK').AsInteger:= BoolConvertInt(ChBoxShedul.Checked);
    FN('SHEDULNOTE').AsString:= REdtTask.Text;
    FN('SHEDUL_EMOT').AsInteger:= CbBoxEmotion.ItemIndex;

    try
      if DSetShedule.Modified then Post;
    except
      if DSetShedule.Modified then Cancel;
      Application.MessageBox(PChar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
    end;
  end;

ShowViewPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.AppEventsFrmShedulShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //реагируем на "хоткеи"
    if PnlEdtShedul.Visible
      then
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then  BtnSaveClick(Self);
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then  BtnCloseClick(Self);

          //эмулируем нажатия клавиш редактирования грида
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnEventAdd.Enabled then SpBtnEventAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnEventEdt.Enabled then SpBtnEventEdtClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnEventDel.Enabled then SpBtnEventDelClick(Self);
        end;
  end;

//"спрячем" нажатие кнопарей от других форм
AppEventsFrmShedul.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetShedule.Modified then DMFIB.DSetShedule.Cancel;
ShowViewPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.SpBtnEventAddClick(Sender: TObject);
begin
TblShedulFlag:= True;
ShowEdtPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.SpBtnEventEdtClick(Sender: TObject);
begin
TblShedulFlag:= False;
ShowEdtPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.SpBtnEventDelClick(Sender: TObject);
begin
if Application.MessageBox('Вы уверены, что хотите удалить это задание из планировщика?',
                          'Внимание!', MB_ICONINFORMATION + MB_YESNO) = IDYES
  then
    begin
      if DMFIB.DSetShedule.IsEmpty then Exit;
      try
        DMFIB.DSetShedule.Delete;
      except
        Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
      end;
    end;

ShowViewPnlShedul(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.ShowEdtPnlShedul(Sender: TObject);
begin
DMFIB.DSetShedule.DisableControls;
FrmMainProg.SwitchGrid(DBGridTblShedul, False);//отключим грид
PnlEdtShedul.Visible:= True;//покажем панель редактирования
BtnSave.Visible:= True;//покажем кнопку сохранения изменений
BtnCancel.Visible:= True;//покажем кнопку отмены изменений
BtnClose.Visible:= False;//спрячем кнопку закрытия формы

//тотально отключаем панель и кнопки
PnlViewShedul.Enabled:= False;
SpBtnEventAdd.Enabled:= False;
SpBtnEventEdt.Enabled:= False;
SpBtnEventDel.Enabled:= False;
LblWarning.Font.Color:= clGray;

with DMFIB, DSetShedule do
  begin
    if TblShedulFlag //если нажата кнопка добавить
      then //добавим запись
        begin
          try
            Insert;
          except
            Application.MessageBox(PChar(ErrorMsg),'Ошибка добавления данных',MB_ICONINFORMATION);
            ShowViewPnlShedul(Sender);
            Exit;//вылетаем из процедуры
          end;

          DTPickShedul.DateTime:= Now;
          ChBoxShedul.Checked:= True;
          REdtTask.Text:= 'Введите в это поле содержание текущей заметки';
        end
      else //редактируем запись
        begin
          try
            Edit;
          except
            Cancel;
            Application.MessageBox(PChar(ErrorMsg),'Ошибка изменения данных',MB_ICONINFORMATION);
            ShowViewPnlShedul(Sender);
            Exit;//вылетаем из процедуры
          end;

          DTPickShedul.DateTime:= FN('SHEDULDATE').AsDateTime;
          ChBoxShedul.Checked:= IntConvertBool(FN('SHEDULCHECK').AsInteger);
          REdtTask.Text:= FN('SHEDULNOTE').AsString;
          CbBoxEmotion.ItemIndex:= FN('SHEDUL_EMOT').AsInteger;
        end;
  end;{with DMFIB, DSetPayment do}

FormResize(Sender);//перерисуем надписи
if DTPickShedul.CanFocus then DTPickShedul.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.ShowViewPnlShedul(Sender: TObject);
begin
DMFIB.DSetShedule.EnableControls;
PnlEdtShedul.Visible:= False;//спрячем панель редактирования
BtnSave.Visible:= False;//спрячем кнопку сохранения изменений
BtnCancel.Visible:= False;//спрячем кнопку отмены изменений
BtnClose.Visible:= True;//покажем кнопку закрытия формы

//включаем кнопки и панель после тотального выключения
PnlViewShedul.Enabled:= True;
SpBtnEventAdd.Enabled:= True;
SpBtnEventAdd.Enabled:= True;
SpBtnEventDel.Enabled:= True;
LblWarning.Font.Color:= clRed;

with DMFIB, DSetShedule do
  begin
    FullRefresh;
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblShedul, not IsEmpty);
    SpBtnEventEdt.Enabled:= not IsEmpty;
    SpBtnEventDel.Enabled:= not IsEmpty;
  end;

FormResize(Sender);
if DBGridTblShedul.CanFocus then DBGridTblShedul.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmShedul.SaveSettings;
end;

//----------------------------------------------------------------------------
//рисуем комб с картинками
procedure TFrmShedul.CbBoxEmotionDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
(* Заполняем прямоугольник *)
  CbBoxEmotion.Canvas.FillRect(rect);
  (* Рисуем сам битмап *)
  PngImgLstEmption.Draw(CbBoxEmotion.Canvas,Rect.Left + 2,Rect.Top + 1,Index);
  (* Пишем текст после картинки *)
  CbBoxEmotion.Canvas.TextOut(Rect.Left+PngImgLstEmption.Width + 6,Rect.Top + 6, CbBoxEmotion.Items[Index]);
end;

//----------------------------------------------------------------------------

procedure TFrmShedul.DBGridTblShedulDblClick(Sender: TObject);
begin
SpBtnEventEdtClick(Sender);
end;

end.
