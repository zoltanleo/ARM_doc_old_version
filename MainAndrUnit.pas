unit MainAndrUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnMan, ActnColorMaps, ActnList, ToolWin, ActnCtrls,
  ActnMenus, XPStyleActnCtrls, XPMan, ComCtrls, StdCtrls, GridsEh, DBGridEh,
  Buttons, ImgList, ADODB, DBTables, DB, Mask, StrUtils, JvExControls,
  JvSpeedButton, JvExExtCtrls, JvExtComponent, FIB,DateUtils, JvSpeedbar, EhLibFIB,
  padegFIO, ShellAPI, Menus, NiceSettings, FIBDataSet, pFIBDataSet, PngImageList,
  AppEvnts, DbUtilsEh,  VarAndrUnit, uSplash,
  frxClass, frxDBSet, frxExportRTF, frxExportPDF, frxExportODF,
  frxCrypt, frxRich, frxGZip, fs_iinterpreter,
   fs_iclassesrtti,  fs_ipascal,
  fs_idbrtti,  frxDCtrl,  frxExportHTML,
  frxExportBaseDialog, frxExportHTMLDiv, frxExportHelpers, fs_igraphicsrtti;

type
  TThreadTarget = (ttOpenSinglePat, ttAddPatVisit, ttEditPatVisit, ttRefreshSinglePat);

  TThreadMain = class(TThread)
    private
      FThreadTarget: TThreadTarget;
      FMsgParam: Word;
      FMsgStrValue: string;
      FMsgIntValue: Integer;
      procedure MyMsg;
      procedure CloseSplashMsg;
      procedure TmpBlobPrepareMsg;
      procedure StatusMsg;
      procedure ComplaintsMsg;
      procedure LaborMsg;
      procedure MedToolsMsg;
      procedure DsMsg;
    protected
      procedure Execute;override;
    public
      constructor Create(CreateSuspended: Boolean; AThreadTarget: TThreadTarget);
  end;

  TFrmMainProg = class(TForm)
   {$REGION '���� �����������'}
    MainActManager: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActAddNewPat: TAction;
    ActViewPat: TAction;
    ActDelPat: TAction;
    ActOpenDb: TAction;
    ActNewDB: TAction;
    ActCloseDB: TAction;
    ActExitProgram: TAction;
    ActionToolBar1: TActionToolBar;
    PnlSinglePat: TPanel;
    DBGridSinglePat: TDBGridEh;
    ImgListMenu: TImageList;
    LblStatusSingle: TLabel;
    OpenDialogFDB: TOpenDialog;
    SaveDialogFDB: TSaveDialog;
    ActTblTown: TAction;
    ActTblDoctor: TAction;
    ActTblClinic: TAction;
    ActTblPrice: TAction;
    ActEdtPatient: TAction;
    ActAbout: TAction;
    ActCallHlpGeneral: TAction;
    ActPatientVisitAdd: TAction;
    ActPatientVisitEdt: TAction;
    ActPatientVisitDel: TAction;
    LblDetailInfo: TLabel;
    LblWarningDBGridSinglePat: TLabel;
    ActTblDrug: TAction;
    ActTblDs: TAction;
    PnlStBar: TPanel;
    LblStatusTblInfo: TLabel;
    LblRecCount: TLabel;
    LblStGroup: TLabel;
    LblStUsrRole: TLabel;
    LblDinTodayDate: TLabel;
    LblToday: TLabel;
    LblNowTime: TLabel;
    NowTimeTimer: TTimer;
    LblTimeCapt: TLabel;
    ActPatPayment: TAction;
    ActShedul: TAction;
    ActViewTotal: TAction;
    ActTblManip: TAction;
    ActTblRecom: TAction;
    ActReportInspect_A5: TAction;
    ActReportInspectPict_A5: TAction;
    MainReport: TfrxReport;
    frxGZipCompressor1: TfrxGZipCompressor;
    DBDSetReport: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    frxCrypt1: TfrxCrypt;
    frxPDFExport: TfrxPDFExport;
    OpnDlgExe: TOpenDialog;
    fsDBRTTI1: TfsDBRTTI;
    fsScript1: TfsScript;
    ActReportLuesList_A5: TAction;
    PpMnuDBGridTotal: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PpMnuDBGridDetail: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    PpMnuMainFrm: TPopupMenu;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    PpMnuTray: TPopupMenu;
    mnuRestoreWindow: TMenuItem;
    N37: TMenuItem;
    mnuCloseProgramm: TMenuItem;
    NiceSetMain: TNiceSettings;
    ActConsult: TAction;
    ActLaborIssue: TAction;
    ActReportResearch_A5: TAction;
    N36: TMenuItem;
    N38: TMenuItem;
    DSetMainTmp: TpFIBDataSet;
    PngImgLstMainGrid: TPngImageList;
    PngImgListMainMnu24: TPngImageList;
    PngImgListMainMnu16: TPngImageList;
    N41: TMenuItem;
    A41: TMenuItem;
    N51: TMenuItem;
    N42: TMenuItem;
    N52: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    ActReportInspect_A4: TAction;
    ActReportInspectPict_A4: TAction;
    ActReportLuesList_A4: TAction;
    ActReportResearch_A4: TAction;
    ActReportRecomPrepare_A5: TAction;
    ActReportRecomPrepare_A4: TAction;
    DBDSetRecomPrepare: TfrxDBDataset;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N53: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N48: TMenuItem;
    N54: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    A42: TMenuItem;
    A51: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    TrayIconMain: TTrayIcon;
    ActDataRefresh: TAction;
    ActTitulList_A4: TAction;
    ActTitulList_A5: TAction;
    N58: TMenuItem;
    N410: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N411: TMenuItem;
    N510: TMenuItem;
    ActDocSchedule: TAction;
    ActSrchPat: TAction;
    pnlTotalGener: TPanel;
    PnlTotalPat: TPanel;
    LblStatusTotal: TLabel;
    LblTotalInfo: TLabel;
    LblWarningDBGridTotalPat: TLabel;
    DBGridTotalPat: TDBGridEh;
    PnlSpBarMain: TPanel;
    SpdBtnAll: TSpeedButton;
    SpdBtnA: TSpeedButton;
    SpdBtnBe: TSpeedButton;
    SpdBtnVe: TSpeedButton;
    SpdBtnGe: TSpeedButton;
    SpdBtnDe: TSpeedButton;
    SpdBtnE: TSpeedButton;
    SpdBtnZhe: TSpeedButton;
    SpdBtnZe: TSpeedButton;
    SpdBtnI: TSpeedButton;
    SpdBtnKa: TSpeedButton;
    SpdBtneL: TSpeedButton;
    SpdBtneM: TSpeedButton;
    SpdBtneN: TSpeedButton;
    SpdBtnO: TSpeedButton;
    SpdBtnPe: TSpeedButton;
    SpdBtnRe: TSpeedButton;
    SpdBtneS: TSpeedButton;
    SpdBtnTe: TSpeedButton;
    SpdBtnU: TSpeedButton;
    SpdBtnFe: TSpeedButton;
    SpdBtnHe: TSpeedButton;
    SpdBtnTse: TSpeedButton;
    SpdBtnTche: TSpeedButton;
    SpdBtnShe: TSpeedButton;
    SpdBtnSche: TSpeedButton;
    SpdBtnAe: TSpeedButton;
    SpdBtnYu: TSpeedButton;
    SpdBtnYa: TSpeedButton;
    pnlSearchPat: TPanel;
    ChkBoxSrchLstNm: TCheckBox;
    EdtSrchLstNm: TEdit;
    CbBoxSrchLstNm: TComboBox;
    pnlLinea: TPanel;
    ChkBoxSrchFstNm: TCheckBox;
    CbBoxSrchFstNm: TComboBox;
    EdtSrchFstNm: TEdit;
    ChkBoxSrchDtBorn: TCheckBox;
    EdtSrchDtBorn: TEdit;
    CbBoxSrchDtBrn: TComboBox;
    LblKeyBrdLayot: TLabel;
    frxRTFExport: TfrxRTFExport;
    frxODTExport: TfrxODTExport;
    frxHTMLExport: TfrxHTMLExport;
    fsGraphicsRTTI1: TfsGraphicsRTTI;
    {$ENDREGION}
    {���� � 18001 �� 18029 ����������� ���� ������ ������}
   {$REGION '���� ����������� ��������'}
    procedure ActExitProgramExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActOpenDbExecute(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure ActCloseDBExecute(Sender: TObject);//�������� ���������
    procedure BitBtnShutDBTotalClick(Sender: TObject);
    procedure ActViewPatExecute(Sender: TObject);
    procedure BitBtnOpenSinglePatClick(Sender: TObject);
    procedure BitBtnShutDBSingleClick(Sender: TObject);
    procedure ActAddNewPatExecute(Sender: TObject);//���������� ������ ��������
    procedure ActNewDBExecute(Sender: TObject);//�������� ����� ��
    procedure ActTblTownExecute(Sender: TObject);//�������� ����������� �������
    procedure ActTblClinicExecute(Sender: TObject);//�������� ����������� ���
    procedure PatAnketsDisplay(Sender: TObject);//���������� ������ �������� ��� ��������
    procedure ActTblDoctorExecute(Sender: TObject);//�������� ����������� ������
    procedure ActTblPriceExecute(Sender: TObject);//�������� ����������� ��� (�����-����)

    //��������� ������� Total �����
    procedure DBGridTotalPatDrawColumnCell(Sender: TObject; const Rect: TRect;
                            DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridSinglePatDrawColumnCell(Sender: TObject; const Rect: TRect;
                           DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ActEdtPatientExecute(Sender: TObject);
    procedure ActDelPatExecute(Sender: TObject);
    procedure ActPatientVisitAddExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ActPatientVisitEdtExecute(Sender: TObject);
    procedure ActPatientVisitDelExecute(Sender: TObject);
    procedure DBGridTotalPatDblClick(Sender: TObject);
    procedure DBGridSinglePatDblClick(Sender: TObject);
    procedure ActTblDrugExecute(Sender: TObject);
    procedure ActTblDsExecute(Sender: TObject);
    procedure NowTimeTimerTimer(Sender: TObject);
    procedure LblStUsrRoleMouseEnter(Sender: TObject);
    procedure LblStUsrRoleMouseLeave(Sender: TObject);
    procedure ActPatPaymentExecute(Sender: TObject);
    procedure ActShedulExecute(Sender: TObject);
    procedure ActViewTotalExecute(Sender: TObject);
    procedure ActTblManipExecute(Sender: TObject);
    procedure ActTblRecomExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActAboutExecute(Sender: TObject);
    procedure mnuRestoreWindowClick(Sender: TObject);
    procedure mnuCloseProgrammClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActConsultExecute(Sender: TObject);
    procedure ActLaborIssueExecute(Sender: TObject);
    procedure ActReportResearchExecute(Sender: TObject);
    procedure ActReportResearch_A5Execute(Sender: TObject);
    procedure ActReportResearch_A4Execute(Sender: TObject);
    procedure ActReportInspect_A5Execute(Sender: TObject);
    procedure ActReportInspectPict_A5Execute(Sender: TObject);
    procedure ActReportLuesList_A5Execute(Sender: TObject);
    procedure ActReportInspect_A4Execute(Sender: TObject);
    procedure ActReportInspectPict_A4Execute(Sender: TObject);
    procedure ActReportLuesList_A4Execute(Sender: TObject);
    procedure ActReportRecomPrepare_A4Execute(Sender: TObject);
    procedure ActReportRecomPrepare_A5Execute(Sender: TObject);
    procedure SpdBtnAllClick(Sender: TObject);
    procedure SpdBtnAClick(Sender: TObject);
    procedure SpdBtnBeClick(Sender: TObject);
    procedure SpdBtnVeClick(Sender: TObject);
    procedure SpdBtnGeClick(Sender: TObject);
    procedure SpdBtnDeClick(Sender: TObject);
    procedure SpdBtnEClick(Sender: TObject);
    procedure SpdBtnZheClick(Sender: TObject);
    procedure SpdBtnZeClick(Sender: TObject);
    procedure SpdBtnIClick(Sender: TObject);
    procedure SpdBtnKaClick(Sender: TObject);
    procedure SpdBtneLClick(Sender: TObject);
    procedure SpdBtneMClick(Sender: TObject);
    procedure SpdBtneNClick(Sender: TObject);
    procedure SpdBtnOClick(Sender: TObject);
    procedure SpdBtnPeClick(Sender: TObject);
    procedure SpdBtnReClick(Sender: TObject);
    procedure SpdBtneSClick(Sender: TObject);
    procedure SpdBtnTeClick(Sender: TObject);
    procedure SpdBtnUClick(Sender: TObject);
    procedure SpdBtnFeClick(Sender: TObject);
    procedure SpdBtnHeClick(Sender: TObject);
    procedure SpdBtnTseClick(Sender: TObject);
    procedure SpdBtnTcheClick(Sender: TObject);
    procedure SpdBtnSheClick(Sender: TObject);
    procedure SpdBtnScheClick(Sender: TObject);
    procedure SpdBtnAeClick(Sender: TObject);
    procedure SpdBtnYuClick(Sender: TObject);
    procedure SpdBtnYaClick(Sender: TObject);
    procedure TrayIconMainDblClick(Sender: TObject);
    procedure TrayIconMainClick(Sender: TObject);
    procedure ActDataRefreshExecute(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ActTitulList_A4Execute(Sender: TObject);
    procedure ActTitulList_A5Execute(Sender: TObject);
    procedure ActCallHlpGeneralExecute(Sender: TObject);
    procedure ActionToolBar1Click(Sender: TObject);
    procedure ActSrchPatExecute(Sender: TObject);
    procedure ChkBoxSrchLstNmClick(Sender: TObject);
    procedure ChkBoxSrchFstNmClick(Sender: TObject);
    procedure ChkBoxSrchDtBornClick(Sender: TObject);
    procedure EdtSrchLstNmChange(Sender: TObject);
    procedure pnlSearchPatClick(Sender: TObject);
    procedure CbBoxSrchLstNmChange(Sender: TObject);
    procedure CbBoxSrchFstNmChange(Sender: TObject);
    procedure EdtSrchLstNmKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSrchFstNmKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSrchDtBornKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSrchFstNmChange(Sender: TObject);
    procedure EdtSrchDtBornChange(Sender: TObject);
    procedure DBGridTotalPatTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure CbBoxSrchDtBrnChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   {$ENDREGION}

  private
    { Private declarations }
    FCurrDate: TDateTime;//���������� ��� ���������� �������� ������� ����
    FOldTickTime: Cardinal; //"������" ����� � ������� ������� ��� ��� ���������� ����
    FFrmModalResult: TModalResult;//��������� ModalResult ���������� �� ���� ����� ����
    FCountOpenDetailDSet: Integer;//������� �������� DetailDSet'� ������� �������� (��� ������ �������� 0)
    FThread: TThreadMain;
    procedure SelfCreateMyDB(Sender: TObject);//�������� �� � runtime
    procedure WriteTextOverDBGrid(Sender: TObject);//������ ����� ������ �����
    procedure SpeedButtonsAvailab(Sender: TObject; const BtnStatus: Boolean);//��������/��������� ������ "�������" �������� �����
    procedure OpenDSetTotalPat(Sender: TObject);
    procedure FilterDSetTotalPat(Sender: TObject);
    procedure OpenSingleQry(Sender: TObject);
    procedure SendNameReport(ATag: Integer);
    procedure ActPrintTitulListExecute(Sender: TObject);
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure SetCurrDate(const Value: TDateTime);
    procedure SetOldTickTime(const Value: Cardinal);
    procedure SetCountOpenDetailDSet(const Value: Integer);
  public
    { Public declarations }
    property CountOpenDetailDSet: Integer read FCountOpenDetailDSet write SetCountOpenDetailDSet;
    property CurrDate: TDateTime read FCurrDate write SetCurrDate;
    property OldTickTime: Cardinal read FOldTickTime write SetOldTickTime;
    property FrmModalResult: TModalResult read FFrmModalResult write FFrmModalResult;
    procedure RefreshMainWindow(Sender: TObject);
    procedure RefreshDetailWindow(Sender: TObject);
    procedure MemoScrollShowHide(Sender: TMemo);
    procedure CheckEdtEmpty(Sender: TEdit; const MesStr: String);//��������� "�������" ������
    procedure CheckMaskEdtEmpty(Sender: TMaskEdit; const MesStr: String);
    procedure ShowDBErrorMsg(Sender: TObject; const DBErrMsg, WinCaption: String);
    procedure SwitchGrid(Sender: TDBGridEh; const GridFlag: Boolean);//��������� ����� ����� ������������ �����
    procedure PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean);
    procedure PrintSimpleReport(ATag: Integer);//��������� ������ ������� ������� (��� �������� � ��)
    procedure ShowPnlTotalPat(Sender: TObject);//����� ������ ����� ����
    procedure ShowPnlSinglePat(Sender: TObject);//����� ������ ���������������� ����
    procedure GetLastUsedKeyLayout;
    procedure SetLastUsedKeyLayout;

    //������������� ��������� ��� ������ ���������� ����� � ������ "�����-���������"
    procedure BtnMoveSelectedRows(GridSource, GridDestin: TDBGridEh);
    procedure BtnMoveAllRows(GridSource, GridDestin: TDBGridEh);

  protected
    procedure LastFocus(var Mess: TMessage); message  WM_ACTIVATE;
  end;

var
  FrmMainProg: TFrmMainProg;
  TempID: Integer;

implementation

uses  TblAnketaUnit, TblPriceUnit, TblClinicUnit, TblTownUnit,
  TblDoctorUnit, StatusPatUnit, ReseachLuesUnit,
  StLocalisTemplUnit, StPraesensTemplUnit, StProstataUnit, TblDrugsUnit,
  TblDsUnit, DMFIBUnit, ConnectUnit, TblPaymentUnit, PCRUnit, ShedulUnit, TblManipUnit, TblRecomUnit,
  uFrmAbout, uFrmConsultation, uFrmTblLaborIssue, uFrmReportResearch,
  uRichEdtor, UFrmChoiceForm, uFrmAbout_torr, ConnectUnit_emb, uShowFullImg;

var IntHint: Integer;//��������� ���� � �������� "���������" ���� �����
    FocusFlag: Boolean; //���� ������ �����

{$R *.dfm}

{ TFrmMainProg }

(***************************************************************)
(*             ���� ����������� ��������                       *)
(***************************************************************)

procedure TFrmMainProg.FormCreate(Sender: TObject);
begin
SenderTag:= 0;
FocusFlag:= True;

OrdByStrTotalGrid:= DefOrdBy_Clause;//�������� ������ ������ ����� ���������� �������� ('DATEVISIT DESC')

//�������� ��������� ���� ��� embedded-������, ���� �� ��������� ������� ������
//�������� ��
ActNewDB.Enabled:= ((ApplCurVersInfo mod 2) > 0);

//���������� ��������� ��� ������ � ����
with TrayIconMain do
  begin
    Icon:= Application.Icon;
    BalloonFlags:= bfInfo;
    BalloonTimeout:= 2000;
    BalloonTitle:= '������� ����� �����';
    Hint:= '�������� �� ������, ����� ������������ ���������� ';// +
//                  '��� ������� �� ��� ������ ������� ���� � �������� ��������������� ' +
//                  '����� ����.';
  end;

  case ApplCurVersInfo of
    10: FrmMainProg.Caption:= '��� ����� Leybasoft v.' + Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d')
                                                                              + ' embedded (���������� ��� www.rutracker.org)';
    11: FrmMainProg.Caption:= '��� ����� Leybasoft v.'+ Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d')
                                                                              + ' multiuser (���������� ��� www.rutracker.org)';
    20: FrmMainProg.Caption:= '��� ����� Leybasoft v.'+ Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d')
                                                                              + ' embedded (���������� ��� �������)';
    21: FrmMainProg.Caption:= '��� ����� Leybasoft v.'+ Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d')
                                                                              + ' multiuser (���������� ��� �������)';
    30: begin
        FrmMainProg.Caption:= '��� ����� Leybasoft v.'+ Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d  build %d')
                                                                              + ' embedded (test)';
        Application.Icon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lobby_256.ico');
        end;
    31: begin
        FrmMainProg.Caption:= '��� ����� Leybasoft v.'+ Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d  build %d')
                                                                              + ' multiuser (test)';
        Application.Icon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lobby_256.ico');
        end;

  end;

//������� ������� ��� ���������� ������ �������
//ReportInitDir:= GetEnvironmentVariable('USERPROFILE') + '\Temp\';
ReportInitDir:= GetEnvironmentVariable('USERPROFILE') + '\AppData\local\arm_doc\reports';
if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

//��������� ��������� ����� �� ������
NiceSetMain.RegKey:= NiceSetRegKeyPath;
NiceSetMain.LoadSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormKeyPress(Sender: TObject; var Key: Char);
begin
if FocusFlag then //������� ����� � ������
  begin
    if DMFIB.Database.Connected //���� ����������� � �� ���� (��������������� �������� � ���� ������� ���������)
      then
        begin
          //���� ������� ���� ����� � ������� ������� �� ����
          if pnlTotalGener.Visible
            then
              begin
                if (not DMFIB.DSetTotalPat.IsEmpty) then
                  begin
                    //�� �� ������� Enter ������������� �� ����������� ���������� ����� �������
                    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0)
                      then
                        Exit //����� ��������� �� ������� ����� ��������� ������ ��� �� <Enter>
                      else
                        if (GetKeyState(VK_RETURN) < 0) and DBGridTotalPat.Focused
                          then ActViewPatExecute(Self);

                    //�� ������� Escape ���������� ������� ��
//                    if (GetKeyState(VK_ESCAPE) < 0) and DBGridTotalPat.Focused then
//                      begin
//                        if Application.MessageBox('������ ������� ���� ������?', '��������', MB_ICONINFORMATION + MB_YESNO)= IDYES
//                          then
//                            begin
//                              if DMFIB.Database.Connected then DMFIB.Database.Close;
//                              ShowPnlTotalPat(Self);
//                            end;
//                      end;

                    //�� ������ <Esc> ����������� ������� ���� � ����
                    if (GetKeyState(VK_ESCAPE) < 0) then
                      begin
                        TrayIconMain.Visible:= True;
                        Self.Hide;
                      end;

//                    //���������� ���������� ������ ������ � ����� �� ������� ������ <Ctrl> + 'F'
//                    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('F')) < 0)
//                      then
//                        //PostKeyEx32(Ord('F'),KeysToShiftState(VK_CONTROL),Handled);
//                        PostKeyEx32(Ord('F'),KeysToShiftState(VK_CONTROL),False);

                    //�������������� ����������� ��� ������� ��������
                    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)
                      then ActEdtPatientExecute(Self)
                      else
                        if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)
                          then ActDelPatExecute(Self);
                  end;

                if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)
                  then ActAddNewPatExecute(Self);//��������� ��������
              end
            else //������� ���� �� ����� (��� ���� ����� "���������" �������)
              begin
                //�� ������� ������ <Esc> �������� ����� � ������� ����
                if (GetKeyState(VK_ESCAPE) < 0)
                  then ActViewTotalExecute(Self);

                // ��������� ����� ��������
                if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)
                  then ActPatientVisitAddExecute(Self);

                if not DMFIB.DSetSinglePat.IsEmpty then //��������� ���� �� ������
                  begin
                    //�������������� ����������� ��� ������� ����� ��������
                    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)
                      then ActPatientVisitEdtExecute(Self)
                      else
                        if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)
                          then ActPatientVisitDelExecute(Self);
                  end;
              end;
        end
      else //���� ���������� � �� ���������
        begin
//          if (GetKeyState(VK_ESCAPE) < 0) then
//            begin
//              //�� ������� Escape ���������� ������� ����������
//              if Application.MessageBox('������ �������� ���������?', '��������', MB_ICONINFORMATION + MB_YESNO) = IDYES
//                then
//                  Application.Terminate;//��������� ���������
//            end;

          //�� ������ <Esc> ����������� ������� ���� � ����
          if (GetKeyState(VK_ESCAPE) < 0) then
            begin
              TrayIconMain.Visible:= True;
              Self.Hide;
            end;
        end;
  end;//if focusflag then
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
//
end;

//----------------------------------------------------------------------------------

procedure TFrmMainProg.GetLastUsedKeyLayout;
begin
//��������������� ��������� ���������������� ���������
if PrmIsDigit(LblKeyBrdLayot.Caption) //���� ��� �����
  then // �� ����������� � ���������� ���������
    begin
      {"���������" ����� 68748313(��� ������� �����) � 67699721(��� ��������) �������� ����� }
      {������� GetKeyboardLayout - ��. ����� OnClose ���� �����}
      case StrToInt(LblKeyBrdLayot.Caption) of
        68748313: LoadKeyboardLayout('00000419',KLF_ACTIVATE); //������������� �� ���������
        else// � ��������� ������ ����� ��������
          LoadKeyboardLayout('00000409',KLF_ACTIVATE);//������������� �� ��������
      end;
    end
  else //����� �������� �� ������� �������, � ������� �������� ��, ������� ����� �� ������ �������� ����
    LoadKeyboardLayout('00000419',KLF_ACTIVATE);//������������� �� ������� ��������� ����������
end;

//----------------------------------------------------------------------------------
//��� ������������ ���� ��������� �������� ��������� ���������� �������� ����
procedure TFrmMainProg.SetCountOpenDetailDSet(const Value: Integer);
begin
  if FCountOpenDetailDSet <> Value then FCountOpenDetailDSet:= Value;
end;

procedure TFrmMainProg.SetCurrDate(const Value: TDateTime);
begin
  if FCurrDate <> Value then FCurrDate := Value;
end;

procedure TFrmMainProg.SetLastUsedKeyLayout;
begin
//�������� ���������
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));
end;

procedure TFrmMainProg.SetOldTickTime(const Value: Cardinal);
begin
  if FOldTickTime <> Value then FOldTickTime:= Value;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
//��������� ��������� ����� �� ������
NiceSetMain.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormShow(Sender: TObject);
begin
ShowPnlTotalPat(Sender);//���������� ������ ����� ����
end;

procedure TFrmMainProg.WMSysCommand(var Msg: TWMSysCommand); {TrayIconMain} //����������� ���� � ����
begin
  if (Msg.CmdType = SC_CLOSE) then
    begin
      TrayIconMain.Visible:= True;
      Self.Hide;
    end
  else
    inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: Integer);
begin
MinHeight:= 620;
MinWidth:= 800;
end;


(********************************************************)
(*                  ���� ������� ����                   *)
(********************************************************)

//�������� ��
procedure TFrmMainProg.ActNewDBExecute(Sender: TObject);
begin
SelfCreateMyDB(Sender);
end;

//----------------------------------------------------------------------------
//�������� ���� ������
procedure TFrmMainProg.ActOpenDbExecute(Sender: TObject);
begin
  DBConnectString:= '';
  UsrLgn:= '';
  UsrPswd:= '';
  
  DBGridTotalPat.DataSource:= nil;

  FrmConnect:= TFrmConnect.Create(Self);
  try
    FrmConnect.ShowModal;
  finally
    FreeAndNil(FrmConnect);
  end;

  if FrmSenderModalResult = mrOk then
  begin
    Self.Canvas.Lock;
    DMFIB.DSetTotalPat.DisableControls;
    FrmMainProg.SpdBtnAll.Down:= True;//"����" �� ��� ������
    DBGridTotalPat.DataSource:= DMFIB.DSTotalPat;//���������� ������� ����
    ShowPnlTotalPat(Sender);//���������� ����� ������
    Self.FormResize(Sender);//�������������� ���������
    DMFIB.DSetTotalPat.EnableControls;
    Self.Canvas.Unlock;

    CountOpenDetailDSet:= 0;//��������� ���� �� ���� �� ���������

    if not NowTimeTimer.Enabled then NowTimeTimer.Enabled:= True; //�������� ������
    GetLastUsedKeyLayout;//��������� ��������� ��������� ��������� �����
  end;
end;{procedure}

//----------------------------------------------------------------------------
//�������� � ������� ��������� ���������� ��������
procedure TFrmMainProg.ActViewPatExecute(Sender: TObject);
begin
//�������������� ��������
ActAddNewPat.ShortCut:= TextToShortCut('');
ActEdtPatient.ShortCut:= TextToShortCut('');
ActDelPat.ShortCut:= TextToShortCut('');

ActPatientVisitAdd.ShortCut:= TextToShortCut('Ctrl+N');
ActPatientVisitEdt.ShortCut:= TextToShortCut('Ctrl+E');
ActPatientVisitDel.ShortCut:= TextToShortCut('Ctrl+D');

if CountOpenDetailDSet = 0
  then //���� ��������� ��������� ���� � ������ ���
    begin
      if Assigned(FThread) then Exit;

      OpenSingleQry(Sender);

      FThread:= TThreadMain.Create(True,ttOpenSinglePat);
      try
        frmSplash:= TfrmSplash.Create(Self);
        if FThread.Suspended then FThread.Resume;
        try
          frmSplash.ShowModal;
        finally
          FreeAndNil(frmSplash);
        end;
      finally
        FreeAndNil(FThread);
      end;

      if not IsThreadExecuteAbort //���� �� ���� ������ ��� ������ �������� � ���������� �����
        then
          ShowPnlSinglePat(Sender) //������� ��������� ����
        else
          ShowPnlTotalPat(Sender);//������� ����� ����
    end
  else
    begin
      DMFIB.DSetSinglePat.ParamByName('prmFamID').Value:= DMFIB.DSetTotalPat.FieldByName('ID_Anketa').Value;
      RefreshDetailWindow(Sender);//��������� ���������� ���� � ��������
    end;
end;

//----------------------------------------------------------------------------
//������� � ������ ������
procedure TFrmMainProg.ActViewTotalExecute(Sender: TObject);
begin
//�������������� ��������
ActAddNewPat.ShortCut:= TextToShortCut('Ctrl+N');
ActEdtPatient.ShortCut:= TextToShortCut('Ctrl+E');
ActDelPat.ShortCut:= TextToShortCut('Ctrl+D');

ActPatientVisitAdd.ShortCut:= TextToShortCut('');
ActPatientVisitEdt.ShortCut:= TextToShortCut('');
ActPatientVisitDel.ShortCut:= TextToShortCut('');

RefreshMainWindow(Sender);
end;

//----------------------------------------------------------------------------
//���������� ������ ������ � �����
procedure TFrmMainProg.ActPatientVisitAddExecute(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
  {$region '��� ��������'}
//����� ����������� ������ ��������, �� ������ �� ������� �������� �� ����, ���� �� ���������� ��������� ��� �����
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= DMFIB.DSetTotalPat.FN('ID_ANKETA').Value;
    Open;
  end;

if DSetMainTmp.IsEmpty//���� ������ ��� ������ ����������� �������
  then //����������� �� ����
    begin
      DSetMainTmp.Close;//������� �� ����� ��������
      if DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1
        then
          begin
            TmpStr1:= '��� �������� ';
            TmpStr2:= '���';
            TmpStr3:= '����� ��������';
          end
        else
          begin
            TmpStr1:= '��� ��������� ';
            TmpStr2:= '��';
            TmpStr3:= '��� ���������';
          end;

      //"��������" ����� �������
      TmpStr1:= TmpStr1 + GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                    AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                    AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                    (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' �������� ����� ����� � ����� '
                    + '��� ����������, ��� ��� ���-�� �� �������������, ���������� ����������� � ����, '
                    + '��� ����� ������� ' + TmpStr2 + ' �� ���� ������. ������ �������� ' + TmpStr3 + ' �����?';

      if Application.MessageBox(PChar(TmpStr1),'������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          begin
            RefreshMainWindow(Sender);//���������� ���� �������� ����� c "����������" ������
            ActAddNewPatExecute(Sender);//"����" � ��������� ���������� ��������
          end
        else
          begin
            ActViewTotalExecute(Sender);//��������� � ���� ������ �����
            FormResize(Sender);//���������� ��� �������
          end;

      Exit;//������� �� ��������� ����� ������ ������ �� ��������
    end {if DSetMainTmp.IsEmpty .. then}
  else //�������� ��������� ����� �������� � �������
  {$endregion '��� ��������'}
    begin
      VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;//���������� ID �������� ��������

      if not DMFIB.DSetSinglePat.IsEmpty then //���� ���� � �������� �������� �� ����
        VarID_Tbl_VisitMain:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger;//���������� ID �������� ������

      VisitPatientFlag:= True;//������� ������ - ��������� ����� ��������

      //���������� ������� ��������� ����
      SetLastUsedKeyLayout;

      //�������� ����� ���������� ������ ������
      FrmStatusPat:= TFrmStatusPat.Create(Self);

      try
        if Assigned(FThread) then Exit;
        FThread:= TThreadMain.Create(True,ttAddPatVisit);//������� �����
        try
          frmSplash:= TfrmSplash.Create(Self);//������� �����
          if FThread.Suspended then FThread.Resume;//�������� �����
          try
            frmSplash.ShowModal;//���������� �����
          finally
            FreeAndNil(frmSplash);
          end;
        finally
          FreeAndNil(FThread);
        end;

        //������� ����� �����, ���� �������� ����� ��������
        if IsThreadExecuteAbort then
        begin
          Exit;
        end;

        FrmStatusPat.ShowModal;//���������� ���� ������
      finally
        FreeAndNil(FrmStatusPat);
      end;

      if FrmSenderModalResult = mrOk then
      begin
        DMFIB.DSetSinglePat.DisableControls;

        FThread:= TThreadMain.Create(True,ttRefreshSinglePat);//������� �����
        try
          frmSplash:= TfrmSplash.Create(Self);//������� �����
          if FThread.Suspended then FThread.Resume;//�������� �����
          try
            frmSplash.ShowModal;//���������� �����
          finally
            FreeAndNil(frmSplash);
          end;
        finally
          FreeAndNil(FThread);
        end;

        DMFIB.DSetSinglePat.EnableControls;
      end;

      //��������������� ��������� ��������� ���������
      GetLastUsedKeyLayout;

    end;{if DSetMainTmp.IsEmpty ..else}
end;

//----------------------------------------------------------------------------
//�������������� ������ ������ � �����
procedure TFrmMainProg.ActPatientVisitEdtExecute(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
if DMFIB.DSetSinglePat.IsEmpty then Exit;//������, ���� ������

//����� ����������� ������ ��������, �� ������ �� ������� �������� �� ����,
//���� �� ���������� ������������� ��� �����
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= DMFIB.DSetTotalPat.FN('ID_ANKETA').Value;
    Open;
  end;

if DSetMainTmp.IsEmpty//���� ������ ��� ������ ����������� �������
  then //����������� �� ����
    begin
      DSetMainTmp.Close;//������� �� ����� ��������
      if DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1
        then
          begin
            TmpStr1:= '��� �������� ';
            TmpStr2:= '��������';
            TmpStr3:= '����� ��������';
          end
        else
          begin
            TmpStr1:= '��� ��������� ';
            TmpStr2:= '���������';
            TmpStr3:= '��� ���������';
          end;

      //"��������" ����� �������
      TmpStr1:= TmpStr1 + GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                    AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                    AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                    (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' ��������������� ���� ����� � ����� '
                    + '��� ����������, ��� ��� ���-�� �� �������������, ���������� ����������� � ����, '
                    + '��� ����� ������� ' + TmpStr2 + ' �� ���� ������. ������ �������� ' + TmpStr3 + ' �����?';

      if Application.MessageBox(PChar(TmpStr1),'������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          begin
            RefreshMainWindow(Sender);//���������� ���� �������� ����� c "����������" ������
            ActAddNewPatExecute(Sender);//"����" � ��������� ���������� ��������
          end
        else
          begin
            ActViewTotalExecute(Sender);//��������� � ���� ������ �����
            FormResize(Sender);//���������� ��� �������
          end;

      Exit;//������� �� ��������� ����� ������ ������ �� ��������
    end {if DSetMainTmp.IsEmpty .. then}
  else //������� ��� ��� ������������ � ����, ����� ��������� � ������������� ������ �������� � �������
    begin
      //���������, �� ������ �� ������� �����, ���� �� ��� ���������� �������������
      with DSetMainTmp do
        begin
          if Active then Close;
          SQLs.SelectSQL.Clear;
          SQLs.SelectSQL.Text:= 'SELECT ID_VISITMAIN FROM TBL_VISITMAIN WHERE ID_VISITMAIN = :prmVM_ID';
          Prepare;
          ParamByName('prmVM_ID').Value:= DMFIB.DSetSinglePat.FN('ID_VISITMAIN').Value;
          Open;
        end;

        with DMFIB do
          begin
            if DSetMainTmp.IsEmpty then //���� ������� ������ ���-�� ����������� ��� ����� �������, �� �����������
              begin
                DSetMainTmp.Close;//������� �� ����� ��������
                //�������������� ������� � ��������� ��������� � ��������
                if not DSetAnketa.Active then DSetAnketa.FullRefresh;
                if not DSetDoctor.Active then DSetDoctor.FullRefresh;
                if not DSetVisitMain.IsEmpty then
                  begin
                    DSetAnketa.Locate('ID_ANKETA',DSetVisitMain['VIS_LINKANKETA'],[]);
                    DSetDoctor.Locate('ID_DOCTOR',DSetVisitMain['VIS_LINKDOCTOR'],[]);
                  end;

                if DSetAnketa.FN('SEX').AsInteger =1
                  then
                    TmpStr1:= '��������'
                  else
                    TmpStr1:= '���������';

                TmpStr1:= '����� ' + TmpStr1 + ' ' + GetFIOPadeg(Trim(DSetAnketa.FN('ANKLASTNAME').AsString),
                              AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKFIRSTNAME').AsString),1)) + '.',
                              AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKTHIRDNAME').AsString),1)) + '.',
                              (DSetAnketa.FN('SEX').AsInteger = 1), 2)
                       + ' � ����� ' + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,3) + ' '
                       + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
                              AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.',
                              AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.',
                              (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 3) + ' �� ';

                case MonthOf(DSetVisitMain.FN('DATEVISIT').AsDateTime) of
                  1: TmpStr2:= '������';
                  2: TmpStr2:= '�������';
                  3: TmpStr2:= '�����';
                  4: TmpStr2:= '������';
                  5: TmpStr2:= '���';
                  6: TmpStr2:= '����';
                  7: TmpStr2:= '����';
                  8: TmpStr2:= '�������';
                  9: TmpStr2:= '��������';
                 10: TmpStr2:= '�������';
                 11: TmpStr2:= '������';
                 12: TmpStr2:= '�������';
                end;

                TmpStr1:= TmpStr1 + FormatDateTime('d',DSetVisitMain.FN('DATEVISIT').AsDateTime) + ' ' + TmpStr2
                         + FormatDateTime(' YYYY �.',DSetVisitMain.FN('DATEVISIT').AsDateTime) + ' ��� ������ '
                         + '�� ���� ������. �������� ��� ������ ���-�� �� �������������, ���������� � ����� '
                         + '������ � ��������� ������ ����������� � ����. ������ �������� ������ ������ ������?';

                if Application.MessageBox(PChar(TmpStr1), '������ ������� � ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then //��������� ����� �����
                    ActPatientVisitAddExecute(Sender)
                  else
                    RefreshDetailWindow(Sender);//��������� ���� �������

                Exit; //������� ������
              end{if DSetMainTmp.IsEmpty ..then}
            else
              begin
                //�������� ������� �������� � ������� �������
                VarID_Tbl_VisitMain:= DMFIB.DSetSinglePat.FN('ID_VISITMAIN').AsInteger;

                VisitPatientFlag:= False;//�������� ������ - ����������� ����� ��������

                //���������� ������� ��������� ����
                SetLastUsedKeyLayout;

                //�������� ����� �������������� ������ ������
                FrmStatusPat:= TFrmStatusPat.Create(Self);

                try
                  if Assigned(FThread) then Exit;
                  FThread:= TThreadMain.Create(True,ttEditPatVisit);//������� �����
                  try
                    frmSplash:= TfrmSplash.Create(Self);//������� �����
                    if FThread.Suspended then FThread.Resume;//�������� �����
                    try
                      frmSplash.ShowModal;//���������� �����
                    finally
                      FreeAndNil(frmSplash);
                    end;
                  finally
                    FreeAndNil(FThread);
                  end;

                  //������� ����� �����, ���� �������� ����� ��������
                  if IsThreadExecuteAbort then
                  begin
                    Exit;
                  end;

                  FrmStatusPat.ShowModal;//���������� ���� ������
                finally
                  FreeAndNil(FrmStatusPat);
                end;

                if FrmSenderModalResult = mrOk then
                begin
                  DMFIB.DSetSinglePat.DisableControls;

                  FThread:= TThreadMain.Create(True,ttRefreshSinglePat);//������� �����
                  try
                  frmSplash:= TfrmSplash.Create(Self);//������� �����
                  if FThread.Suspended then FThread.Resume;//�������� �����
                    try
                      frmSplash.ShowModal;//���������� �����
                    finally
                      FreeAndNil(frmSplash);
                    end;
                  finally
                    FreeAndNil(FThread);
                  end;
                  DMFIB.DSetSinglePat.EnableControls;
                end;

                //��������������� ��������� ��������� ���������
                GetLastUsedKeyLayout;

              end;{if DSetMainTmp.IsEmpty ..else}
          end;
    end;
end;

//----------------------------------------------------------------------------

//�������� ������ ��������
procedure TFrmMainProg.ActPatientVisitDelExecute(Sender: TObject);
var TmpMes, tmpstr: AnsiString;
begin
with DMFIB,DSetSinglePat do
  begin
    if IsEmpty then Exit;

    //�������������� ������� � ��������� ��������� � ��������
    if not DSetAnketa.Active then DSetAnketa.FullRefresh;
    if not DSetDoctor.Active then DSetDoctor.FullRefresh;
    if not DSetVisitMain.IsEmpty then
      begin
        DSetAnketa.Locate('ID_ANKETA',DSetVisitMain['VIS_LINKANKETA'],[]);
        DSetDoctor.Locate('ID_DOCTOR',DSetVisitMain['VIS_LINKDOCTOR'],[]);
      end;

    if DSetAnketa.FN('SEX').AsInteger =1
      then
        tmpstr:= '��������'
      else
        tmpstr:= '���������';

    TmpMes:= '�� ������ ������� ����� ' + tmpstr + ' '
           + GetFIOPadeg(Trim(DSetAnketa.FN('ANKLASTNAME').AsString),
                  AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKFIRSTNAME').AsString),1)) + '.',
                  AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKTHIRDNAME').AsString),1)) + '.',
                  (DSetAnketa.FN('SEX').AsInteger = 1), 2)
           + ' � ����� '
           + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,3) + ' '
           + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
                  AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.',
                  AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.',
                  (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 3) + ' �� ';

    case MonthOf(DSetVisitMain.FN('DATEVISIT').AsDateTime) of
      1: tmpstr:= '������';
      2: tmpstr:= '�������';
      3: tmpstr:= '�����';
      4: tmpstr:= '������';
      5: tmpstr:= '���';
      6: tmpstr:= '����';
      7: tmpstr:= '����';
      8: tmpstr:= '�������';
      9: tmpstr:= '��������';
     10: tmpstr:= '�������';
     11: tmpstr:= '������';
     12: tmpstr:= '�������';
    end;

    TmpMes:= TmpMes + FormatDateTime('d',DSetVisitMain.FN('DATEVISIT').AsDateTime) + ' ' + tmpstr
             + FormatDateTime(' YYYY �. ?',DSetVisitMain.FN('DATEVISIT').AsDateTime); 


    if Application.MessageBox(PChar(TmpMes), '�������� ������', MB_YESNO +
                                                              MB_ICONINFORMATION) = IDYes
      then
        begin
          //�������������� �������
          DSSinglePatDataChange(Sender, FieldByName('ID_VISITMAIN'));

          //������������� ������� �������� ������� (��� ��������� � ���������� ��������)
          WriteTransVisit.StartTransaction;
          try
            DSetVisitMain.Delete;//������� ������ ������
            WriteTransVisit.Commit;
          except
            WriteTransVisit.Rollback;
            Application.MessageBox('������ ������ ������� �� �������!',
                                  '������ �������� ������.', MB_ICONINFORMATION + MB_OK);
            Exit;
          end;{try.except}
        end;{if Application.MessageBox .. then}
  end;
RefreshDetailWindow(Sender);
end;

//----------------------------------------------------------------------------
//����� ������� � �������� 1.1
procedure TFrmMainProg.ActCallHlpGeneralExecute(Sender: TObject);
begin
CallMyDocByHlpContext(Self,11);
end;

//----------------------------------------------------------------------------
//���������� � ��
procedure TFrmMainProg.ActCloseDBExecute(Sender: TObject);
begin
if Application.MessageBox('������ ������� ���� ������?', '��������', MB_ICONINFORMATION + MB_YESNO)= IDYES then
  begin
    SetLastUsedKeyLayout;//���������� ���������������� ���������
    if DMFIB.Database.Connected then DMFIB.Database.Close;
    if NowTimeTimer.Enabled then NowTimeTimer.Enabled:= False;//��������� ������
    CountOpenDetailDSet:= 0;
    ShowPnlTotalPat(Sender);
  end;
end;

//----------------------------------------------------------------------------

//���������� ������ ��������
procedure TFrmMainProg.ActAddNewPatExecute(Sender: TObject);
begin
//���������� ������� "������" ������ � ����� �����, ���� �� �� ����
//� FrmTblAnketa �������� ���������� VarID_Tbl_Anketa ����� ��������, ���� ��������� "�����" ������
if not DMFIB.DSetTotalPat.IsEmpty
  then VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;

TblAnketaFlag:= True;//������� ������ - ��������� ��������

//���������� ������� ��������� ����
SetLastUsedKeyLayout;

with TFrmTblAnketa.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//��������������� ��������� ��������� ���������
GetLastUsedKeyLayout;

//���� ���������� �� ������ "���"
//��� ���� ������ ���������� ��������� OpenDSetTotalPat,
//��� � ���� ������� ���������� ��������� RefreshMainWindow
SpdBtnAll.Down:= True;
SpdBtnAllClick(Sender);

//SpdBtnAll.Perform(WM_LBUTTONDOWN, 0, 0);
//SpdBtnAll.Perform(WM_LBUTTONUP, 0, 0);


//���� ������� ���� �� ����,
//������������ ���� �� ����������� ������ (���� ���������, � VarID_Tbl_Anketa ����� ��������),
//���� �� "������" ������ (���� ������ �������� �� ���������, �������� VarID_Tbl_Anketa �������)
if not DMFIB.DSetTotalPat.IsEmpty
  then
    DMFIB.DSetTotalPat.Locate('ID_Anketa', VarID_Tbl_Anketa, []);

FormResize(Sender);
end;

//----------------------------------------------------------------------------
//�������������� ������ ��������
procedure TFrmMainProg.ActEdtPatientExecute(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
if DMFIB.DSetTotalPat.IsEmpty then Exit;

//�������� �� ������������� ������ ����� ���������������
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= DMFIB.DSetTotalPat.FN('ID_ANKETA').Value;
    Open;
  end;

if DSetMainTmp.IsEmpty//���� ������ ��� ������ ����������� �������
  then //����������� �� ����
    begin
      DSetMainTmp.Close;//������� �� ����� ��������
      if DMFIB.DSetTotalPat.FN('SEX').AsInteger =1
        then
          begin
            TmpStr1:= '������ �������� ';
            TmpStr2:= '���';
            TmpStr3:= '����� ��������';
          end
        else
          begin
            TmpStr1:= '������ ��������� ';
            TmpStr2:= '��';
            TmpStr3:= '��� ���������';
          end;

      //"��������" ����� �������
      TmpStr1:= TmpStr1 + GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                      (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' ��������������� ��� ����������, '
                      + '��� ��� ���-�� �� �������������, ���������� ����������� � ����, ��� ����� ������� '
                      + TmpStr2 + ' �� ���� ������. ������ �������� ' + TmpStr3 + ' �����?';
      if Application.MessageBox(PChar(TmpStr1),'������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          ActAddNewPatExecute(Sender)//"����" � ��������� ���������� ��������
        else
          begin
            RefreshMainWindow(Sender);//������ ��������� ������� ����
            FormResize(Sender);//���������� ��� �������
          end;

      Exit;//������� �� ��������� ����� ������ ������ �� ��������
    end {if DSetMainTmp.IsEmpty .. then}
  else //�������� ����������� ��
    begin
      TblAnketaFlag:= False;//�������� ������ - ����������� ��������

      //���������� ������� ������ ������(�������� �� "�������" ������� � ������ ���������)
      VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;

      with TFrmTblAnketa.Create(nil) do
        try
          ShowModal;
        finally
          Free;
        end;

      //������� ����
      RefreshMainWindow(Sender);

      //������������ �� "������" ������
      DMFIB.DSetTotalPat.Locate('ID_Anketa', VarID_Tbl_Anketa, []);

      FormResize(Sender);
    end;{if DSetMainTmp.IsEmpty ..else}
end;

//----------------------------------------------------------------------------

//�������� ��������
procedure TFrmMainProg.ActDataRefreshExecute(Sender: TObject);
var OldID: Integer;
begin
//������� ����������� �� ������ � ������������ ����������� ��������
if not(pnlTotalGener.Visible) and not(PnlSinglePat.Visible)
  then
    Exit
  else
    begin
      if pnlTotalGener.Visible
        then
          begin
            OldID:= DMFIB.DSetTotalPat.FN('ID_Anketa').AsInteger;
            DMFIB.DSetTotalPat.FullRefresh;
            RefreshMainWindow(Sender);

            //������������ �� "������" ������
            DMFIB.DSetTotalPat.Locate('ID_Anketa', OldID, []);
          end
        else
          begin
            OldID:= DMFIB.DSetSinglePat.FN('ID_VISITMAIN').AsInteger;
            DMFIB.DSetSinglePat.FullRefresh;
            RefreshDetailWindow(Sender);

            //������������ �� "������" ������
            DMFIB.DSetSinglePat.Locate('ID_VISITMAIN', OldID, []);
          end;
    end;
end;

procedure TFrmMainProg.ActDelPatExecute(Sender: TObject);
var MesRes: Integer;
    TmpMsg: String;
begin
 with DMFIB,DSetAnketa do
  begin
    if not IsEmpty then //���� ����� �� ����
      begin
        if DSetAnketa.FN('SEX').AsInteger =1
          then
            TmpMsg:= '�������� '
          else
            TmpMsg:= '��������� ';

        TmpMsg:= '�� ������ ������� ' + TmpMsg + GetFIOPadeg(Trim(DSetAnketa.FN('ANKLASTNAME').AsString),
                      AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKFIRSTNAME').AsString),1)) + '.',
                      AnsiUpperCase(LeftStr(Trim(DSetAnketa.FN('ANKTHIRDNAME').AsString),1)) + '.',
                                                   (DSetAnketa.FN('SEX').AsInteger = 1), 2) + ' �� ���� ������?';

        MesRes:= Application.MessageBox(PChar(TmpMsg), '�������� ������',MB_YESNO + MB_ICONINFORMATION);

        if MesRes = IDYes then
          begin
            try
              DSetAnketa.Delete;
              RefreshMainWindow(Sender);
            except
              MessageBox(Handle,PChar(ErrorMsg), PChar('�������� ������'), MB_ICONINFORMATION);
            end;{try..except}
          end;
      end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

//�������� ����� ����������� �������
procedure TFrmMainProg.ActTblTownExecute(Sender: TObject);
begin
//���������� ������� ��������� ����
SetLastUsedKeyLayout;

with TFrmTblTown.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//��������������� ��������� ��������� ���������
GetLastUsedKeyLayout;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActTitulList_A4Execute(Sender: TObject);
begin
SenderTag:= ActTitulList_A4.Tag; //���������� ��������� �������� � ������� �4
ActPrintTitulListExecute(Sender);
SenderTag:= 0;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActTitulList_A5Execute(Sender: TObject);
begin
SenderTag:= ActTitulList_A5.Tag; //���������� ��������� �������� � ������� �5
ActPrintTitulListExecute(Sender);
SenderTag:= 0;
end;

//----------------------------------------------------------------------------
//����� ���������� ����� ������������ ����� �� ������
procedure TFrmMainProg.ActPrintTitulListExecute(Sender: TObject);
begin
//�������� "���������" �������� �����
VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_Anketa').AsInteger;

  with TFrmChoiceForm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

//----------------------------------------------------------------------------

//�������� ����� ����������� ���
procedure TFrmMainProg.ActTblClinicExecute(Sender: TObject);
begin
with TFrmTblClinic.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

//�������� ������� ������
procedure TFrmMainProg.ActTblDoctorExecute(Sender: TObject);
begin
//���������� ������� ��������� ����
SetLastUsedKeyLayout;

with TFrmTblDoctor.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//��������������� ��������� ��������� ���������
GetLastUsedKeyLayout;
end;

//----------------------------------------------------------------------------

//�������� ������� �����-�����
procedure TFrmMainProg.ActTblPriceExecute(Sender: TObject);
begin
TblPriceFlag:= False;//����� ����������� ����� ��� ����������� ������
with TFrmTblPrice.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActTblDrugExecute(Sender: TObject);
begin
DrugChoiceBtn:= False;//������ ������ �������� ����� �����������
SenderTag:= ActTblDrug.Tag;

with TFrmTblDrugs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActTblDsExecute(Sender: TObject);
begin
DsChoiceBtn:= False;//������ ������ ��������� ����� �����������
with TFrmTblDs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//�������� �����������
procedure TFrmMainProg.ActTblManipExecute(Sender: TObject);
begin
ManipChoiceBtn:= False;//������ ������ ����������� ����� �����������
with TFrmTblManip.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//�������� ������������
procedure TFrmMainProg.ActTblRecomExecute(Sender: TObject);
begin
RecomChoiceBtn:= False;//������ ������ ������������ ����� �����������
with TFrmTblRecom.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//����� ��������� ��������
procedure TFrmMainProg.ActShedulExecute(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
if DMFIB.DSetTotalPat.IsEmpty then Exit;

//�������� �� ������������� ������ ����� ���������������
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= DMFIB.DSetTotalPat.FN('ID_ANKETA').Value;
    Open;
  end;

if DSetMainTmp.IsEmpty//���� ������ ��� ������ ����������� �������
  then //����������� �� ����
    begin
      if DMFIB.DSetTotalPat.FN('SEX').AsInteger =1
        then
          begin
            TmpStr1:= '��� �������� ';
            TmpStr2:= '���';
            TmpStr3:= '����� ��������';
          end
        else
          begin
            TmpStr1:= '��� ��������� ';
            TmpStr2:= '��';
            TmpStr3:= '��� ���������';
          end;

      //"��������" ����� �������
      TmpStr1:= TmpStr1 + GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                      (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' �������� ����� ��� ��������������� '
                      + '��������� ������� ��� ����������, ��� ��� ���-�� �� �������������, ���������� '
                      + '����������� � ����, ��� ����� �������' + TmpStr2 + ' �� ���� ������. ������ �������� '
                      + TmpStr3 + ' �����?';
      if Application.MessageBox(PChar(TmpStr1),'������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          ActAddNewPatExecute(Sender)//"����" � ��������� ���������� ��������
        else
          begin
            RefreshMainWindow(Sender);//������ ��������� ������� ����
            FormResize(Sender);//���������� ��� �������
          end;

      Exit;//������� �� ��������� ����� ������ ������ �� ��������
    end {if DSetMainTmp.IsEmpty .. then}
  else //�������� ����������� ��
    begin
      //���������� ������� ������ ������(�������� �� "�������" ������� � ������ ���������)
      VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;

      with TFrmShedul.Create(nil) do
        try
          ShowModal;
        finally
          Free;
        end;

      //������� ����
      RefreshMainWindow(Sender);

      //������������ �� "������" ������
      DMFIB.DSetTotalPat.Locate('ID_Anketa', VarID_Tbl_Anketa, []);

      FormResize(Sender);
    end;{if DSetMainTmp.IsEmpty ..else}
end;

//----------------------------------------------------------------------------
//������������� ��� �������� ���������� ������ ���������
procedure TFrmMainProg.ActSrchPatExecute(Sender: TObject);
begin
pnlSearchPat.Visible:= ActSrchPat.Checked and ActSrchPat.Enabled and ActSrchPat.Visible;

//�������� ��������� ��������
ChkBoxSrchLstNmClick(Sender);
ChkBoxSrchFstNmClick(Sender);
ChkBoxSrchDtBornClick(Sender);

//���������� ������ �� ������ "���" � ��������/������� "���������� ������"
SpeedButtonsAvailab(Sender,not ActSrchPat.Checked);
SpdBtnAll.Down:= True;
SpdBtnAllClick(Sender);

if (ChkBoxSrchLstNm.CanFocus) and (not ChkBoxSrchLstNm.Checked)
  then
    ChkBoxSrchLstNm.SetFocus
  else
    if EdtSrchLstNm.CanFocus then EdtSrchLstNm.SetFocus;
end;

//----------------------------------------------------------------------------
//����� ������� �������� ��������
procedure TFrmMainProg.ActPatPaymentExecute(Sender: TObject);
var TmpStr1, TmpStr2, TmpStr3: String;
begin
if DMFIB.DSetTotalPat.IsEmpty then Exit;

//�������� �� ������������� ������ ����� ���������������
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT ID_ANKETA FROM TBL_ANKETA WHERE ID_ANKETA = :prmID_Anketa';
    Prepare;
    ParamByName('prmID_Anketa').Value:= DMFIB.DSetTotalPat.FN('ID_ANKETA').Value;
    Open;
  end;

if DSetMainTmp.IsEmpty//���� ������ ��� ������ ����������� �������
  then //����������� �� ����
    begin
      if DMFIB.DSetTotalPat.FN('SEX').AsInteger =1
        then
          begin
            TmpStr1:= '��� �������� ';
            TmpStr2:= '���';
            TmpStr3:= '����� ��������';
          end
        else
          begin
            TmpStr1:= '��� ��������� ';
            TmpStr2:= '��';
            TmpStr3:= '��� ���������';
          end;

      //"��������" ����� �������
      TmpStr1:= TmpStr1 + GetFIOPadeg(Trim(DMFIB.DSetTotalPat.FN('ANKLASTNAME').AsString),
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKFIRSTNAME').AsString),1)) + '.',
                      AnsiUpperCase(LeftStr(Trim(DMFIB.DSetTotalPat.FN('ANKTHIRDNAME').AsString),1)) + '.',
                      (DMFIB.DSetTotalPat.FN('SEX').AsInteger = 1), 2) + ' �������� ����� ��� ��������������� '
                      + '��������� ������ ��� ����������, ��� ��� ���-�� �� �������������, ���������� '
                      + '����������� � ����, ��� ����� �������' + TmpStr2 + ' �� ���� ������. ������ �������� '
                      + TmpStr3 + ' �����?';
      if Application.MessageBox(PChar(TmpStr1),'������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          ActAddNewPatExecute(Sender)//"����" � ��������� ���������� ��������
        else
          begin
            RefreshMainWindow(Sender);//������ ��������� ������� ����
            FormResize(Sender);//���������� ��� �������
          end;

      Exit;//������� �� ��������� ����� ������ ������ �� ��������
    end {if DSetMainTmp.IsEmpty .. then}
  else //�������� ����������� ��
    begin
      //���������� ������� ������ ������(�������� �� "�������" ������� � ������ ���������)
      VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;

      //�������� �� ������ �� �����, ������ ���������� ��� (��.TblPaymentUnit)
      TblPriceFlag:= False;

      with TFrmPayment.Create(nil) do
        try
          ShowModal;
        finally
          Free;
        end;

      RefreshMainWindow(Sender);//������� ����
      DMFIB.DSetTotalPat.Locate('ID_Anketa', VarID_Tbl_Anketa, []);//������������ �� "������" ������
      FormResize(Sender);//������� ������� �� �����
    end;{if DSetMainTmp.IsEmpty ..else}
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActAboutExecute(Sender: TObject);
begin
if (ApplCurVersInfo < 20)
  then //���������� ��������� ������ 
    begin
      with TFrmAbout_torrent.Create(Self) do
        try
          ShowModal;
        finally
          Free;
        end;
    end
  else
    begin
      with TFrmAbout.Create(Self) do
        try
          ShowModal;
        finally
          Free;
        end;
    end;
end;

//----------------------------------------------------------------------------
//���������� ������ ������
procedure TFrmMainProg.ActConsultExecute(Sender: TObject);
begin
TblConsultFlag:= False;

  with TFrmConsultation.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

//----------------------------------------------------------------------------

//����� ����� � ��������� �������� ������
procedure TFrmMainProg.ActLaborIssueExecute(Sender: TObject);
begin
  with TFrmTblLaborIssue.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

//----------------------------------------------------------------------------
//����� �� ���������
procedure TFrmMainProg.ActExitProgramExecute(Sender: TObject);
begin
if Application.MessageBox('������ �������� ���������?', '��������', MB_ICONINFORMATION + MB_YESNO) = IDYES then
  begin
    if DMFIB.Database.Connected then DMFIB.Database.Close;
    Close;
  end;
end;

procedure TFrmMainProg.ActionToolBar1Click(Sender: TObject);
begin

end;

(***********************************************************)
(*               ���� ������� ������                       *)
(***********************************************************)


//������ ����������� � �� (������ Total)
procedure TFrmMainProg.BitBtnShutDBTotalClick(Sender: TObject);
begin
ActCloseDBExecute(Sender);
end;

//----------------------------------------------------------------------------

//������ ����������� � �� (������ Single)
procedure TFrmMainProg.BitBtnShutDBSingleClick(Sender: TObject);
begin
ActCloseDBExecute(Sender);
end;

//----------------------------------------------------------------------------

//������ �������� � ������ ������ Single
procedure TFrmMainProg.BitBtnOpenSinglePatClick(Sender: TObject);
begin
ActViewPatExecute(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.CbBoxSrchDtBrnChange(Sender: TObject);
begin
if EdtSrchDtBorn.CanFocus then EdtSrchDtBorn.SetFocus;
if (Length(Trim(EdtSrchDtBorn.Text)) = 4) then
  begin
    EdtSrchDtBornChange(Sender);//����������� ����� ������
    EdtSrchDtBorn.SelLength:= 0;//������ ���������
    EdtSrchDtBorn.SelStart:= Length(Trim(EdtSrchDtBorn.Text));//���������� ������ � ����� ������
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.CbBoxSrchFstNmChange(Sender: TObject);
begin
if EdtSrchFstNm.CanFocus then EdtSrchFstNm.SetFocus;
if (Length(Trim(EdtSrchFstNm.Text)) > 2) then
  begin
    EdtSrchFstNmChange(Sender);
    EdtSrchFstNm.SelLength:= 0;//������ ���������
    EdtSrchFstNm.SelStart:= Length(Trim(EdtSrchFstNm.Text));
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.CbBoxSrchLstNmChange(Sender: TObject);
begin
if EdtSrchLstNm.CanFocus then EdtSrchLstNm.SetFocus;
if (Length(Trim(EdtSrchLstNm.Text)) > 2) then
  begin
    EdtSrchLstNmChange(Sender);
    EdtSrchLstNm.SelLength:= 0;//������ ���������
    EdtSrchLstNm.SelStart:= Length(Trim(EdtSrchLstNm.Text));
  end;
end;

//----------------------------------------------------------------------------


(***********************************************************)
(*               ���� ����������� ��������                 *)
(***********************************************************)
//----------------------------------------------------------------------------
//��������� ��������� TEdit �� ������� ������� �������� � ������ ���������������� warning
procedure TFrmMainProg.CheckEdtEmpty(Sender: TEdit; const MesStr: String);
begin
Application.MessageBox(PChar(MesStr), '��������!', MB_OK + MB_ICONINFORMATION);
TEdit(Sender).Clear;
if TEdit(Sender).CanFocus then TEdit(Sender).SetFocus;
Abort;
end;

//----------------------------------------------------------------------------
//��������� ��������� TMaskEdit �� ������� ������� �������� � ������ ���������������� warning
procedure TFrmMainProg.CheckMaskEdtEmpty(Sender: TMaskEdit; const MesStr: String);
begin
Application.MessageBox(PChar(MesStr), '��������!', MB_OK + MB_ICONINFORMATION);
TMaskEdit(Sender).Clear;
if TMaskEdit(Sender).CanFocus then TMaskEdit(Sender).SetFocus;
Abort;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ChkBoxSrchDtBornClick(Sender: TObject);
begin
EdtSrchDtBorn.Clear;
EdtSrchDtBorn.Enabled:= ChkBoxSrchDtBorn.Checked;
CbBoxSrchDtBrn.Enabled:= ChkBoxSrchDtBorn.Checked;
if EdtSrchDtBorn.CanFocus and ChkBoxSrchDtBorn.Checked
  then EdtSrchDtBorn.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ChkBoxSrchFstNmClick(Sender: TObject);
begin
CbBoxSrchFstNm.Enabled:= ChkBoxSrchFstNm.Checked;
EdtSrchFstNm.Clear;
EdtSrchFstNm.Enabled:= ChkBoxSrchFstNm.Checked;
if EdtSrchFstNm.CanFocus and ChkBoxSrchFstNm.Checked
  then EdtSrchFstNm.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ChkBoxSrchLstNmClick(Sender: TObject);
begin
CbBoxSrchLstNm.Enabled:= ChkBoxSrchLstNm.Checked;
EdtSrchLstNm.Clear;
EdtSrchLstNm.Enabled:= ChkBoxSrchLstNm.Checked;
if EdtSrchLstNm.CanFocus and ChkBoxSrchLstNm.Checked
  then EdtSrchLstNm.SetFocus;
end;

//----------------------------------------------------------------------------

(*********** ����� ������ ����� ���������� ************)
procedure TFrmMainProg.ShowPnlTotalPat(Sender: TObject);
begin
//���������� ��������� ��� ������ � ����
//with TrayIconMain do
//  begin
//    Hint:= '';
//    Icon:= Application.Icon;
//    BalloonFlags:= bfNone;
//    BalloonTimeout:= 2000;
//    BalloonTitle:= '';
//    Hint:= '�������� �� ������, ����� ������������ ���������� ';
//  end;

if PnlSinglePat.Visible then PnlSinglePat.Visible:= False;//����.��������������
if not pnlTotalGener.Visible then pnlTotalGener.Visible:= True;//���.�����

pnlTotalGener.Align:= alClient;//����������� ������ ��� ��������� �����

//����� ������� ���� � ���� ������
LblDinTodayDate.Caption:= FormatDateTime('dddd',Now) + ', '
                                         + FormatDateTime('ddddd',Now);

//������� �������������� ������ ������� ���������
LblWarningDBGridTotalPat.Visible:= False;
WriteTextOverDBGrid(Sender);

//������� ������ ���� �������������� ������ ��������
ActAddNewPat.Visible:= True;
ActEdtPatient.Visible:= True;
ActDelPat.Visible:= True;

//������ ������ ���� �������������� ������� ��������
ActPatientVisitAdd.Visible:= PnlSinglePat.Visible;
ActPatientVisitEdt.Visible:= PnlSinglePat.Visible;
ActPatientVisitDel.Visible:= PnlSinglePat.Visible;

//��������� ������ ���� ������, ���� ����� ������ �� ������ � ���������� ��� �������
ActReportInspect_A5.Enabled:= False;
ActReportInspectPict_A5.Enabled:= False;
ActReportLuesList_A5.Enabled:= False;
ActReportResearch_A5.Enabled:= False;
ActReportRecomPrepare_A5.Enabled:= False;
ActTitulList_A5.Enabled:= False;

ActReportInspect_A4.Enabled:= False;
ActReportInspectPict_A4.Enabled:= False;
ActReportLuesList_A4.Enabled:= False;
ActReportResearch_A4.Enabled:= False;
ActReportRecomPrepare_A4.Enabled:= False;
ActTitulList_A4.Enabled:= False;

//������ �������� � ���������� ����� � �������
ActViewPat.Visible:= True;
ActViewTotal.Visible:= False;

//����� ��������
ActPatPayment.Enabled:= False;

//������ ������ ���������
ActSrchPat.Visible:= True;

(***** ����������� ������� � ������ *****)

with DMFIB, DSetTotalPat do
  begin
    //======= ��������/��������� ������ ���� ========
    ///=== ���� ������ ===
    ActOpenDb.Enabled:= not Active;
    ActCloseDB.Enabled:= Active;

    ///=== ������� ===
    ActAddNewPat.Enabled:= Active;
    ActEdtPatient.Enabled:= Active;
    ActDelPat.Enabled:= Active;
    ActViewPat.Enabled:= Active;

    ///=== ����������� ===
    ActTblTown.Enabled:= Active;
    ActTblDoctor.Enabled:= Active;
    ActTblClinic.Enabled:= Active;
    ActTblPrice.Enabled:= Active;
    ActLaborIssue.Enabled:= Active;
    ActTblDrug.Enabled:= Active;
    ActTblDs.Enabled:= Active;
    ActShedul.Enabled:= Active;
    ActTblManip.Enabled:= Active;
    ActTblRecom.Enabled:= Active;
    ActConsult.Enabled:= Active;
    ActDocSchedule.Enabled:= ActConsult.Enabled;

    //������ ���������� ������ ��������, ���� ������� ������
    ActDataRefresh.Enabled:= Active;

    //������� ��� ������� ������� ��� ����� ������
    LblTotalInfo.Visible:= Active;

    //============= ���������� � �������� ����
    SwitchGrid(DBGridTotalPat,Active);


    //============= ������� �� ������ �������
    LblRecCount.Visible:= Active;
    LblStGroup.Visible:= Active;
    LblStUsrRole.Visible:= Active;
    LblToday.Visible:= Active;
    LblDinTodayDate.Visible:= Active;
    LblTimeCapt.Visible:= Active;
    LblNowTime.Visible:= Active;
    LblStatusTotal.Visible:= Active;

    //============= ��������/��������� ������ "�������" �������� �����
    SpeedButtonsAvailab(Sender, Active and (not ActSrchPat.Checked));
  end;{with DMFIB, DSetTotalPat do}


//�������� � ��������� ������ �� �������
if not DMFIB.DSetTotalPat.Active then //���� ��� ���������� � ��
  begin
  //============= ������� �� ������ �������
  LblStatusTblInfo.Caption:= '���� ������ �� ����������';
  LblStatusTblInfo.Font.Color:= clGray;
  end {if not DMFIB.DSetTotalPat.Active..then}
else //����� ���������� � �� ����
  begin
    //============= ��������� ��������� �����
    DBGridTotalPat.TitleFont.Color:= clMaroon;

    //============= ������� �� ������ �������
    //����������� � ������ ������� �� ����������������
    LblStatusTblInfo.Font.Color:= clNavy;
    LblRecCount.Visible:= True;
    LblStGroup.Visible:= True;
    LblStGroup.Caption:= '������ ������������:';
    LblStUsrRole.Visible:= True;

    //���������� ��������� ��������� ��� ����������� ������ �����
    LblStUsrRole.Hint:= '� ��� ���� ����������� �� �������� � ��������� '
                        + '������ � ��������� �������� ���� ������';
    case UsrRoleNumb of
      1: LblStUsrRole.Caption:= '�����������';
      2: LblStUsrRole.Caption:= '������';
      3: LblStUsrRole.Caption:= '���������';
      4: LblStUsrRole.Caption:= '����������';
    else
      begin
         LblStUsrRole.Caption:= '�������������';
         LblStUsrRole.Hint:= '�� ������ ������ ����� �� �������� � ��������� ������ '
                                                   + '�� ���� �������� ���� ������';
      end;
    end;{case..else}

    //�������������� ������� PnlStBar �� "�����" ������
    FrmMainProg.FormResize(Sender);

    //���������� ��
    LblDinTodayDate.Visible:= True;
    LblNowTime.Visible:= True;
    LblTimeCapt.Visible:= True;
    LblToday.Visible:= True;

    if DMFIB.DSetAnketa.IsEmpty
      then
        begin
          LblStatusTblInfo.Caption:= '��������� � ���� ������ ���';
          LblRecCount.Caption:= '';//"�������" ���������� ����� � ����

        end
      else
        begin
          //������� ����� � ����
          with DMFIB.DSetTemp do
            begin
              if Active then Close;
              SelectSQL.Clear;
              SelectSQL.Text:= 'SELECT COUNT(*) AS TOTAL FROM TBL_ANKETA';
              Prepare;
              FullRefresh;
            end;

          LblStatusTblInfo.Caption:= '����� ���������� ��������� � ����:';
          LblRecCount.Visible:= True;
          LblRecCount.Caption:= Trim(DMFIB.DSetTemp.FN('TOTAL').AsString);
        end;

    with DMFIB.DSetTotalPat do
      begin
        ActEdtPatient.Enabled:= not IsEmpty;//���������/�������� ����������� ��������������
        ActDelPat.Enabled:= not IsEmpty;//���������/�������� ����������� ��������
        ActViewPat.Enabled:= not IsEmpty;// ���������/�������� �������� �������

        ActPatPayment.Enabled:= not IsEmpty;//��� �������� - ��� �������� � �������
        ActShedul.Enabled:= not IsEmpty;//��� �������� - ��� ���������� � ��������
        ActReportResearch_A5.Enabled:= not IsEmpty;//��� �������� - ������ ��������� �������
        ActReportResearch_A4.Enabled:= not IsEmpty;//��� �������� - ������ ��������� �������
        ActReportRecomPrepare_A5.Enabled:= not IsEmpty;//��� �������� - ������ ������ ������������
        ActReportRecomPrepare_A4.Enabled:= not IsEmpty;//��� �������� - ������ ������ ������������
        ActTitulList_A4.Enabled:= not IsEmpty;//��� �������� - ��� �����. �����
        ActTitulList_A5.Enabled:= not IsEmpty;//��� �������� - ��� �����. �����

        DBGridTotalPat.Enabled:= not IsEmpty;//��������/�������� ������� �� ������ ����������

        LblStatusTotal.Visible:= not IsEmpty;//�������-������� ��� �� ������
        LblWarningDBGridTotalPat.Visible:= IsEmpty;//�������/������� ��������������

      end;

    if DMFIB.DSetTotalPat.IsEmpty
      then
        begin//���� ����� ����
          if AnsiUpperCase(SpBtnCapt) <> '���'
            then LblTotalInfo.Caption:= '���������� ������ ����'
            else LblTotalInfo.Caption:= '����� ������ ����';
        end {if DMFIB.DSetTotalPat.IsEmpty..then}
      else//���� ����� �� ����
        begin
          if AnsiUpperCase(SpBtnCapt) <> '���'
            then LblTotalInfo.Caption:= '���������� ������: ������� '
            else LblTotalInfo.Caption:= '����� ������: ������� ';

          PatAnketsDisplay(Sender);//���������� �������� ��� ��������
          DBGridTotalPat.Enabled:= True;//�������� ������� �� ����������
          if DBGridTotalPat.CanFocus then DBGridTotalPat.SetFocus;//����� � ����
        end; {if DMFIB.DSetTotalPat.IsEmpty..else}

  end;{if not DMFIB.DSetTotalPat.Active..else}

ActSrchPat.Enabled:= (not (DMFIB.DSetTotalPat.IsEmpty) and DMFIB.DSetTotalPat.Active);
pnlSearchPat.Visible:= ActSrchPat.Visible and ActSrchPat.Enabled and ActSrchPat.Checked;
end;

//----------------------------------------------------------------------------

(***************** ����� ������ ��������� ���������� **********************)
procedure TFrmMainProg.ShowPnlSinglePat(Sender: TObject);
begin
//������� ������ ���� �������������� ������ ��������
ActAddNewPat.Visible:= False;
ActEdtPatient.Visible:= False;
ActDelPat.Visible:= False;

//���������� ������ ���� �������������� ��������
ActPatientVisitAdd.Visible:= True;
ActPatientVisitEdt.Visible:= True;
ActPatientVisitDel.Visible:= True;

ActViewPat.Visible:= False;
ActViewTotal.Visible:= True;

//������� ����� ������ ��������
ActSrchPat.Visible:= False;

if pnlTotalGener.Visible then pnlTotalGener.Visible:= False;//����.�����
if not PnlSinglePat.Visible then PnlSinglePat.Visible:= True;//���.��������������

//�������� ������ �� �������������� �����
PnlSinglePat.Align:= alClient;//�������� ������ �� �������������� �����
LblDetailInfo.Caption:= '������ ���������: ������� ';
LblStatusSingle.Left:= LblDetailInfo.Left + LblDetailInfo.Width + 2;

WriteTextOverDBGrid(Sender);

with DMFIB, DSetSinglePat do
  begin
    //������������ �������
    DSSinglePatDataChange(Sender,DSetSinglePat.FN('ID_VISITMAIN'));

    //���������� ��� ������ ������ ���� �������
    ActReportInspect_A5.Enabled:= not IsEmpty;
    ActReportInspectPict_A5.Enabled:= not IsEmpty;
    ActReportLuesList_A5.Enabled:= not IsEmpty;

    ActReportInspect_A4.Enabled:= not IsEmpty;
    ActReportInspectPict_A4.Enabled:= not IsEmpty;
    ActReportLuesList_A4.Enabled:= not IsEmpty;

    //������ ���������� ������ ��������, ���� ������� ������
    ActDataRefresh.Enabled:= Active;
    
    //��������� ������ ���� �������������� � �������� �������
    ActPatientVisitEdt.Enabled:= not IsEmpty;
    ActPatientVisitDel.Enabled:= not IsEmpty;
    LblWarningDBGridSinglePat.Visible:= IsEmpty;

    //������������ ���� �������������� ������������ ������
    SwitchGrid(DBGridSinglePat, not IsEmpty);
  end;

//���������� �������
FormResize(Sender);

if DBGridSinglePat.CanFocus then
  begin
    DBGridSinglePat.SetFocus;//���� �����, ����� � ����

    //�������� �������������� �� ��������
//    DBGridSinglePat.Columns[0].Title.SortMarker:= smDownEh;
//    DBGridSinglePat.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridSinglePat.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------

(****************** �������� ��������� ������ ���� ������ **********************)
procedure TFrmMainProg.SelfCreateMyDB(Sender: TObject);
var ExtFPath, TmpTxt: String;
begin
ExtFPath:= ExtractFilePath(Application.ExeName) + '\Scripts\CreateDB.exe';
if not FileExists(ExtFPath) then
    begin
      TmpTxt:= '���� ''CreateDB'' � ����� ''' + ExtractFilePath(Application.ExeName)
             + 'Scripts '' �� ������. �������� �� ��� ������������ ��� ���������. '
             + '���������� ����������� ��� �� ������ � ��������� ����� '
             + ' ��� �������� ��������������.' + #13#10 + #13#10 + '������ ��������?';
      if Application.MessageBox(PChar(TmpTxt), '������ ������� � �����',
         MB_ICONINFORMATION + MB_YESNO) = IDYES then
        if not OpnDlgExe.Execute
          then
            Exit
          else
            ExtFPath:= Trim(OpnDlgExe.FileName);
    end;

ShellExecute(Application.Handle,'open',PChar(ExtFPath),nil,nil,SW_SHOWNORMAL);
end;

//----------------------------------------------------------------------------

(************** ���������� ������ �������� ��� �������� **************)
procedure TFrmMainProg.PatAnketsDisplay(Sender: TObject);
var Last, First, Third, Born: string;
begin
with DMFIB do
  begin
    if not DSetTotalPat.IsEmpty
      then //���� ����� ������ �� ����
        begin
        if Trim(DSetTotalPat.FieldByName('AnkLastName').AsString) <> ''
          then Last:= Trim(DSetTotalPat.FieldByName('AnkLastName').AsString)
          else Last:= '[������� �� �������]';

        if Trim(DSetTotalPat.FieldByName('AnkFirstName').AsString) <> ''
          then First:= Trim(DSetTotalPat.FieldByName('AnkFirstName').AsString)
          else First:= '[��� �� �������]';

        if Trim(DSetTotalPat.FieldByName('AnkThirdName').AsString) <> ''
          then Third:= Trim(DSetTotalPat.FieldByName('AnkThirdName').AsString)
          else Third:= '[�������� �� �������]';

        if DSetTotalPat.FieldByName('AnkDateBorn').AsString <> ''
          then Born:= FormatDateTime('dd.mm.YYYY',
            DSetTotalPat.FieldByName('AnkDateBorn').AsDateTime) + ' �.�.'
          else Born:= '[���� �������� �� �������]';

        LblStatusTotal.Visible:= True;
        LblStatusTotal.Left:= LblTotalInfo.Left + LblTotalInfo.Width + 2;
        LblStatusTotal.Caption:= Last + ' ' + First + ' ' + Third + ', ' + Born;

        LblStatusSingle.Caption:= LblStatusTotal.Caption;
        end{if..then}
      else
        begin
//          LblStatusTotal.Visible:= False;
        end;
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.pnlSearchPatClick(Sender: TObject);
begin
FilterDSetTotalPat(Sender);
end;

{procedure}

//***************** ������������� ���������� ��� ������ ���������� ������� ********************
//***************** ����� ������� "�����-���������"                        ********************

//----------------------------------------------------------------------------
//��� ���� ������� ��� �������
procedure TFrmMainProg.BtnMoveAllRows(GridSource, GridDestin: TDBGridEh);
var i,j: Integer;
begin
TDBGridEh(GridSource).DataSource.DataSet.DisableControls;
TDBGridEh(GridDestin).DataSource.DataSet.DisableControls;
TDBGridEh(GridSource).DataSource.DataSet.First;

for i:= 0 to TDBGridEh(GridSource).DataSource.DataSet.RecordCount-1 do
  begin
    TDBGridEh(GridDestin).DataSource.DataSet.Append;
    TDBGridEh(GridDestin).DataSource.DataSet.Edit;

    for j:= 0 to TDBGridEh(GridDestin).DataSource.DataSet.FieldCount -1 do
      TDBGridEh(GridDestin).DataSource.DataSet.Fields[j].Value := TDBGridEh(GridSource).DataSource.DataSet.Fields[j].Value;
    TDBGridEh(GridDestin).DataSource.DataSet.Post;
    TDBGridEh(GridSource).DataSource.DataSet.Delete;
  end;

TDBGridEh(GridSource).Selection.Clear;
TDBGridEh(GridSource).DataSource.DataSet.Refresh;
TDBGridEh(GridDestin).DataSource.DataSet.Refresh;
TDBGridEh(GridDestin).DataSource.DataSet.EnableControls;
TDBGridEh(GridSource).DataSource.DataSet.EnableControls;
end;

//----------------------------------------------------------------------------
//��� ���������� ������� ��� ������ ��� ��������
procedure TFrmMainProg.BtnMoveSelectedRows(GridSource, GridDestin: TDBGridEh);
var i,j: Integer;
begin
if TDBGridEh(GridSource).DataSource.DataSet.IsEmpty then Exit;

TDBGridEh(GridSource).DataSource.DataSet.DisableControls;
TDBGridEh(GridDestin).DataSource.DataSet.DisableControls;

//����������� ���������� ���������� �����
case TDBGridEh(GridSource).Selection.SelectionType of
  //������ �� ��������
  gstNon:
    begin
      TDBGridEh(GridDestin).DataSource.DataSet.Append;
      TDBGridEh(GridDestin).DataSource.DataSet.Edit;

      for j:= 0 to TDBGridEh(GridDestin).DataSource.DataSet.FieldCount -1 do
        TDBGridEh(GridDestin).DataSource.DataSet.Fields[j].Value := TDBGridEh(GridSource).DataSource.DataSet.Fields[j].Value;
      TDBGridEh(GridDestin).DataSource.DataSet.Post;
      TDBGridEh(GridSource).DataSource.DataSet.Delete;
    end;
  //�������� ���
  gstAll:
    //�� �� ����� ������ ������ "���"
    for i:= 0 to TDBGridEh(GridSource).DataSource.DataSet.RecordCount-1 do
      begin
        TDBGridEh(GridDestin).DataSource.DataSet.Append;
        TDBGridEh(GridDestin).DataSource.DataSet.Edit;

        for j:= 0 to TDBGridEh(GridDestin).DataSource.DataSet.FieldCount -1 do
          TDBGridEh(GridDestin).DataSource.DataSet.Fields[j].Value := TDBGridEh(GridSource).DataSource.DataSet.Fields[j].Value;
        TDBGridEh(GridDestin).DataSource.DataSet.Post;
        TDBGridEh(GridSource).DataSource.DataSet.Delete;
      end;

//�������� ������ ����� �������
else
  begin
    TDBGridEh(GridSource).SaveBookmark;
    for i := 0 to TDBGridEh(GridSource).SelectedRows.Count-1 do
      begin
        TDBGridEh(GridSource).DataSource.DataSet.Bookmark := TDBGridEh(GridSource).SelectedRows[I];
        TDBGridEh(GridDestin).DataSource.DataSet.Append;
        TDBGridEh(GridDestin).DataSource.DataSet.Edit;

        for j := 0 to TDBGridEh(GridDestin).DataSource.DataSet.FieldCount-1 do
          TDBGridEh(GridDestin).DataSource.DataSet.Fields[j].Value := TDBGridEh(GridSource).DataSource.DataSet.Fields[j].Value;
        TDBGridEh(GridDestin).DataSource.DataSet.Post;
      end;

    TDBGridEh(GridSource).RestoreBookmark;
    TDBGridEh(GridSource).SelectedRows.Delete;
  end;
end;

TDBGridEh(GridSource).DataSource.DataSet.Refresh;
TDBGridEh(GridDestin).DataSource.DataSet.Refresh;
TDBGridEh(GridDestin).DataSource.DataSet.EnableControls;
TDBGridEh(GridSource).DataSource.DataSet.EnableControls;
end;

//----------------------------------------------------------------------------
//������������ ������� ����
procedure TFrmMainProg.DBGridTotalPatDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
State: TGridDrawState);
begin
if DBGridTotalPat.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTotalPat.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTotalPat.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTotalPat.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTotalPat.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------
//������������ ������� ����������
procedure TFrmMainProg.DBGridTotalPatTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
var
  cntColNum: array [0..7] of Integer;//������, ��� ������������ ������ ���������� �������
  ClkColNum: Integer;//����� "����������" �������
begin
//���������� ClkColNum �� "�� ����������", ����� �� ������� ������ ����������
for ClkColNum:= Low(cntColNum) to High(cntColNum) -1 do cntColNum[ClkColNum]:= 0;

  //����������, �� ������ ������� ����������� � �������
  case ACol of
    0: ClkColNum:= 4;
    1: ClkColNum:= 5;
    3: ClkColNum:= 7;
    5: ClkColNum:= 3;
    6: ClkColNum:= 11;
    7: ClkColNum:= 9;
    else
      ClkColNum:= 11;//�� ��������� ���������� ���� �� ���� ���������, ��� ������������� 11 "�������" � �������
  end;

with DBGridTotalPat, Columns[ACol].Title do
  begin
    //���� ������ ������� Ctrl (��� ������������� ����������)
    if (GetKeyState(VK_CONTROL) < 0)
      then
        begin
          OptionsEh:= OptionsEh + [dghMultiSortMarking];//�������� ����. ��������� ��������

          //������������
          if SortMarker = smNoneEh
            then
              begin
                SortMarker:= smDownEh;
                cntColNum[ACol]:= 1;
              end
            else
              if SortMarker = smDownEh
                then
                  begin
                    SortMarker:= smUpEh;
                    cntColNum[ACol]:= 2;
                  end
                else
                  begin
                    SortMarker:= smNoneEh;
                    cntColNum[ACol]:= 0;
                  end;

          case ACol of
            0: SortClnLstNm:= cntColNum[ACol];
            1: SortClnFstNm:= cntColNum[ACol];
            3: SortClnDtBrn:= cntColNum[ACol];
            5: SortClnAdrTwn:= cntColNum[ACol];
            6: SortClnDtVst:= cntColNum[ACol];
            7: SortClnNotes:= cntColNum[ACol];
          end;

          if (SortClnLstNm + SortClnFstNm + SortClnDtBrn
                + SortClnAdrTwn + SortClnDtVst + SortClnNotes) = 0 //�� ���� �� �������� �� �������
            then
              OrdByStrTotalGrid:= Trim(DefOrdBy_Clause) //��������� �� ���������
            else
              begin
                if Trim(OrdByStrTotalGrid) = Trim(DefOrdBy_Clause) //���� ��� �� �����������
                  then //�� ������ ������� ��� � ������ order by
                    case Columns[ACol].Title.SortMarker of
                      smDownEh: OrdByStrTotalGrid:= IntToStr(ClkColNum) + ' ASC';
                        smUpEh: OrdByStrTotalGrid:= IntToStr(ClkColNum) + ' DESC';
                      smNoneEh: OrdByStrTotalGrid:= Trim(DefOrdBy_Clause); //��������� �� ����������� �������
                    end
                  else // ������ ������ � �������
                    if Pos(IntToStr(ClkColNum),OrdByStrTotalGrid) = 0 //���� � ������ ��� ��� ����� �������
                      then //�� ������ ������� ������� � ������
                        case Columns[ACol].Title.SortMarker of
                          smDownEh: OrdByStrTotalGrid:= OrdByStrTotalGrid + ', '+ IntToStr(ClkColNum) + ' ASC';
                            smUpEh: OrdByStrTotalGrid:= OrdByStrTotalGrid + ', '+ IntToStr(ClkColNum) + ' DESC';
                          smNoneEh: OrdByStrTotalGrid:= OrdByStrTotalGrid; //������� ������ �������
                        end
                      else //���� "���������" ������� � ������ � ������/������� ����������� ���������� �������� �������
                        case Columns[ACol].Title.SortMarker of
                          smDownEh: begin
                                      OrdByStrTotalGrid:= OrdByStrTotalGrid + IntToStr(ClkColNum) + ' ASC';
                                    end;
                            smUpEh: begin
                                      OrdByStrTotalGrid:= ReplaceText(OrdByStrTotalGrid,IntToStr(ClkColNum) + ' ASC', IntToStr(ClkColNum) + ' DESC');
                                    end;
                          smNoneEh: begin
                                      if (Pos((IntToStr(ClkColNum) + ' DESC,'),OrdByStrTotalGrid) > 0 )
                                        then
                                          OrdByStrTotalGrid:= ReplaceText(OrdByStrTotalGrid,IntToStr(ClkColNum) + ' DESC,', '')
                                        else
                                          OrdByStrTotalGrid:= ReplaceText(OrdByStrTotalGrid,IntToStr(ClkColNum) + ' DESC', '');
                                      //��������, �� �������� �� "������" ������� � ����� ������
                                      if RightStr(Trim(OrdByStrTotalGrid),1) = ','
                                        then OrdByStrTotalGrid:= LeftStr(Trim(OrdByStrTotalGrid),Length(Trim(OrdByStrTotalGrid)) -1);

                                    end;
                        end;
              end; {else if (SortClnLstNm + SortClnFstNm + SortClnDtBrn + ...) = 0}
        end
      else
        begin
          OptionsEh:= OptionsEh - [dghMultiSortMarking];

          if SortMarker = smNoneEh
            then
              begin
                SortMarker:= smDownEh;
                cntColNum[ACol]:= 1;
              end
            else
              if SortMarker = smDownEh
                then
                  begin
                    SortMarker:= smUpEh;
                    cntColNum[ACol]:= 2;
                  end
                else
                  begin
                    SortMarker:= smNoneEh;
                    cntColNum[ACol]:= 0;
                  end;

          case ACol of
            0: SortClnLstNm:= cntColNum[0];
            1: SortClnFstNm:= cntColNum[1];
            3: SortClnDtBrn:= cntColNum[2];
            5: SortClnAdrTwn:= cntColNum[3];
            6: SortClnDtVst:= cntColNum[4];
            7: SortClnNotes:= cntColNum[5];
          end;

          case Columns[ACol].Title.SortMarker of
            smDownEh: OrdByStrTotalGrid:= IntToStr(ClkColNum) + ' ASC';
              smUpEh: OrdByStrTotalGrid:= IntToStr(ClkColNum) + ' DESC';
            smNoneEh: OrdByStrTotalGrid:= Trim(DefOrdBy_Clause); //��������� �� ����������� �������
          end
        end;
  end;

//�������� ��������������� ���������, ���� ���� ������������
if ActSrchPat.Checked
  then
    FilterDSetTotalPat(Sender)
  else
    OpenDSetTotalPat(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchDtBornChange(Sender: TObject);
begin
//if Length(Trim(EdtSrchDtBorn.Text)) = 4 then
FilterDSetTotalPat(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchDtBornKeyPress(Sender: TObject; var Key: Char);
begin
if (((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #13))
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� �� 0 �� 9 ! ','���� ������������� ��������!',
                            MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchFstNmChange(Sender: TObject);
begin
//���� ���-�� ������, ��������� � ����, ������ 2, �� �������� ������ ��� �������
//if Length(Trim(EdtSrchFstNm.Text)) > 2 then
FilterDSetTotalPat(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchFstNmKeyPress(Sender: TObject; var Key: Char);
begin
EdtSrchLstNmKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchLstNmChange(Sender: TObject);
begin
//���� ���-�� ������, ��������� � ����, ������ 2, �� �������� ������ ��� �������
//if Length(Trim(EdtSrchLstNm.Text)) > 2 then
FilterDSetTotalPat(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.EdtSrchLstNmKeyPress(Sender: TObject; var Key: Char);
begin
if (((Key < #192) or (Key > #255)) and (Key <> #168) and (Key <> #184)
            and (Key <> #8) and (Key <> #13))
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� ���������! ','���� ������������� ��������!',
                            MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

//������������ ��������� ����
procedure TFrmMainProg.DBGridSinglePatDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridSinglePat.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridSinglePat.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridSinglePat.Canvas.Brush.Color:= clMoneyGreen;
		DBGridSinglePat.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridSinglePat.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

//���������� �������� ����� ����� ��������� � ��
procedure TFrmMainProg.RefreshMainWindow(Sender: TObject);
var OldID, PriorID: Integer;
begin
with DMFIB do
  begin
    if DSetTotalPat.Active
      then
        begin
          if not DSetTotalPat.IsEmpty
            then
              begin
                DSetTotalPat.DisableControls;//�������� ����
                OldID:= DSetTotalPat.FieldByName('ID_Anketa').Value;
                DSetTotalPat.Prior;
                PriorID:= DSetTotalPat.FieldByName('ID_Anketa').Value;
                DSetTotalPat.Locate('ID_Anketa', OldID, []);
                DSetTotalPat.FullRefresh;
                if not DSetTotalPat.Locate('ID_Anketa', OldID, [])
                      then DSetTotalPat.Locate('ID_Anketa', PriorID, []);
                DSetTotalPat.EnableControls;//��������� ����
              end{if..then not DSetTotalPatIsEmpty}
            else
              DSetTotalPat.FullRefresh;
        end {if DSetTotalPat.Active}
      else
        DSetTotalPat.FullRefresh;
  end;{with}

ShowPnlTotalPat(Sender);
end;

//----------------------------------------------------------------------------

//���������� ���������� ����� ����� ��������� � ��
procedure TFrmMainProg.RefreshDetailWindow(Sender: TObject);
var OldID, PriorID: Integer;
begin
with DMFIB do
  begin
    if DSetSinglePat.Active
      then
        begin
          if not DSetSinglePat.IsEmpty
            then
              begin
                DSetSinglePat.DisableControls;
                OldID:= DSetSinglePat.FieldByName('ID_VISITMAIN').Value;
                DSetSinglePat.Prior;
                PriorID:= DSetSinglePat.FieldByName('ID_VISITMAIN').Value;
                DSetSinglePat.Locate('ID_VISITMAIN', OldID, []);
                DSetSinglePat.FullRefresh;
                if not DSetSinglePat.Locate('ID_VISITMAIN', OldID, [])
                      then DSetSinglePat.Locate('ID_VISITMAIN', PriorID, []);
                DSetSinglePat.EnableControls;      
              end{if..then not DSetSinglePatIsEmpty}
            else
              DSetSinglePat.FullRefresh;
        end {DSetSinglePatActive..then}
      else
        begin
          DSetSinglePat.Open; {DSetSinglePatActive..else}
          CountOpenDetailDSet:= CountOpenDetailDSet + 1;
        end;
  end;{with}

ShowPnlSinglePat(Sender);
end;

//----------------------------------------------------------------------------

//�������� ���������� ������� � ����������
procedure TFrmMainProg.OpenSingleQry(Sender: TObject);
begin
with DMFIB do
  begin
  if DSetTotalPat.Active then
    if not DSetTotalPat.IsEmpty then
      begin
      with DSetSinglePat do
        begin
          Active:= False;
//          SelectSQL.Clear;

          SelectSQL.Text:= ' SELECT V.ID_VISITMAIN, V.DATEVISIT, V.FIRSTVISIT, '
                      + 'D.DOC_PROFIL||'' ''||D.DOC_LASTNAME||'' ''||'
                      + 'LEFT (D.DOC_FIRSTNAME, 1)||''.''||LEFT(D.DOC_THIRDNAME, 1)'
                      + '||''.'' AS FAM_DOC, '
                      + 'VB.DSTEXT_STR, VB.DRUGTEXT_STR, VB.MANIPTEXT_STR, VB.RECOMTEXT_STR '
                      + 'FROM TBL_VISITMAIN V '
                      + 'LEFT JOIN TBL_DOCTOR D ON (V.VIS_LINKDOCTOR = D.ID_DOCTOR) '
                      + 'LEFT JOIN TBL_VISITBLOB VB ON (V.ID_VISITMAIN = VB.ID_VISITBLOB) '
                      + 'WHERE (V.VIS_LINKANKETA = :prmFamID) ';

          //���� ���� ��� ��������� ����
          if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
            then //�� �����������, ��� �� ������ � ����� ���������
              begin
                if UsrRoleName = 'REGISTRATOR'
                  then
                    SelectSQL.Text:= SelectSQL.Text + 'and ((V.ROLE_NAME LIKE CURRENT_ROLE) or (V.USR_NAME LIKE CURRENT_USER)) '
                  else
                    SelectSQL.Text:= SelectSQL.Text
                      + 'and ((V.ROLE_NAME LIKE CURRENT_ROLE) '
                      + 'or (V.USR_NAME LIKE CURRENT_USER) '
                      + 'or (V.USR_NAME LIKE ''SYSDBA'') '
                      + 'or (V.ROLE_NAME LIKE ''ADMINISTR'')) ';
              end;
          SelectSQL.Text:= SelectSQL.Text + 'ORDER BY 2 DESC';
        Prepare;
        ParamByName('prmFamID').Value:= DSetTotalPat.FieldByName('ID_Anketa').Value;
        end;{with}
      end;{if not..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.WriteTextOverDBGrid(Sender: TObject);
var TmpTxt: String;
begin
//�������������� ������ ������� ���������
with LblWarningDBGridTotalPat do
  begin
    if AnsiUpperCase(SpBtnCapt) = '���' //���� ��� ������ "���"
      then Caption:= '���� ������ �����! ��������� ��, ������� ���������.'
      else Caption:=
        '��������� � �������� �� ����� ''' + AnsiUpperCase(SpBtnCapt)
                                                          + ''' � ���� ������ ���� ���.';

    Parent:= DBGridTotalPat;
    Top:= DBGridTotalPat.Height div 4;
    Left:= (DBGridTotalPat.Width - Width) div 2;
  end;

//�������������� ������ ������� �������
with LblWarningDBGridSinglePat do
  begin
    case UsrRoleNumb of
      2: TmpTxt:= '� �������';
      3: TmpTxt:= '� ����������';
      4: TmpTxt:= '� �����������������';
    else TmpTxt:= '� ������';
    end;

    Caption:= '������� ' + LblStatusSingle.Caption + ' ������� '
                                                            + TmpTxt + ' ���� �� �����.';
    Parent:= DBGridSinglePat;
    Top:= DBGridSinglePat.Height div 4;
    Left:= (DBGridSinglePat.Width - Width) div 2;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.FormResize(Sender: TObject);
begin
WriteTextOverDBGrid(Sender);//�������������� ����� � ������ �������, ���� �� ����

//�������������� ������� �� "�����" ������
LblRecCount.Left:= LblStatusTblInfo.Left + LblStatusTblInfo.Width + 3;
LblStGroup.Left:= LblRecCount.Left + LblRecCount.Width + 15;
LblStUsrRole.Left:= LblStGroup.Left + LblStGroup.Width + 3;

LblNowTime.Left:= PnlStBar.Width - LblNowTime.Width - 12;
LblTimeCapt.Left:= LblNowTime.Left - 3 - LblTimeCapt.Width;
LblDinTodayDate.Left:= LblTimeCapt.Left - 15 - LblDinTodayDate.Width;
LblToday.Left:= LblDinTodayDate.Left - 3 - LblToday.Width;
end;

//----------------------------------------------------------------------------

//���������� ������������ ������ ���������, ����� ����� �� ���������� � ���������
procedure TFrmMainProg.MemoScrollShowHide(Sender: TMemo);
var h, CurPos: Integer;
   bm: TBitmap;
begin
//������������ ������ ���������, ���� ����� �� ���������� � ����
bm:= TBitmap.Create;
  try
  with bm.Canvas do
    begin
    Font:= TMemo(Sender).Font;
    h:= TextHeight('Xy') * TMemo(Sender).Lines.Count;
    end;{with..do}
  finally
  bm.Free;
  end;{try..finally}

with TMemo(Sender) do
  begin
  if h > Height
    then
      begin
      CurPos:= SelStart;
      ScrollBars:= ssVertical;
      if CurPos = Length(Text)//���� ������ � ����� ������
        then
          begin
          Perform(WM_VSCROLL, SB_BOTTOM,0);//������ ������ ����, ��� ����� �������
          SelStart:= Length(Text);//���������� ������� �� ��������� ������ ������
          end
        else SelStart:= CurPos;//��������������� ������� ������� �������
      end
    else ScrollBars:= ssNone;
  end;{with..do}
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.DBGridTotalPatDblClick(Sender: TObject);
begin
ActViewPatExecute(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.DBGridSinglePatDblClick(Sender: TObject);
begin
ActPatientVisitEdtExecute(Sender);
end;

//----------------------------------------------------------------------------
//��������-��������� ������ ������ "�������" �������� �����
procedure TFrmMainProg.SpeedButtonsAvailab(Sender: TObject; const BtnStatus: Boolean);
begin
SpdBtnAll.Enabled:= BtnStatus;
SpdBtnA.Enabled:= BtnStatus;
SpdBtnBe.Enabled:= BtnStatus;
SpdBtnVe.Enabled:= BtnStatus;
SpdBtnGe.Enabled:= BtnStatus;
SpdBtnDe.Enabled:= BtnStatus;
SpdBtnE.Enabled:= BtnStatus;
SpdBtnZhe.Enabled:= BtnStatus;
SpdBtnZe.Enabled:= BtnStatus;
SpdBtnI.Enabled:= BtnStatus;
SpdBtnKa.Enabled:= BtnStatus;
SpdBtneL.Enabled:= BtnStatus;
SpdBtneM.Enabled:= BtnStatus;
SpdBtneN.Enabled:= BtnStatus;
SpdBtnO.Enabled:= BtnStatus;
SpdBtnPe.Enabled:= BtnStatus;
SpdBtnRe.Enabled:= BtnStatus;
SpdBtneS.Enabled:= BtnStatus;
SpdBtnTe.Enabled:= BtnStatus;
SpdBtnU.Enabled:= BtnStatus;
SpdBtnFe.Enabled:= BtnStatus;
SpdBtnHe.Enabled:= BtnStatus;
SpdBtnTse.Enabled:= BtnStatus;
SpdBtnTche.Enabled:= BtnStatus;
SpdBtnShe.Enabled:= BtnStatus;
SpdBtnSche.Enabled:= BtnStatus;
SpdBtnAe.Enabled:= BtnStatus;
SpdBtnYu.Enabled:= BtnStatus;
SpdBtnYa.Enabled:= BtnStatus;
end;

//----------------------------------------------------------------------------
//����� "���������������" ������ � ������� �����
procedure TFrmMainProg.FilterDSetTotalPat(Sender: TObject);
var LstNmBool, FstNmBool, DtBool: Boolean;
begin
//��� ����������� ���� ������ �������������� ������ ����������
LstNmBool:= ((ChkBoxSrchLstNm.Checked) and (Length(Trim(EdtSrchLstNm.Text)) > 2));
FstNmBool:= ((ChkBoxSrchFstNm.Checked) and (Length(Trim(EdtSrchFstNm.Text)) > 2));
DtBool:= (ChkBoxSrchDtBorn.Checked and (Length(Trim(EdtSrchDtBorn.Text)) = 4));

//���� ������� ���� ���� �� �������, �� ��������� ����� �� ����
with DMFIB.DSetTotalPat do
  begin
   if Active then Close;
   SelectSQL.Text:=
    'SELECT A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, A.ANKFIRSTNAME, '
    + 'A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX, MAX(V.DATEVISIT) AS DATEVISIT '
    + 'FROM TBL_TOWN T LEFT JOIN TBL_ANKETA A ON (A.ANK_LINKTOWN = T.ID_TOWN) '
    + 'LEFT JOIN TBL_VISITMAIN V ON (V.VIS_LINKANKETA = A.ID_ANKETA) WHERE ';

    //���� ����� �� ������ �� ������������� �������� ����������
    if not (LstNmBool or FstNmBool or DtBool)
      then //�� ������� ����� ����
        SelectSQL.Text:= SelectSQL.Text + 'A.ID_ANKETA IS NOT NULL '
      else //����� ����� ����������� ������ � ����
        begin
          if LstNmBool then //���� ���� � �������� ������� � �������� ����� 2 ������
            begin
              case CbBoxSrchLstNm.ItemIndex of
                0: SelectSQL.Text:= SelectSQL.Text + 'TRIM(UPPER(A.ANKLASTNAME)) STARTING WITH UPPER(:prmLstNm) AND ';
                1: SelectSQL.Text:= SelectSQL.Text + 'TRIM(A.ANKLASTNAME) CONTAINING (:prmLstNm) AND ';
              end;

              ParamByName('prmLstNm').Value:= Trim(EdtSrchLstNm.Text);//�������� ��������� ��������

              //���� ��� ������ ������� ������, �� �������� ������ WHERE
              if not (FstNmBool or DtBool) then SelectSQL.Text:= SelectSQL.Text + '(A.ID_ANKETA IS NOT NULL) ';
            end;

          if FstNmBool then// ���� ���� � ������ ������� � �������� ����� 2 ������
            begin
              case CbBoxSrchFstNm.ItemIndex of
                0: SelectSQL.Text:= SelectSQL.Text + 'TRIM(UPPER(A.ANKFIRSTNAME)) STARTING WITH UPPER(:prmFstNm) AND ';
                1: SelectSQL.Text:= SelectSQL.Text + 'TRIM(A.ANKFIRSTNAME) CONTAINING (:prmFstNm) AND ';
              end;

              ParamByName('prmFstNm').Value:= Trim(EdtSrchFstNm.Text);//�������� ��������� ��������

              //���� ��� ������ ������� ������, �� �������� ������ WHERE
              if not DtBool then SelectSQL.Text:= SelectSQL.Text + '(A.ID_ANKETA IS NOT NULL) ';
            end;

          if DtBool then //���� � ������ �������� �� �������, �������� ������ �� ���� ��������
            begin
              case CbBoxSrchDtBrn.ItemIndex of
                0:  SelectSQL.Text:= SelectSQL.Text
                          + 'CAST(EXTRACT(YEAR FROM A.ANKDATEBORN) AS VARCHAR(4)) CONTAINING (:prmDateBorn) ';
                1: SelectSQL.Text:= SelectSQL.Text
                          + 'CAST(EXTRACT(YEAR FROM A.ANKDATEBORN) AS VARCHAR(4)) < (:prmDateBorn) ';
                2: SelectSQL.Text:= SelectSQL.Text
                          + 'CAST(EXTRACT(YEAR FROM A.ANKDATEBORN) AS VARCHAR(4)) > (:prmDateBorn) ';
              end;

              SelectSQL.Text:= SelectSQL.Text + 'AND (A.ID_ANKETA IS NOT NULL) ';
              ParamByName('prmDateBorn').Value:= Trim(EdtSrchDtBorn.Text);//�������� ��������� ��������
            end;
        end;

    SelectSQL.Text:= SelectSQL.Text + 'GROUP BY A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, '
    + 'A.ANKFIRSTNAME, A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX ORDER BY ' + OrdByStrTotalGrid;

    Prepare;
    FullRefresh;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.OpenDSetTotalPat(Sender: TObject);
var i, CompTag: Integer;
begin
CompTag:= 18001;//����������������, ���� ���������� �� �������

with PnlSpBarMain do
  begin
    for i:= 0 to ControlCount -1 do
       begin
         if (Controls[i] is TSpeedButton) and (Controls[i] as TSpeedButton).Down then
          begin
            SpBtnCapt:= Trim(TSpeedButton(Controls[i]).Caption);
            CompTag:= TSpeedButton(Controls[i]).Tag;
          end;
       end;
  end;
//SpBtnCapt:= Trim(TSpeedButton(Sender).Caption);//�������� ��������� ������

with DMFIB.DSetTotalPat do
  begin
    if Active then Close;
    SelectSQL.Text:=
    'SELECT A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, A.ANKFIRSTNAME, '
    + 'A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX, MAX(V.DATEVISIT) AS DATEVISIT '
    + 'FROM TBL_TOWN T LEFT JOIN TBL_ANKETA A ON (A.ANK_LINKTOWN = T.ID_TOWN) '
    + 'LEFT JOIN TBL_VISITMAIN V ON (V.VIS_LINKANKETA = A.ID_ANKETA) ';

    if {(Sender as TSpeedButton).Tag} CompTag <> 18001 //���� ��� �� ������ "���"
      then
        SelectSQL.Text:= SelectSQL.Text + 'WHERE (TRIM(UPPER(A.ANKLASTNAME)) STARTING WITH ''' + AnsiUpperCase(SpBtnCapt) //AnsiUpperCase(Trim(Sender.Caption))
          + ''') AND (A.ID_ANKETA IS NOT NULL) '
      else
        SelectSQL.Text:= SelectSQL.Text + 'WHERE A.ID_ANKETA IS NOT NULL ';

    SelectSQL.Text:= SelectSQL.Text + 'GROUP BY A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, '
    + 'A.ANKFIRSTNAME, A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX ORDER BY ' + OrdByStrTotalGrid;

    Prepare;
  end;

RefreshMainWindow(Sender);
end;

//----------------------------------------------------------------------------

(*****************************************************************************)
(*                                                                           *)
(*           ���� ��������� ������� �� ������ "�������" �������� ������      *)
(*                                                                           *)
(*****************************************************************************)

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnAllClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnAll);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnAClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnA);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnBeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnBe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnVeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnVe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnGeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnGe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnDeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnDe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnEClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnE);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnZheClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnZhe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnZeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnZe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnIClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnI);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnKaClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnKa);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtneLClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtneL);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtneMClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtneM);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtneNClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtneN);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnOClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnO);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnPeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnPe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnReClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnRe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtneSClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtneS);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnTeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnTe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnUClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnU);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnFeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnFe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnHeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnHe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnTseClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnTse);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnTcheClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnTche);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnSheClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnShe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnScheClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnSche);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnAeClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnAe);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnYuClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnYu);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SpdBtnYaClick(Sender: TObject);
begin
OpenDSetTotalPat(SpdBtnYa);
end;

//----------------------------------------------------------------------------
//����� ��������� ������ � �������
procedure TFrmMainProg.ShowDBErrorMsg(Sender: TObject; const DBErrMsg, WinCaption: String);
begin
Application.MessageBox(PChar(DBErrMsg), PChar(WinCaption), MB_ICONINFORMATION + MB_OK);
Exit;
end;

//----------------------------------------------------------------------------
//�������� ��������� ����� � ������-����
procedure TFrmMainProg.NowTimeTimerTimer(Sender: TObject);
var NewTickTime: Cardinal;
begin
LblNowTime.Caption:= FormatDateTime('hh:nn:ss', now);

NewTickTime:= GetTickCount;//�������� "�����" ����� � ������� ������� ���

if (NewTickTime - OldTickTime) > 60000 then //���� �������� ������ 1 ������ (1000 ����/��� � 60 ���)
  begin
    if Date = IncDay(CurrDate) then //���� �������� ��������� ����, �� ��������� ���������� �� ������-����
      begin
        LblDinTodayDate.Caption:= FormatDateTime('dddd',Now) + ', ' + FormatDateTime('ddddd',Now);
        Self.FormResize(Sender);//�������������� ������
      end;

    CurrDate:= date;//���������� ������� ����
    OldTickTime:= GetTickCount;//����� ���������� ������� ������� ��������� ����� ��� ��������� �����
  end;
end;

//----------------------------------------------------------------------------
//������������� ����� ������ ����� ��� ����� (LblStUsrRole) �������
procedure TFrmMainProg.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//������������� ����� ������ ����� ��� ����� (LblStUsrRole) �������
procedure TFrmMainProg.LblStUsrRoleMouseEnter(Sender: TObject);
begin
IntHint:= Application.HintHidePause;
Application.HintHidePause:= 10000;//����������� ����� ������ �����
end;

//----------------------------------------------------------------------------
//������������� ���������� ����� ������ �����
procedure TFrmMainProg.LblStUsrRoleMouseLeave(Sender: TObject);
begin
Application.HintHidePause:= IntHint;//���������� ���������� ����� ������ �����
end;

//----------------------------------------------------------------------------
//��������-��������� ����� ����� ������������ �������� �����
procedure TFrmMainProg.SwitchGrid(Sender: TDBGridEh; const GridFlag: Boolean);
var i: Integer;
begin
  with TDBGridEh(Sender) do
    begin
      Enabled:= GridFlag;
      if GridFlag
        then
          begin
            //�������� � "������������" ������ �������������� � ����
            for i:= 0 to TDBGridEh(Sender).Columns.Count - 1 do
              TDBGridEh(Sender).Columns[i].Title.Font.Color:= clMaroon;
          end {if GridFlag..then}
        else
          begin
            //��������� � "�������������" ������ �������������� � ����
            for i:= 0 to TDBGridEh(Sender).Columns.Count - 1 do
              TDBGridEh(Sender).Columns[i].Title.Font.Color:= clGray;
          end;{if GridFlag..else}
    end;{with TDBGridEh(Sender) do}
end;

procedure TFrmMainProg.TrayIconMainClick(Sender: TObject);
begin
//TrayIconMain.ShowBalloonHint;
TrayIconMain.Visible:= False;
Self.Show;
end;

procedure TFrmMainProg.TrayIconMainDblClick(Sender: TObject);
begin
//TrayIconMain.Visible:= False;
//Self.Show;
end;

/////////////////////////////////////////////////////////////////////////////////////////
/////////                                                                       /////////
/////////                        ������                                         /////////
/////////                                                                       /////////
/////////////////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------
//����������� �� ������������ ��������
procedure TFrmMainProg.ActReportResearchExecute(Sender: TObject);
begin
//�������� "���������" �������� �����
VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_Anketa').AsInteger;

  with TFrmReportResearch.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.SendNameReport(ATag: Integer);
var RepFPath, RepFileName: WideString;
    TmpTxt: String;
begin
with DMFIB, DSetReport do
  begin
    if Active then Close;
    ParamByName('prmAnketa').Value:= DSetAnketa.FN('ID_ANKETA').Value;
    ParamByName('prmDateVisit').Value:= DSetVisitMain.FN('DATEVISIT').Value;
    FullRefresh;
  end;

  case ATag of
    33301: RepFileName:= 'Inspection_A5.fr3';
    33302: RepFileName:= 'Pictures_A5.fr3';
    33303: RepFileName:= 'LuesList_A5.fr3';
    33304: RepFileName:= 'Inspection_A4.fr3';
    33305: RepFileName:= 'Pictures_A4.fr3';
    33306: RepFileName:= 'LuesList_A4.fr3';
//    33307: RepFileName:= 'RecomPrepareList_A4.fr3';
////    33308: RepFileName:= 'RecomPrepareList_A5.fr3';
//    33308: RepFileName:= 'test.fr3';
  else
    Application.MessageBox('������� ������ ���� �� ����������� �� ���� �� ������ ������! ���������� '
                         + '������������.', '������ ������� � ������', MB_ICONINFORMATION);
  end;

RepFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + RepFileName;

//���� ���� ����������
if FileExists(RepFPath)
  then //��������� �����
    begin
      frxHTMLExport.FileName:= DMFIB.DSetReport.FN('FIO_EXPORT').AsString;
      frxODTExport.FileName:= DMFIB.DSetReport.FN('FIO_EXPORT').AsString;
      frxRTFExport.FileName:= DMFIB.DSetReport.FN('FIO_EXPORT').AsString;
      frxPDFExport.FileName:= DMFIB.DSetReport.FN('FIO_EXPORT').AsString;

      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

      if not DirectoryExists(ReportInitDir + '\html') then ForceDirectories(ReportInitDir + '\html');
      frxHTMLExport.DefaultPath:= ReportInitDir + '\html';

      if not DirectoryExists(ReportInitDir + '\odt') then ForceDirectories(ReportInitDir + '\odt');
      frxODTExport.DefaultPath:= ReportInitDir + '\odt';

      if not DirectoryExists(ReportInitDir + '\rtf') then ForceDirectories(ReportInitDir + '\rtf');
      frxRTFExport.DefaultPath:= ReportInitDir + '\rtf';

      if not DirectoryExists(ReportInitDir + '\pdf') then ForceDirectories(ReportInitDir + '\html');
      frxPDFExport.DefaultPath:= ReportInitDir + '\pdf';

      MainReport.LoadFromFile(RepFPath);
      MainReport.ShowReport;
    end
  else //������� �� ��������� � ���������������
    begin
      TmpTxt:= '����������� ����������� ���� ������ "' + RepFileName + '" ! ��������, '
      + '�� ��� �������� ������ ��� ������������. ���������� ���� ���� �� ����� � ������� � ����� '
      + '\Reports\ � �������� �������� ��������� � ���������� ��������� ����� ������.';
      Application.MessageBox(PChar(TmpTxt), '������ ������� � �����', MB_ICONINFORMATION);
      Exit;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.mnuRestoreWindowClick(Sender: TObject);
begin
Show;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.mnuCloseProgrammClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean);
 {************************************************************
//��������� ��� �������� ������� ������ ����������
//����� ������ http://delphiworld.narod.ru/base/keyboard_keys_down.html

* Procedure PostKeyEx32
* 
* Parameters: 
*  key    : virtual keycode of the key to send. For printable 
*           keys this is simply the ANSI code (Ord(character)). 
*  shift  : state of the modifier keys. This is a set, so you 
*           can set several of these keys (shift, control, alt, 
*           mouse buttons) in tandem. The TShiftState type is 
*           declared in the Classes Unit.
*  specialkey: normally this should be False. Set it to True to 
*           specify a key on the numeric keypad, for example. 
* Description: 
*  Uses keybd_event to manufacture a series of key events matching 
*  the passed parameters. The events go to the control with focus. 
*  Note that for characters key is always the upper-case version of 
*  the character. Sending without any modifier keys will result in 
*  a lower-case character, sending it with [ssShift] will result 
*  in an upper-case character! 
// Code by P. Below 
************************************************************}
 type
   TShiftKeyInfo = record
     shift: Byte;
     vkey: Byte;
   end;
   byteset = set of 0..7;
 const
   shiftkeys: array [1..3] of TShiftKeyInfo =
     ((shift: Ord(ssCtrl); vkey: VK_CONTROL),
     (shift: Ord(ssShift); vkey: VK_SHIFT),
     (shift: Ord(ssAlt); vkey: VK_MENU));
 var
   flag: DWORD;
   bShift: ByteSet absolute shift;
   i: Integer;
begin
   for i := 1 to 3 do
   begin
     if shiftkeys[i].shift in bShift then
       keybd_event(shiftkeys[i].vkey, MapVirtualKey(shiftkeys[i].vkey, 0), 0, 0);
   end; { For }
   if specialkey then
     flag := KEYEVENTF_EXTENDEDKEY
   else
     flag := 0;

   keybd_event(key, MapvirtualKey(key, 0), flag, 0);
   flag := flag or KEYEVENTF_KEYUP;
   keybd_event(key, MapvirtualKey(key, 0), flag, 0);

   for i := 3 downto 1 do
   begin
     if shiftkeys[i].shift in bShift then
       keybd_event(shiftkeys[i].vkey, MapVirtualKey(shiftkeys[i].vkey, 0),
         KEYEVENTF_KEYUP, 0);
   end; { For }
end; { PostKeyEx32 }

//----------------------------------------------------------------------------
//����� ����������� �� ������� ������� �5
procedure TFrmMainProg.ActReportResearch_A5Execute(Sender: TObject);
begin
SenderTag:= ActReportResearch_A5.Tag; //���������� ��������� �������� � ������� �5
ActReportResearchExecute(Sender);
SenderTag:= 0;
end;

//----------------------------------------------------------------------------
//����� ����������� �� ������� ������� �4
procedure TFrmMainProg.ActReportResearch_A4Execute(Sender: TObject);
begin
SenderTag:= ActReportResearch_A4.Tag; //���������� ��������� �������� � ������� �4
ActReportResearchExecute(Sender);
SenderTag:= 0;
end;

//----------------------------------------------------------------------------
//����� ������ ������� ������� �5
procedure TFrmMainProg.ActReportInspect_A5Execute(Sender: TObject);
begin
SendNameReport(ActReportInspect_A5.Tag);
end;

//----------------------------------------------------------------------------
//����� ���������� � ������ ������� �5
procedure TFrmMainProg.ActReportInspectPict_A5Execute(Sender: TObject);
begin
SendNameReport(ActReportInspectPict_A5.Tag);
end;

//----------------------------------------------------------------------------
//����� ������� �� ������� ������� �5
procedure TFrmMainProg.ActReportLuesList_A5Execute(Sender: TObject);
begin
SendNameReport(ActReportLuesList_A5.Tag);
end;

//----------------------------------------------------------------------------
//����� ������ ������� ������� �4
procedure TFrmMainProg.ActReportInspect_A4Execute(Sender: TObject);
begin
SendNameReport(ActReportInspect_A4.Tag);
end;

//----------------------------------------------------------------------------
//����� ���������� � ������ ������� �4
procedure TFrmMainProg.ActReportInspectPict_A4Execute(Sender: TObject);
begin
SendNameReport(ActReportInspectPict_A4.Tag);
end;

//----------------------------------------------------------------------------
//����� ������� �� ������� ������� �4
procedure TFrmMainProg.ActReportLuesList_A4Execute(Sender: TObject);
begin
SendNameReport(ActReportLuesList_A4.Tag);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActReportRecomPrepare_A4Execute(Sender: TObject);
begin
PrintSimpleReport(ActReportRecomPrepare_A4.Tag);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.ActReportRecomPrepare_A5Execute(Sender: TObject);
begin
PrintSimpleReport(ActReportRecomPrepare_A5.Tag);
end;

//----------------------------------------------------------------------------

procedure TFrmMainProg.PrintSimpleReport(ATag: Integer);
var RepFPath, RepFileName: WideString;
    TmpTxt: String;
begin
with DSetMainTmp do
  begin
    if Active then Close;
    SQLs.SelectSQL.Text:= 'SELECT FIRST 1 ID_CLINIC FROM TBL_CLINIC';
    Prepare;
    Open;
  end;

  case ATag of
    33307:
      begin
        if (ApplCurVersInfo = 20) or (ApplCurVersInfo = 21)
          then
            RepFileName:= 'RecomPrepareList_A4_biomed.fr3'
          else
            RepFileName:= 'RecomPrepareList_A4.fr3';
      end;

    33308:
      begin
        if (ApplCurVersInfo = 20) or (ApplCurVersInfo = 21)
          then
            RepFileName:= 'RecomPrepareList_A5_biomed.fr3'
          else
            RepFileName:= 'RecomPrepareList_A5.fr3';
      end;
  else
    Application.MessageBox('������� ������ ���� �� ����������� �� ���� �� ������ ������! ���������� '
                         + '������������.', '������ ������� � ������', MB_ICONINFORMATION);
  end;

RepFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + RepFileName;

//���� ���� ����������
if FileExists(RepFPath)
  then //��������� �����
    begin
      MainReport.LoadFromFile(RepFPath);
      MainReport.ShowReport;
    end
  else //������� �� ��������� � ���������������
    begin
      TmpTxt:= '����������� ����������� ���� ������ "' + RepFileName + '" ! ��������, '
      + '�� ��� �������� ������ ��� ������������. ���������� ���� ���� �� ����� � ������� � ����� '
      + '\Reports\ � �������� �������� ��������� � ���������� ��������� ����� ������.';
      Application.MessageBox(PChar(TmpTxt), '������ ������� � �����', MB_ICONINFORMATION);
      Exit;
    end;

end;

{ TThreadMain }

procedure TThreadMain.CloseSplashMsg;
begin
  IsFinishedThread:= True;
  if Assigned(frmSplash) then frmSplash.Close;
end;

procedure TThreadMain.ComplaintsMsg;
var msComplaints , msSecretStuff :TMemoryStream;
begin
  if Assigned(FrmStatusPat) then
  begin
  //==== ���������� ����� ����� � ��������
    //"��������" ���������� ����������
    TextComplaint:= '';//������
    TextSecretStuff:= '';//���������������� ��������
    TextAnamAllergy:= '';//����������������� �������
    TextAnamAnthrDes:= '';//������������ �����������
    TextAnamChldDes:= '';//������� ��������
    TextAndrZPPP:= '';//���� � ������
    TextGinZPPP:= '';//���� � ������

    //������ ���-�����
    with FrmStatusPat do
    begin
      RichEditComplaints.Clear;
      RichEditSecretStuff.Clear;
      RchEdtAnamAllergy.Clear;
      RchEdtAnamAnthrDes.Clear;
      RchEdtAnamChldDes.Clear;
      RchEdtAndrZPPP.Clear;
      RchEdtGinZPPP.Clear;
    end;

    case FMsgParam of
      0://��������� ������
        begin
          with FrmStatusPat do
          begin
            ChkBoxSecretStuff.Checked:= False;//��������� ��������

            //==== ����� ������� ====
            ChkBoxAnamnesAllergy.Checked:= False;
            RdBtnAllergyNo.Checked:= True;
            RdBtnAllergyYes.Checked:= False;

            ChkBoxBadHabit.Checked:= False;
            ChkBoxAnamSmoke.Checked:= False;
            SpnEdtSigarCount.Value:= 1;
            SpnEdtSmokeAge.Value:= 1;
            CbBoxSmokePeriod.ItemIndex:= 1;
            ChkBoxAnamAlkohol.Checked:= False;

            // ===== ��������������� ������� ====
            ChkBoxAndrOperation.Checked:= False;
            ChkBoxAndrVaricocele.Checked:= False;
            ChkBoxAndrHydrocele.Checked:= False;
            ChkBoxAndrCryptorhism.Checked:= False;
            ChkBoxAndrCircumcisio.Checked:= False;
            ChkBoxAndrParotit.Checked:= False;
            ChkBoxAndrCastracio.Checked:= False;
            ChkBoxAndrAdenomOper.Checked:= False;

            ChkBoxAnamnesFamily.Checked:= False;
            CbBoxAndrMarriage.ItemIndex:= 0;
            ChkBoxAndrChild.Checked:= False;
            SpnEdtAndrChildCount.Value:= 1;
            ChkBoxAndrPregnancy.Checked:= False;

            ChkBoxAnamnesAndrSex.Checked:= False;
            CbBoxSexPartnFemaleCount.ItemIndex:= 1;
            CbBoxSexPartnFemaleRamdom.ItemIndex:= 0;
            SpnEdtAndrCoitusCount.Value:= 1;
            CbBoxAndrCoitusPeriod.ItemIndex:= 1;
            SpnEdtAndrOrgasmCount.Value:= 1;

            //==== ���������������� ������� ====
            ChkBoxAnamnesGinek.Checked:= False;
            SpnEdtGinMenarhe.Value:= 8;
            ChkBoxGinMenopause.Checked:= False;
            SpnEdtGinMenopauseAge.Value:= 45;
            SpnEdtGinMensesPeriod.Value:= 28;
            SpnEdtGinMensesAge.Value:= 5;
            DTPickGinLastMensesDate.Date:= Today;
            SpnEdtGinPregnancyCount.Value:= 0;
            SpnEdtGinChildBirthCount.Value:= 0;
            SpnEdtGinAbortionCount.Value:= 0;
            CbBoxGinMarriage.ItemIndex:= 0;

            ChkBoxAnamnesGinSex.Checked:= False;
            CbBoxSexPartnMaleCount.ItemIndex:= 1;
            CbBoxSexPartnMaleRamdom.ItemIndex:= 0;
            SpnEdtGinCoitusCount.Value:= 3;
            CbBoxGinCoitusPeriod.ItemIndex:= 1;
          end;
        end;
      1: //����������� ������
        begin
          with FrmStatusPat do
            with DMFIB do
            begin
              msComplaints:= TMemoryStream.Create;
              msSecretStuff:= TMemoryStream.Create;
              try
                //������ ����� �����
                TBlobField(DSetVisitBlob.FN('COMPLAINTS')).SaveToStream(msComplaints);
                msComplaints.Position:= 0;
                RichEditComplaints.Lines.LoadFromStream(msComplaints);
                TextComplaint:= GetRTFText(RichEditComplaints);

                TBlobField(DSetVisitBlob.FN('SECRET_STUFF')).SaveToStream(msSecretStuff);
                msSecretStuff.Position:= 0;
                RichEditSecretStuff.Lines.LoadFromStream(msSecretStuff);
                TextSecretStuff:= GetRTFText(RichEditSecretStuff);

              finally
                msComplaints.Free;
                msSecretStuff.Free;
              end;

              with DSetVisitMain do
                begin
                  RchEdtAnamAllergy.Text:= Trim(FN('ALLERGY_STRRICHMEMO').AsString);
                  RchEdtAnamAnthrDes.Text:= Trim(FN('ANAMANTHRDES_STRRICHMEMO').AsString);
                  RchEdtAnamChldDes.Text:= Trim(FN('ANAMCHLDDES_STRRICHMEMO').AsString);
                  RchEdtAndrZPPP.Text:= Trim(FN('ANDRZPPP_STRRICHMEMO').AsString);
                  RchEdtGinZPPP.Text:= Trim(FN('GINZPPP_STRRICHMEMO').AsString);

                  TextAnamAllergy:= RchEdtAnamAllergy.Text;
                  TextAnamAnthrDes:= RchEdtAnamAllergy.Text;
                  TextAnamChldDes:= RchEdtAnamAllergy.Text;
                  TextAndrZPPP:= RchEdtAnamAllergy.Text;
                  TextGinZPPP:= RchEdtAnamAllergy.Text;

                  //�������� "���������" �������
                  ChkBoxSecretStuff.Checked:= IntConvertBool(FN('CHKSECRET_STUFF').AsInteger);

                  //==== ����� ������� ====
                  ChkBoxAnamnesAllergy.Checked:= IntConvertBool(FN('ANAMNESALLERGY_CHK').AsInteger);
                  RdBtnAllergyNo.Checked:= IntConvertBool(FN('ALLERGY').AsInteger);
                  RdBtnAllergyYes.Checked:= not(IntConvertBool(FN('ALLERGY').AsInteger));

                  ChkBoxBadHabit.Checked:= IntConvertBool(FN('BADHABIT_CHK').AsInteger);
                  ChkBoxAnamSmoke.Checked:= IntConvertBool(FN('ANAMSMOKE').AsInteger);
                  SpnEdtSigarCount.Value:= FN('SIGARCOUNT').AsInteger;
                  SpnEdtSmokeAge.Value:= FN('SMOKEAGE').AsInteger;
                  CbBoxSmokePeriod.ItemIndex:= FN('SMOKEPERIOD').AsInteger;
                  ChkBoxAnamAlkohol.Checked:= IntConvertBool(FN('ANAMALKOHOL').AsInteger);

                  // ===== ��������������� ������� ====
                  ChkBoxAndrOperation.Checked:= IntConvertBool(FN('ANDROPERATION_CHK').AsInteger);
                  ChkBoxAndrVaricocele.Checked:= IntConvertBool(FN('ANDRVARICOCELE').AsInteger);
                  ChkBoxAndrHydrocele.Checked:= IntConvertBool(FN('ANDRHYDROCELE').AsInteger);
                  ChkBoxAndrCryptorhism.Checked:= IntConvertBool(FN('ANDRCRYPTORHISM').AsInteger);
                  ChkBoxAndrCircumcisio.Checked:= IntConvertBool(FN('ANDRCIRCUMCISIO').AsInteger);
                  ChkBoxAndrParotit.Checked:= IntConvertBool(FN('ANDRPAROTIT').AsInteger);
                  ChkBoxAndrCastracio.Checked:= IntConvertBool(FN('ANDRCASTRACIO').AsInteger);
                  ChkBoxAndrAdenomOper.Checked:= IntConvertBool(FN('ANDRADENOMOPER').AsInteger);

                  ChkBoxAnamnesFamily.Checked:= IntConvertBool(FN('ANAMNESFAMILY_CHK').AsInteger);
                  CbBoxAndrMarriage.ItemIndex:= FN('ANDRMARRIAGE').AsInteger;
                  ChkBoxAndrChild.Checked:= IntConvertBool(FN('ANDRCHILD').AsInteger);
                  SpnEdtAndrChildCount.Value:= FN('ANDRCHILDCOUNT').AsInteger;
                  ChkBoxAndrPregnancy.Checked:= IntConvertBool(FN('ANDRPREGNANCY').AsInteger);

                  ChkBoxAnamnesAndrSex.Checked:= IntConvertBool(FN('ANAMNESANDRSEX_CHK').AsInteger);
                  CbBoxSexPartnFemaleCount.ItemIndex:= FN('SEXPARTNFEMALECOUNT').AsInteger;
                  CbBoxSexPartnFemaleRamdom.ItemIndex:= FN('SEXPARTNFEMALERAMDOM').AsInteger;
                  SpnEdtAndrCoitusCount.Value:= FN('ANDRCOITUSCOUNT').AsInteger;
                  CbBoxAndrCoitusPeriod.ItemIndex:= FN('ANDRCOITUSPERIOD').AsInteger;
                  SpnEdtAndrOrgasmCount.Value:= FN('ANDRORGASMCOUNT').AsInteger;

                  //==== ���������������� ������� ====
                  ChkBoxAnamnesGinek.Checked:= IntConvertBool(FN('ANAMNESGINEK_CHK').AsInteger);
                  SpnEdtGinMenarhe.Value:= FN('GINMENARHE').AsInteger;
                  ChkBoxGinMenopause.Checked:= IntConvertBool(FN('GINMENOPAUSE').AsInteger);
                  SpnEdtGinMenopauseAge.Value:= FN('GINMENOPAUSEAGE').AsInteger;
                  SpnEdtGinMensesPeriod.Value:= FN('GINMENSESPERIOD').AsInteger;
                  SpnEdtGinMensesAge.Value:= FN('GINMENSESAGE').AsInteger;
                  DTPickGinLastMensesDate.Date:= FN('GINLASTMENSESDATE').AsDateTime;
                  SpnEdtGinPregnancyCount.Value:= FN('GINPREGNANCYCOUNT').AsInteger;
                  SpnEdtGinChildBirthCount.Value:= FN('GINCHILDBIRTHCOUNT').AsInteger;
                  SpnEdtGinAbortionCount.Value:= FN('GINABORTIONCOUNT').AsInteger;
                  CbBoxGinMarriage.ItemIndex:= FN('GINMARRIAGE').AsInteger;

                  ChkBoxAnamnesGinSex.Checked:= IntConvertBool(FN('ANAMNESGINSEX_CHK').AsInteger);
                  CbBoxSexPartnMaleCount.ItemIndex:= FN('SEXPARTNMALECOUNT').AsInteger;
                  CbBoxSexPartnMaleRamdom.ItemIndex:= FN('SEXPARTNMALERAMDOM').AsInteger;
                  SpnEdtGinCoitusCount.Value:= FN('GINCOITUSCOUNT').AsInteger;
                  CbBoxGinCoitusPeriod.ItemIndex:= FN('GINCOITUSPERIOD').AsInteger;
                end;
            end;
        end;
    end;
  end;

end;

constructor TThreadMain.Create(CreateSuspended: Boolean; AThreadTarget: TThreadTarget);
begin
  inherited Create(CreateSuspended);
  Priority:= tpLowest;
  FreeOnTerminate:= False;
  IsFinishedThread:= False;
  IsThreadExecuteAbort:= False;
  FThreadTarget:= AThreadTarget;
end;

procedure TThreadMain.DsMsg;
var  msDrugs
    ,msManip
    ,msDs
    ,msRecom: TMemoryStream;
begin
  if Assigned(FrmStatusPat) then
  begin
  //===== ���������� ������ �� ������� "������� � �������"

    //"��������" ���������� ����������
    TextDrugs:= '';
    TextManip:= '';
    TextDs:= '';
    TextRecom:= '';

    case FMsgParam of
      0: //��������� ������
        begin
          //"������" ���-�����
          FrmStatusPat.RichEditDrug.Clear;
          FrmStatusPat.RichEditManip.Clear;
          FrmStatusPat.RichEditDs.Clear;
          FrmStatusPat.RichEditRecom.Clear;
        end;
      1: //����������� ������
        begin
          with FrmStatusPat do
            with DMFIB do
            begin
              msDrugs:= TMemoryStream.Create;
              msManip:= TMemoryStream.Create;
              msDs:= TMemoryStream.Create;
              msRecom:= TMemoryStream.Create;

              try
                //������ ������ ���-������ �� ����
                TBlobField(DSetVisitBlob.FN('DrugText')).SaveToStream(msDrugs);
                msDrugs.Position:= 0;
                RichEditDrug.Lines.LoadFromStream(msDrugs);
                TextDrugs:= GetRTFText(RichEditDrug);

                TBlobField(DSetVisitBlob.FN('ManipText')).SaveToStream(msManip);
                msManip.Position:= 0;
                RichEditManip.Lines.LoadFromStream(msManip);
                TextManip:= GetRTFText(RichEditManip);

                TBlobField(DSetVisitBlob.FN('DsText')).SaveToStream(msDs);
                msDs.Position:= 0;
                RichEditDs.Lines.LoadFromStream(msDs);
                TextDs:= GetRTFText(RichEditDs);

                TBlobField(DSetVisitBlob.FN('RecomText')).SaveToStream(msRecom);
                msRecom.Position:= 0;
                RichEditRecom.Lines.LoadFromStream(msRecom);
                TextRecom:= GetRTFText(RichEditRecom);

              finally
                msDrugs.Free;
                msManip.Free;
                msDs.Free;
                msRecom.Free;
              end;
            end;{with DMFIB do}
        end;
    end;
  end;
end;

procedure TThreadMain.Execute;
var
  i: Integer;
begin
  inherited;

  try
    case FThreadTarget of
      ttOpenSinglePat:
        {$region '��� "������ � �����"'}
        begin
          try
            FMsgStrValue:= '����� ������� � �����';
            FMsgParam:= 2;
            Synchronize(MyMsg);//��������� ������

            FMsgStrValue:= '�������� �������� ������ � ������� �������� � �����.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            if IsFinishedThread then Exit;

            FrmMainProg.OpenSingleQry(TObject(FrmMainProg));//���������� ������� ������ � �������� ��������
            DMFIB.DSetSinglePat.FullRefresh;

          except
            on E:EFIBError do
            begin
              if DMFIB.DSetSinglePat.Active then DMFIB.DSetSinglePat.Active:= False;

              FMsgStrValue:= '������ ��������';
              FMsgParam:= 2;
              Synchronize(MyMsg);//��������� ������

              FMsgStrValue:= ErrorMsg;
              FMsgParam:= 1;
              Queue(MyMsg);//��������� ��������� �� ������

              FMsgIntValue:= 1;
              FMsgParam:= 4;
              Queue(MyMsg);//������������� ������� �� ������ ������ � �������

              //�������������� �������
              i:= 10;
              while (i > 0) and (not IsFinishedThread) do
              begin
                FMsgStrValue:= Format('�������(%d)',[i]);
                FMsgParam:= 3;
                Queue(MyMsg);//������� �� ������
                Sleep(1000);
                Dec(i);
              end;
            end;
          end;

          FrmMainProg.CountOpenDetailDSet:= FrmMainProg.CountOpenDetailDSet + 1;//����������� �������
        end;
         {$endregion '��� "������ � �����"'}
      ttAddPatVisit:
        {$region '��� "���������� ������ ������"'}
        begin
          try
            FMsgStrValue:= '���������� ������ ������ � �����';
            FMsgParam:= 2;
            Synchronize(MyMsg);//��������� ������

            FMsgStrValue:= '�������������� ������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������

            //� ����� ������ ������ ����������
            if IsFinishedThread then Exit;
            DMFIB.DSetVisitMain.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitLabor.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitExamin.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitBlob.FullRefresh;

            FMsgStrValue:= '������� ��������� �������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //��������� �������� ��������� �������
            if IsFinishedThread then Exit;

            FMsgParam:= 0;
            FMsgIntValue:= 0;//�� ������ ������, ���� � �� ������ ���������� � ���������
            Synchronize(TmpBlobPrepareMsg);//��������� � ��� ������

            FMsgStrValue:= '�������������� ������� � �������� � ���������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � �������� � ���������
            if IsFinishedThread then Exit;

            FMsgIntValue:= 0; //�� ������ ������, ���� � �� ������ ���������� � ���������
            FMsgParam:= 0;
            Synchronize(ComplaintsMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ��������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ���������
            if IsFinishedThread then Exit;
            FMsgParam:= 0;
            FMsgIntValue:= 0;
            Synchronize(StatusMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ������������� ��������������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ������������� ��������������
            if IsFinishedThread then Exit;
            FMsgIntValue:= 0;
            FMsgParam:= 0;
            Synchronize(LaborMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ����������������� ��������������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ����������������� ��������������
            if IsFinishedThread then Exit;
            FMsgParam:= 0;
            FMsgIntValue:= 0;
            Synchronize(MedToolsMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � �������� � ��������������. ����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������

            Sleep(1000);

            //�������������� ���������� ������� � �������� � ��������������
            if IsFinishedThread then Exit;
            FMsgParam:= 0;
            FMsgIntValue:= 0;
            Synchronize(DsMsg);//��������� ������� �������������

          except
            on E: Exception do
            begin
              FMsgStrValue:= '������ ���������� ������';
              FMsgParam:= 2;
              Synchronize(MyMsg);//��������� ������

              FMsgStrValue:= E.Message;
              FMsgParam:= 1;
              Queue(MyMsg);//��������� ��������� �� ������

              //�������������� �������
              i:= 10;
              while (i > 0) and (not IsFinishedThread) do
              begin
                FMsgStrValue:= Format('�������(%d)',[i]);
                FMsgParam:= 3;
                Queue(MyMsg);//������� �� ������
                Sleep(1000);
                Dec(i);
              end;

              if not IsFinishedThread then IsFinishedThread:= True;//��������� �����
              //����������� � finally ������
              Exit;
            end;
          end;
        end;
        {$endregion '��� "���������� ������ ������"'}
      ttEditPatVisit:
        {$region '��� "�������������� ������ ������"'}
        begin
          try
            FMsgStrValue:= '�������������� ������ ������ � �����';
            FMsgParam:= 2;
            Synchronize(MyMsg);//��������� ������

            FMsgStrValue:= '�������������� ������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������

            //� ����� ������ ������ ����������
            if IsFinishedThread then Exit;
            DMFIB.DSetVisitMain.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitLabor.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitExamin.FullRefresh;

            if IsFinishedThread then Exit;
            DMFIB.DSetVisitBlob.FullRefresh;

            FMsgStrValue:= '������� ��������� �������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //��������� �������� ��������� �������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(TmpBlobPrepareMsg);//��������� � ��� ������

            FMsgStrValue:= '�������������� ������� � �������� � ���������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � �������� � ���������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(ComplaintsMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ��������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ���������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(StatusMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ������������� ��������������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ������������� ��������������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(LaborMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � ����������������� ��������������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � ����������������� ��������������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(MedToolsMsg);//��������� ������� �������������

            FMsgStrValue:= '�������������� ������� � �������� � ��������������.' + #13#10 + '����������, ���������';
            FMsgParam:= 1;
            Queue(MyMsg);//��������� ��������� �� ������
            Sleep(1000);

            //�������������� ���������� ������� � �������� � ��������������
            if IsFinishedThread then Exit;
            FMsgParam:= 1;
            FMsgIntValue:= 0;
            Synchronize(DsMsg);//��������� ������� �������������

          except
            on E: Exception do
            begin
              FMsgStrValue:= '������ ���������� ������';
              FMsgParam:= 2;
              Synchronize(MyMsg);//��������� ������

              FMsgStrValue:= E.Message;
              FMsgParam:= 1;
              Queue(MyMsg);//��������� ��������� �� ������

              //�������������� �������
              i:= 10;
              while (i > 0) and (not IsFinishedThread) do
              begin
                FMsgStrValue:= Format('�������(%d)',[i]);
                FMsgParam:= 3;
                Queue(MyMsg);//������� �� ������
                Sleep(1000);
                Dec(i);
              end;

              if not IsFinishedThread then IsFinishedThread:= True;//��������� �����
              //����������� � finally ������
              Exit;
            end;
          end;
        end;
        {$endregion '��� "�������������� ������ ������"'}
      ttRefreshSinglePat:
      {$region '��� "���������� ������ �������"'}
      begin
        FMsgParam:= 4;
        FMsgIntValue:= 0;
        Synchronize(MyMsg);//�������� pnlBottom �� ������

        FMsgStrValue:= '������ ������ � �����';
        FMsgParam:= 2;
        Synchronize(MyMsg);//��������� ������

        FMsgStrValue:= '��������� ������� � �������� � �����.' + #13#10 + '����������, ���������';
        FMsgParam:= 1;
        Queue(MyMsg);//��������� ��������� �� ������
        Sleep(1000);

        FrmMainProg.RefreshDetailWindow(TObject(FrmMainProg));

        //������������ �� ������� ������
        if not DMFIB.DSetSinglePat.IsEmpty then
          DMFIB.DSetSinglePat.Locate('ID_VISITMAIN', VarID_Tbl_VisitMain, []);
      end;
      {$endregion '��� "���������� ������ ������"'}
    end;
  finally
    //���� IsFinishedThread = True, ������ ����� ��� ����� �������
    if IsFinishedThread
      then
        begin
          if DMFIB.DSetTmpBlobVisit.Active then DMFIB.DSetTmpBlobVisit.Active:= False;
          IsThreadExecuteAbort:= True//����� ��� �����������
        end
      else IsFinishedThread:= True;//����� ��������� �������� ������

    FMsgParam:= 0;
    FMsgIntValue:= 0;
    Synchronize(CloseSplashMsg);//��������� �����

  end;
end;


procedure TThreadMain.LaborMsg;
var  msLues
    ,msBlood
    ,msAIDS
    ,msSperm
    ,msUrethBactInoc
    ,msUrinBactInoc
    ,msProstBactInoc
    ,msMicUrBactInoc
    ,msIFA
    ,msPCR
    ,msOAM
    ,msMazUrethra
    ,msMazProst: TMemoryStream;
begin
  if Assigned(FrmStatusPat) then
  begin
  //===== ���������� ������ �� ������� "������������ ������������"
    //"��������" ���������� ����������
    TextLues:= '';
    TextBlood:= '';
    TextAIDS:= '';
    TextSperm:= '';
    TextIFA:= '';
    TextPCR:= '';
    TextOAM:= '';
    TextMazUr:= '';
    TextMazProst:= '';
    TextUrethBactInoc:= '';
    TextUrinBactInoc:= '';
    TextProstBactInoc:= '';
    TextMicUrBactInoc:= '';

    case FMsgParam of
      0: //��������� ������
        begin
          //"������" ���-�����
          FrmStatusPat.RichEdtLues.Clear;
          FrmStatusPat.RichEdtBlood.Clear;
          FrmStatusPat.RichEdtAIDS.Clear;
          FrmStatusPat.RichEdtSperm.Clear;

          FrmStatusPat.RichEdtUrethBactInoc.Clear;
          FrmStatusPat.RichEdtProstBactInoc.Clear;
          FrmStatusPat.RichEdtMicUrBactInoc.Clear;
          FrmStatusPat.RichEdtUrinBactInoc.Clear;

          FrmStatusPat.RichEditOAM.Clear;
          FrmStatusPat.RichEditIFA.Clear;
          FrmStatusPat.RichEditPCR.Clear;
          FrmStatusPat.RichEditMazUr.Clear;
          FrmStatusPat.RichEditMazProst.Clear;

        //------- ����������� ��������� �������� ���-����������
        // �� ������� ��� ��� "�������(������)"
          VarChkAIDS:= 0;
          VarDateAIDS:= Date;
          VarAIDS:=0;

          VarChkHBsAg:= 0;
          VarHBsAg:= 0;

          VarChkRW:= 0;
          VarRW:= 0;

          VarChkHBeAg:= 0;
          VarChkAntiHBcSum:= 0;
          VarChkAntiHBc_IgM:= 0;
          VarChkAntiHBe_IgG:= 0;
          VarChkAntiHBsNumer:= 0;
          VarChkAntiHCVSum:= 0;
          VarChkAntiHCV_Core_IgM:= 0;
          VarChkAntiHDVSum:= 0;
          VarChkAntiHCVSumCore:= 0;
          VarChkAntiHCVSumNS3:= 0;
          VarChkAntiHCVSumNS4:= 0;
          VarChkAntiHCVSumNS5:= 0;
          VarChkSumAtLues:= 0;
          VarHBeAg:= 0;
          VarAntiHBcSum:= 0;
          VarAntiHBc_IgM:= 0;
          VarAntiHBe_IgG:= 0;
          VarAntiHBsNumerStr:= '';
          VarAntiHCVSum:= 0;
          VarAntiHCV_Core_IgM:= 0;
          VarAntiHDVSum:= 0;
          VarAntiHCVSumCore:= 0;
          VarAntiHCVSumNS3:= 0;
          VarAntiHCVSumNS4:= 0;
          VarAntiHCVSumNS5:= 0;
          VarSumAtLues:= 0;

          VarPCRDate:= Date;
          VarGnAn:= 0;
          VarGnRez:= 0;

          VarTrAn:= 0;
          VarTrRez:= 0;

          VarChlamAn:= 0;
          VarChlamRez:= 0;

          VarUrAn:= 0;
          VarUrRez:= 0;

          VarMicHomAn:= 0;
          VarMicHomRez:= 0;

          VarMicGenAn:= 0;
          VarMicGenRez:= 0;

          VarGardAn:= 0;
          VarGardRez:= 0;

          VarCMVAn:= 0;
          VarCMVRez:= 0;

          VarVHSAn:= 0;
          VarVHSRez:= 0;

          VarPHVAn:= 0;
          VarPHVRez:= 0;

          VarPHVAnHigh:= 0;
          VarPHVRezHigh:= 0;

          VarTubAn:= 0;
          VarTubRez:= 0;

          VarCandAn:= 0;
          VarCandRez:= 0;

        //------- ����������� ��������� �������� ���-����������
          //�������(� ������������� �����������) ��������� ������� "����������" �������
          VarIFADate:= Date;//���� ���������� ��� ������������

          VarIFAChlIgA:= 0;
          VarIFAChlIgG:= 0;
          VarIFAChlIgGb:= 0;

          VarIFAMicIgG:= 0;
          VarIFAMicIgA:= 0;

          VarIFAUrIgG:= 0;
          VarIFAUrIgA:= 0;

          VarIFATrIgG:= 0;

          VarIFACMVIgM:= 0;
          VarIFACMVIgG:= 0;
          VarIFACMVIgGavid:= 0;

          VarIFAHerpIgM:= 0;
          VarIFAHerpIgG:= 0;
          VarIFAHerpIgGavid:= 0;

          VarIFACandIgG:= 0;

          //������ ItemIndex ��������������� �����������

          VarNumIFAChlIgA:= 0;
          VarNumIFAChlIgG:= 0;
          VarNumIFAChlIgGb:= 1;

          VarNumIFAMicIgG:= 0;
          VarNumIFAMicIgA:= 1;

          VarNumIFAUrIgG:= 0;
          VarNumIFAUrIgA:= 1;

          VarNumIFATrIgG:= 0;

          VarNumIFACMVIgM:= 1;
          VarNumIFACMVIgG:= 0;
          VarNumIFACMVIgGavid:= 0;

          VarNumIFAHerpIgM:= 1;
          VarNumIFAHerpIgG:= 0;
          VarNumIFAHerpIgGavid:= 0;

          VarNumIFACandIgG:= 1;


        //------- ����������� ��������� �������� ���������� �������� ����
          VarOAMDate:= Date;//���� ���������� ������ ������� ����
          VarOAMColor:=0;
          VarOAMTransparent:=0;
          VarOAMDensity:='';
          VarOAMSugar:=0;
          VarOAMProtein:=0;
          VarOAMLeu:='';
          VarOAMEr:='';
          VarOAMEpit:='';
          VarOAMSalt:='';
          VarOAMFlora:='';
          VarOAMVolume:='';
          VarOAMSmell:='';
          VarOAMResiduum:='';
          VarOAM_pH:='';
          VarOAMAceticAcid:='';
          VarOAMBilifuscin:='';
          VarOAMAceton:='';
          VarOAMUrobilin:='';
          VarOAMCylindr:='';
          VarOAMMucos:='';


          VarNechiporDate:= Date;//���� ���������� ������� ���� �� �����������
          VarNechiporLeu:='';
          VarNechiporEr:='';
          VarNechiporFlora:='';

        //------- ����������� ��������� �������� ���������� ����� �� ������
          VarMazUrethraDate:= Date;//���� ���������� ����� �� ������
          VarMazUrLeu:= '';
          VarMazUrEr:= '';
          VarMazUrGn:= 0;
          VarMazUrTr:= 0;
          VarMazUrFlora:= 0;
          VarMazUrEpit:= '';
          VarMazUrKeyCell:= 0;
          VarMazUrCand:= 0;
          VarMazUrMucos:= '';

        //------- ����������� ��������� �������� ���������� ����� �� ����� �����
          VarMazCvxLeu:= '';
          VarMazCvxEr:= '';
          VarMazCvxGn:= 0;
          VarMazCvxTr:= 0;
          VarMazCvxFlora:= 0;
          VarMazCvxEpit:= '';
          VarMazCvxKeyCell:= 0;
          VarMazCvxCand:= 0;
          VarMazCvxMucos:= '';

        //------- ����������� ��������� �������� ���������� ����� �� ���������
          VarMazVgnLeu:= '';
          VarMazVgnEr:= '';
          VarMazVgnGn:= 0;
          VarMazVgnTr:= 0;
          VarMazVgnFlora:= 0;
          VarMazVgnEpit:= '';
          VarMazVgnKeyCell:= 0;
          VarMazVgnCand:= 0;
          VarMazVgnMucos:= '';

        //------- ����������� ��������� �������� ���������� ����� �� ������ �����
          VarMazRectLeu:= '';
          VarMazRectEr:= '';
          VarMazRectGn:= 0;
          VarMazRectTr:= 0;
          VarMazRectFlora:= 0;
          VarMazRectEpit:= '';
          VarMazRectKeyCell:= 0;
          VarMazRectCand:= 0;
          VarMazRectMucos:= '';


        //------- ����������� ��������� �������� ���������� ����� �� ������
          VarMazProstDate:= Date;//���� ���������� ����� ���� ��������
          VarMazProstLeu:= '';
          VarMazProstEr:= '';
          VarMazProstEpit:='';
          VarMazProstMFag:='';
          VarMazProstAmil:='';
          VarMazProst_pH:='';
          VarMazProstGn:= 0;
          VarMazProstTr:= 0;
          VarMazProstFlora:= 0;
          VarMazProstLZ:= 3;
          VarMazProstBekht:= 1;
          VarMazProstSperm:= 0;

        //------- ����������� ��������� �������� ���������� ������������

          VarSpermDate:= Date;
          VarSpermVolume:= '';
          VarSpermColor:= '';
          VarSperm_pH:= '';
          VarSpermViscosity:= '';
          VarSpermFluid:= '';
          VarSpermLeu:= '';
          VarSpermEr:= '';
          VarSpermLipoidSoma:= '';
          VarSpermAgglut:= '';
          VarSpermAggreg:= '';
          VarSpermEpitel:= '';
          VarSpermAbstinence:= '';
          VarSpermConcentr:= '';
          VarSpermTotal:= '';
          VarSpermFastForwMove:= '';
          VarSpermSlowForwMove:= '';
          VarSpermRollMove:= '';
          VarSpermStaticMove:= '';
          VarSpermReport:= 0;

          VarKrugDate:= Date;
          VarKrugNorma:= '';
          VarKrugCapCoarse:= '';
          VarKrugCapSlight:= '';
          VarKrugCapSpecif:= '';
          VarKrugCollumCoarse:= '';
          VarKrugCollumSlight:= '';
          VarKrugBrush:= '';
          VarKrugSpermCell:= '';
          VarKrugYoungCell:= '';
          VarKrugMorphIndex:= '';
          VarKrugNotice:= '';

          VarSpermBiochemicDate:= Date;
          VarSpermBiochemicFruct:= '';
          VarSpermBiochemicGlyc:= '';

          VarMARDate:= Date;
          VarMAR:= '';

          VarSpermVitalDate:= Date;
          VarSpermVitalTest:= '';
          VarSpermVitalHOS:= '';


          VarPgCtrlBloodHorm:= 0;//����������  ����� ������� ����� � ��������� �����
        //------- ����������� ��������� �������� ���������� ������ ������� �����

          VarOAKDate:= Date;
          VarOAKHb:= '';
          VarOAKEr:= '';
          VarOAKColourIndex:= '';
          VarOAKTromb:= '';
          VarOAKLeu:= '';
          VarOAKLeuYoung:= '';
          VarOAKLeuStab:= '';
          VarOAKLeuSegment:= '';
          VarOAKLymph:= '';
          VarOAKMonocyte:= '';
          VarOAKEosinophil:= '';
          VarOAKBasophil:= '';
          VarOAKSOE:= '';
          VarOAKCoagul:= '';
          VarOAKHemorrhagTime:= '';
          VarOAKReticulocyte:= '';
          VarOAKGlucosaCapill:= '';
          VarOAKEosinSliz:= '';
          VarOAKHmtc:= '';

        //------- ����������� ��������� �������� ���������� �������� �����
          VarBloodBioDate:= Date;
          VarBloodBioALT:= '';
          VarBloodBioAST:= '';
          VarBloodBioProtein:= '';
          VarBloodBioBiTotal:= '';
          VarBloodBioBiDirect:= '';
          VarBloodBioCholest:= '';
          VarBloodBioSodiumFosf:= '';
          VarBloodBioGGT:= '';
          VarBloodBioLPVP:= '';
          VarBloodBioLPNP:= '';
          VarBloodBioMochevina:= '';
          VarBloodBioUricAcid:= '';
          VarBloodBioCreatinin:= '';
          VarBloodBioAlbumin:= '';
          VarBloodBioGlucosa:= '';
          VarBloodBioTriglyc:= '';
          VarBloodBioCalcium:= '';
          VarBloodBioPhosphor:= '';
          VarBloodBioFerrum:= '';
          VarBloodBioOZhSS:= '';

          //------- ����������� ��������� �������� "������������" ����������
          VarHormSterDate:= Date;
          VarHormLG:='';
          VarHormFSG:='';
          VarHormProlactin:='';
          VarHormEstradiol:='';
          VarHormProgest:='';
          VarHormTestosterTotal:='';
          VarHormDGEAS:='';
          VarHormProgest_17OH:='';
          VarHormTestosterFree:='';
          VarHormSSSG:='';

          VarHormTireoidDate:= Date;
          VarHormT4_Total:='';
          VarHormT4_Free:='';
          VarHormT3_Total:='';
          VarHormT3_Free:='';
          VarHormTTG:='';
          VarHormKortizol:='';
          VarHormTireoglob_At:='';
          VarHormTireoPerox_At:='';
          VarHormInhibin_B:='';

          //------- ����������� ��������� �������� "�������������" ����������
          VarOnkomarkDate:= Date;
          VarPSA_Total:= '';
          VarPSA_Free:= '';
          VarPSA_Ratio:= '';

          //------- ����������� ��������� �������� "�������������" ����������
          VarBloodIonesDate:= Date;
          VarIones_Na:= '';
          VarIones_K:= '';
          VarIones_Cl:= '';
          VarIones_Ca:= '';
          VarIonesBlood_pH:= '';


          //------- ����������� ��������� �������� ���������� ���.�������

          VarUrethBactInocDate:= Date;
          VarChkUrethPathogen1:= 0;
          VarUreth_Pathogen1_01:= 0;
          VarUreth_Pathogen1_02:= 0;
          VarUreth_Pathogen1_03:= 0;
          VarUreth_Pathogen1_04:= 0;
          VarUreth_Pathogen1_05:= 0;
          VarUreth_Pathogen1_06:= 0;
          VarUreth_Pathogen1_07:= 0;
          VarUreth_Pathogen1_08:= 0;
          VarUreth_Pathogen1_09:= 0;
          VarUreth_Pathogen1_10:= 0;
          VarUreth_Pathogen1_11:= 0;
          VarUreth_Pathogen1_12:= 0;
          VarUreth_Pathogen1_13:= 0;
          VarUreth_Pathogen1_14:= 0;
          VarUreth_Pathogen1_15:= 0;
          VarUreth_Pathogen1_16:= 0;

          VarChkUrethPathogen2:= 0;
          VarUreth_Pathogen2_01:= 0;
          VarUreth_Pathogen2_02:= 0;
          VarUreth_Pathogen2_03:= 0;
          VarUreth_Pathogen2_04:= 0;
          VarUreth_Pathogen2_05:= 0;
          VarUreth_Pathogen2_06:= 0;
          VarUreth_Pathogen2_07:= 0;
          VarUreth_Pathogen2_08:= 0;
          VarUreth_Pathogen2_09:= 0;
          VarUreth_Pathogen2_10:= 0;
          VarUreth_Pathogen2_11:= 0;
          VarUreth_Pathogen2_12:= 0;
          VarUreth_Pathogen2_13:= 0;
          VarUreth_Pathogen2_14:= 0;
          VarUreth_Pathogen2_15:= 0;
          VarUreth_Pathogen2_16:= 0;

          VarStrUrethPathogen1:= '';
          VarStrUrethPathogen2:= '';
          VarStrUrethExtra1:= '';
          VarStrUrethExtra2:= '';

          VarChkUrethDrug_01:= 0;
          VarChkUrethDrug_02:= 0;
          VarChkUrethDrug_03:= 0;
          VarChkUrethDrug_04:= 0;
          VarChkUrethDrug_05:= 0;
          VarChkUrethDrug_06:= 0;
          VarChkUrethDrug_07:= 0;
          VarChkUrethDrug_08:= 0;
          VarChkUrethDrug_09:= 0;
          VarChkUrethDrug_10:= 0;
          VarChkUrethDrug_11:= 0;
          VarChkUrethDrug_12:= 0;
          VarChkUrethDrug_13:= 0;
          VarChkUrethDrug_14:= 0;
          VarChkUrethDrug_15:= 0;
          VarChkUrethDrug_16:= 0;

          VarProstBactInocDate:= Date;
          VarChkProstPathogen1:= 0;
          VarProst_Pathogen1_01:= 0;
          VarProst_Pathogen1_02:= 0;
          VarProst_Pathogen1_03:= 0;
          VarProst_Pathogen1_04:= 0;
          VarProst_Pathogen1_05:= 0;
          VarProst_Pathogen1_06:= 0;
          VarProst_Pathogen1_07:= 0;
          VarProst_Pathogen1_08:= 0;
          VarProst_Pathogen1_09:= 0;
          VarProst_Pathogen1_10:= 0;
          VarProst_Pathogen1_11:= 0;
          VarProst_Pathogen1_12:= 0;
          VarProst_Pathogen1_13:= 0;
          VarProst_Pathogen1_14:= 0;
          VarProst_Pathogen1_15:= 0;
          VarProst_Pathogen1_16:= 0;
          VarProst_Pathogen1_17:= 0;

          VarChkProstPathogen2:= 0;
          VarProst_Pathogen2_01:= 0;
          VarProst_Pathogen2_02:= 0;
          VarProst_Pathogen2_03:= 0;
          VarProst_Pathogen2_04:= 0;
          VarProst_Pathogen2_05:= 0;
          VarProst_Pathogen2_06:= 0;
          VarProst_Pathogen2_07:= 0;
          VarProst_Pathogen2_08:= 0;
          VarProst_Pathogen2_09:= 0;
          VarProst_Pathogen2_10:= 0;
          VarProst_Pathogen2_11:= 0;
          VarProst_Pathogen2_12:= 0;
          VarProst_Pathogen2_13:= 0;
          VarProst_Pathogen2_14:= 0;
          VarProst_Pathogen2_15:= 0;
          VarProst_Pathogen2_16:= 0;
          VarProst_Pathogen2_17:= 0;

          VarStrProstPathogen1:= '';
          VarStrProstPathogen2:= '';
          VarStrProstExtra1:= '';
          VarStrProstExtra2:= '';

          VarChkProstDrug_01:= 0;
          VarChkProstDrug_02:= 0;
          VarChkProstDrug_03:= 0;
          VarChkProstDrug_04:= 0;
          VarChkProstDrug_05:= 0;
          VarChkProstDrug_06:= 0;
          VarChkProstDrug_07:= 0;
          VarChkProstDrug_08:= 0;
          VarChkProstDrug_09:= 0;
          VarChkProstDrug_10:= 0;
          VarChkProstDrug_11:= 0;
          VarChkProstDrug_12:= 0;
          VarChkProstDrug_13:= 0;
          VarChkProstDrug_14:= 0;
          VarChkProstDrug_15:= 0;
          VarChkProstDrug_16:= 0;
          VarChkProstDrug_17:= 0;

          VarMicUrBactInocDate:= Date;
          VarChkUrBactInocPathogen:= 0;
          VarNumEdtUrBactInoc:= 3;

          VarUrPathogen1_01:= 0;
          VarUrPathogen1_02:= 0;
          VarUrPathogen1_03:= 0;
          VarUrPathogen1_04:= 0;
          VarUrPathogen1_05:= 0;
          VarUrPathogen1_06:= 0;
          VarUrPathogen1_07:= 0;
          VarUrPathogen1_08:= 0;
          VarUrPathogen1_09:= 0;
          VarUrPathogen1_10:= 0;

          VarUrPathogen2_01:= 0;
          VarUrPathogen2_02:= 0;
          VarUrPathogen2_03:= 0;
          VarUrPathogen2_04:= 0;
          VarUrPathogen2_05:= 0;
          VarUrPathogen2_06:= 0;
          VarUrPathogen2_07:= 0;
          VarUrPathogen2_08:= 0;
          VarUrPathogen2_09:= 0;
          VarUrPathogen2_10:= 0;


          VarChkMicBactInocPathogen:= 0;
          VarNumEdtMicBactInoc:= 3;
          VarMicPathogen1_01:= 0;
          VarMicPathogen1_02:= 0;
          VarMicPathogen1_03:= 0;
          VarMicPathogen1_04:= 0;
          VarMicPathogen1_05:= 0;
          VarMicPathogen1_06:= 0;
          VarMicPathogen1_07:= 0;
          VarMicPathogen1_08:= 0;
          VarMicPathogen1_09:= 0;
          VarMicPathogen1_10:= 0;

          VarMicPathogen2_01:= 0;
          VarMicPathogen2_02:= 0;
          VarMicPathogen2_03:= 0;
          VarMicPathogen2_04:= 0;
          VarMicPathogen2_05:= 0;
          VarMicPathogen2_06:= 0;
          VarMicPathogen2_07:= 0;
          VarMicPathogen2_08:= 0;
          VarMicPathogen2_09:= 0;
          VarMicPathogen2_10:= 0;

          VarStrMicUrExtra1:= '';
          VarStrMicUrExtra2:= '';
          VarStrExtra1Ur_Val1:= '';
          VarStrExtra1Ur_Val2:= '';
          VarStrExtra2Ur_Val1:= '';
          VarStrExtra2Ur_Val2:= '';
          VarStrExtra1Mic_Val1:= '';
          VarStrExtra1Mic_Val2:= '';
          VarStrExtra2Mic_Val1:= '';
          VarStrExtra2Mic_Val2:= '';

          VarChkMicUrDrug_01:= 0;
          VarChkMicUrDrug_02:= 0;
          VarChkMicUrDrug_03:= 0;
          VarChkMicUrDrug_04:= 0;
          VarChkMicUrDrug_05:= 0;
          VarChkMicUrDrug_06:= 0;
          VarChkMicUrDrug_07:= 0;
          VarChkMicUrDrug_08:= 0;
          VarChkMicUrDrug_09:= 0;
          VarChkMicUrDrug_10:= 0;

          VarNumEdtUrethBact1:= 3;
          VarNumEdtUrethBact2:= 3;
          VarNumEdtProstBact1:= 3;
          VarNumEdtProstBact2:= 3;

          VarUrinBactInocDate:= Date;
          VarChkUrinPathogen1:= 0;
          VarNumEdtUrin1:= 3;
          VarUrin_Pathogen1_01:= 0;
          VarUrin_Pathogen1_02:= 0;
          VarUrin_Pathogen1_03:= 0;
          VarUrin_Pathogen1_04:= 0;
          VarUrin_Pathogen1_05:= 0;
          VarUrin_Pathogen1_06:= 0;
          VarUrin_Pathogen1_07:= 0;
          VarUrin_Pathogen1_08:= 0;
          VarUrin_Pathogen1_09:= 0;
          VarUrin_Pathogen1_10:= 0;
          VarUrin_Pathogen1_11:= 0;
          VarUrin_Pathogen1_12:= 0;
          VarUrin_Pathogen1_13:= 0;
          VarUrin_Pathogen1_14:= 0;
          VarUrin_Pathogen1_15:= 0;
          VarUrin_Pathogen1_16:= 0;
          VarUrin_Pathogen1_17:= 0;
          VarUrin_Pathogen1_18:= 0;
          VarUrin_Pathogen1_19:= 0;
          VarUrin_Pathogen1_20:= 0;

          VarChkUrinPathogen2:= 0;
          VarNumEdtUrin2:= 3;
          VarUrin_Pathogen2_01:= 0;
          VarUrin_Pathogen2_02:= 0;
          VarUrin_Pathogen2_03:= 0;
          VarUrin_Pathogen2_04:= 0;
          VarUrin_Pathogen2_05:= 0;
          VarUrin_Pathogen2_06:= 0;
          VarUrin_Pathogen2_07:= 0;
          VarUrin_Pathogen2_08:= 0;
          VarUrin_Pathogen2_09:= 0;
          VarUrin_Pathogen2_10:= 0;
          VarUrin_Pathogen2_11:= 0;
          VarUrin_Pathogen2_12:= 0;
          VarUrin_Pathogen2_13:= 0;
          VarUrin_Pathogen2_14:= 0;
          VarUrin_Pathogen2_15:= 0;
          VarUrin_Pathogen2_16:= 0;
          VarUrin_Pathogen2_17:= 0;
          VarUrin_Pathogen2_18:= 0;
          VarUrin_Pathogen2_19:= 0;
          VarUrin_Pathogen2_20:= 0;

          VarChkUrinDrug_01:= 0;
          VarChkUrinDrug_02:= 0;
          VarChkUrinDrug_03:= 0;
          VarChkUrinDrug_04:= 0;
          VarChkUrinDrug_05:= 0;
          VarChkUrinDrug_06:= 0;
          VarChkUrinDrug_07:= 0;
          VarChkUrinDrug_08:= 0;
          VarChkUrinDrug_09:= 0;
          VarChkUrinDrug_10:= 0;
          VarChkUrinDrug_11:= 0;
          VarChkUrinDrug_12:= 0;
          VarChkUrinDrug_13:= 0;
          VarChkUrinDrug_14:= 0;
          VarChkUrinDrug_15:= 0;
          VarChkUrinDrug_16:= 0;
          VarChkUrinDrug_17:= 0;
          VarChkUrinDrug_18:= 0;
          VarChkUrinDrug_19:= 0;
          VarChkUrinDrug_20:= 0;

          VarStrUrinPathogen1:= '';
          VarStrUrinPathogen2:= '';
          VarStrUrinExtra1:= '';
          VarStrUrinExtra2:= '';
        end;
      1: //����������� ������
        begin
          with FrmStatusPat do
            with DMFIB do
            begin
              msLues:= TMemoryStream.Create;
              msBlood:= TMemoryStream.Create;
              msAIDS:= TMemoryStream.Create;
              msSperm:= TMemoryStream.Create;
              msUrethBactInoc:= TMemoryStream.Create;
              msUrinBactInoc:= TMemoryStream.Create;
              msProstBactInoc:= TMemoryStream.Create;
              msMicUrBactInoc:= TMemoryStream.Create;
              msIFA:= TMemoryStream.Create;
              msPCR:= TMemoryStream.Create;
              msOAM:= TMemoryStream.Create;
              msMazUrethra:= TMemoryStream.Create;
              msMazProst:= TMemoryStream.Create;

              try
                //������ ����� �������� Lues-�����
                TBlobField(DSetVisitBlob.FN('LUESTEXT')).SaveToStream(msLues);
                msLues.Position:= 0;
                RichEdtLues.Lines.LoadFromStream(msLues);
                TextLues:= GetRTFText(RichEdtLues);

                //������ ����� ����������� �������� �����
                TBlobField(DSetVisitBlob.FN('BLOODTEXT')).SaveToStream(msBlood);
                msBlood.Position:= 0;
                RichEdtBlood.Lines.LoadFromStream(msBlood);
                TextBlood:= GetRTFText(RichEdtBlood);

                //������ ����� �������� �� ��������, �������, ����
                TBlobField(DSetVisitBlob.FN('AIDSTEXT')).SaveToStream(msAIDS);
                msAIDS.Position:= 0;
                RichEdtAIDS.Lines.LoadFromStream(msAIDS);
                TextAIDS:= GetRTFText(RichEdtAIDS);

                //������ ����� �������� ��������
                TBlobField(DSetVisitBlob.FN('SPERMTEXT')).SaveToStream(msSperm);
                msSperm.Position:= 0;
                RichEdtSperm.Lines.LoadFromStream(msSperm);
                TextSperm:= GetRTFText(RichEdtSperm);

                //������ ����� �������� ���.������ �� ������
                TBlobField(DSetVisitBlob.FN('URETHBACTINOCTEXT')).SaveToStream(msUrethBactInoc);
                msUrethBactInoc.Position:= 0;
                RichEdtUrethBactInoc.Lines.LoadFromStream(msUrethBactInoc);
                TextUrethBactInoc:= GetRTFText(RichEdtUrethBactInoc);

                //������ ����� �������� ���.������ ����
                TBlobField(DSetVisitBlob.FN('URINBACTINOCTEXT')).SaveToStream(msUrinBactInoc);
                msUrinBactInoc.Position:= 0;
                RichEdtUrinBactInoc.Lines.LoadFromStream(msUrinBactInoc);
                TextUrinBactInoc:= GetRTFText(RichEdtUrinBactInoc);

                //������ ����� �������� ���.������ ���
                TBlobField(DSetVisitBlob.FN('PROSTBACTINOCTEXT')).SaveToStream(msProstBactInoc);
                msProstBactInoc.Position:= 0;
                RichEdtProstBactInoc.Lines.LoadFromStream(msProstBactInoc);
                TextProstBactInoc:= GetRTFText(RichEdtProstBactInoc);

                //������ ����� �������� ���.������ �� ���������� � ����������
                TBlobField(DSetVisitBlob.FN('MICURBACTINOCTEXT')).SaveToStream(msMicUrBactInoc);
                msMicUrBactInoc.Position:= 0;
                RichEdtMicUrBactInoc.Lines.LoadFromStream(msMicUrBactInoc);
                TextMicUrBactInoc:= GetRTFText(RichEdtMicUrBactInoc);

                //������ ����� �������� ���
                TBlobField(DSetVisitBlob.FN('IFA')).SaveToStream(msIFA);
                msIFA.Position:= 0;
                RichEditIFA.Lines.LoadFromStream(msIFA);
                TextIFA:= GetRTFText(RichEditIFA);

                //������ ����� �������� ���
                TBlobField(DSetVisitBlob.FN('PCR')).SaveToStream(msPCR);
                msPCR.Position:= 0;
                RichEditPCR.Lines.LoadFromStream(msPCR);
                TextPCR:= GetRTFText(RichEditPCR);

                //������ ����� �������� ����
                TBlobField(DSetVisitBlob.FN('OAM')).SaveToStream(msOAM);
                msOAM.Position:= 0;
                RichEditOAM.Lines.LoadFromStream(msOAM);
                TextOAM:= GetRTFText(RichEditOAM);

                //������ ����� ����� �� ������
                TBlobField(DSetVisitBlob.FN('MazUrethra')).SaveToStream(msMazUrethra);
                msMazUrethra.Position:= 0;
                RichEditMazUr.Lines.LoadFromStream(msMazUrethra);
                TextMazUr:= GetRTFText(RichEditMazUr);

                //������ ����� ����� ���� ��������
                TBlobField(DSetVisitBlob.FN('MazProst')).SaveToStream(msMazProst);
                msMazProst.Position:= 0;
                RichEditMazProst.Lines.LoadFromStream(msMazProst);
                TextMazProst:= GetRTFText(RichEditMazProst);

              finally
                msLues.Free;
                msBlood.Free;
                msAIDS.Free;
                msSperm.Free;
                msUrethBactInoc.Free;
                msUrinBactInoc.Free;
                msProstBactInoc.Free;
                msMicUrBactInoc.Free;
                msIFA.Free;
                msPCR.Free;
                msOAM.Free;
                msMazUrethra.Free;
                msMazProst.Free;
              end;{try..finally}

              with DSetVisitLabor do
                begin
                  //------- ����������� �������� ���-����������
                  VarChkAIDS:=FieldByName('ChkAIDS').AsInteger;
                  VarDateAIDS:= FieldByName('DateAIDS').AsDateTime;
                  VarAIDS:= FieldByName('AIDS').AsInteger;

                  VarChkHBsAg:= FieldByName('ChkHBsAg').AsInteger;
                  VarHBsAg:= FieldByName('HBsAg').AsInteger;

                  VarChkRW:= FieldByName('ChkRW').AsInteger;
                  VarRW:= FieldByName('RW').AsInteger;

                  VarChkHBeAg:= FN('ChkHBeAg').AsInteger;
                  VarChkAntiHBcSum:= FN('ChkAntiHBcSum').AsInteger;
                  VarChkAntiHBc_IgM:= FN('ChkAntiHBc_IgM').AsInteger;
                  VarChkAntiHBe_IgG:= FN('ChkAntiHBe_IgG').AsInteger;
                  VarChkAntiHBsNumer:= FN('ChkAntiHBsNumer').AsInteger;
                  VarChkAntiHCVSum:= FN('ChkAntiHCVSum').AsInteger;
                  VarChkAntiHCV_Core_IgM:= FN('ChkAntiHCV_Core_IgM').AsInteger;
                  VarChkAntiHDVSum:= FN('ChkAntiHDVSum').AsInteger;
                  VarChkAntiHCVSumCore:= FN('ChkAntiHCVSumCore').AsInteger;
                  VarChkAntiHCVSumNS3:= FN('ChkAntiHCVSumNS3').AsInteger;
                  VarChkAntiHCVSumNS4:= FN('ChkAntiHCVSumNS4').AsInteger;
                  VarChkAntiHCVSumNS5:= FN('ChkAntiHCVSumNS5').AsInteger;
                  VarChkSumAtLues:= FN('ChkSumAtLues').AsInteger;

                  VarHBeAg:= FN('HBeAg').AsInteger;
                  VarAntiHBcSum:= FN('AntiHBcSum').AsInteger;
                  VarAntiHBc_IgM:= FN('AntiHBc_IgM').AsInteger;
                  VarAntiHBe_IgG:= FN('AntiHBe_IgG').AsInteger;
                  VarAntiHBsNumerStr:= Trim(FN('AntiHBsNumerStr').AsString);
                  VarAntiHCVSum:= FN('AntiHCVSum').AsInteger;
                  VarAntiHCV_Core_IgM:= FN('AntiHCV_Core_IgM').AsInteger;
                  VarAntiHDVSum:= FN('AntiHDVSum').AsInteger;
                  VarAntiHCVSumCore:= FN('AntiHCVSumCore').AsInteger;
                  VarAntiHCVSumNS3:= FN('AntiHCVSumNS3').AsInteger;
                  VarAntiHCVSumNS4:= FN('AntiHCVSumNS4').AsInteger;
                  VarAntiHCVSumNS5:= FN('AntiHCVSumNS5').AsInteger;
                  VarSumAtLues:= FN('SumAtLues').AsInteger;

                  VarPCRDate:= FieldByName('PCRDate').AsDateTime;
                  VarGnAn:= FieldByName('GnAn').AsInteger;
                  VarGnRez:= FieldByName('GnRez').AsInteger;

                  VarTrAn:= FieldByName('TrAn').AsInteger;
                  VarTrRez:= FieldByName('TrRez').AsInteger;

                  VarChlamAn:= FieldByName('ChlamAn').AsInteger;
                  VarChlamRez:= FieldByName('ChlamRez').AsInteger;

                  VarUrAn:= FieldByName('UrAn').AsInteger;
                  VarUrRez:= FieldByName('UrRez').AsInteger;

                  VarMicHomAn:= FieldByName('MicHomAn').AsInteger;
                  VarMicHomRez:= FieldByName('MicHomRez').AsInteger;

                  VarMicGenAn:= FieldByName('MicGenAn').AsInteger;
                  VarMicGenRez:= FieldByName('MicGenRez').AsInteger;

                  VarGardAn:= FieldByName('GardAn').AsInteger;
                  VarGardRez:= FieldByName('GardRez').AsInteger;

                  VarCMVAn:= FieldByName('CMVAn').AsInteger;
                  VarCMVRez:= FieldByName('CMVRez').AsInteger;

                  VarVHSAn:= FieldByName('VHSAn').AsInteger;
                  VarVHSRez:= FieldByName('VHSRez').AsInteger;

                  VarPHVAn:= FieldByName('PHVAn').AsInteger;
                  VarPHVRez:= FieldByName('PHVRez').AsInteger;

                  VarPHVAnHigh:= FieldByName('PHVANHIGH').AsInteger;
                  VarPHVRezHigh:= FieldByName('PHVREZHIGH').AsInteger;

                  VarTubAn:= FieldByName('TubAn').AsInteger;
                  VarTubRez:= FieldByName('TubRez').AsInteger;

                  VarCandAn:= FieldByName('CandAn').AsInteger;
                  VarCandRez:= FieldByName('CandRez').AsInteger;

              //------- ������ ��������� � �� �������� ���������� �������� ���
                  VarIFADate:= FieldByName('IFADate').AsDateTime;

                  //������� ��������� ������� "����������" �������
                  VarIFAChlIgA:= FieldByName('IFAChlIgA').AsInteger;
                  VarIFAChlIgG:= FieldByName('IFAChlIgG').AsInteger;
                  VarIFAChlIgGb:= FieldByName('IFAChlIgGb').AsInteger;

                  VarIFAMicIgG:= FieldByName('IFAMicIgG').AsInteger;
                  VarIFAMicIgA:= FieldByName('IFAMicIgA').AsInteger;

                  VarIFAUrIgG:= FieldByName('IFAUrIgG').AsInteger;
                  VarIFAUrIgA:= FieldByName('IFAUrIgA').AsInteger;

                  VarIFATrIgG:= FieldByName('IFATrIgG').AsInteger;

                  VarIFACMVIgM:= FieldByName('IFACMVIgM').AsInteger;
                  VarIFACMVIgG:= FieldByName('IFACMVIgG').AsInteger;
                  VarIFACMVIgGavid:= FieldByName('IFACMVIgGavid').AsInteger;

                  VarIFAHerpIgM:= FieldByName('IFAHerpIgM').AsInteger;
                  VarIFAHerpIgG:= FieldByName('IFAHerpIgG').AsInteger;
                  VarIFAHerpIgGavid:= FieldByName('IFAHerpIgGavid').AsInteger;

                  VarIFACandIgG:= FieldByName('IFACandIgG').AsInteger;

                //������ ItemIndex ��������������� �����������

                  VarNumIFAChlIgA:= FieldByName('NumIFAChlIgA').AsInteger;
                  VarNumIFAChlIgG:= FieldByName('NumIFAChlIgG').AsInteger;
                  VarNumIFAChlIgGb:= FieldByName('NumIFAChlIgGb').AsInteger;

                  VarNumIFAMicIgG:= FieldByName('NumIFAMicIgG').AsInteger;
                  VarNumIFAMicIgA:= FieldByName('NumIFAMicIgA').AsInteger;

                  VarNumIFAUrIgG:= FieldByName('NumIFAUrIgG').AsInteger;
                  VarNumIFAUrIgA:= FieldByName('NumIFAUrIgA').AsInteger;

                  VarNumIFATrIgG:= FieldByName('NumIFATrIgG').AsInteger;

                  VarNumIFACMVIgM:= FieldByName('NumIFACMVIgM').AsInteger;
                  VarNumIFACMVIgG:= FieldByName('NumIFACMVIgG').AsInteger;
                  VarNumIFACMVIgGavid:= FieldByName('NumIFACMVIgGavid').AsInteger;

                  VarNumIFAHerpIgM:= FieldByName('NumIFAHerpIgM').AsInteger;
                  VarNumIFAHerpIgG:= FieldByName('NumIFAHerpIgG').AsInteger;
                  VarNumIFAHerpIgGavid:= FieldByName('NumIFAHerpIgGavid').AsInteger;

                  VarNumIFACandIgG:= FieldByName('NumIFACandIgG').AsInteger;

              //------- ������ ��������� � �� �������� ���������� �������� ����
                  VarOAMDate:= FieldByName('OAMDate').AsDateTime;
                  VarOAMColor:= FieldByName('OAMColor').AsInteger;
                  VarOAMTransparent:= FieldByName('OAMTransparent').AsInteger;
                  VarOAMDensity:= FieldByName('OAMDensity').AsString;
                  VarOAMSugar:= FieldByName('OAMSugar').AsInteger;
                  VarOAMProtein:= FieldByName('OAMProtein').AsInteger;
                  VarOAMLeu:= FieldByName('OAMLeu').AsString;
                  VarOAMEr:= FieldByName('OAMEr').AsString;
                  VarOAMEpit:= FieldByName('OAMEpit').AsString;
                  VarOAMSalt:= FieldByName('OAMSalt').AsString;
                  VarOAMFlora:= FieldByName('OAMFlora').AsString;
                  VarOAMVolume:= FieldByName('OAMVolume').AsString;
                  VarOAMSmell:= FieldByName('OAMSmell').AsString;
                  VarOAMResiduum:= FieldByName('OAMResiduum').AsString;
                  VarOAM_pH:= FieldByName('OAM_pH').AsString;
                  VarOAMAceticAcid:= FieldByName('OAMAceticAcid').AsString;
                  VarOAMBilifuscin:= FieldByName('OAMBilifuscin').AsString;
                  VarOAMAceton:= FieldByName('OAMAceton').AsString;
                  VarOAMUrobilin:= FieldByName('OAMUrobilin').AsString;
                  VarOAMCylindr:= FieldByName('OAMCylindr').AsString;
                  VarOAMMucos:= FieldByName('OAMMucos').AsString;

                  VarNechiporDate:= FieldByName('NechiporDate').AsDateTime;
                  VarNechiporLeu:= FieldByName('NechiporLeu').AsString;
                  VarNechiporEr:= FieldByName('NechiporEr').AsString;
                  VarNechiporFlora:= FieldByName('NechiporFlora').AsString;

              //------- ������ ��������� � �� �������� ���������� ����� �� ������
                  VarMazUrethraDate:= FieldByName('MazUrethraDate').AsDateTime;
                  VarMazUrLeu:= FieldByName('MazUrLeu').AsString;
                  VarMazUrEr:= FieldByName('MazUrEr').AsString;
                  VarMazUrGn:= FieldByName('MazUrGn').AsInteger;
                  VarMazUrTr:= FieldByName('MazUrTr').AsInteger;
                  VarMazUrFlora:= FieldByName('MazUrFlora').AsInteger;
                  VarMazUrEpit:= FieldByName('MazUrEpit').AsString;
                  VarMazUrKeyCell:= FieldByName('MazUrKeyCell').AsInteger;
                  VarMazUrCand:= FieldByName('MazUrCand').AsInteger;
                  VarMazUrMucos:= FieldByName('MazUrMucos').AsString;

              //------- ������ ��������� � �� �������� ���������� ����� �� ����� �����
                  VarMazCvxLeu:= FieldByName('MazCvxLeu').AsString;
                  VarMazCvxEr:= FieldByName('MazCvxEr').AsString;
                  VarMazCvxGn:= FieldByName('MazCvxGn').AsInteger;
                  VarMazCvxTr:= FieldByName('MazCvxTr').AsInteger;
                  VarMazCvxFlora:= FieldByName('MazCvxFlora').AsInteger;
                  VarMazCvxEpit:= FieldByName('MazCvxEpit').AsString;
                  VarMazCvxKeyCell:= FieldByName('MazCvxKeyCell').AsInteger;
                  VarMazCvxCand:= FieldByName('MazCvxCand').AsInteger;
                  VarMazCvxMucos:= FieldByName('MazCvxMucos').AsString;

              //------- ������ ��������� � �� �������� ���������� ����� �� ���������
                  VarMazVgnLeu:= FieldByName('MazVgnLeu').AsString;
                  VarMazVgnEr:= FieldByName('MazVgnEr').AsString;
                  VarMazVgnGn:= FieldByName('MazVgnGn').AsInteger;
                  VarMazVgnTr:= FieldByName('MazVgnTr').AsInteger;
                  VarMazVgnFlora:= FieldByName('MazVgnFlora').AsInteger;
                  VarMazVgnEpit:= FieldByName('MazVgnEpit').AsString;
                  VarMazVgnKeyCell:= FieldByName('MazVgnKeyCell').AsInteger;
                  VarMazVgnCand:= FieldByName('MazVgnCand').AsInteger;
                  VarMazVgnMucos:= FieldByName('MazVgnMucos').AsString;

              //------- ������ ��������� � �� �������� ���������� ����� �� ������ �����
                  VarMazRectLeu:= FieldByName('MazRectLeu').AsString;
                  VarMazRectEr:= FieldByName('MazRectEr').AsString;
                  VarMazRectGn:= FieldByName('MazRectGn').AsInteger;
                  VarMazRectTr:= FieldByName('MazRectTr').AsInteger;
                  VarMazRectFlora:= FieldByName('MazRectFlora').AsInteger;
                  VarMazRectEpit:= FieldByName('MazRectEpit').AsString;
                  VarMazRectKeyCell:= FieldByName('MazRectKeyCell').AsInteger;
                  VarMazRectCand:= FieldByName('MazRectCand').AsInteger;
                  VarMazRectMucos:= FieldByName('MazRectMucos').AsString;

              //------- ������ ��������� � �� �������� ���������� ����� ���� ��������
                  VarMazProstDate:= FieldByName('MazProstDate').AsDateTime;
                  VarMazProstLeu:= FieldByName('MazProstLeu').AsString;
                  VarMazProstEr:= FieldByName('MazProstEr').AsString;
                  VarMazProstGn:= FieldByName('MazProstGn').AsInteger;
                  VarMazProstTr:= FieldByName('MazProstTr').AsInteger;
                  VarMazProstFlora:= FieldByName('MazProstFlora').AsInteger;
                  VarMazProstLZ:= FieldByName('MazProstLZ').AsInteger;
                  VarMazProstBekht:= FieldByName('MazProstBekht').AsInteger;
                  VarMazProstSperm:= FieldByName('MazProstSperm').AsInteger;
                  VarMazProstEpit:= FieldByName('MazProstEpit').AsString;
                  VarMazProstMFag:= FieldByName('MazProstMFag').AsString;
                  VarMazProstAmil:= FieldByName('MazProstAmil').AsString;
                  VarMazProst_pH:= FieldByName('MazProst_pH').AsString;

                //------- ����������� ������� �������� ���������� ������������

                  VarSpermDate:= FieldByName('SpermDate').AsDateTime;
                  VarSpermVolume:= Trim(FieldByName('SpermVolume').AsString);
                  VarSpermColor:= Trim(FieldByName('SpermColor').AsString);
                  VarSperm_pH:= Trim(FieldByName('Sperm_pH').AsString);
                  VarSpermViscosity:= Trim(FieldByName('SpermViscosity').AsString);
                  VarSpermFluid:= Trim(FieldByName('SpermFluid').AsString);
                  VarSpermLeu:= Trim(FieldByName('SpermLeu').AsString);
                  VarSpermEr:= Trim(FieldByName('SpermEr').AsString);
                  VarSpermLipoidSoma:= Trim(FieldByName('SpermLipoidSoma').AsString);
                  VarSpermAgglut:= Trim(FieldByName('SpermAgglut').AsString);
                  VarSpermAggreg:= Trim(FieldByName('SpermAggreg').AsString);
                  VarSpermEpitel:= Trim(FieldByName('SpermEpitel').AsString);
                  VarSpermAbstinence:= Trim(FieldByName('SpermAbstinence').AsString);
                  VarSpermConcentr:= Trim(FieldByName('SpermConcentr').AsString);
                  VarSpermTotal:= Trim(FieldByName('SpermTotal').AsString);
                  VarSpermFastForwMove:= Trim(FieldByName('SpermFastForwMove').AsString);
                  VarSpermSlowForwMove:= Trim(FieldByName('SpermSlowForwMove').AsString);
                  VarSpermRollMove:= Trim(FieldByName('SpermRollMove').AsString);
                  VarSpermStaticMove:= Trim(FieldByName('SpermStaticMove').AsString);
                  VarSpermReport:= FieldByName('SpermReport').AsInteger;

                  VarKrugDate:= FieldByName('KrugDate').AsDateTime;
                  VarKrugNorma:= Trim(FieldByName('KrugNorma').AsString);
                  VarKrugCapCoarse:= Trim(FieldByName('KrugCapCoarse').AsString);
                  VarKrugCapSlight:= Trim(FieldByName('KrugCapSlight').AsString);
                  VarKrugCapSpecif:= Trim(FieldByName('KrugCapSpecif').AsString);
                  VarKrugCollumCoarse:= Trim(FieldByName('KrugCollumCoarse').AsString);
                  VarKrugCollumSlight:= Trim(FieldByName('KrugCollumSlight').AsString);
                  VarKrugBrush:= Trim(FieldByName('KrugBrush').AsString);
                  VarKrugSpermCell:= Trim(FieldByName('KrugSpermCell').AsString);
                  VarKrugYoungCell:= Trim(FieldByName('KrugYoungCell').AsString);
                  VarKrugMorphIndex:= Trim(FieldByName('KrugMorphIndex').AsString);
                  VarKrugNotice:= Trim(FieldByName('KrugNotice').AsString);

                  VarSpermBiochemicDate:= FieldByName('SpermBiochemicDate').AsDateTime;
                  VarSpermBiochemicFruct:= Trim(FieldByName('SpermBiochemicFruct').AsString);
                  VarSpermBiochemicGlyc:= Trim(FieldByName('SpermBiochemicGlyc').AsString);

                  VarMARDate:= FieldByName('MARDate').AsDateTime;
                  VarMAR:= Trim(FieldByName('MAR').AsString);

                  VarSpermVitalDate:= FieldByName('SpermVitalDate').AsDateTime;
                  VarSpermVitalTest:= Trim(FieldByName('SpermVitalTest').AsString);
                  VarSpermVitalHOS:= Trim(FieldByName('SpermVitalHOS').AsString);

                  //������ ����� �������, ������� � ��������� ��� ��������� �� ����� � ��������� �����
                  VarPgCtrlBloodHorm:= FN('PGCTRL_BLOODHORM_INDEX').AsInteger;

                  //------- ����������� ������� �������� ���������� ������ ������� �����

                  VarOAKDate:= FieldByName('OAKDate').AsDateTime;
                  VarOAKHb:= Trim(FieldByName('OAKHb').AsString);
                  VarOAKEr:= Trim(FieldByName('OAKEr').AsString);
                  VarOAKColourIndex:= Trim(FieldByName('OAKColourIndex').AsString);
                  VarOAKTromb:= Trim(FieldByName('OAKTromb').AsString);
                  VarOAKLeu:= Trim(FieldByName('OAKLeu').AsString);
                  VarOAKLeuYoung:= Trim(FieldByName('OAKLeuYoung').AsString);
                  VarOAKLeuStab:= Trim(FieldByName('OAKLeuStab').AsString);
                  VarOAKLeuSegment:= Trim(FieldByName('OAKLeuSegment').AsString);
                  VarOAKLymph:= Trim(FieldByName('OAKLymph').AsString);
                  VarOAKMonocyte:= Trim(FieldByName('OAKMonocyte').AsString);
                  VarOAKEosinophil:= Trim(FieldByName('OAKEosinophil').AsString);
                  VarOAKBasophil:= Trim(FieldByName('OAKBasophil').AsString);
                  VarOAKSOE:= Trim(FieldByName('OAKSOE').AsString);
                  VarOAKCoagul:= Trim(FieldByName('OAKCoagul').AsString);
                  VarOAKHemorrhagTime:= Trim(FieldByName('OAKHemorrhagTime').AsString);
                  VarOAKReticulocyte:= Trim(FieldByName('OAKReticulocyte').AsString);
                  VarOAKGlucosaCapill:= Trim(FieldByName('OAKGlucosaCapill').AsString);
                  VarOAKEosinSliz:= Trim(FieldByName('OAKEosinSliz').AsString);
                  VarOAKHmtc:= Trim(FieldByName('OAKHmtc').AsString);

                  //------- ����������� ������� �������� ���������� �������� �����
                  VarBloodBioDate:= FieldByName('BloodBioDate').AsDateTime;
                  VarBloodBioALT:= Trim(FieldByName('BloodBioALT').AsString);
                  VarBloodBioAST:= Trim(FieldByName('BloodBioAST').AsString);
                  VarBloodBioProtein:= Trim(FieldByName('BloodBioProtein').AsString);
                  VarBloodBioBiTotal:= Trim(FieldByName('BloodBioBiTotal').AsString);
                  VarBloodBioBiDirect:= Trim(FieldByName('BloodBioBiDirect').AsString);
                  VarBloodBioCholest:= Trim(FieldByName('BloodBioCholest').AsString);
                  VarBloodBioSodiumFosf:= Trim(FieldByName('BloodBioSodiumFosf').AsString);
                  VarBloodBioGGT:= Trim(FieldByName('BloodBioGGT').AsString);
                  VarBloodBioLPVP:= Trim(FieldByName('BloodBioLPVP').AsString);
                  VarBloodBioLPNP:= Trim(FieldByName('BloodBioLPNP').AsString);
                  VarBloodBioMochevina:= Trim(FieldByName('BloodBioMochevina').AsString);
                  VarBloodBioUricAcid:= Trim(FieldByName('BloodBioUricAcid').AsString);
                  VarBloodBioCreatinin:= Trim(FieldByName('BloodBioCreatinin').AsString);
                  VarBloodBioAlbumin:= Trim(FieldByName('BloodBioAlbumin').AsString);
                  VarBloodBioGlucosa:= Trim(FieldByName('BloodBioGlucosa').AsString);
                  VarBloodBioTriglyc:= Trim(FieldByName('BloodBioTriglyc').AsString);
                  VarBloodBioCalcium:= Trim(FieldByName('BloodBioCalcium').AsString);
                  VarBloodBioPhosphor:= Trim(FieldByName('BloodBioPhosphor').AsString);
                  VarBloodBioFerrum:= Trim(FieldByName('BloodBioFerrum').AsString);
                  VarBloodBioOZhSS:= Trim(FieldByName('BloodBioOZhSS').AsString);

                  //------- ����������� �������� "������������" ����������
                  VarHormSterDate:= FieldByName('HormSterDate').AsDateTime;
                  VarHormLG:= Trim(FieldByName('HormLG').AsString);
                  VarHormFSG:= Trim(FieldByName('HormFSG').AsString);
                  VarHormProlactin:= Trim(FieldByName('HormProlactin').AsString);
                  VarHormEstradiol:= Trim(FieldByName('HormEstradiol').AsString);
                  VarHormProgest:= Trim(FieldByName('HormProgest').AsString);
                  VarHormTestosterTotal:= Trim(FieldByName('HormTestosterTotal').AsString);
                  VarHormDGEAS:= Trim(FieldByName('HormDGEAS').AsString);
                  VarHormProgest_17OH:= Trim(FieldByName('HormProgest_17OH').AsString);
                  VarHormTestosterFree:= Trim(FieldByName('HormTestosterFree').AsString);
                  VarHormSSSG:= Trim(FieldByName('HormSSSG').AsString);

                  VarHormTireoidDate:= FieldByName('HormTireoidDate').AsDateTime;
                  VarHormT4_Total:= Trim(FieldByName('HormT4_Total').AsString);
                  VarHormT4_Free:= Trim(FieldByName('HormT4_Free').AsString);
                  VarHormT3_Total:= Trim(FieldByName('HormT3_Total').AsString);
                  VarHormT3_Free:= Trim(FieldByName('HormT3_Free').AsString);
                  VarHormTTG:= Trim(FieldByName('HormTTG').AsString);
                  VarHormKortizol:= Trim(FieldByName('HormKortizol').AsString);
                  VarHormTireoglob_At:= Trim(FieldByName('HormTireoglob_At').AsString);
                  VarHormTireoPerox_At:= Trim(FieldByName('HormTireoPerox_At').AsString);
                  VarHormInhibin_B:= Trim(FieldByName('HormInhibin_B').AsString);

                  VarOnkomarkDate:= FN('ONKOMARKDATE').AsDateTime;
                  VarPSA_Total:= Trim(FN('PSA_TOTAL').AsString);
                  VarPSA_Free:= Trim(FN('PSA_FREE').AsString);
                  VarPSA_Ratio:= Trim(FN('PSA_RATIO').AsString);

                  //------- ����������� �������� "�������������" ����������
                  VarBloodIonesDate:= FN('BLOODIONESDATE').AsDateTime;
                  VarIones_Na:= Trim(FN('IONES_NA').AsString);
                  VarIones_K:= Trim(FN('IONES_K').AsString);
                  VarIones_Cl:= Trim(FN('IONES_CL').AsString);
                  VarIones_Ca:= Trim(FN('IONES_CA').AsString);
                  VarIonesBlood_pH:= Trim(FN('IONESBLOOD_PH').AsString);

                  //��������� ���������� ���.�������

                  VarUrethBactInocDate:= FN('URETHBACTINOCDATE').AsDateTime;

                  VarChkUrethPathogen1:= FN('CHKURETHPATHOGEN1').AsInteger;
                  VarUreth_Pathogen1_01:= FN('URETH_PATHOGEN1_01').AsInteger;
                  VarUreth_Pathogen1_02:= FN('URETH_PATHOGEN1_02').AsInteger;
                  VarUreth_Pathogen1_03:= FN('URETH_PATHOGEN1_03').AsInteger;
                  VarUreth_Pathogen1_04:= FN('URETH_PATHOGEN1_04').AsInteger;
                  VarUreth_Pathogen1_05:= FN('URETH_PATHOGEN1_05').AsInteger;
                  VarUreth_Pathogen1_06:= FN('URETH_PATHOGEN1_06').AsInteger;
                  VarUreth_Pathogen1_07:= FN('URETH_PATHOGEN1_07').AsInteger;
                  VarUreth_Pathogen1_08:= FN('URETH_PATHOGEN1_08').AsInteger;
                  VarUreth_Pathogen1_09:= FN('URETH_PATHOGEN1_09').AsInteger;
                  VarUreth_Pathogen1_10:= FN('URETH_PATHOGEN1_10').AsInteger;
                  VarUreth_Pathogen1_11:= FN('URETH_PATHOGEN1_11').AsInteger;
                  VarUreth_Pathogen1_12:= FN('URETH_PATHOGEN1_12').AsInteger;
                  VarUreth_Pathogen1_13:= FN('URETH_PATHOGEN1_13').AsInteger;
                  VarUreth_Pathogen1_14:= FN('URETH_PATHOGEN1_14').AsInteger;
                  VarUreth_Pathogen1_15:= FN('URETH_PATHOGEN1_15').AsInteger;
                  VarUreth_Pathogen1_16:= FN('URETH_PATHOGEN1_16').AsInteger;

                  VarChkUrethPathogen2:= FN('CHKURETHPATHOGEN2').AsInteger;
                  VarUreth_Pathogen2_01:= FN('URETH_PATHOGEN2_01').AsInteger;
                  VarUreth_Pathogen2_02:= FN('URETH_PATHOGEN2_02').AsInteger;
                  VarUreth_Pathogen2_03:= FN('URETH_PATHOGEN2_03').AsInteger;
                  VarUreth_Pathogen2_04:= FN('URETH_PATHOGEN2_04').AsInteger;
                  VarUreth_Pathogen2_05:= FN('URETH_PATHOGEN2_05').AsInteger;
                  VarUreth_Pathogen2_06:= FN('URETH_PATHOGEN2_06').AsInteger;
                  VarUreth_Pathogen2_07:= FN('URETH_PATHOGEN2_07').AsInteger;
                  VarUreth_Pathogen2_08:= FN('URETH_PATHOGEN2_08').AsInteger;
                  VarUreth_Pathogen2_09:= FN('URETH_PATHOGEN2_09').AsInteger;
                  VarUreth_Pathogen2_10:= FN('URETH_PATHOGEN2_10').AsInteger;
                  VarUreth_Pathogen2_11:= FN('URETH_PATHOGEN2_11').AsInteger;
                  VarUreth_Pathogen2_12:= FN('URETH_PATHOGEN2_12').AsInteger;
                  VarUreth_Pathogen2_13:= FN('URETH_PATHOGEN2_13').AsInteger;
                  VarUreth_Pathogen2_14:= FN('URETH_PATHOGEN2_14').AsInteger;
                  VarUreth_Pathogen2_15:= FN('URETH_PATHOGEN2_15').AsInteger;
                  VarUreth_Pathogen2_16:= FN('URETH_PATHOGEN2_16').AsInteger;

                  VarStrUrethPathogen1:= Trim(FN('STRURETHPATHOGEN1').AsString);
                  VarStrUrethPathogen2:= Trim(FN('STRURETHPATHOGEN2').AsString);
                  VarStrUrethExtra1:= Trim(FN('STRURETHEXTRA1').AsString);
                  VarStrUrethExtra2:= Trim(FN('STRURETHEXTRA2').AsString);

                  VarChkUrethDrug_01:= FN('CHKURETHDRUG_01').AsInteger;
                  VarChkUrethDrug_02:= FN('CHKURETHDRUG_02').AsInteger;
                  VarChkUrethDrug_03:= FN('CHKURETHDRUG_03').AsInteger;
                  VarChkUrethDrug_04:= FN('CHKURETHDRUG_04').AsInteger;
                  VarChkUrethDrug_05:= FN('CHKURETHDRUG_05').AsInteger;
                  VarChkUrethDrug_06:= FN('CHKURETHDRUG_06').AsInteger;
                  VarChkUrethDrug_07:= FN('CHKURETHDRUG_07').AsInteger;
                  VarChkUrethDrug_08:= FN('CHKURETHDRUG_08').AsInteger;
                  VarChkUrethDrug_09:= FN('CHKURETHDRUG_09').AsInteger;
                  VarChkUrethDrug_10:= FN('CHKURETHDRUG_10').AsInteger;
                  VarChkUrethDrug_11:= FN('CHKURETHDRUG_11').AsInteger;
                  VarChkUrethDrug_12:= FN('CHKURETHDRUG_12').AsInteger;
                  VarChkUrethDrug_13:= FN('CHKURETHDRUG_13').AsInteger;
                  VarChkUrethDrug_14:= FN('CHKURETHDRUG_14').AsInteger;
                  VarChkUrethDrug_15:= FN('CHKURETHDRUG_15').AsInteger;
                  VarChkUrethDrug_16:= FN('CHKURETHDRUG_16').AsInteger;

                  VarProstBactInocDate:= FN('PROSTBACTINOCDATE').AsDateTime;

                  VarChkProstPathogen1:= FN('CHKPROSTPATHOGEN1').AsInteger;
                  VarProst_Pathogen1_01:= FN('PROST_PATHOGEN1_01').AsInteger;
                  VarProst_Pathogen1_02:= FN('PROST_PATHOGEN1_02').AsInteger;
                  VarProst_Pathogen1_03:= FN('PROST_PATHOGEN1_03').AsInteger;
                  VarProst_Pathogen1_04:= FN('PROST_PATHOGEN1_04').AsInteger;
                  VarProst_Pathogen1_05:= FN('PROST_PATHOGEN1_05').AsInteger;
                  VarProst_Pathogen1_06:= FN('PROST_PATHOGEN1_06').AsInteger;
                  VarProst_Pathogen1_07:= FN('PROST_PATHOGEN1_07').AsInteger;
                  VarProst_Pathogen1_08:= FN('PROST_PATHOGEN1_08').AsInteger;
                  VarProst_Pathogen1_09:= FN('PROST_PATHOGEN1_09').AsInteger;
                  VarProst_Pathogen1_10:= FN('PROST_PATHOGEN1_10').AsInteger;
                  VarProst_Pathogen1_11:= FN('PROST_PATHOGEN1_11').AsInteger;
                  VarProst_Pathogen1_12:= FN('PROST_PATHOGEN1_12').AsInteger;
                  VarProst_Pathogen1_13:= FN('PROST_PATHOGEN1_13').AsInteger;
                  VarProst_Pathogen1_14:= FN('PROST_PATHOGEN1_14').AsInteger;
                  VarProst_Pathogen1_15:= FN('PROST_PATHOGEN1_15').AsInteger;
                  VarProst_Pathogen1_16:= FN('PROST_PATHOGEN1_16').AsInteger;
                  VarProst_Pathogen1_17:= FN('PROST_PATHOGEN1_17').AsInteger;

                  VarChkProstPathogen2:= FN('CHKPROSTPATHOGEN2').AsInteger;
                  VarProst_Pathogen2_01:= FN('PROST_PATHOGEN2_01').AsInteger;
                  VarProst_Pathogen2_02:= FN('PROST_PATHOGEN2_02').AsInteger;
                  VarProst_Pathogen2_03:= FN('PROST_PATHOGEN2_03').AsInteger;
                  VarProst_Pathogen2_04:= FN('PROST_PATHOGEN2_04').AsInteger;
                  VarProst_Pathogen2_05:= FN('PROST_PATHOGEN2_05').AsInteger;
                  VarProst_Pathogen2_06:= FN('PROST_PATHOGEN2_06').AsInteger;
                  VarProst_Pathogen2_07:= FN('PROST_PATHOGEN2_07').AsInteger;
                  VarProst_Pathogen2_08:= FN('PROST_PATHOGEN2_08').AsInteger;
                  VarProst_Pathogen2_09:= FN('PROST_PATHOGEN2_09').AsInteger;
                  VarProst_Pathogen2_10:= FN('PROST_PATHOGEN2_10').AsInteger;
                  VarProst_Pathogen2_11:= FN('PROST_PATHOGEN2_11').AsInteger;
                  VarProst_Pathogen2_12:= FN('PROST_PATHOGEN2_12').AsInteger;
                  VarProst_Pathogen2_13:= FN('PROST_PATHOGEN2_13').AsInteger;
                  VarProst_Pathogen2_14:= FN('PROST_PATHOGEN2_14').AsInteger;
                  VarProst_Pathogen2_15:= FN('PROST_PATHOGEN2_15').AsInteger;
                  VarProst_Pathogen2_16:= FN('PROST_PATHOGEN2_16').AsInteger;
                  VarProst_Pathogen2_17:= FN('PROST_PATHOGEN2_17').AsInteger;

                  VarStrProstPathogen1:= Trim(FN('STRPROSTPATHOGEN1').AsString);
                  VarStrProstPathogen2:= Trim(FN('STRPROSTPATHOGEN2').AsString);
                  VarStrProstExtra1:= Trim(FN('STRPROSTEXTRA1').AsString);
                  VarStrProstExtra2:= Trim(FN('STRPROSTEXTRA2').AsString);

                  VarChkProstDrug_01:= FN('CHKPROSTDRUG_01').AsInteger;
                  VarChkProstDrug_02:= FN('CHKPROSTDRUG_02').AsInteger;
                  VarChkProstDrug_03:= FN('CHKPROSTDRUG_03').AsInteger;
                  VarChkProstDrug_04:= FN('CHKPROSTDRUG_04').AsInteger;
                  VarChkProstDrug_05:= FN('CHKPROSTDRUG_05').AsInteger;
                  VarChkProstDrug_06:= FN('CHKPROSTDRUG_06').AsInteger;
                  VarChkProstDrug_07:= FN('CHKPROSTDRUG_07').AsInteger;
                  VarChkProstDrug_08:= FN('CHKPROSTDRUG_08').AsInteger;
                  VarChkProstDrug_09:= FN('CHKPROSTDRUG_09').AsInteger;
                  VarChkProstDrug_10:= FN('CHKPROSTDRUG_10').AsInteger;
                  VarChkProstDrug_11:= FN('CHKPROSTDRUG_11').AsInteger;
                  VarChkProstDrug_12:= FN('CHKPROSTDRUG_12').AsInteger;
                  VarChkProstDrug_13:= FN('CHKPROSTDRUG_13').AsInteger;
                  VarChkProstDrug_14:= FN('CHKPROSTDRUG_14').AsInteger;
                  VarChkProstDrug_15:= FN('CHKPROSTDRUG_15').AsInteger;
                  VarChkProstDrug_16:= FN('CHKPROSTDRUG_16').AsInteger;
                  VarChkProstDrug_17:= FN('CHKPROSTDRUG_17').AsInteger;

                  VarMicUrBactInocDate:= FN('MICURBACTINOCDATE').AsDateTime;

                  VarChkUrBactInocPathogen:= FN('CHKURBACTINOCPATHOGEN').AsInteger;
                  VarNumEdtUrBactInoc:= FN('NUMEDTURBACTINOC').AsInteger;
                  VarUrPathogen1_01:= FN('URPATHOGEN1_01').AsInteger;
                  VarUrPathogen1_02:= FN('URPATHOGEN1_02').AsInteger;
                  VarUrPathogen1_03:= FN('URPATHOGEN1_03').AsInteger;
                  VarUrPathogen1_04:= FN('URPATHOGEN1_04').AsInteger;
                  VarUrPathogen1_05:= FN('URPATHOGEN1_05').AsInteger;
                  VarUrPathogen1_06:= FN('URPATHOGEN1_06').AsInteger;
                  VarUrPathogen1_07:= FN('URPATHOGEN1_07').AsInteger;
                  VarUrPathogen1_08:= FN('URPATHOGEN1_08').AsInteger;
                  VarUrPathogen1_09:= FN('URPATHOGEN1_09').AsInteger;
                  VarUrPathogen1_10:= FN('URPATHOGEN1_10').AsInteger;

                  VarUrPathogen2_01:= FN('URPATHOGEN2_01').AsInteger;
                  VarUrPathogen2_02:= FN('URPATHOGEN2_02').AsInteger;
                  VarUrPathogen2_03:= FN('URPATHOGEN2_03').AsInteger;
                  VarUrPathogen2_04:= FN('URPATHOGEN2_04').AsInteger;
                  VarUrPathogen2_05:= FN('URPATHOGEN2_05').AsInteger;
                  VarUrPathogen2_06:= FN('URPATHOGEN2_06').AsInteger;
                  VarUrPathogen2_07:= FN('URPATHOGEN2_07').AsInteger;
                  VarUrPathogen2_08:= FN('URPATHOGEN2_08').AsInteger;
                  VarUrPathogen2_09:= FN('URPATHOGEN2_09').AsInteger;
                  VarUrPathogen2_10:= FN('URPATHOGEN2_10').AsInteger;


                  VarChkMicBactInocPathogen:= FN('CHKMICBACTINOCPATHOGEN').AsInteger;
                  VarNumEdtMicBactInoc:= FN('NUMEDTMICBACTINOC').AsInteger;
                  VarMicPathogen1_01:= FN('MICPATHOGEN1_01').AsInteger;
                  VarMicPathogen1_02:= FN('MICPATHOGEN1_02').AsInteger;
                  VarMicPathogen1_03:= FN('MICPATHOGEN1_03').AsInteger;
                  VarMicPathogen1_04:= FN('MICPATHOGEN1_04').AsInteger;
                  VarMicPathogen1_05:= FN('MICPATHOGEN1_05').AsInteger;
                  VarMicPathogen1_06:= FN('MICPATHOGEN1_06').AsInteger;
                  VarMicPathogen1_07:= FN('MICPATHOGEN1_07').AsInteger;
                  VarMicPathogen1_08:= FN('MICPATHOGEN1_08').AsInteger;
                  VarMicPathogen1_09:= FN('MICPATHOGEN1_09').AsInteger;
                  VarMicPathogen1_10:= FN('MICPATHOGEN1_10').AsInteger;

                  VarMicPathogen2_01:= FN('MICPATHOGEN2_01').AsInteger;
                  VarMicPathogen2_02:= FN('MICPATHOGEN2_02').AsInteger;
                  VarMicPathogen2_03:= FN('MICPATHOGEN2_03').AsInteger;
                  VarMicPathogen2_04:= FN('MICPATHOGEN2_04').AsInteger;
                  VarMicPathogen2_05:= FN('MICPATHOGEN2_05').AsInteger;
                  VarMicPathogen2_06:= FN('MICPATHOGEN2_06').AsInteger;
                  VarMicPathogen2_07:= FN('MICPATHOGEN2_07').AsInteger;
                  VarMicPathogen2_08:= FN('MICPATHOGEN2_08').AsInteger;
                  VarMicPathogen2_09:= FN('MICPATHOGEN2_09').AsInteger;
                  VarMicPathogen2_10:= FN('MICPATHOGEN2_10').AsInteger;

                  VarStrMicUrExtra1:= Trim(FN('STRMICUREXTRA1').AsString);
                  VarStrMicUrExtra2:= Trim(FN('STRMICUREXTRA2').AsString);
                  VarStrExtra1Ur_Val1:= Trim(FN('STREXTRA1UR_VAL1').AsString);
                  VarStrExtra1Ur_Val2:= Trim(FN('STREXTRA1UR_VAL2').AsString);
                  VarStrExtra2Ur_Val1:= Trim(FN('STREXTRA2UR_VAL1').AsString);
                  VarStrExtra2Ur_Val2:= Trim(FN('STREXTRA2UR_VAL2').AsString);
                  VarStrExtra1Mic_Val1:= Trim(FN('STREXTRA1MIC_VAL1').AsString);
                  VarStrExtra1Mic_Val2:= Trim(FN('STREXTRA1MIC_VAL2').AsString);
                  VarStrExtra2Mic_Val1:= Trim(FN('STREXTRA2MIC_VAL1').AsString);
                  VarStrExtra2Mic_Val2:= Trim(FN('STREXTRA2MIC_VAL2').AsString);

                  VarChkMicUrDrug_01:= FN('CHKMICURDRUG_01').AsInteger;
                  VarChkMicUrDrug_02:= FN('CHKMICURDRUG_02').AsInteger;
                  VarChkMicUrDrug_03:= FN('CHKMICURDRUG_03').AsInteger;
                  VarChkMicUrDrug_04:= FN('CHKMICURDRUG_04').AsInteger;
                  VarChkMicUrDrug_05:= FN('CHKMICURDRUG_05').AsInteger;
                  VarChkMicUrDrug_06:= FN('CHKMICURDRUG_06').AsInteger;
                  VarChkMicUrDrug_07:= FN('CHKMICURDRUG_07').AsInteger;
                  VarChkMicUrDrug_08:= FN('CHKMICURDRUG_08').AsInteger;
                  VarChkMicUrDrug_09:= FN('CHKMICURDRUG_09').AsInteger;
                  VarChkMicUrDrug_10:= FN('CHKMICURDRUG_10').AsInteger;

                  VarNumEdtUrethBact1:= FN('NUMEDTURETHBACT1').AsInteger;
                  VarNumEdtUrethBact2:= FN('NUMEDTURETHBACT2').AsInteger;
                  VarNumEdtProstBact1:= FN('NUMEDTPROSTBACT1').AsInteger;
                  VarNumEdtProstBact2:= FN('NUMEDTPROSTBACT2').AsInteger;

                  VarUrinBactInocDate:= FN('URINBACTINOCDATE').AsDateTime;

                  VarChkUrinPathogen1:= FN('CHKURINPATHOGEN1').AsInteger;
                  VarNumEdtUrin1:= FN('NUMEDTURIN1').AsInteger;
                  VarUrin_Pathogen1_01:= FN('URIN_PATHOGEN1_01').AsInteger;
                  VarUrin_Pathogen1_02:= FN('URIN_PATHOGEN1_02').AsInteger;
                  VarUrin_Pathogen1_03:= FN('URIN_PATHOGEN1_03').AsInteger;
                  VarUrin_Pathogen1_04:= FN('URIN_PATHOGEN1_04').AsInteger;
                  VarUrin_Pathogen1_05:= FN('URIN_PATHOGEN1_05').AsInteger;
                  VarUrin_Pathogen1_06:= FN('URIN_PATHOGEN1_06').AsInteger;
                  VarUrin_Pathogen1_07:= FN('URIN_PATHOGEN1_07').AsInteger;
                  VarUrin_Pathogen1_08:= FN('URIN_PATHOGEN1_08').AsInteger;
                  VarUrin_Pathogen1_09:= FN('URIN_PATHOGEN1_09').AsInteger;
                  VarUrin_Pathogen1_10:= FN('URIN_PATHOGEN1_10').AsInteger;
                  VarUrin_Pathogen1_11:= FN('URIN_PATHOGEN1_11').AsInteger;
                  VarUrin_Pathogen1_12:= FN('URIN_PATHOGEN1_12').AsInteger;
                  VarUrin_Pathogen1_13:= FN('URIN_PATHOGEN1_13').AsInteger;
                  VarUrin_Pathogen1_14:= FN('URIN_PATHOGEN1_14').AsInteger;
                  VarUrin_Pathogen1_15:= FN('URIN_PATHOGEN1_15').AsInteger;
                  VarUrin_Pathogen1_16:= FN('URIN_PATHOGEN1_16').AsInteger;
                  VarUrin_Pathogen1_17:= FN('URIN_PATHOGEN1_17').AsInteger;
                  VarUrin_Pathogen1_18:= FN('URIN_PATHOGEN1_18').AsInteger;
                  VarUrin_Pathogen1_19:= FN('URIN_PATHOGEN1_19').AsInteger;
                  VarUrin_Pathogen1_20:= FN('URIN_PATHOGEN1_20').AsInteger;

                  VarChkUrinPathogen2:= FN('CHKURINPATHOGEN2').AsInteger;
                  VarNumEdtUrin2:= FN('NUMEDTURIN2').AsInteger;
                  VarUrin_Pathogen2_01:= FN('URIN_PATHOGEN2_01').AsInteger;
                  VarUrin_Pathogen2_02:= FN('URIN_PATHOGEN2_02').AsInteger;
                  VarUrin_Pathogen2_03:= FN('URIN_PATHOGEN2_03').AsInteger;
                  VarUrin_Pathogen2_04:= FN('URIN_PATHOGEN2_04').AsInteger;
                  VarUrin_Pathogen2_05:= FN('URIN_PATHOGEN2_05').AsInteger;
                  VarUrin_Pathogen2_06:= FN('URIN_PATHOGEN2_06').AsInteger;
                  VarUrin_Pathogen2_07:= FN('URIN_PATHOGEN2_07').AsInteger;
                  VarUrin_Pathogen2_08:= FN('URIN_PATHOGEN2_08').AsInteger;
                  VarUrin_Pathogen2_09:= FN('URIN_PATHOGEN2_09').AsInteger;
                  VarUrin_Pathogen2_10:= FN('URIN_PATHOGEN2_10').AsInteger;
                  VarUrin_Pathogen2_11:= FN('URIN_PATHOGEN2_11').AsInteger;
                  VarUrin_Pathogen2_12:= FN('URIN_PATHOGEN2_12').AsInteger;
                  VarUrin_Pathogen2_13:= FN('URIN_PATHOGEN2_13').AsInteger;
                  VarUrin_Pathogen2_14:= FN('URIN_PATHOGEN2_14').AsInteger;
                  VarUrin_Pathogen2_15:= FN('URIN_PATHOGEN2_15').AsInteger;
                  VarUrin_Pathogen2_16:= FN('URIN_PATHOGEN2_16').AsInteger;
                  VarUrin_Pathogen2_17:= FN('URIN_PATHOGEN2_17').AsInteger;
                  VarUrin_Pathogen2_18:= FN('URIN_PATHOGEN2_18').AsInteger;
                  VarUrin_Pathogen2_19:= FN('URIN_PATHOGEN2_19').AsInteger;
                  VarUrin_Pathogen2_20:= FN('URIN_PATHOGEN2_20').AsInteger;

                  VarChkUrinDrug_01:= FN('CHKURINDRUG_01').AsInteger;
                  VarChkUrinDrug_02:= FN('CHKURINDRUG_02').AsInteger;
                  VarChkUrinDrug_03:= FN('CHKURINDRUG_03').AsInteger;
                  VarChkUrinDrug_04:= FN('CHKURINDRUG_04').AsInteger;
                  VarChkUrinDrug_05:= FN('CHKURINDRUG_05').AsInteger;
                  VarChkUrinDrug_06:= FN('CHKURINDRUG_06').AsInteger;
                  VarChkUrinDrug_07:= FN('CHKURINDRUG_07').AsInteger;
                  VarChkUrinDrug_08:= FN('CHKURINDRUG_08').AsInteger;
                  VarChkUrinDrug_09:= FN('CHKURINDRUG_09').AsInteger;
                  VarChkUrinDrug_10:= FN('CHKURINDRUG_10').AsInteger;
                  VarChkUrinDrug_11:= FN('CHKURINDRUG_11').AsInteger;
                  VarChkUrinDrug_12:= FN('CHKURINDRUG_12').AsInteger;
                  VarChkUrinDrug_13:= FN('CHKURINDRUG_13').AsInteger;
                  VarChkUrinDrug_14:= FN('CHKURINDRUG_14').AsInteger;
                  VarChkUrinDrug_15:= FN('CHKURINDRUG_15').AsInteger;
                  VarChkUrinDrug_16:= FN('CHKURINDRUG_16').AsInteger;
                  VarChkUrinDrug_17:= FN('CHKURINDRUG_17').AsInteger;
                  VarChkUrinDrug_18:= FN('CHKURINDRUG_18').AsInteger;
                  VarChkUrinDrug_19:= FN('CHKURINDRUG_19').AsInteger;
                  VarChkUrinDrug_20:= FN('CHKURINDRUG_20').AsInteger;

                  VarStrUrinPathogen1:= Trim(FN('STRURINPATHOGEN1').AsString);
                  VarStrUrinPathogen2:= Trim(FN('STRURINPATHOGEN2').AsString);
                  VarStrUrinExtra1:= Trim(FN('STRURINEXTRA1').AsString);
                  VarStrUrinExtra2:= Trim(FN('STRURINEXTRA2').AsString);

                end;{with DSetVisitLabor do}
            end;{with DMFIB do}
        end;
    end;
  end;
end;

procedure TThreadMain.MedToolsMsg;
var  msUZIRen
    ,msUZIGenit
    ,msUrScopiaDry
    ,msUrScopiaIrrig: TMemoryStream;

begin
  if Assigned(FrmStatusPat) then
  begin
  //===== ���������� ������ �� ������� "���������������� ������������"
    //"��������" ���������� ����������
    TextUZIRen:= '';
    TextUZIGenit:= '';
    TextUrScopiaDry:= '';
    TextUrScopiaIrrig:= '';

    case FMsgParam of
      0: //��������� ������
        begin
          //"������" ���-�����
          FrmStatusPat.RichEditUZIRen.Clear;
          FrmStatusPat.RichEditUZIGenit.Clear;
          FrmStatusPat.RichEditUrScopiaDry.Clear;
          FrmStatusPat.RichEditUrScopiaIrrig.Clear;

          //------- ����������� ��������� �������� ���-����������
          VarPgCtrlUZIGenit:= 0;//����� ������� �� �����

          //--- ������� "��� �����"
          VarUZIRenDate:= Date;
          VarBoolUZIRen:= 0;
          VarDextRen_01:= '';
          VarDextRen_02:= '';
          VarDextRen_03:= '';
          VarDextRen_04:= '';
          VarDextPielosSize:= 0;
          VarDextPielosDens:= 0;
          VarDextPielosDeform:= 0;
          VarDextPielosLytos:= 0;
          VarDextUreterSize:= 0;
          VarDextUreterLytos:= 0;

          VarSinRen_01:= '';
          VarSinRen_02:= '';
          VarSinRen_03:= '';
          VarSinRen_04:= '';
          VarSinPielosSize:= 0;
          VarSinPielosDens:= 0;
          VarSinPielosDeform:= 0;
          VarSinPielosLytos:= 0;
          VarSinUreterSize:= 0;
          VarSinUreterLytos:= 0;

          //--- ������� "��� �������� ������"
          VarUZIVesicUrDate:= Date;
          VarBoolUZIVesicUr:= 0;
          VarVesicUr_01:= '';
          VarVesicUr_02:= '';
          VarVesicUr_03:= '';
          VarVesicUr_04:= '';
          VarVesicUr_05:= '';
          VarVesicUrContents:= 0;
          VarVesicUrLytos:= 0;
          VarDextRenPosit:= 0;
          VarDextRenRmvbl:= 0;
          VarDextRenPathPrec:= 0;
          VarDextRenPathEven:= 0;
          VarSinRenPosit:= 0;
          VarSinRenRmvbl:= 0;
          VarSinRenPathPrec:= 0;
          VarSinRenPathEven:= 0;
          VarVesicUrPathPrec:= 0;
          VarVesicUrPathEven:= 0;
          VarVesicUrWallDensity:= 2;
          VarVesicUrWallThickn:= 0;
          VarVesicUr_06:= '';


          //---������� "��� ��������"
          VarUZIProstataDate:= Date;
          VarBoolUZIProstata:= 0;

          VarUZIProstContour:= 0;
          VarUZIProstOutline:= 0;
          VarUZIProstStructure:= 0;
          VarUZIProstDensity:= 1;
          VarUZIProstFibrosis:= 0;
          VarUZIProstLytos:= 0;
          VarUZIProstCentrFocal:= 0;
          VarUZIProstCentrDens:= 1;
          VarUZIProstPerifFocal:= 0;
          VarUZIProstPerifDens:= 1;
          VarUZIVesSeminDextWall:= 0;
          VarUZIVesSeminDextDens:= 0;
          VarUZIVesSeminSinWall:= 0;
          VarUZIVesSeminSinDens:= 0;
          VarUZIProstEchogenDext:= 0;
          VarUZIProstEchogenSin:= 0;
          VarChkUZIVesicSemin:= 1;

          VarUZIProstSize_01:= '';
          VarUZIProstSize_02:= '';
          VarUZIProstSize_03:= '';
          VarUZIProstVolume:= '';
          VarUZIProstResidUrine:= '';
          VarUZIVesSeminDext_01:= '';
          VarUZIVesSeminDext_02:= '';
          VarUZIVesSeminSin_01:= '';
          VarUZIVesSeminSin_02:= '';


          //--- ������� "��� �������"
          VarUZITestisDate:= Date;
          VarBoolUZITestis:= 0;

          VarUZITestisDextPath:= 0;
          VarUZITestisDextEdge:= 0;
          VarUZITestisDextStruct:= 1;
          VarUZITestisDextLiquid:= 0;
          VarUZIEpididimDextPath:= 0;
          VarUZIEpididimDextEdge:= 0;
          VarUZIEpididimDextStruct:= 1;
          VarUZIEpididimDextNidus:= 0;

          VarUZITestisSinPath:= 0;
          VarUZITestisSinEdge:= 0;
          VarUZITestisSinStruct:= 1;
          VarUZITestisSinLiquid:= 0;
          VarUZIEpididimSinPath:= 0;
          VarUZIEpididimSinEdge:= 0;
          VarUZIEpididimSinStruct:= 1;
          VarUZIEpididimSinNidus:= 0;

          VarUZITestisDext_01:= '';
          VarUZITestisDext_02:= '';
          VarUZITestisDext_03:= '';
          VarUZITestisDext_04:= '';
          VarUZIEpididimDext_01:= '';
          VarUZIEpididimDext_02:= '';
          VarUZIEpididimDext_03:= '';
          VarUZIEpididimDext_04:= '';

          VarUZITestisSin_01:= '';
          VarUZITestisSin_02:= '';
          VarUZITestisSin_03:= '';
          VarUZITestisSin_04:= '';
          VarUZIEpididimSin_01:= '';
          VarUZIEpididimSin_02:= '';
          VarUZIEpididimSin_03:= '';
          VarUZIEpididimSin_04:= '';

          //--- ������� "��� ������"
          VarUZIPenisDate:= Date;
          VarBoolUZIPenis:= 0;

          VarUZIPenisCavernStruct:= 0;
          VarUZIPenisCavernDensit:= 1;
          VarUZIPenisCavernInclus:= 1;
          VarUZIPenisAlbuginStruct:= 1;
          VarUZIPenisAlbuginThick:= 0;

          VarUZIPenisArtCavDext_01:= '';
          VarUZIPenisArtCavDext_02:= '';
          VarUZIPenisArtCavDext_03:= '';
          VarUZIPenisArtCavDext_04:= '';
          VarUZIPenisArtCavDext_05:= '';
          VarUZIPenisArtCavSin_01:= '';
          VarUZIPenisArtCavSin_02:= '';
          VarUZIPenisArtCavSin_03:= '';
          VarUZIPenisArtCavSin_04:= '';
          VarUZIPenisArtCavSin_05:= '';

          VarUZIPenisArtDorsDext_01:= '';
          VarUZIPenisArtDorsDext_02:= '';
          VarUZIPenisArtDorsDext_03:= '';
          VarUZIPenisArtDorsDext_04:= '';
          VarUZIPenisArtDorsDext_05:= '';
          VarUZIPenisArtDorsSin_01:= '';
          VarUZIPenisArtDorsSin_02:= '';
          VarUZIPenisArtDorsSin_03:= '';
          VarUZIPenisArtDorsSin_04:= '';
          VarUZIPenisArtDorsSin_05:= '';

          VarUZIPenisVenaDorsDext_01:= '';
          VarUZIPenisVenaDorsDext_02:= '';
          VarUZIPenisVenaDorsDext_03:= '';
          VarUZIPenisVenaDorsSin_01:= '';
          VarUZIPenisVenaDorsSin_02:= '';
          VarUZIPenisVenaDorsSin_03:= '';

          //--- ������� "���� ������� �������"
          VarUZIDopplerTestisDate:= Today;
          VarChkDopplerTestis:= 0;

          VarVasaFunicDext:= 0;
          VarValsalveDext:= 0;
          VarVasaFunicParenchDext:= 0;

          VarVasaFunicSin:= 0;
          VarValsalveSin:= 0;
          VarVasaFunicParenchSin:= 0;

          VarStrVasaFunic_HorzDext:= '';
          VarStrVasaFunic_VertDext:= '';
          VarStrVasa_LSKFunicDext:= '';
          VarStrVasa_LSKTestisDext:= '';

          VarStrVasaFunic_HorzSin:= '';
          VarStrVasaFunic_VertSin:= '';
          VarStrVasa_LSKFunicSin:= '';
          VarStrVasa_LSKTestisSin:= '';

          //------- ����������� ��������� �������� ���������� ����� ������������
          VarUrScopiaDryDate:= Date;

          VarUrScopiaDryOstium_01:= 0;
          VarUrScopiaDryOstium_02:= 0;
          VarUrScopiaDryOstium_03:= 0;

          VarUrScopiaDryTubus_01:= 1;
          VarUrScopiaDryTubus_02:= 0;
          VarUrScopiaDryTubus_03:= 0;
          VarUrScopiaDryTubus_04:= 0;
          VarUrScopiaDryTubus_05:= 0;

          VarUrScopiaDryGland_01:= 0;
          VarUrScopiaDryGland_02:= 0;
          VarUrScopiaDryGland_03:= 0;
          VarUrScopiaDryGland_04:= 0;
          VarUrScopiaDryGland_05:= 0;

          VarUrScopiaDryFigure_01:= 0;
          VarUrScopiaDryFigure_02:= 0;
          VarUrScopiaDryFigure_03:= 0;

          VarUrScopiaDryPattern_01:= 0;
          VarUrScopiaDryPattern_02:= 0;
          VarUrScopiaDryPattern_03:= 0;

          VarUrScopiaDrySurface_01:= 0;
          VarUrScopiaDrySurface_02:= 0;
          VarUrScopiaDrySurface_03:= 0;
          VarUrScopiaDrySurface_04:= 0;
          VarUrScopiaDrySurface_05:= 0;
          VarUrScopiaDrySurface_06:= 0;

          //------- ����������� ��������� �������� ���������� ������������� ������������
          VarUrScopiaIrrigDate:= Date;

          VarIrrigUrScAntTool_01:= 2;
          VarIrrigUrScAntTool_02:= 0;
          VarIrrigUrScAntTool_03:= 0;
          VarIrrigUrScAntTool_04:= 0;

          VarIrrigUrScAntOstium_01:= 0;
          VarIrrigUrScAntOstium_02:= 0;
          VarIrrigUrScAntOstium_03:= 0;

          VarIrrigUrScAntMedium_01:= 0;
          VarIrrigUrScAntMedium_02:= 0;

          VarIrrigUrScAntScanne_01:= 0;
          VarIrrigUrScAntScanne_02:= 0;
          VarIrrigUrScAntScanne_03:= 0;
          VarIrrigUrScAntScanne_04:= 0;
          VarIrrigUrScAntScanne_05:= 0;

          VarIrrigUrScAntPenal_01:= 0;
          VarIrrigUrScAntPenal_02:= 0;
          VarIrrigUrScAntPenal_03:= 0;
          VarIrrigUrScAntPenal_04:= 0;
          VarIrrigUrScAntPenal_05:= 0;
          VarIrrigUrScAntPenal_06:= 0;

          VarIrrigUrScAntBulb_01:= 0;
          VarIrrigUrScAntBulb_02:= 0;
          VarIrrigUrScAntBulb_03:= 0;

          VarIrrigUrScAntMembr_01:= 0;
          VarIrrigUrScAntMembr_02:= 0;

          VarIrrigUrScAntCooper_01:= 0;
          VarIrrigUrScAntCooper_02:= 0;
          VarIrrigUrScAntCooper_03:= 0;
          VarIrrigUrScAntCooper_04:= 0;

          VarIrrigUrScPostMedium_01:= 0;
          VarIrrigUrScPostMedium_02:= 0;

          VarIrrigUrScPostMucous_01:= 0;
          VarIrrigUrScPostMucous_02:= 0;
          VarIrrigUrScPostMucous_03:= 0;
          VarIrrigUrScPostMucous_04:= 0;
          VarIrrigUrScPostMucous_05:= 0;
          VarIrrigUrScPostMucous_06:= 0;
          VarIrrigUrScPostMucous_07:= 0;
          VarIrrigUrScPostMucous_08:= 0;

          VarIrrigUrScPostCollic_01:= 0;
          VarIrrigUrScPostCollic_02:= 0;
          VarIrrigUrScPostCollic_03:= 0;
          VarIrrigUrScPostCollic_04:= 0;
          VarIrrigUrScPostCollic_05:= 0;
          VarIrrigUrScPostCollic_06:= 0;
          VarIrrigUrScPostCollic_07:= 0;
          VarIrrigUrScPostCollic_08:= 0;

          VarIrrigUrScPostDucts_01:= 0;
          VarIrrigUrScPostDucts_02:= 0;
          VarIrrigUrScPostDucts_03:= 0;
          VarIrrigUrScPostDucts_04:= 0;

          VarIrrigUrScPostVesic_01:= 0;
          VarIrrigUrScPostVesic_02:= 0;
          VarIrrigUrScPostVesic_03:= 0;
          VarIrrigUrScPostVesic_04:= 0;
          VarIrrigUrScPostVesic_05:= 0;
          VarIrrigUrScPostVesic_06:= 0;
          VarIrrigUrScPostVesic_07:= 0;
        end;
      1: //����������� ������
        begin
          with FrmStatusPat do
            with DMFIB do
            begin
              msUZIRen:= TMemoryStream.Create;
              msUZIGenit:= TMemoryStream.Create;
              msUrScopiaDry:= TMemoryStream.Create;
              msUrScopiaIrrig:= TMemoryStream.Create;

              try
                //������ ����� ��� �����
                TBlobField(DSetVisitBlob.FN('UZIRen')).SaveToStream(msUZIRen);
                msUZIRen.Position:= 0;
                RichEditUZIRen.Lines.LoadFromStream(msUZIRen);
                TextUZIRen:= GetRTFText(RichEditUZIRen);

                //������ ����� ��� ���������
                TBlobField(DSetVisitBlob.FN('UZIGenit')).SaveToStream(msUZIGenit);
                msUZIGenit.Position:= 0;
                RichEditUZIGenit.Lines.LoadFromStream(msUZIGenit);
                TextUZIGenit:= GetRTFText(RichEditUZIGenit);

                //������ ����� �������� ������������
                TBlobField(DSetVisitBlob.FN('UrScopiaDry')).SaveToStream(msUrScopiaDry);
                msUrScopiaDry.Position:= 0;
                RichEditUrScopiaDry.Lines.LoadFromStream(msUrScopiaDry);
                TextUrScopiaDry:= GetRTFText(RichEditUrScopiaDry);

               //������ ����� ������������� ������������
                TBlobField(DSetVisitBlob.FN('UrScopiaIrrig')).SaveToStream(msUrScopiaIrrig);
                msUrScopiaIrrig.Position:= 0;
                RichEditUrScopiaIrrig.Lines.LoadFromStream(msUrScopiaIrrig);
                TextUrScopiaIrrig:= GetRTFText(RichEditUrScopiaIrrig);

              finally
                msUZIRen.Free;
                msUZIGenit.Free;
                msUrScopiaDry.Free;
                msUrScopiaIrrig.Free;

              end;{try..finally}

              with DSetVisitExamin do
                begin
                  //------- ����������� �������� ���������� ���
                  VarPgCtrlUZIGenit:= FN('PGCTRLUZIGENIT').AsInteger;//������ ������� �� �����

                  //--- ������� "��� �����"
                  VarUZIRenDate:= FieldByName('UZIRenDate').AsDateTime;
                  VarBoolUZIRen:= FieldByName('BoolUZIRen').AsInteger;
                  VarDextRen_01:= Trim(FieldByName('DextRen_01').AsString);
                  VarDextRen_02:= Trim(FieldByName('DextRen_02').AsString);
                  VarDextRen_03:= Trim(FieldByName('DextRen_03').AsString);
                  VarDextRen_04:= Trim(FieldByName('DextRen_04').AsString);
                  VarDextPielosSize:= FieldByName('DextPielosSize').AsInteger;
                  VarDextPielosDens:= FieldByName('DextPielosDens').AsInteger;
                  VarDextPielosDeform:= FieldByName('DextPielosDeform').AsInteger;
                  VarDextPielosLytos:= FieldByName('DextPielosLytos').AsInteger;
                  VarDextUreterSize:= FieldByName('DextUreterSize').AsInteger;
                  VarDextUreterLytos:= FieldByName('DextUreterLytos').AsInteger;

                  VarSinRen_01:= Trim(FieldByName('SinRen_01').AsString);
                  VarSinRen_02:= Trim(FieldByName('SinRen_02').AsString);
                  VarSinRen_03:= Trim(FieldByName('SinRen_03').AsString);
                  VarSinRen_04:= Trim(FieldByName('SinRen_04').AsString);
                  VarSinPielosSize:= FieldByName('SinPielosSize').AsInteger;
                  VarSinPielosDens:= FieldByName('SinPielosDens').AsInteger;
                  VarSinPielosDeform:= FieldByName('SinPielosDeform').AsInteger;
                  VarSinPielosLytos:= FieldByName('SinPielosLytos').AsInteger;
                  VarSinUreterSize:= FieldByName('SinUreterSize').AsInteger;
                  VarSinUreterLytos:= FieldByName('SinUreterLytos').AsInteger;

                  //--- ������� "��� �������� ������"
                  VarUZIVesicUrDate:= FieldByName('UZIVesicUrDate').AsDateTime;
                  VarBoolUZIVesicUr:= FieldByName('BoolUZIVesicUr').AsInteger;
                  VarVesicUr_01:= Trim(FieldByName('VesicUr_01').AsString);
                  VarVesicUr_02:= Trim(FieldByName('VesicUr_02').AsString);
                  VarVesicUr_03:= Trim(FieldByName('VesicUr_03').AsString);
                  VarVesicUr_04:= Trim(FieldByName('VesicUr_04').AsString);
                  VarVesicUr_05:= Trim(FieldByName('VesicUr_05').AsString);
                  VarVesicUrContents:= FieldByName('VesicUrContents').AsInteger;
                  VarVesicUrLytos:= FieldByName('VesicUrLytos').AsInteger;
                  VarDextRenPosit:= FN('DEXTRENPOSIT').AsInteger;
                  VarDextRenRmvbl:= FN('DEXTRENRMVBL').AsInteger;
                  VarDextRenPathPrec:= FN('DEXTRENPATHPREC').AsInteger;
                  VarDextRenPathEven:= FN('DEXTRENPATHEVEN').AsInteger;
                  VarSinRenPosit:= FN('SINRENPOSIT').AsInteger;
                  VarSinRenRmvbl:= FN('SINRENRMVBL').AsInteger;
                  VarSinRenPathPrec:= FN('SINRENPATHPREC').AsInteger;
                  VarSinRenPathEven:= FN('SINRENPATHEVEN').AsInteger;
                  VarVesicUrPathPrec:= FN('VESICURPATHPREC').AsInteger;
                  VarVesicUrPathEven:= FN('VESICURPATHEVEN').AsInteger;
                  VarVesicUrWallDensity:= FN('VESICURWALLDENSITY').AsInteger;
                  VarVesicUrWallThickn:= FN('VESICURWALLTHICKN').AsInteger;
                  VarVesicUr_06:= FN('VESICUR_06').AsString;


                  //---������� "��� ��������"
                  VarUZIProstataDate:= FieldByName('UZIProstataDate').AsDateTime;
                  VarBoolUZIProstata:= FieldByName('BoolUZIProstata').AsInteger;

                  VarUZIProstContour:= FieldByName('UZIProstContour').AsInteger;
                  VarUZIProstOutline:= FieldByName('UZIProstOutline').AsInteger;
                  VarUZIProstStructure:= FieldByName('UZIProstStructure').AsInteger;
                  VarUZIProstDensity:= FieldByName('UZIProstDensity').AsInteger;
                  VarUZIProstFibrosis:= FieldByName('UZIProstFibrosis').AsInteger;
                  VarUZIProstLytos:= FieldByName('UZIProstLytos').AsInteger;
                  VarUZIProstCentrFocal:= FieldByName('UZIProstCentrFocal').AsInteger;
                  VarUZIProstCentrDens:= FieldByName('UZIProstCentrDens').AsInteger;
                  VarUZIProstPerifFocal:= FieldByName('UZIProstPerifFocal').AsInteger;
                  VarUZIProstPerifDens:= FieldByName('UZIProstPerifDens').AsInteger;
                  VarUZIVesSeminDextWall:= FieldByName('UZIVesSeminDextWall').AsInteger;
                  VarUZIVesSeminDextDens:= FieldByName('UZIVesSeminDextDens').AsInteger;
                  VarUZIVesSeminSinWall:= FieldByName('UZIVesSeminSinWall').AsInteger;
                  VarUZIVesSeminSinDens:= FieldByName('UZIVesSeminSinDens').AsInteger;
                  VarUZIProstEchogenDext:= FN('UZIPROSTECHOGENDEXT').AsInteger;
                  VarUZIProstEchogenSin:= FN('UZIPROSTECHOGENSIN').AsInteger;
                  VarChkUZIVesicSemin:= FN('CHKUZIVESICSEMIN').AsInteger;

                  VarUZIProstSize_01:= Trim(FieldByName('UZIProstSize_01').AsString);
                  VarUZIProstSize_02:= Trim(FieldByName('UZIProstSize_02').AsString);
                  VarUZIProstSize_03:= Trim(FieldByName('UZIProstSize_03').AsString);
                  VarUZIProstVolume:= Trim(FieldByName('UZIProstVolume').AsString);
                  VarUZIProstResidUrine:= Trim(FieldByName('UZIProstResidUrine').AsString);
                  VarUZIVesSeminDext_01:= Trim(FieldByName('UZIVesSeminDext_01').AsString);
                  VarUZIVesSeminDext_02:= Trim(FieldByName('UZIVesSeminDext_02').AsString);
                  VarUZIVesSeminSin_01:= Trim(FieldByName('UZIVesSeminSin_01').AsString);
                  VarUZIVesSeminSin_02:= Trim(FieldByName('UZIVesSeminSin_02').AsString);


                  //--- ������� "��� �������"
                  VarUZITestisDate:= FieldByName('UZITestisDate').AsDateTime;
                  VarBoolUZITestis:= FieldByName('BoolUZITestis').AsInteger;

                  VarUZITestisDextPath:= FieldByName('UZITestisDextPath').AsInteger;
                  VarUZITestisDextEdge:= FieldByName('UZITestisDextEdge').AsInteger;
                  VarUZITestisDextStruct:= FieldByName('UZITestisDextStruct').AsInteger;
                  VarUZITestisDextLiquid:= FieldByName('UZITestisDextLiquid').AsInteger;
                  VarUZIEpididimDextPath:= FieldByName('UZIEpididimDextPath').AsInteger;
                  VarUZIEpididimDextEdge:= FieldByName('UZIEpididimDextEdge').AsInteger;
                  VarUZIEpididimDextStruct:= FieldByName('UZIEpididimDextStruct').AsInteger;
                  VarUZIEpididimDextNidus:= FieldByName('UZIEpididimDextNidus').AsInteger;

                  VarUZITestisSinPath:= FieldByName('UZITestisSinPath').AsInteger;
                  VarUZITestisSinEdge:= FieldByName('UZITestisSinEdge').AsInteger;
                  VarUZITestisSinStruct:= FieldByName('UZITestisSinStruct').AsInteger;
                  VarUZITestisSinLiquid:= FieldByName('UZITestisSinLiquid').AsInteger;
                  VarUZIEpididimSinPath:= FieldByName('UZIEpididimSinPath').AsInteger;
                  VarUZIEpididimSinEdge:= FieldByName('UZIEpididimSinEdge').AsInteger;
                  VarUZIEpididimSinStruct:= FieldByName('UZIEpididimSinStruct').AsInteger;
                  VarUZIEpididimSinNidus:= FieldByName('UZIEpididimSinNidus').AsInteger;

                  VarUZITestisDext_01:= Trim(FieldByName('UZITestisDext_01').AsString);
                  VarUZITestisDext_02:= Trim(FieldByName('UZITestisDext_02').AsString);
                  VarUZITestisDext_03:= Trim(FieldByName('UZITestisDext_03').AsString);
                  VarUZITestisDext_04:= Trim(FieldByName('UZITestisDext_04').AsString);
                  VarUZIEpididimDext_01:= Trim(FieldByName('UZIEpididimDext_01').AsString);
                  VarUZIEpididimDext_02:= Trim(FieldByName('UZIEpididimDext_02').AsString);
                  VarUZIEpididimDext_03:= Trim(FieldByName('UZIEpididimDext_03').AsString);
                  VarUZIEpididimDext_04:= Trim(FieldByName('UZIEpididimDext_04').AsString);

                  VarUZITestisSin_01:= Trim(FieldByName('UZITestisSin_01').AsString);
                  VarUZITestisSin_02:= Trim(FieldByName('UZITestisSin_02').AsString);
                  VarUZITestisSin_03:= Trim(FieldByName('UZITestisSin_03').AsString);
                  VarUZITestisSin_04:= Trim(FieldByName('UZITestisSin_04').AsString);
                  VarUZIEpididimSin_01:= Trim(FieldByName('UZIEpididimSin_01').AsString);
                  VarUZIEpididimSin_02:= Trim(FieldByName('UZIEpididimSin_02').AsString);
                  VarUZIEpididimSin_03:= Trim(FieldByName('UZIEpididimSin_03').AsString);
                  VarUZIEpididimSin_04:= Trim(FieldByName('UZIEpididimSin_04').AsString);

                  //--- ������� "��� ������"
                  VarUZIPenisDate:= FieldByName('UZIPenisDate').AsDateTime;
                  VarBoolUZIPenis:= FieldByName('BoolUZIPenis').AsInteger;

                  VarUZIPenisCavernStruct:= FieldByName('UZIPenisCavernStruct').AsInteger;
                  VarUZIPenisCavernDensit:= FieldByName('UZIPenisCavernDensit').AsInteger;
                  VarUZIPenisCavernInclus:= FieldByName('UZIPenisCavernInclus').AsInteger;
                  VarUZIPenisAlbuginStruct:= FieldByName('UZIPenisAlbuginStruct').AsInteger;
                  VarUZIPenisAlbuginThick:= FieldByName('UZIPenisAlbuginThick').AsInteger;

                  VarUZIPenisArtCavDext_01:= Trim(FieldByName('UZIPenisArtCavDext_01').AsString);
                  VarUZIPenisArtCavDext_02:= Trim(FieldByName('UZIPenisArtCavDext_02').AsString);
                  VarUZIPenisArtCavDext_03:= Trim(FieldByName('UZIPenisArtCavDext_03').AsString);
                  VarUZIPenisArtCavDext_04:= Trim(FieldByName('UZIPenisArtCavDext_04').AsString);
                  VarUZIPenisArtCavDext_05:= Trim(FieldByName('UZIPenisArtCavDext_05').AsString);
                  VarUZIPenisArtCavSin_01:= Trim(FieldByName('UZIPenisArtCavSin_01').AsString);
                  VarUZIPenisArtCavSin_02:= Trim(FieldByName('UZIPenisArtCavSin_02').AsString);
                  VarUZIPenisArtCavSin_03:= Trim(FieldByName('UZIPenisArtCavSin_03').AsString);
                  VarUZIPenisArtCavSin_04:= Trim(FieldByName('UZIPenisArtCavSin_04').AsString);
                  VarUZIPenisArtCavSin_05:= Trim(FieldByName('UZIPenisArtCavSin_05').AsString);

                  VarUZIPenisArtDorsDext_01:= Trim(FieldByName('UZIPenisArtDorsDext_01').AsString);
                  VarUZIPenisArtDorsDext_02:= Trim(FieldByName('UZIPenisArtDorsDext_02').AsString);
                  VarUZIPenisArtDorsDext_03:= Trim(FieldByName('UZIPenisArtDorsDext_03').AsString);
                  VarUZIPenisArtDorsDext_04:= Trim(FieldByName('UZIPenisArtDorsDext_04').AsString);
                  VarUZIPenisArtDorsDext_05:= Trim(FieldByName('UZIPenisArtDorsDext_05').AsString);
                  VarUZIPenisArtDorsSin_01:= Trim(FieldByName('UZIPenisArtDorsSin_01').AsString);
                  VarUZIPenisArtDorsSin_02:= Trim(FieldByName('UZIPenisArtDorsSin_02').AsString);
                  VarUZIPenisArtDorsSin_03:= Trim(FieldByName('UZIPenisArtDorsSin_03').AsString);
                  VarUZIPenisArtDorsSin_04:= Trim(FieldByName('UZIPenisArtDorsSin_04').AsString);
                  VarUZIPenisArtDorsSin_05:= Trim(FieldByName('UZIPenisArtDorsSin_05').AsString);

                  VarUZIPenisVenaDorsDext_01:= Trim(FieldByName('UZIPenisVenaDorsDext_01').AsString);
                  VarUZIPenisVenaDorsDext_02:= Trim(FieldByName('UZIPenisVenaDorsDext_02').AsString);
                  VarUZIPenisVenaDorsDext_03:= Trim(FieldByName('UZIPenisVenaDorsDext_03').AsString);
                  VarUZIPenisVenaDorsSin_01:= Trim(FieldByName('UZIPenisVenaDorsSin_01').AsString);
                  VarUZIPenisVenaDorsSin_02:= Trim(FieldByName('UZIPenisVenaDorsSin_02').AsString);
                  VarUZIPenisVenaDorsSin_03:= Trim(FieldByName('UZIPenisVenaDorsSin_03').AsString);

                  //--- ������� "���� ������� �������"
                  VarUZIDopplerTestisDate:= FN('UZIDOPPLERTESTISDATE').AsDateTime;
                  VarChkDopplerTestis:= FN('CHKDOPPLERTESTIS').AsInteger;

                  VarVasaFunicDext:= FN('VASAFUNICDEXT').AsInteger;
                  VarValsalveDext:= FN('VALSALVEDEXT').AsInteger;
                  VarVasaFunicParenchDext:= FN('VASAFUNICPARENCHDEXT').AsInteger;

                  VarVasaFunicSin:= FN('VASAFUNICSIN').AsInteger;
                  VarValsalveSin:= FN('VALSALVESIN').AsInteger;
                  VarVasaFunicParenchSin:= FN('VASAFUNICPARENCHSIN').AsInteger;

                  VarStrVasaFunic_HorzDext:= Trim(FN('STRVASAFUNIC_HORZDEXT').AsString);
                  VarStrVasaFunic_VertDext:= Trim(FN('STRVASAFUNIC_VERTDEXT').AsString);
                  VarStrVasa_LSKFunicDext:= Trim(FN('STRVASA_LSKFUNICDEXT').AsString);
                  VarStrVasa_LSKTestisDext:= Trim(FN('STRVASA_LSKTESTISDEXT').AsString);

                  VarStrVasaFunic_HorzSin:= Trim(FN('STRVASAFUNIC_HORZSIN').AsString);
                  VarStrVasaFunic_VertSin:= Trim(FN('STRVASAFUNIC_VERTSIN').AsString);
                  VarStrVasa_LSKFunicSin:= Trim(FN('STRVASA_LSKFUNICSIN').AsString);
                  VarStrVasa_LSKTestisSin:= Trim(FN('STRVASA_LSKTESTISSIN').AsString);


                  //------- ����������� ��������� �������� ���������� ����� ������������
                  VarUrScopiaDryDate:= FieldByName('UrScopiaDryDate').AsDateTime;

                  VarUrScopiaDryOstium_01:= FieldByName('UrScopiaDryOstium_01').AsInteger;
                  VarUrScopiaDryOstium_02:= FieldByName('UrScopiaDryOstium_02').AsInteger;
                  VarUrScopiaDryOstium_03:= FieldByName('UrScopiaDryOstium_03').AsInteger;

                  VarUrScopiaDryTubus_01:= FieldByName('UrScopiaDryTubus_01').AsInteger;
                  VarUrScopiaDryTubus_02:= FieldByName('UrScopiaDryTubus_02').AsInteger;
                  VarUrScopiaDryTubus_03:= FieldByName('UrScopiaDryTubus_03').AsInteger;
                  VarUrScopiaDryTubus_04:= FieldByName('UrScopiaDryTubus_04').AsInteger;
                  VarUrScopiaDryTubus_05:= FieldByName('UrScopiaDryTubus_05').AsInteger;

                  VarUrScopiaDryGland_01:= FieldByName('UrScopiaDryGland_01').AsInteger;
                  VarUrScopiaDryGland_02:= FieldByName('UrScopiaDryGland_02').AsInteger;
                  VarUrScopiaDryGland_03:= FieldByName('UrScopiaDryGland_03').AsInteger;
                  VarUrScopiaDryGland_04:= FieldByName('UrScopiaDryGland_04').AsInteger;
                  VarUrScopiaDryGland_05:= FieldByName('UrScopiaDryGland_05').AsInteger;

                  VarUrScopiaDryFigure_01:= FieldByName('UrScopiaDryFigure_01').AsInteger;
                  VarUrScopiaDryFigure_02:= FieldByName('UrScopiaDryFigure_02').AsInteger;
                  VarUrScopiaDryFigure_03:= FieldByName('UrScopiaDryFigure_03').AsInteger;

                  VarUrScopiaDryPattern_01:= FieldByName('UrScopiaDryPattern_01').AsInteger;
                  VarUrScopiaDryPattern_02:= FieldByName('UrScopiaDryPattern_02').AsInteger;
                  VarUrScopiaDryPattern_03:= FieldByName('UrScopiaDryPattern_03').AsInteger;

                  VarUrScopiaDrySurface_01:= FieldByName('UrScopiaDrySurface_01').AsInteger;
                  VarUrScopiaDrySurface_02:= FieldByName('UrScopiaDrySurface_02').AsInteger;
                  VarUrScopiaDrySurface_03:= FieldByName('UrScopiaDrySurface_03').AsInteger;
                  VarUrScopiaDrySurface_04:= FieldByName('UrScopiaDrySurface_04').AsInteger;
                  VarUrScopiaDrySurface_05:= FieldByName('UrScopiaDrySurface_05').AsInteger;
                  VarUrScopiaDrySurface_06:= FieldByName('UrScopiaDrySurface_06').AsInteger;

                  //------- ����������� ��������� �������� ���������� ������������� ������������
                  VarUrScopiaIrrigDate:= FieldByName('UrScopiaIrrigDate').AsDateTime;

                  VarIrrigUrScAntTool_01:= FieldByName('UrScopiaIrrigUrScAntTool_01').AsInteger;
                  VarIrrigUrScAntTool_02:= FieldByName('UrScopiaIrrigUrScAntTool_02').AsInteger;
                  VarIrrigUrScAntTool_03:= FieldByName('UrScopiaIrrigUrScAntTool_03').AsInteger;
                  VarIrrigUrScAntTool_04:= FieldByName('UrScopiaIrrigUrScAntTool_04').AsInteger;

                  VarIrrigUrScAntOstium_01:= FieldByName('UrScopiaIrrigUrScAntOstium_01').AsInteger;
                  VarIrrigUrScAntOstium_02:= FieldByName('UrScopiaIrrigUrScAntOstium_02').AsInteger;
                  VarIrrigUrScAntOstium_03:= FieldByName('UrScopiaIrrigUrScAntOstium_03').AsInteger;

                  VarIrrigUrScAntMedium_01:= FieldByName('UrScopiaIrrigUrScAntMedium_01').AsInteger;
                  VarIrrigUrScAntMedium_02:= FieldByName('UrScopiaIrrigUrScAntMedium_02').AsInteger;

                  VarIrrigUrScAntScanne_01:= FieldByName('UrScopiaIrrigUrScAntScanne_01').AsInteger;
                  VarIrrigUrScAntScanne_02:= FieldByName('UrScopiaIrrigUrScAntScanne_02').AsInteger;
                  VarIrrigUrScAntScanne_03:= FieldByName('UrScopiaIrrigUrScAntScanne_03').AsInteger;
                  VarIrrigUrScAntScanne_04:= FieldByName('UrScopiaIrrigUrScAntScanne_04').AsInteger;
                  VarIrrigUrScAntScanne_05:= FieldByName('UrScopiaIrrigUrScAntScanne_05').AsInteger;

                  VarIrrigUrScAntPenal_01:= FieldByName('UrScopiaIrrigUrScAntPenal_01').AsInteger;
                  VarIrrigUrScAntPenal_02:= FieldByName('UrScopiaIrrigUrScAntPenal_02').AsInteger;
                  VarIrrigUrScAntPenal_03:= FieldByName('UrScopiaIrrigUrScAntPenal_03').AsInteger;
                  VarIrrigUrScAntPenal_04:= FieldByName('UrScopiaIrrigUrScAntPenal_04').AsInteger;
                  VarIrrigUrScAntPenal_05:= FieldByName('UrScopiaIrrigUrScAntPenal_05').AsInteger;
                  VarIrrigUrScAntPenal_06:= FieldByName('UrScopiaIrrigUrScAntPenal_06').AsInteger;

                  VarIrrigUrScAntBulb_01:= FieldByName('UrScopiaIrrigUrScAntBulb_01').AsInteger;
                  VarIrrigUrScAntBulb_02:= FieldByName('UrScopiaIrrigUrScAntBulb_02').AsInteger;
                  VarIrrigUrScAntBulb_03:= FieldByName('UrScopiaIrrigUrScAntBulb_03').AsInteger;

                  VarIrrigUrScAntMembr_01:= FieldByName('UrScopiaIrrigUrScAntMembr_01').AsInteger;
                  VarIrrigUrScAntMembr_02:= FieldByName('UrScopiaIrrigUrScAntMembr_02').AsInteger;

                  VarIrrigUrScAntCooper_01:= FieldByName('UrScopiaIrrigUrScAntCooper_01').AsInteger;
                  VarIrrigUrScAntCooper_02:= FieldByName('UrScopiaIrrigUrScAntCooper_02').AsInteger;
                  VarIrrigUrScAntCooper_03:= FieldByName('UrScopiaIrrigUrScAntCooper_03').AsInteger;
                  VarIrrigUrScAntCooper_04:= FieldByName('UrScopiaIrrigUrScAntCooper_04').AsInteger;

                  VarIrrigUrScPostMedium_01:= FieldByName('UrScopiaIrrigUrScPostMedium_01').AsInteger;
                  VarIrrigUrScPostMedium_02:= FieldByName('UrScopiaIrrigUrScPostMedium_02').AsInteger;

                  VarIrrigUrScPostMucous_01:= FieldByName('UrScopiaIrrigUrScPostMucous_01').AsInteger;
                  VarIrrigUrScPostMucous_02:= FieldByName('UrScopiaIrrigUrScPostMucous_02').AsInteger;
                  VarIrrigUrScPostMucous_03:= FieldByName('UrScopiaIrrigUrScPostMucous_03').AsInteger;
                  VarIrrigUrScPostMucous_04:= FieldByName('UrScopiaIrrigUrScPostMucous_04').AsInteger;
                  VarIrrigUrScPostMucous_05:= FieldByName('UrScopiaIrrigUrScPostMucous_05').AsInteger;
                  VarIrrigUrScPostMucous_06:= FieldByName('UrScopiaIrrigUrScPostMucous_06').AsInteger;
                  VarIrrigUrScPostMucous_07:= FieldByName('UrScopiaIrrigUrScPostMucous_07').AsInteger;
                  VarIrrigUrScPostMucous_08:= FieldByName('UrScopiaIrrigUrScPostMucous_08').AsInteger;

                  VarIrrigUrScPostCollic_01:= FieldByName('UrScopiaIrrigUrScPostCollic_01').AsInteger;
                  VarIrrigUrScPostCollic_02:= FieldByName('UrScopiaIrrigUrScPostCollic_02').AsInteger;
                  VarIrrigUrScPostCollic_03:= FieldByName('UrScopiaIrrigUrScPostCollic_03').AsInteger;
                  VarIrrigUrScPostCollic_04:= FieldByName('UrScopiaIrrigUrScPostCollic_04').AsInteger;
                  VarIrrigUrScPostCollic_05:= FieldByName('UrScopiaIrrigUrScPostCollic_05').AsInteger;
                  VarIrrigUrScPostCollic_06:= FieldByName('UrScopiaIrrigUrScPostCollic_06').AsInteger;
                  VarIrrigUrScPostCollic_07:= FieldByName('UrScopiaIrrigUrScPostCollic_07').AsInteger;
                  VarIrrigUrScPostCollic_08:= FieldByName('UrScopiaIrrigUrScPostCollic_08').AsInteger;

                  VarIrrigUrScPostDucts_01:= FieldByName('UrScopiaIrrigUrScPostDucts_01').AsInteger;
                  VarIrrigUrScPostDucts_02:= FieldByName('UrScopiaIrrigUrScPostDucts_02').AsInteger;
                  VarIrrigUrScPostDucts_03:= FieldByName('UrScopiaIrrigUrScPostDucts_03').AsInteger;
                  VarIrrigUrScPostDucts_04:= FieldByName('UrScopiaIrrigUrScPostDucts_04').AsInteger;

                  VarIrrigUrScPostVesic_01:= FieldByName('UrScopiaIrrigUrScPostVesic_01').AsInteger;
                  VarIrrigUrScPostVesic_02:= FieldByName('UrScopiaIrrigUrScPostVesic_02').AsInteger;
                  VarIrrigUrScPostVesic_03:= FieldByName('UrScopiaIrrigUrScPostVesic_03').AsInteger;
                  VarIrrigUrScPostVesic_04:= FieldByName('UrScopiaIrrigUrScPostVesic_04').AsInteger;
                  VarIrrigUrScPostVesic_05:= FieldByName('UrScopiaIrrigUrScPostVesic_05').AsInteger;
                  VarIrrigUrScPostVesic_06:= FieldByName('UrScopiaIrrigUrScPostVesic_06').AsInteger;
                  VarIrrigUrScPostVesic_07:= FieldByName('UrScopiaIrrigUrScPostVesic_07').AsInteger;

                end;{with DSetVisitExamin do}
            end;{with DMFIB do}
        end;
    end;
  end;
end;

procedure TThreadMain.MyMsg;
var ARect: TRect;
begin
  if Assigned(frmSplash) then
    case FMsgParam of
      //����� ��� ��������� ���������
      1:
        begin
          frmSplash.InMsgStr:= FMsgStrValue;
          //����������� ������ ������������� ����� frmSplash.InMsgStr
          ARect:= Rect(0,0,frmSplash.LblMsg.Width,frmSplash.LblMsg.Height);

          with frmSplash do
          begin
            Canvas.Lock;
            frmSplash.TextMsgHeight:= DrawText(Canvas.Handle,PChar(frmSplash.InMsgStr),-1,
                                                                  ARect,DT_CALCRECT or DT_WORDBREAK);
            Canvas.Unlock;
          end;
        end;
      //����� ��������� �����
      2: frmSplash.FrmCaptStr:= FMsgStrValue;
      //����� ��� ������
      3: frmSplash.BtnMsgStr:= FMsgStrValue;
      //�����{msg.WParam>0}/��������{msg.WParam=0} pnlBottom �� ������
      4:
        begin
          frmSplash.pnlBottom.Visible:= (FMsgIntValue <> 0);
          frmSplash.Repaint;
        end;
    end;
end;

procedure TThreadMain.StatusMsg;
var msStPraesens
  , msStLocalis
  , msStProstata: TMemoryStream;
begin
  if Assigned(FrmStatusPat) then
  begin
    //������������� �������� ������ "��������� �������" ������� "Status praesens"
    FrmStatusPat.RdBtnStPraesensTempl.Checked:= True; //����� ������
    FrmStatusPat.RdBtnStLocalisTempl.Checked:= True;//������ ���������
    FrmStatusPat.RdBtnProstataTempl.Checked:= True;//������ ��������

    //==== ���������� ����� ������������ �������

    //"��������" ���������� ����������
    TextStPraesens:= '';//�������� ������
    TextStLocalis:= '';
    TextStProstata:= '';

    case FMsgParam of
      0: //��������� ������
        begin
          //"������" ���-�����
          FrmStatusPat.RichEditStPraesens.Clear;
          FrmStatusPat.RichEditStLocalis.Clear;
          FrmStatusPat.RichEditProstata.Clear;

          //------ ����������� ���������� ����� ������������ �� ������� ��������� ��������
          //���� ��������� ����� ������, �� ��� �������� �� ��������� �������������
          VarLVisus:= 0;
          VarLOtis:= 0;
          VarLMemor:= 0;
          VarLTaxis:= 0;

          VarHAllopecia:= 0;
          VarHPapula:= 0;
          VarHPustula:= 0;
          VarHKorochka:= 0;

          VarTMakula:= 0;
          VarTPapula:= 0;
          VarTErozia:= 0;
          VarTUlcer:= 0;
          VarTAngina:= 0;
          VarTMindal:= 0;

          VarLipPapula:= 0;
          VarLipZaeda:= 0;
          VarLipErozia:= 0;
          VarLipUlcer:= 0;
          VarPhonemaSound:= 0;

          VarLdiCervix:= 0;
          VarLdiSubLing:= 0;
          VarLdiAxillar:= 0;
          VarLdiUlnar:= 0;
          VarLdiInguinal:= 0;

          VarSellaNos:= 0;
          VarPalatumGotica:= 0;
          VarGetchinsonZub:= 0;
          VarProcessusMetch:= 0;
          VarSableGolen:= 0;
        end;
      1: //����������� ������
        begin
          with FrmStatusPat do
            with DMFIB do
            begin
              msStPraesens:= TMemoryStream.Create;
              msStLocalis:= TMemoryStream.Create;
              msStProstata:= TMemoryStream.Create;

              try
                //������ ����� ������������ �������
                TBlobField(DSetVisitBlob.FN('StPraesens')).SaveToStream(msStPraesens);
                msStPraesens.Position:= 0;
                RichEditStPraesens.Lines.LoadFromStream(msStPraesens);
                TextStPraesens:= GetRTFText(RichEditStPraesens);

                //������ ����� �������� �������
                TBlobField(DSetVisitBlob.FN('StLocalis')).SaveToStream(msStLocalis);
                msStLocalis.Position:= 0;
                RichEditStLocalis.Lines.LoadFromStream(msStLocalis);
                TextStLocalis:= GetRTFText(RichEditStLocalis);

                //������ ����� �������� ��������
                TBlobField(DSetVisitBlob.FN('StProstata')).SaveToStream(msStProstata);
                msStProstata.Position:= 0;
                RichEditProstata.Lines.LoadFromStream(msStProstata);
                TextStProstata:= GetRTFText(RichEditProstata);

              finally
                msStPraesens.Free;
                msStLocalis.Free;
                msStProstata.Free;
              end;{try..finally}

              //-- ����������� ���������� ����� ������������ �� ������� �������� �� ��
              with DSetVisitMain do
                begin
                  VarLVisus:= FieldByName('LVisus').AsInteger;
                  VarLOtis:= FieldByName('LOtis').AsInteger;
                  VarLMemor:= FieldByName('LMemor').AsInteger;
                  VarLTaxis:= FieldByName('LTaxis').AsInteger;

                  VarHAllopecia:= FieldByName('HAllopecia').AsInteger;
                  VarHPapula:= FieldByName('HPapula').AsInteger;
                  VarHPustula:= FieldByName('HPustula').AsInteger;
                  VarHKorochka:= FieldByName('HKorochka').AsInteger;

                  VarTMakula:= FieldByName('TMakula').AsInteger;
                  VarTPapula:= FieldByName('TPapula').AsInteger;
                  VarTErozia:= FieldByName('TErozia').AsInteger;
                  VarTUlcer:= FieldByName('TUlcer').AsInteger;
                  VarTAngina:= FieldByName('TAngina').AsInteger;
                  VarTMindal:= FieldByName('TMindal').AsInteger;

                  VarLipPapula:= FieldByName('LipPapula').AsInteger;
                  VarLipZaeda:= FieldByName('LipZaeda').AsInteger;
                  VarLipErozia:= FieldByName('LipErozia').AsInteger;
                  VarLipUlcer:= FieldByName('LipUlcer').AsInteger;
                  VarPhonemaSound:= FieldByName('PhonemaSound').AsInteger;

                  VarLdiCervix:= FieldByName('LdiCervix').AsInteger;
                  VarLdiSubLing:= FieldByName('LdiSubLing').AsInteger;
                  VarLdiAxillar:= FieldByName('LdiAxillar').AsInteger;
                  VarLdiUlnar:= FieldByName('LdiUlnar').AsInteger;
                  VarLdiInguinal:= FieldByName('LdiInguinal').AsInteger;

                  VarSellaNos:= FieldByName('SellaNos').AsInteger;
                  VarPalatumGotica:= FieldByName('PalatumGotica').AsInteger;
                  VarGetchinsonZub:= FieldByName('GetchinsonZub').AsInteger;
                  VarProcessusMetch:= FieldByName('ProcessusMetch').AsInteger;
                  VarSableGolen:= FieldByName('SableGolen').AsInteger;
                end;{with DSetVisitMain do}

            end;{with DMFIB do}
        end;
    end;
  end;
end;

procedure TThreadMain.TmpBlobPrepareMsg;
var TmpBlobID,
    MainBlobID: Variant;
begin
  if Assigned(FrmStatusPat) then
  begin
    //������� �� ��������� ������� ������, � ������� ����� ��������
    MainBlobID:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').Value;//�� ������� ������ �������

    //�������� �������� ����������
    DMFIB.TmpBlobQry.SQL.Text:= 'SELECT GEN_ID(GEN_TMP_VISITBLOB_ID, 1) as TempID FROM RDB$DATABASE';
    DMFIB.TmpBlobQry.ExecQuery;
    TmpBlobID:= DMFIB.TmpBlobQry.FldByName['TempID'].Value;//�� ��� ��������

    case FMsgParam of
      0: //��������� ������
        begin
          //��������� "������" ������ � ��������� ��������� ����������
          DMFIB.TmpBlobQry.SQL.Text:= 'INSERT INTO TMP_VISITBLOB (TMP_ID_VISITBLOB) VALUES (:prmTempID)';
          DMFIB.TmpBlobQry.Prepare;
        end;
      1: //����������� ������
        begin
          DMFIB.TmpBlobQry.SQL.Text:=
                     'INSERT INTO TMP_VISITBLOB ' +
                     '(TMP_ID_VISITBLOB, TMP_STPRESENSFOTOS_01, TMP_STPRESENSFOTOS_02, TMP_STPRESENSFOTOS_03, ' +
                     'TMP_STPRESENSFOTOS_04, TMP_STLOCALISFOTOS_01, TMP_STLOCALISFOTOS_02, TMP_STLOCALISFOTOS_03, ' +
                     'TMP_STLOCALISFOTOS_04, TMP_RWFOTOS, TMP_AIDSFOTOS, TMP_HBSAGFOTOS, TMP_MAZURFOTOS_01, ' +
                     'TMP_MAZURFOTOS_02, TMP_MAZURFOTOS_03, TMP_MAZURFOTOS_04, TMP_MAZURFOTOS_05, ' +
                     'TMP_MAZURFOTOS_06, TMP_MAZPRFOTOS_01, TMP_MAZPRFOTOS_02, TMP_MAZPRFOTOS_03, ' +
                     'TMP_MAZPRFOTOS_04, TMP_PCRFOTOS, TMP_IFAFOTOS, TMP_SPERM, TMP_SPERMFOTOS, TMP_KRUG, ' +
                     'TMP_KRUGFOTOS, TMP_SPERMBIOCHEMIC, TMP_SPERMBIOCHEMICFOTOS, TMP_MAR, TMP_MARFOTOS, ' +
                     'TMP_SPERMVITAL, TMP_SPERMVITALFOTOS, TMP_OAK, TMP_OAKFOTOS, TMP_BLOODBIO, TMP_BLOODBIOFOTOS, ' +
                     'TMP_HORM, TMP_HORMFOTOS, TMP_UZIRENFOTOS_01, TMP_UZIRENFOTOS_02, TMP_UZIRENFOTOS_03, ' +
                     'TMP_UZIRENFOTOS_04, TMP_UZIGENITFOTOS_01, TMP_UZIGENITFOTOS_02, TMP_UZIGENITFOTOS_03, ' +
                     'TMP_UZIGENITFOTOS_04, TMP_URSCOPIADRYFOTOS_01, TMP_URSCOPIADRYFOTOS_02, ' +
                     'TMP_URSCOPIADRYFOTOS_03, TMP_URSCOPIADRYFOTOS_04, TMP_URSCOPIADRYFOTOS_05, ' +
                     'TMP_URSCOPIADRYFOTOS_06, TMP_URSCOPIAIRRIGFOTOS_01, TMP_URSCOPIAIRRIGFOTOS_02, ' +
                     'TMP_URSCOPIAIRRIGFOTOS_03, TMP_URSCOPIAIRRIGFOTOS_04, TMP_URSCOPIAIRRIGFOTOS_05, ' +
                     'TMP_URSCOPIAIRRIGFOTOS_06, TMP_STPRESENSFOTOS_01_EXT, TMP_STPRESENSFOTOS_02_EXT, ' +
                     'TMP_STPRESENSFOTOS_03_EXT, TMP_STPRESENSFOTOS_04_EXT, TMP_STLOCALISFOTOS_01_EXT, ' +
                     'TMP_STLOCALISFOTOS_02_EXT, TMP_STLOCALISFOTOS_03_EXT, TMP_STLOCALISFOTOS_04_EXT, ' +
                     'TMP_RWFOTOS_EXT, TMP_AIDSFOTOS_EXT, TMP_HBSAGFOTOS_EXT, TMP_MAZURFOTOS_01_EXT, ' +
                     'TMP_MAZURFOTOS_02_EXT, TMP_MAZURFOTOS_03_EXT, TMP_MAZURFOTOS_04_EXT, TMP_MAZURFOTOS_05_EXT, ' +
                     'TMP_MAZURFOTOS_06_EXT, TMP_MAZPRFOTOS_01_EXT, TMP_MAZPRFOTOS_02_EXT, TMP_MAZPRFOTOS_03_EXT, ' +
                     'TMP_MAZPRFOTOS_04_EXT, TMP_PCRFOTOS_EXT, TMP_IFAFOTOS_EXT, TMP_SPERMFOTOS_EXT, ' +
                     'TMP_KRUGFOTOS_EXT, TMP_SPERMBIOCHEMICFOTOS_EXT, TMP_MARFOTOS_EXT, TMP_SPERMVITALFOTOS_EXT, ' +
                     'TMP_OAKFOTOS_EXT, TMP_BLOODBIOFOTOS_EXT, TMP_HORMFOTOS_EXT, TMP_UZIRENFOTOS_01_EXT, ' +
                     'TMP_UZIRENFOTOS_02_EXT, TMP_UZIRENFOTOS_03_EXT, TMP_UZIRENFOTOS_04_EXT, ' +
                     'TMP_UZIGENITFOTOS_01_EXT, TMP_UZIGENITFOTOS_02_EXT, TMP_UZIGENITFOTOS_03_EXT, ' +
                     'TMP_UZIGENITFOTOS_04_EXT, TMP_URSCOPIADRYFOTOS_01_EXT, TMP_URSCOPIADRYFOTOS_02_EXT, ' +
                     'TMP_URSCOPIADRYFOTOS_03_EXT, TMP_URSCOPIADRYFOTOS_04_EXT, TMP_URSCOPIADRYFOTOS_05_EXT, ' +
                     'TMP_URSCOPIADRYFOTOS_06_EXT, TMP_URSCOPIAIRRIGFOTOS_01_EXT, TMP_URSCOPIAIRRIGFOTOS_02_EXT, ' +
                     'TMP_URSCOPIAIRRIGFOTOS_03_EXT, TMP_URSCOPIAIRRIGFOTOS_04_EXT, TMP_URSCOPIAIRRIGFOTOS_05_EXT, ' +
                     'TMP_URSCOPIAIRRIGFOTOS_06_EXT, TMP_DRUGTEXT_MEMO, TMP_DSTEXT_MEMO, TMP_RECOMTEXT_MEMO, ' +
                     'TMP_MANIPTEXT_MEMO, TMP_ONKOMARKER, TMP_ONKOMARKERFOTOS, TMP_ONKOMARKERFOTOS_EXT, ' +
                     'TMP_BLOODTEXT, TMP_LUESTEXT, TMP_AIDSTEXT, TMP_SPERMTEXT, TMP_IONES) ' +
              'SELECT ' +
                     ':prmTempID , STPRESENSFOTOS_01, STPRESENSFOTOS_02, STPRESENSFOTOS_03, ' +
                     'STPRESENSFOTOS_04, STLOCALISFOTOS_01, STLOCALISFOTOS_02, STLOCALISFOTOS_03, ' +
                     'STLOCALISFOTOS_04, RWFOTOS, AIDSFOTOS, HBSAGFOTOS, MAZURFOTOS_01, ' +
                     'MAZURFOTOS_02, MAZURFOTOS_03, MAZURFOTOS_04, MAZURFOTOS_05, ' +
                     'MAZURFOTOS_06, MAZPRFOTOS_01, MAZPRFOTOS_02, MAZPRFOTOS_03, ' +
                     'MAZPRFOTOS_04, PCRFOTOS, IFAFOTOS, SPERM, SPERMFOTOS, KRUG, ' +
                     'KRUGFOTOS, SPERMBIOCHEMIC, SPERMBIOCHEMICFOTOS, MAR, MARFOTOS, ' +
                     'SPERMVITAL, SPERMVITALFOTOS, OAK, OAKFOTOS, BLOODBIO, BLOODBIOFOTOS, ' +
                     'HORM, HORMFOTOS, UZIRENFOTOS_01, UZIRENFOTOS_02, UZIRENFOTOS_03, ' +
                     'UZIRENFOTOS_04, UZIGENITFOTOS_01, UZIGENITFOTOS_02, UZIGENITFOTOS_03, ' +
                     'UZIGENITFOTOS_04, URSCOPIADRYFOTOS_01, URSCOPIADRYFOTOS_02, ' +
                     'URSCOPIADRYFOTOS_03, URSCOPIADRYFOTOS_04, URSCOPIADRYFOTOS_05, ' +
                      'URSCOPIADRYFOTOS_06, URSCOPIAIRRIGFOTOS_01, URSCOPIAIRRIGFOTOS_02, ' +
                      'URSCOPIAIRRIGFOTOS_03, URSCOPIAIRRIGFOTOS_04, URSCOPIAIRRIGFOTOS_05, ' +
                      'URSCOPIAIRRIGFOTOS_06, STPRESENSFOTOS_01_EXT, STPRESENSFOTOS_02_EXT, ' +
                      'STPRESENSFOTOS_03_EXT, STPRESENSFOTOS_04_EXT, STLOCALISFOTOS_01_EXT, ' +
                      'STLOCALISFOTOS_02_EXT, STLOCALISFOTOS_03_EXT, STLOCALISFOTOS_04_EXT, ' +
                      'RWFOTOS_EXT, AIDSFOTOS_EXT, HBSAGFOTOS_EXT, MAZURFOTOS_01_EXT, ' +
                      'MAZURFOTOS_02_EXT, MAZURFOTOS_03_EXT, MAZURFOTOS_04_EXT, MAZURFOTOS_05_EXT, ' +
                      'MAZURFOTOS_06_EXT, MAZPRFOTOS_01_EXT, MAZPRFOTOS_02_EXT, MAZPRFOTOS_03_EXT, ' +
                      'MAZPRFOTOS_04_EXT, PCRFOTOS_EXT, IFAFOTOS_EXT, SPERMFOTOS_EXT, ' +
                      'KRUGFOTOS_EXT, SPERMBIOCHEMICFOTOS_EXT, MARFOTOS_EXT, SPERMVITALFOTOS_EXT, ' +
                      'OAKFOTOS_EXT, BLOODBIOFOTOS_EXT, HORMFOTOS_EXT, UZIRENFOTOS_01_EXT, ' +
                      'UZIRENFOTOS_02_EXT, UZIRENFOTOS_03_EXT, UZIRENFOTOS_04_EXT, ' +
                      'UZIGENITFOTOS_01_EXT, UZIGENITFOTOS_02_EXT, UZIGENITFOTOS_03_EXT, ' +
                      'UZIGENITFOTOS_04_EXT, URSCOPIADRYFOTOS_01_EXT, URSCOPIADRYFOTOS_02_EXT, ' +
                      'URSCOPIADRYFOTOS_03_EXT, URSCOPIADRYFOTOS_04_EXT, URSCOPIADRYFOTOS_05_EXT, ' +
                      'URSCOPIADRYFOTOS_06_EXT, URSCOPIAIRRIGFOTOS_01_EXT, URSCOPIAIRRIGFOTOS_02_EXT, ' +
                      'URSCOPIAIRRIGFOTOS_03_EXT, URSCOPIAIRRIGFOTOS_04_EXT, URSCOPIAIRRIGFOTOS_05_EXT, ' +
                      'URSCOPIAIRRIGFOTOS_06_EXT, DRUGTEXT_MEMO, DSTEXT_MEMO, RECOMTEXT_MEMO, ' +
                      'MANIPTEXT_MEMO, ONKOMARKER, ONKOMARKERFOTOS, ONKOMARKERFOTOS_EXT, ' +
                      'BLOODTEXT, LUESTEXT, AIDSTEXT, SPERMTEXT, IONES ' +
              'FROM TBL_VISITBLOB ' +
              'WHERE TBL_VISITBLOB.ID_VISITBLOB = :prmMainID';
          DMFIB.TmpBlobQry.Prepare;
          DMFIB.TmpBlobQry.ParamByName('prmMainID').Value:= MainBlobID;
        end;
    end;

    DMFIB.TmpBlobQry.ParamByName('prmTempID').Value:= TmpBlobID;
    DMFIB.TmpBlobQry.ExecQuery;//�������� DML

    //������� ��������, ����� ����� ���� �������� ��� � ������� ��������
    DMFIB.DSetTmpBlobVisit.Prepare;
    DMFIB.DSetTmpBlobVisit.ParamByName('prmTmpID').Value:= TmpBlobID;
    DMFIB.DSetTmpBlobVisit.FullRefresh;
  end;
end;

{TODO : �������� ����������� �������� ���� �� ������� ���������� �����������}
{ TODO :  �������� ����������� ��������� ������� � �������� ���������� ������� }
end.

