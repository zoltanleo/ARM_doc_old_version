unit uFrmConsultation;

interface

uses
  Windows, Messages, SysUtils, ExtCtrls, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Buttons, StdCtrls, StrUtils, NiceSettings,
  Mask, DBCtrlsEh, DBLookupEh, DB, FIBDataSet, pFIBDataSet, padegFIO, AppEvnts,
  frxClass, frxCrypt, fs_igraphicsrtti, fs_idbrtti,
  fs_iclassesrtti, fs_ipascal, fs_iinterpreter, frxExportRTF,
  frxExportHTML, frxExportPDF, frxGZip, frxDBSet, frxRich,
  frxExportBaseDialog, frxExportODF;

type
  TFrmConsultation = class(TForm)
    PnlBtnBar: TPanel;
    LblWarning: TLabel;
    BtnClose: TButton;
    BtnCancel: TButton;
    BtnSave: TButton;
    PnlViewTblConsult: TPanel;
    SpBtnConsAdd: TSpeedButton;
    SpBtnConsEdit: TSpeedButton;
    SpBtnConsDelete: TSpeedButton;
    PnlEdtTblCosult: TPanel;
    Label9: TLabel;
    LblWork09: TLabel;
    LblWork02: TLabel;
    LblBreak01: TLabel;
    LblBreak02: TLabel;
    LblWork03: TLabel;
    LblWork04: TLabel;
    LblBreak03: TLabel;
    LblBreak04: TLabel;
    LblWork05: TLabel;
    LblWork06: TLabel;
    LblBreak05: TLabel;
    LblBreak06: TLabel;
    LblWork07: TLabel;
    LblWork08: TLabel;
    LblBreak07: TLabel;
    LblBreak08: TLabel;
    LblWork10: TLabel;
    LblBreak09: TLabel;
    LblBreak10: TLabel;
    LblWork11: TLabel;
    LblWork12: TLabel;
    LblBreak11: TLabel;
    LblBreak12: TLabel;
    LblWork13: TLabel;
    LblWork14: TLabel;
    LblBreak13: TLabel;
    LblBreak14: TLabel;
    Panel1: TPanel;
    CbBoxWorkBegMonday: TComboBox;
    CbBoxWorkEndMonday: TComboBox;
    CbBoxBreakBegMonday: TComboBox;
    CbBoxBreakEndMonday: TComboBox;
    CbBoxWorkBegTuesday: TComboBox;
    CbBoxWorkEndTuesday: TComboBox;
    CbBoxBreakBegTuesday: TComboBox;
    CbBoxBreakEndTuesday: TComboBox;
    CbBoxWorkBegWednes: TComboBox;
    CbBoxWorkEndWednes: TComboBox;
    CbBoxBreakBegWednes: TComboBox;
    CbBoxBreakEndWednes: TComboBox;
    CbBoxWorkBegThurs: TComboBox;
    CbBoxWorkEndThurs: TComboBox;
    CbBoxBreakBegThurs: TComboBox;
    CbBoxBreakEndThurs: TComboBox;
    CbBoxWorkBegFriday: TComboBox;
    CbBoxWorkEndFriday: TComboBox;
    CbBoxBreakBegFriday: TComboBox;
    CbBoxBreakEndFriday: TComboBox;
    CbBoxWorkBegSatur: TComboBox;
    CbBoxWorkEndSatur: TComboBox;
    CbBoxBreakBegSatur: TComboBox;
    CbBoxBreakEndSatur: TComboBox;
    CbBoxWorkBegSunday: TComboBox;
    CbBoxWorkEndSunday: TComboBox;
    CbBoxBreakBegSunday: TComboBox;
    CbBoxBreakEndSunday: TComboBox;
    ChkBoxBreakMonday: TCheckBox;
    ChkBoxBreakTuesday: TCheckBox;
    ChkBoxBreakWednes: TCheckBox;
    ChkBoxBreakThurs: TCheckBox;
    ChkBoxBreakFriday: TCheckBox;
    ChkBoxBreakSatur: TCheckBox;
    ChkBoxBreakSunday: TCheckBox;
    ChkBoxWorkMonday: TCheckBox;
    ChkBoxWorkTuesday: TCheckBox;
    ChkBoxWorkWednes: TCheckBox;
    ChkBoxWorkThurs: TCheckBox;
    ChkBoxWorkFriday: TCheckBox;
    ChkBoxWorkSatur: TCheckBox;
    ChkBoxWorkSunday: TCheckBox;
    PnlCaption: TPanel;
    LblCapt: TLabel;
    NiceSetFrmConsultation: TNiceSettings;
    LblWork01: TLabel;
    DBLookupCBDocChoice: TDBLookupComboboxEh;
    Label8: TLabel;
    DBLookupCBClinChoice: TDBLookupComboboxEh;
    Label2: TLabel;
    DBGridTblConsult: TDBGridEh;
    AppEventsFrmConsult: TApplicationEvents;
    BtnHlp: TButton;
    BtnPrintDocSched: TButton;
    DSetConsult: TpFIBDataSet;
    frxDBDSetConsultReport: TfrxDBDataset;
    CbBoxPrintFmt: TComboBox;
    LblStuffWarn: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure SpBtnConsAddClick(Sender: TObject);
    procedure SpBtnConsEditClick(Sender: TObject);
    procedure SpBtnConsDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblConsultDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure ChkBoxWorkSundayClick(Sender: TObject);
    procedure ChkBoxWorkMondayClick(Sender: TObject);
    procedure ChkBoxWorkTuesdayClick(Sender: TObject);
    procedure ChkBoxWorkWednesClick(Sender: TObject);
    procedure ChkBoxWorkThursClick(Sender: TObject);
    procedure ChkBoxWorkFridayClick(Sender: TObject);
    procedure ChkBoxWorkSaturClick(Sender: TObject);
    procedure ChkBoxBreakMondayClick(Sender: TObject);
    procedure ChkBoxBreakTuesdayClick(Sender: TObject);
    procedure ChkBoxBreakWednesClick(Sender: TObject);
    procedure ChkBoxBreakThursClick(Sender: TObject);
    procedure ChkBoxBreakFridayClick(Sender: TObject);
    procedure ChkBoxBreakSaturClick(Sender: TObject);
    procedure ChkBoxBreakSundayClick(Sender: TObject);
    procedure DBLookupCBDocChoiceEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupCBClinChoiceEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure AppEventsFrmConsultShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnPrintDocSchedClick(Sender: TObject);
    procedure CbBoxPrintFmtChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPnlViewConsult(Sender: TObject);
    procedure ShowPnlEdtConsult(Sender: TObject);
    procedure PrepareDBLookUpCBDocChoice(Sender: TObject);
    procedure PrepareDBLookUpCBClinChoice(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmConsultation: TFrmConsultation;

implementation

uses DMFIBUnit, MainAndrUnit, TblDoctorUnit, VarAndrUnit, StatusPatUnit;

var ConsultSendTag: Integer;
    ConsFPath, ConsFileName: WideString;
    TmpConsultFlag, FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmConsultation.FormCreate(Sender: TObject);
begin
NiceSetFrmConsultation.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmConsultation.LoadSettings;

BtnCancel.Left:= BtnClose.Left;
BtnCancel.Visible:= False;
BtnSave.Visible:= False;
PnlViewTblConsult.Align:= alClient;
DMFIB.DSetConsult.FullRefresh;

CbBoxPrintFmtChange(Sender);//определимся, какой формат печати выбран
FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmConsultation.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.BtnSaveClick(Sender: TObject);
var ConstraintFlag: Boolean;
    TmpStr: AnsiString;
    ConstraintDataSet: TFIBDataSet;
begin
SenderTag:= 667;//присвоим уникальный номер этой кнопке-сендеру

//проверяем заполненность DBLookUpCB с докторами
if DMFIB.DSetTemp.Active then
  begin
  if DMFIB.DSetTemp.IsEmpty then
    begin
    Application.MessageBox('Заполните таблицу докторов!', 'Недостаточно данных!',
                            MB_OK + MB_ICONWARNING);
    DBLookupCBDocChoice.SetFocus;
    Abort;
    end;
  end;

//проверяем заполненность DBLookUpCB с ЛПУ
if DMFIB.DSetLookUpClin.Active then
  begin
  if DMFIB.DSetLookUpClin.IsEmpty then
    begin
    Application.MessageBox('Заполните таблицу ЛПУ!', 'Недостаточно данных!',
                            MB_OK + MB_ICONWARNING);
    DBLookupCBClinChoice.SetFocus;
    Abort;
    end;
  end;

//проверим ограничения: у доктора для каждой клиники должно быть не более одного(!) расписания
ConstraintDataSet:= TFIBDataSet.Create(nil);//создадим виртуальный датасет
with ConstraintDataSet do
  begin
    try
      Database:= DMFIB.Database;
      Transaction:= DMFIB.ReadTrans;
      AutoCommit:= True;
      //генерируем запрос с параметрами
      SQLs.SelectSQL.Text:= 'SELECT ID_CONSULT, CONS_LINKDOCTOR, CONS_LINKCLINIC '
                          + 'FROM TBL_CONSULTATION WHERE CONS_LINKDOCTOR = :prmLinkDoctor '
                          + 'and CONS_LINKCLINIC = :prmLinkClinic';
      Prepare;//подготавливаем
      Params.ParamByName('prmLinkDoctor').Value:= DBLookupCBDocChoice.KeyValue;
      Params.ParamByName('prmLinkClinic').Value:= DBLookupCBClinChoice.KeyValue;
      Open;//открываем
      ConstraintFlag:= IsEmpty;//проверяем на заполненность
      Close;//закрываем
    finally
      ConstraintDataSet.Free;//уничтожаем
    end;
  end;

//если датасет был не пустой и запись добавляется (а не редактируется),
//значит будет нарушено уникальное ограничение - реагируем соответственно
if (not ConstraintFlag) and TmpConsultFlag then
  begin
    //формирует текст предупреждения в "правильном" падеже
    with DMFIB do
      begin
        if not DSetDoctor.Active then DSetDoctor.Open;
        if not DSetDoctor.IsEmpty then DSetDoctor.Locate('ID_DOCTOR',DBLookupCBDocChoice.KeyValue,[]);
        TmpStr:= 'У ' + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,2) + ' '
                      + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
                      AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1))
                      + '.', AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1))
                      + '.', (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 2)
                      + ' уже имеется расписание приема в ЛПУ "'
                      + Trim(DSetClinic.FN('CLIN_NAME').AsString) + '". Для данного врача Вы '
                      + 'можете либо выбрать другую клинику, '
                      + 'либо отредактировать уже имеющееся расписание.';
      end;
    Application.MessageBox(PAnsiChar(TmpStr),'Некорректные данные', MB_ICONINFORMATION);
    Exit;
  end;

(************ окончательно редактируем таблицу *********)
with DMFIB.DSetConsult do
  begin
    if TmpConsultFlag //нажата кнопка "Добавить"
      then Append
      else Edit;//нажата кнопка "Редактировать"

    FN('CONS_LINKDOCTOR').Value:= DBLookupCBDocChoice.KeyValue;
    FN('CONS_LINKCLINIC').Value:= DBLookupCBClinChoice.KeyValue;

    FN('WORKMONDAY').AsInteger:= BoolConvertInt(ChkBoxWorkMonday.Checked);
    FN('WORKTUESDAY').AsInteger:= BoolConvertInt(ChkBoxWorkTuesday.Checked);
    FN('WORKWEDNES').AsInteger:= BoolConvertInt(ChkBoxWorkWednes.Checked);
    FN('WORKTHURS').AsInteger:= BoolConvertInt(ChkBoxWorkThurs.Checked);
    FN('WORKFRIDAY').AsInteger:= BoolConvertInt(ChkBoxWorkFriday.Checked);
    FN('WORKSATUR').AsInteger:= BoolConvertInt(ChkBoxWorkSatur.Checked);
    FN('WORKSUNDAY').AsInteger:= BoolConvertInt(ChkBoxWorkSunday.Checked);

    FN('WORKBEGMONDAY').AsInteger:= CbBoxWorkBegMonday.ItemIndex;
    FN('WORKENDMONDAY').AsInteger:= CbBoxWorkEndMonday.ItemIndex;
    FN('WORKBEGTUESDAY').AsInteger:= CbBoxWorkBegTuesday.ItemIndex;
    FN('WORKENDTUESDAY').AsInteger:= CbBoxWorkEndTuesday.ItemIndex;
    FN('WORKBEGWEDNES').AsInteger:= CbBoxWorkBegWednes.ItemIndex;
    FN('WORKENDWEDNES').AsInteger:= CbBoxWorkEndWednes.ItemIndex;
    FN('WORKBEGTHURS').AsInteger:= CbBoxWorkBegThurs.ItemIndex;
    FN('WORKENDTHURS').AsInteger:= CbBoxWorkEndThurs.ItemIndex;
    FN('WORKBEGFRIDAY').AsInteger:= CbBoxWorkBegFriday.ItemIndex;
    FN('WORKENDFRIDAY').AsInteger:= CbBoxWorkEndFriday.ItemIndex;
    FN('WORKBEGSATUR').AsInteger:= CbBoxWorkBegSatur.ItemIndex;
    FN('WORKENDSATUR').AsInteger:= CbBoxWorkEndSatur.ItemIndex;
    FN('WORKBEGSUNDAY').AsInteger:= CbBoxWorkBegSunday.ItemIndex;
    FN('WORKENDSUNDAY').AsInteger:= CbBoxWorkEndSunday.ItemIndex;

    FN('BREAKMONDAY').AsInteger:= BoolConvertInt(ChkBoxBreakMonday.Checked);
    FN('BREAKTUESDAY').AsInteger:= BoolConvertInt(ChkBoxBreakTuesday.Checked);
    FN('BREAKWEDNES').AsInteger:= BoolConvertInt(ChkBoxBreakWednes.Checked);
    FN('BREAKTHURS').AsInteger:= BoolConvertInt(ChkBoxBreakThurs.Checked);
    FN('BREAKFRIDAY').AsInteger:= BoolConvertInt(ChkBoxBreakFriday.Checked);
    FN('BREAKSATUR').AsInteger:= BoolConvertInt(ChkBoxBreakSatur.Checked);
    FN('BREAKSUNDAY').AsInteger:= BoolConvertInt(ChkBoxBreakSunday.Checked);

    FN('BREAKBEGMONDAY').AsInteger:= CbBoxBreakBegMonday.ItemIndex;
    FN('BREAKENDMONDAY').AsInteger:= CbBoxBreakEndMonday.ItemIndex;
    FN('BREAKBEGTUESDAY').AsInteger:= CbBoxBreakBegTuesday.ItemIndex;
    FN('BREAKENDTUESDAY').AsInteger:= CbBoxBreakEndTuesday.ItemIndex;
    FN('BREAKBEGWEDNES').AsInteger:= CbBoxBreakBegWednes.ItemIndex;
    FN('BREAKENDWEDNES').AsInteger:= CbBoxBreakEndWednes.ItemIndex;
    FN('BREAKBEGTHURS').AsInteger:= CbBoxBreakBegThurs.ItemIndex;
    FN('BREAKENDTHURS').AsInteger:= CbBoxBreakEndThurs.ItemIndex;
    FN('BREAKBEGFRIDAY').AsInteger:= CbBoxBreakBegFriday.ItemIndex;
    FN('BREAKENDFRIDAY').AsInteger:= CbBoxBreakEndFriday.ItemIndex;
    FN('BREAKBEGSATUR').AsInteger:= CbBoxBreakBegSatur.ItemIndex;
    FN('BREAKENDSATUR').AsInteger:= CbBoxBreakEndSatur.ItemIndex;
    FN('BREAKBEGSUNDAY').AsInteger:= CbBoxBreakBegSunday.ItemIndex;
    FN('BREAKENDSUNDAY').AsInteger:= CbBoxBreakEndSunday.ItemIndex;

    //сохраняем строковые поля-зеркала integer-полей
    //понедельник
    if ChkBoxWorkMonday.Checked
      then
        begin
          FN('WORKBEGMONDAY_STR').AsString:= Trim(CbBoxWorkBegMonday.Text);
          FN('WORKENDMONDAY_STR').AsString:= Trim(CbBoxWorkEndMonday.Text);
          if ChkBoxBreakMonday.Checked
            then
              begin
                FN('BREAKBEGMONDAY_STR').AsString:= Trim(CbBoxBreakBegMonday.Text);
                FN('BREAKENDMONDAY_STR').AsString:= Trim(CbBoxBreakEndMonday.Text);
              end
            else
              begin
                FN('BREAKBEGMONDAY_STR').Clear;
                FN('BREAKENDMONDAY_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGMONDAY_STR').AsString:= '';
          FN('WORKENDMONDAY_STR').AsString:= '';
        end;

    //вторник
    if ChkBoxWorkTuesday.Checked
      then
        begin
          FN('WORKBEGTUESDAY_STR').AsString:= Trim(CbBoxWorkBegTuesday.Text);
          FN('WORKENDTUESDAY_STR').AsString:= Trim(CbBoxWorkEndTuesday.Text);
          if ChkBoxBreakTuesday.Checked
            then
              begin
                FN('BREAKBEGTUESDAY_STR').AsString:= Trim(CbBoxBreakBegTuesday.Text);
                FN('BREAKENDTUESDAY_STR').AsString:= Trim(CbBoxBreakEndTuesday.Text);
              end
            else
              begin
                FN('BREAKBEGTUESDAY_STR').Clear;
                FN('BREAKENDTUESDAY_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGTUESDAY_STR').Clear;
          FN('WORKENDTUESDAY_STR').Clear;
        end;

    //среда
    if ChkBoxWorkWednes.Checked
      then
        begin
          FN('WORKBEGWEDNES_STR').AsString:= Trim(CbBoxWorkBegWednes.Text);
          FN('WORKENDWEDNES_STR').AsString:= Trim(CbBoxWorkEndWednes.Text);
          if ChkBoxBreakWednes.Checked
            then
              begin
                FN('BREAKBEGWEDNES_STR').AsString:= Trim(CbBoxBreakBegWednes.Text);
                FN('BREAKENDWEDNES_STR').AsString:= Trim(CbBoxBreakEndWednes.Text);
              end
            else
              begin
                FN('BREAKBEGWEDNES_STR').Clear;
                FN('BREAKENDWEDNES_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGWEDNES_STR').Clear;
          FN('WORKENDWEDNES_STR').Clear;
        end;

    //четверг
    if ChkBoxWorkThurs.Checked
      then
        begin
          FN('WORKBEGTHURS_STR').AsString:= Trim(CbBoxWorkBegThurs.Text);
          FN('WORKENDTHURS_STR').AsString:= Trim(CbBoxWorkEndThurs.Text);
          if ChkBoxBreakThurs.Checked
            then
              begin
                FN('BREAKBEGTHURS_STR').AsString:= Trim(CbBoxBreakBegThurs.Text);
                FN('BREAKENDTHURS_STR').AsString:= Trim(CbBoxBreakEndThurs.Text);
              end
            else
              begin
                FN('BREAKBEGTHURS_STR').Clear;
                FN('BREAKENDTHURS_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGTHURS_STR').Clear;
          FN('WORKENDTHURS_STR').Clear;
        end;

    //пятница
    if ChkBoxWorkFriday.Checked
      then
        begin
          FN('WORKBEGFRIDAY_STR').AsString:= Trim(CbBoxWorkBegFriday.Text);
          FN('WORKENDFRIDAY_STR').AsString:= Trim(CbBoxWorkEndFriday.Text);
          if ChkBoxBreakFriday.Checked
            then
              begin
                FN('BREAKBEGFRIDAY_STR').AsString:= Trim(CbBoxBreakBegFriday.Text);
                FN('BREAKENDFRIDAY_STR').AsString:= Trim(CbBoxBreakEndFriday.Text);
              end
            else
              begin
                FN('BREAKBEGFRIDAY_STR').Clear;
                FN('BREAKENDFRIDAY_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGFRIDAY_STR').Clear;
          FN('WORKENDFRIDAY_STR').Clear;
        end;

    //суббота
    if ChkBoxWorkSatur.Checked
      then
        begin
          FN('WORKBEGSATUR_STR').AsString:= Trim(CbBoxWorkBegSatur.Text);
          FN('WORKENDSATUR_STR').AsString:= Trim(CbBoxWorkEndSatur.Text);
          if ChkBoxBreakSatur.Checked
            then
              begin
                FN('BREAKBEGSATUR_STR').AsString:= Trim(CbBoxBreakBegSatur.Text);
                FN('BREAKENDSATUR_STR').AsString:= Trim(CbBoxBreakEndSatur.Text);
              end
            else
              begin
                FN('BREAKBEGSATUR_STR').Clear;
                FN('BREAKENDSATUR_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGSATUR_STR').Clear;
          FN('WORKENDSATUR_STR').Clear;
        end;

    //воскресенье
    if ChkBoxWorkSunday.Checked
      then
        begin
          FN('WORKBEGSUNDAY_STR').AsString:= Trim(CbBoxWorkBegSunday.Text);
          FN('WORKENDSUNDAY_STR').AsString:= Trim(CbBoxWorkEndSunday.Text);
          if ChkBoxBreakSunday.Checked
            then
              begin
                FN('BREAKBEGSUNDAY_STR').AsString:= Trim(CbBoxBreakBegSunday.Text);
                FN('BREAKENDSUNDAY_STR').AsString:= Trim(CbBoxBreakEndSunday.Text);
              end
            else
              begin
                FN('BREAKBEGSUNDAY_STR').Clear;
                FN('BREAKENDSUNDAY_STR').Clear;
              end;
        end
      else
        begin
          FN('WORKBEGSUNDAY_STR').Clear;
          FN('WORKENDSUNDAY_STR').Clear;
        end;

    Post;
  end;{with}

ShowPnlViewConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.AppEventsFrmConsultShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblCosult.Visible
      then
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) then
            begin
              if DBLookupCBDocChoice.Focused then DBLookupCBDocChoiceEditButtons0Click(Self,Handled);
              if DBLookupCBClinChoice.Focused then DBLookupCBClinChoiceEditButtons0Click(Self,Handled);
            end;

          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//эмулируем нажатие клавиши "Закрыть"

          //эмулируем нажатия клавиш редактирования грида
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnConsAdd.Enabled then SpBtnConsAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnConsEdit.Enabled then SpBtnConsEditClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnConsDelete.Enabled then SpBtnConsDeleteClick(Self);

          //эмулируем нажатие клавиши печати
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('P')) < 0)) and BtnPrintDocSched.Enabled then BtnPrintDocSchedClick(Self);
        end;
  end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmConsult.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetConsult.Modified then DMFIB.DSetConsult.Cancel;
ShowPnlViewConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxConsultation);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.BtnPrintDocSchedClick(Sender: TObject);
var TmpTxt: string;
begin
//запретим печатать расписание для уволенного доктора
if DMFIB.DSetConsult.FN('DOC_STUFFSTATUS').Value = 2 then
  begin
    if Application.MessageBox(PChar('Доктор ' + DMFIB.DSetConsult.FN('SHORT_FIODOC').AsString + ' в вашей базе данных '
                                  + 'имеет статус "Уволен". Чтобы напечатать имеющееся расписание, необходимо изменить '
                                  + 'статус врача, открыв соответствующий справочник.'),
                                  'Предупреждение', MB_OK + MB_ICONINFORMATION) = ID_OK
      then
    Exit;
  end;

with DSetConsult do
  begin
    if Active then Close;
    Prepare;
    ParamByName('prmID_Cons').Value:= DMFIB.DSetConsult.FN('ID_CONSULT').Value;
    Open;
  end;

  case ConsultSendTag of
    45004: ConsFileName:= 'DocConsultPrint_A4.fr3';
    45005: ConsFileName:= 'DocConsultPrint_A5.fr3';
  end;

ConsFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + ConsFileName;

//если файл существует
if FileExists(ConsFPath)
  then //открываем отчет
    begin
      FrmMainProg.frxHTMLExport.FileName:= DSetConsult.FN('REPORT_CONSULT').AsString;
      FrmMainProg.frxODTExport.FileName:= DSetConsult.FN('REPORT_CONSULT').AsString;
      FrmMainProg.frxPDFExport.FileName:= DSetConsult.FN('REPORT_CONSULT').AsString;
      FrmMainProg.frxRTFExport.FileName:= DSetConsult.FN('REPORT_CONSULT').AsString;

      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

      FrmMainProg.frxHTMLExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxODTExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxPDFExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxRTFExport.DefaultPath:= ReportInitDir;

      FrmMainProg.MainReport.LoadFromFile(ConsFPath);
      FrmMainProg.MainReport.ShowReport;
    end
  else //выходим из процедуры с предупреждением
    begin
      TmpTxt:= 'Отсутствует необходимый файл отчета "' + ConsFileName + '" ! Возможно, '
      + 'он был ошибочно удален или переименован. Скопируйте этот файл из папки с архивом в папку '
      + '\Reports\ в основном каталоге программы и попробуйте запустить отчет заново.';
      Application.MessageBox(PChar(TmpTxt), 'Ошибка доступа к файлу', MB_ICONINFORMATION);
      Exit;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.SpBtnConsAddClick(Sender: TObject);
begin
//запретим добавлять новое расписание для уволенного доктора
if DMFIB.DSetConsult.FN('DOC_STUFFSTATUS').Value = 2 then
  begin
    if Application.MessageBox(PChar('Доктор ' + DMFIB.DSetConsult.FN('SHORT_FIODOC').AsString + ' в вашей базе данных '
                                  + 'имеет статус "Уволен". Чтобы добавить новое расписание, необходимо изменить статус врача, '
                                  + 'открыв соответствующий справочник.'), 'Предупреждение', MB_OK + MB_ICONINFORMATION) = ID_OK
      then
    Exit;
  end;

TmpConsultFlag:= True;
ShowPnlEdtConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.SpBtnConsEditClick(Sender: TObject);
begin
//запретим редактировать имеющееся расписание для уволенного доктора
if DMFIB.DSetConsult.FN('DOC_STUFFSTATUS').Value = 2 then
  begin
    if Application.MessageBox(PChar('Доктор ' + DMFIB.DSetConsult.FN('SHORT_FIODOC').AsString + ' в вашей базе данных '
                                  + 'имеет статус "Уволен". Чтобы отредактировать имеющееся расписание, необходимо изменить '
                                  + 'статус врача, открыв соответствующий справочник.'),
                                  'Предупреждение', MB_OK + MB_ICONINFORMATION) = ID_OK
      then Exit;
  end;

TmpConsultFlag:= False;
ShowPnlEdtConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.SpBtnConsDeleteClick(Sender: TObject);
var MesRez: Integer;
    TmpMes: AnsiString;
begin
with DMFIB do
  begin
    //подстрахуемся, если вдруг табличка пустая
    if DSetConsult.IsEmpty then Exit;

    if not DSetDoctor.Active then DSetDoctor.Open;
    if not DSetDoctor.IsEmpty then DSetDoctor.Locate('ID_DOCTOR',DSetConsult['CONS_LINKDOCTOR'],[]);
    TmpMes:= 'Вы действительно хотите удалить расписание приема '
             + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,2)
             + ' ' + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
                             AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1))
             + '.', AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1))
             + '.', (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 2)
             + ' в ЛПУ "' + Trim(DSetClinic.FN('CLIN_NAME').AsString) + '" ?';

  end;{with}
MesRez:= Application.MessageBox(PAnsiChar(TmpMes), 'Внимание!', MB_YESNO + MB_ICONQUESTION);
if  MesRez = IDYes then
  try
    DMFIB.DSetConsult.Delete;
  except
    Application.MessageBox(PChar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    Exit;//тихо гасим сгенерированные самой формой исключения
  end;
ShowPnlViewConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.ShowPnlEdtConsult(Sender: TObject);
begin
PnlEdtTblCosult.Visible:= True;
PnlViewTblConsult.Enabled:= False;
PnlEdtTblCosult.Align:= alTop;
FrmMainProg.SwitchGrid(DBGridTblConsult, False);

BtnClose.Visible:= False;
SpBtnConsAdd.Enabled:= False;
SpBtnConsEdit.Enabled:= False;
SpBtnConsDelete.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

//заполняем комбобоксы с врачами и клиниками
PrepareDBLookUpCBDocChoice(Sender);
PrepareDBLookUpCBClinChoice(Sender);

//отключим "основные" чекбоксы, если одна или обе из таблиц (доктора и клиники) пустые
ChkBoxWorkMonday.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkTuesday.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkWednes.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkThurs.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkFriday.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkSatur.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);
ChkBoxWorkSunday.Enabled:= not (DMFIB.DSetTemp.IsEmpty or DMFIB.DSetLookUpClin.IsEmpty);

//отключим кнопку редактирования докторов, если форма вызывалась из таблицы докторов
DBLookupCBDocChoice.EditButtons[0].Visible:= not TblConsultFlag;

if TmpConsultFlag //если нажата кнопка "Добавить"
  then
    begin
      LblCapt.Caption:= 'Введите новое расписание приема врача';//нажата кнопка "Добавить"

      //если при этом еще и таблица с докторами не пустая
      if TblConsultFlag and (not DMFIB.DSetDoctor.IsEmpty)
        then //устанавливаем текущего доктора
          DBLookupCBDocChoice.KeyValue:= DMFIB.DSetDoctor.FN('ID_DOCTOR').Value;

      ChkBoxWorkMonday.Checked:= False;
      ChkBoxWorkTuesday.Checked:= False;
      ChkBoxWorkWednes.Checked:= False;
      ChkBoxWorkThurs.Checked:= False;
      ChkBoxWorkFriday.Checked:= False;
      ChkBoxWorkSatur.Checked:= False;
      ChkBoxWorkSunday.Checked:= False;

      CbBoxWorkBegMonday.ItemIndex:= 2;
      CbBoxWorkEndMonday.ItemIndex:= 10;
      CbBoxWorkBegTuesday.ItemIndex:= 2;
      CbBoxWorkEndTuesday.ItemIndex:= 10;
      CbBoxWorkBegWednes.ItemIndex:= 2;
      CbBoxWorkEndWednes.ItemIndex:= 10;
      CbBoxWorkBegThurs.ItemIndex:= 2;
      CbBoxWorkEndThurs.ItemIndex:= 10;
      CbBoxWorkBegFriday.ItemIndex:= 2;
      CbBoxWorkEndFriday.ItemIndex:= 10;
      CbBoxWorkBegSatur.ItemIndex:= 2;
      CbBoxWorkEndSatur.ItemIndex:= 10;
      CbBoxWorkBegSunday.ItemIndex:= 2;
      CbBoxWorkEndSunday.ItemIndex:= 10;

      ChkBoxBreakMonday.Checked:= False;
      ChkBoxBreakTuesday.Checked:= False;
      ChkBoxBreakWednes.Checked:= False;
      ChkBoxBreakThurs.Checked:= False;
      ChkBoxBreakFriday.Checked:= False;
      ChkBoxBreakSatur.Checked:= False;
      ChkBoxBreakSunday.Checked:= False;


      CbBoxBreakBegMonday.ItemIndex:= 10;
      CbBoxBreakEndMonday.ItemIndex:= 12;
      CbBoxBreakBegTuesday.ItemIndex:= 10;
      CbBoxBreakEndTuesday.ItemIndex:= 12;
      CbBoxBreakBegWednes.ItemIndex:= 10;
      CbBoxBreakEndWednes.ItemIndex:= 12;
      CbBoxBreakBegThurs.ItemIndex:= 10;
      CbBoxBreakEndThurs.ItemIndex:= 12;
      CbBoxBreakBegFriday.ItemIndex:= 10;
      CbBoxBreakEndFriday.ItemIndex:= 12;
      CbBoxBreakBegSatur.ItemIndex:= 10;
      CbBoxBreakEndSatur.ItemIndex:= 12;
      CbBoxBreakBegSunday.ItemIndex:= 10;
      CbBoxBreakEndSunday.ItemIndex:= 12;
    end
  else
    begin
      LblCapt.Caption:= 'Отредактируйте расписание приема врача';//нажата кнопка "Редактировать"

      DBLookupCBDocChoice.KeyValue:= DMFIB.DSetConsult.FN('CONS_LINKDOCTOR').Value;
      DBLookupCBClinChoice.KeyValue:= DMFIB.DSetConsult.FN('CONS_LINKCLINIC').Value;

    with DMFIB.DSetConsult do
      begin
        ChkBoxWorkMonday.Checked:= IntConvertBool(FN('WORKMONDAY').AsInteger);
        ChkBoxWorkTuesday.Checked:= IntConvertBool(FN('WORKTUESDAY').AsInteger);
        ChkBoxWorkWednes.Checked:= IntConvertBool(FN('WORKWEDNES').AsInteger);
        ChkBoxWorkThurs.Checked:= IntConvertBool(FN('WORKTHURS').AsInteger);
        ChkBoxWorkFriday.Checked:= IntConvertBool(FN('WORKFRIDAY').AsInteger);
        ChkBoxWorkSatur.Checked:= IntConvertBool(FN('WORKSATUR').AsInteger);
        ChkBoxWorkSunday.Checked:= IntConvertBool(FN('WORKSUNDAY').AsInteger);

        CbBoxWorkBegMonday.ItemIndex:= FN('WORKBEGMONDAY').AsInteger;
        CbBoxWorkEndMonday.ItemIndex:= FN('WORKENDMONDAY').AsInteger;
        CbBoxWorkBegTuesday.ItemIndex:= FN('WORKBEGTUESDAY').AsInteger;
        CbBoxWorkEndTuesday.ItemIndex:= FN('WORKENDTUESDAY').AsInteger;
        CbBoxWorkBegWednes.ItemIndex:= FN('WORKBEGWEDNES').AsInteger;
        CbBoxWorkEndWednes.ItemIndex:= FN('WORKENDWEDNES').AsInteger;
        CbBoxWorkBegThurs.ItemIndex:= FN('WORKBEGTHURS').AsInteger;
        CbBoxWorkEndThurs.ItemIndex:= FN('WORKENDTHURS').AsInteger;
        CbBoxWorkBegFriday.ItemIndex:= FN('WORKBEGFRIDAY').AsInteger;
        CbBoxWorkEndFriday.ItemIndex:= FN('WORKENDFRIDAY').AsInteger;
        CbBoxWorkBegSatur.ItemIndex:= FN('WORKBEGSATUR').AsInteger;
        CbBoxWorkEndSatur.ItemIndex:= FN('WORKENDSATUR').AsInteger;
        CbBoxWorkBegSunday.ItemIndex:= FN('WORKBEGSUNDAY').AsInteger;
        CbBoxWorkEndSunday.ItemIndex:= FN('WORKENDSUNDAY').AsInteger;

        ChkBoxBreakMonday.Checked:= IntConvertBool(FN('BREAKMONDAY').AsInteger);
        ChkBoxBreakTuesday.Checked:= IntConvertBool(FN('BREAKTUESDAY').AsInteger);
        ChkBoxBreakWednes.Checked:= IntConvertBool(FN('BREAKWEDNES').AsInteger);
        ChkBoxBreakThurs.Checked:= IntConvertBool(FN('BREAKTHURS').AsInteger);
        ChkBoxBreakFriday.Checked:= IntConvertBool(FN('BREAKFRIDAY').AsInteger);
        ChkBoxBreakSatur.Checked:= IntConvertBool(FN('BREAKSATUR').AsInteger);
        ChkBoxBreakSunday.Checked:= IntConvertBool(FN('BREAKSUNDAY').AsInteger);

        CbBoxBreakBegMonday.ItemIndex:= FN('BREAKBEGMONDAY').AsInteger;
        CbBoxBreakEndMonday.ItemIndex:= FN('BREAKENDMONDAY').AsInteger;
        CbBoxBreakBegTuesday.ItemIndex:= FN('BREAKBEGTUESDAY').AsInteger;
        CbBoxBreakEndTuesday.ItemIndex:= FN('BREAKENDTUESDAY').AsInteger;
        CbBoxBreakBegWednes.ItemIndex:= FN('BREAKBEGWEDNES').AsInteger;
        CbBoxBreakEndWednes.ItemIndex:= FN('BREAKENDWEDNES').AsInteger;
        CbBoxBreakBegThurs.ItemIndex:= FN('BREAKBEGTHURS').AsInteger;
        CbBoxBreakEndThurs.ItemIndex:= FN('BREAKENDTHURS').AsInteger;
        CbBoxBreakBegFriday.ItemIndex:= FN('BREAKBEGFRIDAY').AsInteger;
        CbBoxBreakEndFriday.ItemIndex:= FN('BREAKENDFRIDAY').AsInteger;
        CbBoxBreakBegSatur.ItemIndex:= FN('BREAKBEGSATUR').AsInteger;
        CbBoxBreakEndSatur.ItemIndex:= FN('BREAKENDSATUR').AsInteger;
        CbBoxBreakBegSunday.ItemIndex:= FN('BREAKBEGSUNDAY').AsInteger;
        CbBoxBreakEndSunday.ItemIndex:= FN('BREAKENDSUNDAY').AsInteger;
      end;{with..do}
    end;

//если чек-боксы доступны юзеру для изменений, проверим доступность остальных элементов
ChkBoxWorkMondayClick(Sender);
ChkBoxWorkTuesdayClick(Sender);
ChkBoxWorkWednesClick(Sender);
ChkBoxWorkThursClick(Sender);
ChkBoxWorkFridayClick(Sender);
ChkBoxWorkSaturClick(Sender);
ChkBoxWorkSundayClick(Sender);

LblWarning.Font.Color:= clGray;
FormResize(Sender);  
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.ShowPnlViewConsult(Sender: TObject);
begin
LblCapt.Caption:= 'Таблица с расписанием приема врачей';//название заголовка

PnlEdtTblCosult.Visible:= False;//прячем панель редактирования
PnlViewTblConsult.Enabled:= True;//включаем панель с таблицей
PnlEdtTblCosult.Align:= alNone;

//включаем кнопки редактирования
BtnClose.Visible:= True;
SpBtnConsAdd.Enabled:= True;

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;
LblWarning.Font.Color:= clRed;

FormResize(Sender);

with DMFIB, DSetConsult do
  begin
    FullRefresh;//"освежаем" набор
//    SpBtnConsAdd.Enabled:= (FieldByName('DOC_STUFFSTATUS').Value <> 2);
    SpBtnConsEdit.Enabled:= not IsEmpty;
    SpBtnConsDelete.Enabled:= not IsEmpty;
    BtnPrintDocSched.Enabled:= not IsEmpty;
    CbBoxPrintFmt.Visible:= BtnPrintDocSched.Enabled;
    LblWarning.Visible:= IsEmpty;//спрячем предупреждение
    FrmMainProg.SwitchGrid(DBGridTblConsult, not IsEmpty);
  end;

//DSConsultDataChange(Sender,FieldByName('DOC_STUFFSTATUS'));

if DBGridTblConsult.CanFocus then
  begin
    DBGridTblConsult.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
    DBGridTblConsult.Columns[0].Title.SortMarker:= smUpEh;
    DBGridTblConsult.Columns[0].Title.SetNextSortMarkerValue(False);
    DBGridTblConsult.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.FormShow(Sender: TObject);
begin
ShowPnlViewConsult(Sender);
end;

procedure TFrmConsultation.CbBoxPrintFmtChange(Sender: TObject);
begin
  case CbBoxPrintFmt.ItemIndex of
    0 : ConsultSendTag:= 45005;//формат А5
    1 : ConsultSendTag:= 45004;//формат А4
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//центруем заголовок

with LblWarning do
  begin
    Parent:= DBGridTblConsult;
    Left:= (DBGridTblConsult.Width - LblWarning.Width) div 2;
    Top:= DBGridTblConsult.Height div 2;
  end;

end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.DBGridTblConsultDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if DBGridTblConsult.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblConsult.Canvas.Brush.Color:= clCream;

if DBGridTblConsult.DataSource.DataSet.FieldByName('DOC_STUFFSTATUS').Value = 2 //если доктор уволен
  then
       DBGridTblConsult.Canvas.Font.Color := clGrayText
  else
      DBGridTblConsult.Canvas.Font.Color := clWindowText;

// Восстанавливаем выделение текущей позиции курсора
if  gdSelected in State
	then
    begin
		  DBGridTblConsult.Canvas.Brush.Color:= clMoneyGreen;

      if DBGridTblConsult.DataSource.DataSet.FieldByName('DOC_STUFFSTATUS').Value = 2
        then
          DBGridTblConsult.Canvas.Font.Color := clRed
        else
        	DBGridTblConsult.Canvas.Font.Color := clWindowText;
	  end;

	// Просим GRID перерисоваться самому
	DBGridTblConsult.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------
//расписание работы в понедельник
procedure TFrmConsultation.ChkBoxWorkMondayClick(Sender: TObject);
begin
LblWork01.Enabled:= ChkBoxWorkMonday.Checked;
LblWork02.Enabled:= ChkBoxWorkMonday.Checked;
CbBoxWorkBegMonday.Enabled:= ChkBoxWorkMonday.Checked;
CbBoxWorkEndMonday.Enabled:= ChkBoxWorkMonday.Checked;
ChkBoxBreakMonday.Enabled:= ChkBoxWorkMonday.Checked;
LblBreak01.Enabled:= ChkBoxWorkMonday.Checked;
LblBreak02.Enabled:= ChkBoxWorkMonday.Checked;
CbBoxBreakBegMonday.Enabled:= ChkBoxWorkMonday.Checked;
CbBoxBreakEndMonday.Enabled:= ChkBoxWorkMonday.Checked;

if ChkBoxWorkMonday.Checked then ChkBoxBreakMondayClick(Sender);
end;

//----------------------------------------------------------------------------------
// перерыв в понедельник
procedure TFrmConsultation.ChkBoxBreakMondayClick(Sender: TObject);
begin
LblBreak01.Enabled:= ChkBoxBreakMonday.Checked;
LblBreak02.Enabled:= ChkBoxBreakMonday.Checked;
CbBoxBreakBegMonday.Enabled:= ChkBoxBreakMonday.Checked;
CbBoxBreakEndMonday.Enabled:= ChkBoxBreakMonday.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы во вторник
procedure TFrmConsultation.ChkBoxWorkTuesdayClick(Sender: TObject);
begin
LblWork03.Enabled:= ChkBoxWorkTuesday.Checked;
LblWork04.Enabled:= ChkBoxWorkTuesday.Checked;
CbBoxWorkBegTuesday.Enabled:= ChkBoxWorkTuesday.Checked;
CbBoxWorkEndTuesday.Enabled:= ChkBoxWorkTuesday.Checked;
ChkBoxBreakTuesday.Enabled:= ChkBoxWorkTuesday.Checked;
LblBreak03.Enabled:= ChkBoxWorkTuesday.Checked;
LblBreak04.Enabled:= ChkBoxWorkTuesday.Checked;
CbBoxBreakBegTuesday.Enabled:= ChkBoxWorkTuesday.Checked;
CbBoxBreakEndTuesday.Enabled:= ChkBoxWorkTuesday.Checked;

if ChkBoxWorkTuesday.Checked then ChkBoxBreakTuesdayClick(Sender);
end;

//----------------------------------------------------------------------------------
// перерыв во вторник
procedure TFrmConsultation.ChkBoxBreakTuesdayClick(Sender: TObject);
begin
LblBreak03.Enabled:= ChkBoxBreakTuesday.Checked;
LblBreak04.Enabled:= ChkBoxBreakTuesday.Checked;
CbBoxBreakBegTuesday.Enabled:= ChkBoxBreakTuesday.Checked;
CbBoxBreakEndTuesday.Enabled:= ChkBoxBreakTuesday.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы в среду
procedure TFrmConsultation.ChkBoxWorkWednesClick(Sender: TObject);
begin
LblWork05.Enabled:= ChkBoxWorkWednes.Checked;
LblWork06.Enabled:= ChkBoxWorkWednes.Checked;
CbBoxWorkBegWednes.Enabled:= ChkBoxWorkWednes.Checked;
CbBoxWorkEndWednes.Enabled:= ChkBoxWorkWednes.Checked;
ChkBoxBreakWednes.Enabled:= ChkBoxWorkWednes.Checked;
LblBreak05.Enabled:= ChkBoxWorkWednes.Checked;
LblBreak06.Enabled:= ChkBoxWorkWednes.Checked;
CbBoxBreakBegWednes.Enabled:= ChkBoxWorkWednes.Checked;
CbBoxBreakEndWednes.Enabled:= ChkBoxWorkWednes.Checked;

if ChkBoxWorkWednes.Checked then ChkBoxBreakWednesClick(Sender);
end;

//----------------------------------------------------------------------------------
//перерыв в среду
procedure TFrmConsultation.ChkBoxBreakWednesClick(Sender: TObject);
begin
LblBreak05.Enabled:= ChkBoxBreakWednes.Checked;
LblBreak06.Enabled:= ChkBoxBreakWednes.Checked;
CbBoxBreakBegWednes.Enabled:= ChkBoxBreakWednes.Checked;
CbBoxBreakEndWednes.Enabled:= ChkBoxBreakWednes.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы в четверг
procedure TFrmConsultation.ChkBoxWorkThursClick(Sender: TObject);
begin
LblWork07.Enabled:= ChkBoxWorkThurs.Checked;
LblWork08.Enabled:= ChkBoxWorkThurs.Checked;
CbBoxWorkBegThurs.Enabled:= ChkBoxWorkThurs.Checked;
CbBoxWorkEndThurs.Enabled:= ChkBoxWorkThurs.Checked;
ChkBoxBreakThurs.Enabled:= ChkBoxWorkThurs.Checked;
LblBreak07.Enabled:= ChkBoxWorkThurs.Checked;
LblBreak08.Enabled:= ChkBoxWorkThurs.Checked;
CbBoxBreakBegThurs.Enabled:= ChkBoxWorkThurs.Checked;
CbBoxBreakEndThurs.Enabled:= ChkBoxWorkThurs.Checked;

if ChkBoxWorkThurs.Checked then ChkBoxBreakThursClick(Sender);
end;

//----------------------------------------------------------------------------------
//перерыв в четверг
procedure TFrmConsultation.ChkBoxBreakThursClick(Sender: TObject);
begin
LblBreak07.Enabled:= ChkBoxBreakThurs.Checked;
LblBreak08.Enabled:= ChkBoxBreakThurs.Checked;
CbBoxBreakBegThurs.Enabled:= ChkBoxBreakThurs.Checked;
CbBoxBreakEndThurs.Enabled:= ChkBoxBreakThurs.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы в пятницу
procedure TFrmConsultation.ChkBoxWorkFridayClick(Sender: TObject);
begin
LblWork09.Enabled:= ChkBoxWorkFriday.Checked;
LblWork10.Enabled:= ChkBoxWorkFriday.Checked;
CbBoxWorkBegFriday.Enabled:= ChkBoxWorkFriday.Checked;
CbBoxWorkEndFriday.Enabled:= ChkBoxWorkFriday.Checked;
ChkBoxBreakFriday.Enabled:= ChkBoxWorkFriday.Checked;
LblBreak09.Enabled:= ChkBoxWorkFriday.Checked;
LblBreak10.Enabled:= ChkBoxWorkFriday.Checked;
CbBoxBreakBegFriday.Enabled:= ChkBoxWorkFriday.Checked;
CbBoxBreakEndFriday.Enabled:= ChkBoxWorkFriday.Checked;

if ChkBoxWorkFriday.Checked then ChkBoxBreakFridayClick(Sender);
end;

//----------------------------------------------------------------------------------
//перерыв в пятницу
procedure TFrmConsultation.ChkBoxBreakFridayClick(Sender: TObject);
begin
LblBreak09.Enabled:= ChkBoxBreakFriday.Checked;
LblBreak10.Enabled:= ChkBoxBreakFriday.Checked;
CbBoxBreakBegFriday.Enabled:= ChkBoxBreakFriday.Checked;
CbBoxBreakEndFriday.Enabled:= ChkBoxBreakFriday.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы в субботу
procedure TFrmConsultation.ChkBoxWorkSaturClick(Sender: TObject);
begin
LblWork11.Enabled:= ChkBoxWorkSatur.Checked;
LblWork12.Enabled:= ChkBoxWorkSatur.Checked;
CbBoxWorkBegSatur.Enabled:= ChkBoxWorkSatur.Checked;
CbBoxWorkEndSatur.Enabled:= ChkBoxWorkSatur.Checked;
ChkBoxBreakSatur.Enabled:= ChkBoxWorkSatur.Checked;
LblBreak11.Enabled:= ChkBoxWorkSatur.Checked;
LblBreak12.Enabled:= ChkBoxWorkSatur.Checked;
CbBoxBreakBegSatur.Enabled:= ChkBoxWorkSatur.Checked;
CbBoxBreakEndSatur.Enabled:= ChkBoxWorkSatur.Checked;

if ChkBoxWorkSatur.Checked then ChkBoxBreakSaturClick(Sender);
end;

//----------------------------------------------------------------------------------
//перерыв в субботу
procedure TFrmConsultation.ChkBoxBreakSaturClick(Sender: TObject);
begin
LblBreak11.Enabled:= ChkBoxBreakSatur.Checked;
LblBreak12.Enabled:= ChkBoxBreakSatur.Checked;
CbBoxBreakBegSatur.Enabled:= ChkBoxBreakSatur.Checked;
CbBoxBreakEndSatur.Enabled:= ChkBoxBreakSatur.Checked;
end;

//----------------------------------------------------------------------------------
//расписание работы в воскресенье
procedure TFrmConsultation.ChkBoxWorkSundayClick(Sender: TObject);
begin
LblWork13.Enabled:= ChkBoxWorkSunday.Checked;
LblWork14.Enabled:= ChkBoxWorkSunday.Checked;
CbBoxWorkBegSunday.Enabled:= ChkBoxWorkSunday.Checked;
CbBoxWorkEndSunday.Enabled:= ChkBoxWorkSunday.Checked;
ChkBoxBreakSunday.Enabled:= ChkBoxWorkSunday.Checked;
LblBreak13.Enabled:= ChkBoxWorkSunday.Checked;
LblBreak14.Enabled:= ChkBoxWorkSunday.Checked;
CbBoxBreakBegSunday.Enabled:= ChkBoxWorkSunday.Checked;
CbBoxBreakEndSunday.Enabled:= ChkBoxWorkSunday.Checked;

if ChkBoxWorkSunday.Checked then ChkBoxBreakSundayClick(Sender);
end;

//----------------------------------------------------------------------------------
//перерыв в воскресенье
procedure TFrmConsultation.ChkBoxBreakSundayClick(Sender: TObject);
begin
LblBreak13.Enabled:= ChkBoxBreakSunday.Checked;
LblBreak14.Enabled:= ChkBoxBreakSunday.Checked;
CbBoxBreakBegSunday.Enabled:= ChkBoxBreakSunday.Checked;
CbBoxBreakEndSunday.Enabled:= ChkBoxBreakSunday.Checked;
end;

//----------------------------------------------------------------------------------
//кнопка "..." DBLookUp с докторами
procedure TFrmConsultation.DBLookupCBDocChoiceEditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
SenderTag:= 668;//выставим флаг, что редактирует эта форма

//вызываем справочник с докторами
FrmMainProg.ActTblDoctorExecute(Sender);

SenderTag:= 0;

//перерисуем панельку заново
ShowPnlEdtConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.PrepareDBLookUpCBDocChoice(Sender: TObject);
begin
//заполняем комбобокс с врачами
with DMFIB, DSetTemp do
  begin
  if Active then Close;
  SQLs.SelectSQL.Clear;
  SQLs.SelectSQL.Text:=
                'SELECT D.ID_DOCTOR, D.DOC_LASTNAME, D.DOC_PROFIL||'' ''||D.DOC_LASTNAME||'' '''
                +'||LEFT(D.DOC_FIRSTNAME,1)||''.''||LEFT(D.DOC_THIRDNAME,1)||''.'' AS FIODOC,'
                + 'D.DOC_CATEGORY, D.DOC_STEPEN FROM TBL_DOCTOR D '
                + 'WHERE (D.ID_DOCTOR > 0)  AND (D.DOC_STUFFSTATUS <> 2) ORDER BY 2';
  Prepare;
  Open;
  First;
  end;


//освежаем DBLookUp и подключаем его к набору
with DBLookupCBDocChoice do
  begin
  if not DMFIB.DSetTemp.IsEmpty
    then //если набор не пустой
      begin
        ListSource:= nil;
        ListSource:= DMFIB.DSTemp;
        KeyField:= 'ID_Doctor';
        ListField:= 'FIODoc';
        KeyValue:= DMFIB.DSetTemp.FieldByName('ID_Doctor').Value;
        Font.Color:= clWindowText;
      end{if not..then}
    else //если набор пустой
      begin
        ListSource:= nil;
        KeyField:= '';
        ListField:= '';
        KeyValue:= 0;
        Text:= 'Заполните таблицу докторов!';
        Font.Color:= clRed;
      end;{if not..else}
  end;{with}
end;

//----------------------------------------------------------------------------------
//кнопка "..." DBLookUp с ЛПУ
procedure TFrmConsultation.DBLookupCBClinChoiceEditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//вызываем справочник с ЛПУ
FrmMainProg.ActTblClinicExecute(Sender);

//перерисуем панельку заново
ShowPnlEdtConsult(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmConsultation.PrepareDBLookUpCBClinChoice(Sender: TObject);
begin
//заполняем комбобокс с ЛПУ
with DMFIB, DSetLookUpClin do
  begin
  if Active then Close;
  SQLs.SelectSQL.Clear;
  SQLs.SelectSQL.Text:= 'SELECT ID_CLINIC, CLIN_NAME FROM TBL_CLINIC ORDER BY 1';
  Prepare;
  Open;
  First;
  end;

//освежаем DBLookUp и подключаем его к набору
with DBLookupCBClinChoice do
  begin
    if not DMFIB.DSetLookUpClin.IsEmpty
      then //если набор не пустой
        begin
          ListSource:= nil;
          ListSource:= DMFIB.DSLookUpClin;
          KeyField:= 'ID_CLINIC';
          ListField:= 'CLIN_NAME';
          KeyValue:= DMFIB.DSetLookUpClin.FieldByName('ID_CLINIC').Value;
          Font.Color:= clWindowText;
        end{if not..then}
      else //если набор пустой
        begin
          KeyField:= '';
          ListField:= '';
          KeyValue:= 0;
          ListSource:= nil;
          Text:= 'Заполните таблицу ЛПУ!';
          Font.Color:= clRed;
        end;{if not..else}
  end;{with}
end;

end.
