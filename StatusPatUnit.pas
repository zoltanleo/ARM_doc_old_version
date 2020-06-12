unit StatusPatUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Spin, DBGridEh, ExtCtrls, Mask, DBCtrlsEh, padegFIO,
  DBLookupEh, DB, DBTables, ADODB, FIBDataSet, FIBQuery, MsgSplash, DateUtils,
  NiceSettings, pFIBDataSet, AppEvnts, ImgList, PngImageList;

type
  TThreadSaveRec = class(TThread)
    private
      FMsgParam: Word;
      FMsgStrValue: string;
      FMsgIntValue: Integer;
      procedure MyMsg;
      procedure CloseSplashMsg;
    protected
      procedure Execute;override;
    public
      constructor Create(CreateSuspended: Boolean);
  end;

  TFrmStatusPat = class(TForm)
  {$region 'standart components of frmStatusPat'}
    PgCtrlVisit: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    BtnCancel: TButton;
    Label9: TLabel;
    DTPickPriem: TDateTimePicker;
    Panel1: TPanel;
    Label1: TLabel;
    RdBtnVisitPrimary: TRadioButton;
    RdBtnVisitSecondary: TRadioButton;
    Label8: TLabel;
    DBLookupCBDocChoice: TDBLookupComboboxEh;
    BtnSave: TButton;
    BtnPrev: TButton;
    BtnNext: TButton;
    GroupBox10: TGroupBox;
    GroupBox1: TGroupBox;
    BtnTemplateStPraesens: TButton;
    Panel2: TPanel;
    RdBtnStPraesensTempl: TRadioButton;
    RdBtnStPraesensNonParticular: TRadioButton;
    RdBtnStPreasensNonDynamics: TRadioButton;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    BtnTemplateStLocalis: TButton;
    BtnTemplateProstata: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    RdBtnStLocalisTempl: TRadioButton;
    RdBtnStLocalisNonPathology: TRadioButton;
    RdBtnProstataTempl: TRadioButton;
    RdBtnProstataNonPathology: TRadioButton;
    BtnStLocalisFoto: TButton;
    BtnStPraesensFoto: TButton;
    GrBoxUZIren: TGroupBox;
    GrBoxDryUr: TGroupBox;
    GrBoxUZIprost: TGroupBox;
    GrBoxIrrigUr: TGroupBox;
    BtnUZIRenTemplate: TButton;
    BtnUZIRenFotos: TButton;
    BtnUrScopiaDryTemplate: TButton;
    BtnUrScopiaDryFotos: TButton;
    BtnUZIGenitTemplate: TButton;
    BtnUZIGenitFotos: TButton;
    BtnUrScopiaIrrigTemplate: TButton;
    BtnUrScopiaIrrigFotos: TButton;
    LblUZIRen: TLabel;
    Panel14: TPanel;
    LblUziGenit: TLabel;
    Panel15: TPanel;
    LblUrScopiaDry: TLabel;
    Panel16: TPanel;
    LblUrScopiaIrrig: TLabel;
    Panel17: TPanel;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    BtnSelDrug: TButton;
    BtnSelManip: TButton;
    GroupBox20: TGroupBox;
    BtnSelDs: TButton;
    GroupBox21: TGroupBox;
    BtnSelRecom: TButton;
    PgCtrlComplaint: TPageControl;
    TabSheet7: TTabSheet;
    GrpBoxDolor: TGroupBox;
    ChkBoxDolorPubica: TCheckBox;
    ChkBoxDolorPerineum: TCheckBox;
    ChkBoxDolorTestis: TCheckBox;
    ChkBoxDolorLumbo: TCheckBox;
    ChkBoxDolorSacrum: TCheckBox;
    ChkBoxDolorInguinal: TCheckBox;
    GrBoxDisuria: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    ChkBoxPollakiuria: TCheckBox;
    ChkBoxDolorMiccia: TCheckBox;
    ChkBoxNicturia: TCheckBox;
    SpEdtNicturiaCount: TSpinEdit;
    SpEdtNicturiaAge: TSpinEdit;
    ChkBoxStranguria: TCheckBox;
    GrBoxIpochondr: TGroupBox;
    ChkBoxLowLibido: TCheckBox;
    ChkBoxLowTonus: TCheckBox;
    ChkBoxLowVozbuzhd: TCheckBox;
    GrBoxIrrit: TGroupBox;
    Label2: TLabel;
    ChkBoxDischarge: TCheckBox;
    SpEdtUrethAge: TSpinEdit;
    GrBoxVasaSyndr: TGroupBox;
    ChkBoxLowErection: TCheckBox;
    ChkBoxSlowTumesc: TCheckBox;
    ChkBoxBadErection: TCheckBox;
    ChkBoxMorningErection: TCheckBox;
    TabSheet8: TTabSheet;
    GrBoxEjacul: TGroupBox;
    ChkBoxFastEjacul: TCheckBox;
    ChkBoxDolorEjacul: TCheckBox;
    ChkBoxBloodEjacul: TCheckBox;
    ChkBoxAnEjacul: TCheckBox;
    ChkBoxIdleEjacul: TCheckBox;
    Panel18: TPanel;
    Label20: TLabel;
    DBLookupCBClinChoice: TDBLookupComboboxEh;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ChkBoxUrAsthenia: TCheckBox;
    ChkBoxUrFlabbiness: TCheckBox;
    ChkBoxUrHyperhidros: TCheckBox;
    ChkBoxUrSubfebril: TCheckBox;
    CbBoxUrSubfebril: TComboBox;
    ChkBoxUrDolorLumb: TCheckBox;
    ChkBoxUrDolorSacr: TCheckBox;
    ChkBoxUrDolorMesagastr: TCheckBox;
    ChkBoxUrDolorHypogastr: TCheckBox;
    ChkBoxUrDolorPubica: TCheckBox;
    ChkBoxUrDolorIrradiat: TCheckBox;
    CbBoxUrDolorLumb: TComboBox;
    CbBoxUrDolorMesogastr: TComboBox;
    CbBoxUrDolorHypogastr: TComboBox;
    CbBoxUrDolorIrradiat: TComboBox;
    ChkBoxUrColic: TCheckBox;
    ChkBoxUrPollac: TCheckBox;
    ChkBoxUrNicturia: TCheckBox;
    ChkBoxUrNotFullVesic: TCheckBox;
    ChkBoxUrSediment: TCheckBox;
    ChkBoxUrFlakes: TCheckBox;
    ChkBoxUrBloodDash: TCheckBox;
    SpEdtUrPollacCount: TSpinEdit;
    Label21: TLabel;
    SpEdtUrPollacAge: TSpinEdit;
    SpEdtUrNictCount: TSpinEdit;
    Label23: TLabel;
    SpEdtUrNictAge: TSpinEdit;
    CbBoxUrBloodDash: TComboBox;
    TabSheet9: TTabSheet;
    GroupBox5: TGroupBox;
    RdBtnAnothPrevCheckup: TRadioButton;
    RdBtnAnothPrevTreat: TRadioButton;
    RdBtnAnothPlanGravid: TRadioButton;
    RdBtnAnothContrCheckup: TRadioButton;
    RdBtnAnothPlanTreat: TRadioButton;
    ChkBoxBadSensUreth: TCheckBox;
    ChkBoxColicSensUreth: TCheckBox;
    ChkBoxBadSensPerineum: TCheckBox;
    ChkBoxColicSensPerineum: TCheckBox;
    SpEdtMicciaCount: TSpinEdit;
    SpEdtPollaciuriaAge: TSpinEdit;
    CbBoxPollaciuriaPeriod: TComboBox;
    CbBoxNicturiaPeriod: TComboBox;
    ChkBoxSlowEjacul: TCheckBox;
    ChkBoxNoErection: TCheckBox;
    ChkBoxPenisDeform: TCheckBox;
    CbBoxDischargeNature: TComboBox;
    CbBoxDischargeVolume: TComboBox;
    CbBoxDischargeRegul: TComboBox;
    CbBoxDischargeDurat: TComboBox;
    ChkBoxVesUrinUncomplete: TCheckBox;
    ChkBoxDolorPenisErect: TCheckBox;
    ChkBoxDolorPenisDetumesc: TCheckBox;
    ChkBoxVaricocele: TCheckBox;
    CbBoxVaricSide: TComboBox;
    CbBoxVaricPosit: TComboBox;
    RdBtnAnothResrchRezlt: TRadioButton;
    RdBtnStLocalisNonDynamics: TRadioButton;
    RdBtnProstataExamRefuse: TRadioButton;
    PgCtrlAnamnesis: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    CbBoxUrPollacPeriod: TComboBox;
    CbBoxUrNictPeriod: TComboBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    RdBtnAllergyNo: TRadioButton;
    RdBtnAllergyYes: TRadioButton;
    Panel19: TPanel;
    RchEdtAnamAllergy: TRichEdit;
    RchEdtAnamChldDes: TRichEdit;
    RchEdtAnamAnthrDes: TRichEdit;
    ChkBoxAnamSmoke: TCheckBox;
    ChkBoxAnamAlkohol: TCheckBox;
    SpnEdtSigarCount: TSpinEdit;
    BtnTemplAnamChldDes: TButton;
    BtnTemplAnamAnthrDes: TButton;
    SpnEdtSmokeAge: TSpinEdit;
    CbBoxSmokePeriod: TComboBox;
    LblSmoke1: TLabel;
    LblSmoke2: TLabel;
    ChkBoxAndrVaricocele: TCheckBox;
    ChkBoxAndrHydrocele: TCheckBox;
    ChkBoxAndrCryptorhism: TCheckBox;
    ChkBoxAndrParotit: TCheckBox;
    ChkBoxAndrCastracio: TCheckBox;
    GroupBox11: TGroupBox;
    CbBoxAndrMarriage: TComboBox;
    ChkBoxAndrAdenomOper: TCheckBox;
    ChkBoxAndrChild: TCheckBox;
    ChkBoxAndrPregnancy: TCheckBox;
    SpnEdtAndrChildCount: TSpinEdit;
    LblSexPartner: TLabel;
    CbBoxSexPartnFemaleCount: TComboBox;
    CbBoxSexPartnFemaleRamdom: TComboBox;
    LblAndrCoitusCount: TLabel;
    SpnEdtAndrCoitusCount: TSpinEdit;
    CbBoxAndrCoitusPeriod: TComboBox;
    LblAndrOrgasmCount: TLabel;
    SpnEdtAndrOrgasmCount: TSpinEdit;
    LblAndrOrgasmPeriod: TLabel;
    RchEdtAndrZPPP: TRichEdit;
    BtnTemplAndrZPPP: TButton;
    LblAndrZPPP: TLabel;
    ChkBoxAndrCircumcisio: TCheckBox;
    BtnTemplAnamAllergy: TButton;
    GroupBox14: TGroupBox;
    LblGinMenarhe: TLabel;
    SpnEdtGinMenarhe: TSpinEdit;
    LblGinMensesPeriod1: TLabel;
    SpnEdtGinMensesPeriod: TSpinEdit;
    SpnEdtGinMensesAge: TSpinEdit;
    LblGinMensesPeriod2: TLabel;
    LblGinMensesPeriod4: TLabel;
    ChkBoxGinMenopause: TCheckBox;
    LblGinMensesPeriod3: TLabel;
    LblGinLastMenses: TLabel;
    DTPickGinLastMensesDate: TDateTimePicker;
    LblGinPregnancy: TLabel;
    LblGinChildBirth: TLabel;
    LblGinAbortion: TLabel;
    SpnEdtGinPregnancyCount: TSpinEdit;
    SpnEdtGinChildBirthCount: TSpinEdit;
    SpnEdtGinAbortionCount: TSpinEdit;
    SpnEdtGinMenopauseAge: TSpinEdit;
    GroupBox15: TGroupBox;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    LblSexPartnerFemale: TLabel;
    CbBoxSexPartnMaleCount: TComboBox;
    CbBoxSexPartnMaleRamdom: TComboBox;
    LblGinCoitusCount: TLabel;
    SpnEdtGinCoitusCount: TSpinEdit;
    CbBoxGinCoitusPeriod: TComboBox;
    LblGinZPPP: TLabel;
    RchEdtGinZPPP: TRichEdit;
    BtnTemplGinZPPP: TButton;
    CbBoxGinMarriage: TComboBox;
    LblGinMarriage: TLabel;
    LblGinMenopauseAge1: TLabel;
    LblGinMenopauseAge2: TLabel;
    ChkBoxBadHabit: TCheckBox;
    ChkBoxAnamnesAllergy: TCheckBox;
    ChkBoxAndrOperation: TCheckBox;
    ChkBoxAnamnesFamily: TCheckBox;
    NiceSetFrmStatPat: TNiceSettings;
    ChkBoxAnamnesAndrSex: TCheckBox;
    ChkBoxAnamnesGinek: TCheckBox;
    ChkBoxAnamnesGinSex: TCheckBox;
    LblChldDes: TLabel;
    LblAnthrDes: TLabel;
    BtnHlp: TButton;
    PgCtrlLabResearch: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    GpBox1: TGroupBox;
    GpBox4: TGroupBox;
    BtnOAMTemplate: TButton;
    GpBox3: TGroupBox;
    BtnIFATemplate: TButton;
    BtnFotoIFA: TButton;
    GrBoxMazUr: TGroupBox;
    BtnMazUrTemplate: TButton;
    BtnFotoMazUr: TButton;
    GpBoxMazProst: TGroupBox;
    BtnMazProstTemplate: TButton;
    BtnFotoMazProst: TButton;
    GpBox2: TGroupBox;
    BtnPCRTemlate: TButton;
    BtnFotoPCR: TButton;
    TabSheet15: TTabSheet;
    GroupBox16: TGroupBox;
    BtnBloodTest: TButton;
    GroupBox17: TGroupBox;
    BtnLuesListClickt: TButton;
    Panel5: TPanel;
    GroupBox22: TGroupBox;
    BtnSpermGrList: TButton;
    BtnAIDSTemplate: TButton;
    GroupBox23: TGroupBox;
    BtnUrethBactInocTemplate: TButton;
    GroupBox24: TGroupBox;
    BtnProstBactInocTemplate: TButton;
    GroupBox25: TGroupBox;
    BtnMicUrBactInocTemplate: TButton;
    ChkBoxIshuria: TCheckBox;
    ChkBoxIncontinence: TCheckBox;
    CbBoxIncontinenceCase: TComboBox;
    GroupBox26: TGroupBox;
    BtnUrinBactInocTemplate: TButton;
    DSetStPatTmp: TpFIBDataSet;
    Label4: TLabel;
    BtnRichFmtComplaints: TButton;
    GroupBox27: TGroupBox;
    BtnRichFmtSecretStuff: TButton;
    ChkBoxSecretStuff: TCheckBox;
    Label6: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    GroupBox28: TGroupBox;
    Button1: TButton;
    Panel9: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button2: TButton;
    Panel10: TPanel;
    BtnRichFmtStPraesens: TButton;
    BtnRichFmtProstata: TButton;
    BtnRichFmtStLocalis: TButton;
    Button3: TButton;
    BtnRichFmtLues: TButton;
    BtnRichFmtBlood: TButton;
    BtnRichFmtOAM: TButton;
    BtnRichFmtAIDS: TButton;
    BtnRichFmtMazUr: TButton;
    BtnRichFmtMazProst: TButton;
    BtnRichFmtSperm: TButton;
    BtnRichFmtPCR: TButton;
    BtnRichFmtIFA: TButton;
    BtnRichFmtUrethBactInoc: TButton;
    BtnRichFmtProstBactInoc: TButton;
    BtnRichFmtMicUrBactInoc: TButton;
    BtnRichFmtUrinBactInoc: TButton;
    BtnRichFmtUZIRen: TButton;
    BtnRichFmtUZIGenit: TButton;
    BtnRichFmtUrScopiaDry: TButton;
    BtnRichFmtUrScopiaIrrig: TButton;
    BtnRichFmtDrug: TButton;
    BtnRichFmtDs: TButton;
    BtnRichFmtManip: TButton;
    BtnRichFmtRecom: TButton;
    RichEditComplaints: TRichEdit;
    RichEditSecretStuff: TRichEdit;
    RichEditStPraesens: TRichEdit;
    RichEditStLocalis: TRichEdit;
    RichEditProstata: TRichEdit;
    RichEdit1: TRichEdit;
    RichEdtLues: TRichEdit;
    RichEdtBlood: TRichEdit;
    RichEditOAM: TRichEdit;
    RichEdtAIDS: TRichEdit;
    RichEditMazUr: TRichEdit;
    RichEditMazProst: TRichEdit;
    RichEdtSperm: TRichEdit;
    RichEditPCR: TRichEdit;
    RichEditIFA: TRichEdit;
    RichEdtUrethBactInoc: TRichEdit;
    RichEdtProstBactInoc: TRichEdit;
    RichEdtMicUrBactInoc: TRichEdit;
    RichEdtUrinBactInoc: TRichEdit;
    RichEditUZIRen: TRichEdit;
    RichEditUZIGenit: TRichEdit;
    RichEditUrScopiaDry: TRichEdit;
    RichEditUrScopiaIrrig: TRichEdit;
    RichEditDrug: TRichEdit;
    RichEditDs: TRichEdit;
    RichEditManip: TRichEdit;
    RichEditRecom: TRichEdit;
    AppEventsStPat: TApplicationEvents;
    TrayIconVisit: TTrayIcon;
    PngImgLstVisit_32gradient: TPngImageList;
    LblKeyBrdLayot: TLabel;
  {$endregion 'standart components of frmStatusPat'}
  {$region 'standart methods of frmStatusPat'}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupCBDocChoiceEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BtnSaveClick(Sender: TObject);
    procedure ChkBoxPollakiuriaClick(Sender: TObject);
    procedure ChkBoxNicturiaClick(Sender: TObject);
    procedure ChkBoxDischargeClick(Sender: TObject);
    procedure RdBtnVisitPrimaryClick(Sender: TObject);
    procedure PgCtrlVisitChange(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnTemplateStPraesensClick(Sender: TObject);
    procedure RdBtnStPraesensTemplClick(Sender: TObject);
    procedure RdBtnStPraesensNonParticularClick(Sender: TObject);
    procedure RdBtnStPreasensNonDynamicsClick(Sender: TObject);
    procedure BtnTemplateStLocalisClick(Sender: TObject);
    procedure RdBtnStLocalisTemplClick(Sender: TObject);
    procedure RdBtnStLocalisNonPathologyClick(Sender: TObject);
    procedure RdBtnProstataTemplClick(Sender: TObject);
    procedure RdBtnProstataNonPathologyClick(Sender: TObject);
    procedure BtnTemplateProstataClick(Sender: TObject);
    procedure BtnPCRTemlateClick(Sender: TObject);
    procedure BtnOAMTemplateClick(Sender: TObject);
    procedure BtnIFATemplateClick(Sender: TObject);
    procedure BtnMazUrTemplateClick(Sender: TObject);
    procedure BtnMazProstTemplateClick(Sender: TObject);
    procedure RichEditOAMChange(Sender: TObject);
    procedure RichEditIFAChange(Sender: TObject);
    procedure RichEditMazUrChange(Sender: TObject);
    procedure RichEditMazProstChange(Sender: TObject);
    procedure BtnLuesListClicktClick(Sender: TObject);
    procedure BtnSpermGrListClick(Sender: TObject);
    procedure BtnBloodTestClick(Sender: TObject);
    procedure BtnUZIRenTemplateClick(Sender: TObject);
    procedure BtnUrScopiaDryTemplateClick(Sender: TObject);
    procedure BtnUZIGenitTemplateClick(Sender: TObject);
    procedure BtnUrScopiaIrrigTemplateClick(Sender: TObject);
    procedure BtnUZIRenFotosClick(Sender: TObject);
    procedure BtnUZIGenitFotosClick(Sender: TObject);
    procedure BtnUrScopiaDryFotosClick(Sender: TObject);
    procedure BtnUrScopiaIrrigFotosClick(Sender: TObject);
    procedure RichEditUZIRenChange(Sender: TObject);
    procedure RichEditUZIGenitChange(Sender: TObject);
    procedure RichEditUrScopiaDryChange(Sender: TObject);
    procedure RichEditUrScopiaIrrigChange(Sender: TObject);
    procedure BtnSelDrugClick(Sender: TObject);
    procedure BtnSelManipClick(Sender: TObject);
    procedure BtnSelDsClick(Sender: TObject);
    procedure BtnSelRecomClick(Sender: TObject);
    procedure RichEditDrugChange(Sender: TObject);
    procedure RichEditManipChange(Sender: TObject);
    procedure RichEditDsChange(Sender: TObject);
    procedure RichEditRecomChange(Sender: TObject);
    procedure DTPickPriemChange(Sender: TObject);
    procedure BtnStPraesensFotoClick(Sender: TObject);
    procedure BtnStLocalisFotoClick(Sender: TObject);
    procedure BtnFotoMazUrClick(Sender: TObject);
    procedure BtnFotoMazProstClick(Sender: TObject);
    procedure BtnFotoAIDSClick(Sender: TObject);
    procedure BtnFotoHBVClick(Sender: TObject);
    procedure BtnFotoRWClick(Sender: TObject);
    procedure BtnFotoIFAClick(Sender: TObject);
    procedure BtnFotoPCRClick(Sender: TObject);
    procedure DBLookupCBClinChoiceEditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure ChkBoxUrSubfebrilClick(Sender: TObject);
    procedure ChkBoxUrDolorLumbClick(Sender: TObject);
    procedure ChkBoxUrDolorMesagastrClick(Sender: TObject);
    procedure ChkBoxUrDolorHypogastrClick(Sender: TObject);
    procedure ChkBoxUrDolorIrradiatClick(Sender: TObject);
    procedure ChkBoxUrPollacClick(Sender: TObject);
    procedure ChkBoxUrNicturiaClick(Sender: TObject);
    procedure ChkBoxUrBloodDashClick(Sender: TObject);
    procedure ChkBoxVaricoceleClick(Sender: TObject);
    procedure CbBoxDischargeVolumeChange(Sender: TObject);
    procedure RdBtnStLocalisNonDynamicsClick(Sender: TObject);
    procedure RdBtnProstataExamRefuseClick(Sender: TObject);
    procedure RdBtnAllergyNoClick(Sender: TObject);
    procedure RdBtnAllergyYesClick(Sender: TObject);
    procedure ChkBoxAnamnesAllergyClick(Sender: TObject);
    procedure ChkBoxBadHabitClick(Sender: TObject);
    procedure ChkBoxAnamSmokeClick(Sender: TObject);
    procedure ChkBoxAndrOperationClick(Sender: TObject);
    procedure ChkBoxAnamnesFamilyClick(Sender: TObject);
    procedure ChkBoxAndrChildClick(Sender: TObject);
    procedure ChkBoxAnamnesAndrSexClick(Sender: TObject);
    procedure CbBoxSexPartnFemaleCountChange(Sender: TObject);
    procedure ChkBoxAnamnesGinekClick(Sender: TObject);
    procedure ChkBoxGinMenopauseClick(Sender: TObject);
    procedure ChkBoxAnamnesGinSexClick(Sender: TObject);
    procedure CbBoxSexPartnMaleCountChange(Sender: TObject);
    procedure BtnTemplAnamAllergyClick(Sender: TObject);
    procedure BtnTemplAnamChldDesClick(Sender: TObject);
    procedure BtnTemplAnamAnthrDesClick(Sender: TObject);
    procedure BtnTemplAndrZPPPClick(Sender: TObject);
    procedure BtnTemplGinZPPPClick(Sender: TObject);
    procedure BtnAIDSTemplateClick(Sender: TObject);
    procedure RichEdtLuesChange(Sender: TObject);
    procedure RichEdtBloodChange(Sender: TObject);
    procedure RichEdtAIDSChange(Sender: TObject);
    procedure RichEdtSpermChange(Sender: TObject);
    procedure BtnUrethBactInocTemplateClick(Sender: TObject);
    procedure BtnProstBactInocTemplateClick(Sender: TObject);
    procedure BtnMicUrBactInocTemplateClick(Sender: TObject);
    procedure RichEdtUrethBactInocChange(Sender: TObject);
    procedure RichEdtProstBactInocChange(Sender: TObject);
    procedure RichEdtMicUrBactInocChange(Sender: TObject);
    procedure ChkBoxIncontinenceClick(Sender: TObject);
    procedure BtnUrinBactInocTemplateClick(Sender: TObject);
    procedure RichEdtUrinBactInocChange(Sender: TObject);
    procedure BtnRichFmtComplaintsClick(Sender: TObject);
    procedure BtnRichFmtSecretStuffClick(Sender: TObject);
    procedure BtnRichFmtStPraesensClick(Sender: TObject);
    procedure BtnRichFmtProstataClick(Sender: TObject);
    procedure BtnRichFmtStLocalisClick(Sender: TObject);
    procedure BtnRichFmtLuesClick(Sender: TObject);
    procedure BtnRichFmtBloodClick(Sender: TObject);
    procedure BtnRichFmtOAMClick(Sender: TObject);
    procedure BtnRichFmtAIDSClick(Sender: TObject);
    procedure BtnRichFmtMazUrClick(Sender: TObject);
    procedure BtnRichFmtMazProstClick(Sender: TObject);
    procedure BtnRichFmtSpermClick(Sender: TObject);
    procedure RichEditPCRChange(Sender: TObject);
    procedure BtnRichFmtPCRClick(Sender: TObject);
    procedure BtnRichFmtIFAClick(Sender: TObject);
    procedure BtnRichFmtUrethBactInocClick(Sender: TObject);
    procedure BtnRichFmtProstBactInocClick(Sender: TObject);
    procedure BtnRichFmtMicUrBactInocClick(Sender: TObject);
    procedure BtnRichFmtUrinBactInocClick(Sender: TObject);
    procedure BtnRichFmtUZIRenClick(Sender: TObject);
    procedure BtnRichFmtUZIGenitClick(Sender: TObject);
    procedure BtnRichFmtUrScopiaDryClick(Sender: TObject);
    procedure BtnRichFmtUrScopiaIrrigClick(Sender: TObject);
    procedure BtnRichFmtDrugClick(Sender: TObject);
    procedure BtnRichFmtDsClick(Sender: TObject);
    procedure BtnRichFmtManipClick(Sender: TObject);
    procedure BtnRichFmtRecomClick(Sender: TObject);
    procedure AppEventsStPatShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnHlpClick(Sender: TObject);
    procedure TrayIconVisitClick(Sender: TObject);
  {$endregion 'standart methods of frmStatusPat'}
  private
    { Private declarations }
    FThreadSaveRec: TThreadSaveRec;
    function ChkExistsDateVisit(ADateTime: TDateTime; PatIDparam, DocIDparam: Variant): Boolean;
    procedure PrepareDBLookUpCBDocChoice(Sender: TObject);
    procedure PrepareDBLookUpCBClinChoice(Sender: TObject);
    procedure ShowComplaintSheet(Sender: TObject);
    procedure ReadyComplaintsText(Sender: TObject);
    procedure ShowAnamnesisSheet(Sender: TObject);
    procedure ShowStPraesensSheet(Sender: TObject);
    procedure ShowLabAnalises(Sender: TObject);
    procedure ShowToolResearch(Sender: TObject);
    procedure ShowTreatmentDs(Sender: TObject);
    procedure SetDefaultSelAttrRichEdt(Sender: TRichEdit);
  public
    { Public declarations }
    //���������� ��������������� ������ �� "��������" �������-���������
    function CallSimpleRichEditor(Sender: TRichEdit) : string;
    procedure CallResearcheLuesList(Sender: TObject);
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmStatusPat: TFrmStatusPat;
  DateStatusPat: TDateTime;
  FSessionDir, //���� � ���������� ��������� �����
  FullPatName, FPath //���� � ��������� ������ � ������
//  MesSplashText //�����, ������������ � ������
                    : String;
  ZPPPboolFlag: Boolean;

implementation

uses MainAndrUnit, TblAnketaUnit, TblClinicUnit, TblDoctorUnit, TblPriceUnit,
     TblTownUnit, VarAndrUnit, StPraesensTemplUnit, ReseachLuesUnit, StrUtils,
     StLocalisTemplUnit, StProstataUnit, MazProstUnit, MazUrethraUnit, OAMUnit,
     PCRUnit, IFAUnit, SpermGrUnit, BloodHormUnit, UZIRenUnit, UZIGenitUnit,
     UrScopiaDryUnit, UrScopiaIrrigUnit, TblDrugsUnit, TblManipUnit, TblDsUnit,
     TblRecomUnit, uImgStPreasens, DMFIBUnit, uImgStLocalis, uImgMazPr,
     uImgUZIRen, uImgUZIGenit, uImgMazUr, uImgUrScopiaDry, uImgUrScopiaIrrig,
     uImgRWFotos, uImgAIDSFotos, uImgHbsAgFotos, uImgIFAFotos, uImgPCRFotos,
     uFrmAllergyChoice, uFrmChildDes, uFrmAnthrDes, uFrmZPPP, uFrmAIDS, UFrmUrethBactInoc,
     uFrmMicUrBactInoc, uFrmProstBactInoc, uFrmUrinBactInoc, uRichEdtor, ShedulUnit, uSplash;

var
    AnamListNo //����� ��������� �� ������� "�������"
              : Integer;
    FocusFlag, CloseFrmPermition: Boolean;


{$R *.dfm}

(*****************************************************************************)
(*                                                                           *)
(*                      "�������" ��������� � �������                        *)
(*                                                                           *)
(*****************************************************************************)

//----------------------------------------------------------------------------

procedure TFrmStatusPat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  
  //��������� ������� ���������
  LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

  //��������� ��������� �����
  NiceSetFrmStatPat.SaveSettings;

  //������ ����� ��� ��������� ������
  if DirectoryExists(FPath) then RemoveNoEmptyDir(FPath);
end;

procedure TFrmStatusPat.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose:= (Self.ModalResult <> mrNone);

//���� ��������� ����
if (Self.ModalResult = mrCancel) then
  begin
    if Application.MessageBox('����� ��������� ���� ������ ��� ����������� ����� ��������. �� �������, ��� ������ '
                             + '������� ����?','������ ��������� ������',MB_ICONINFORMATION + MB_YESNO) = IDYes
      then
        begin
          with DMFIB do
            begin
              if DSetVisitMain.Modified then DSetVisitMain.Cancel;
              if DSetVisitLabor.Modified then DSetVisitLabor.Cancel;
              if DSetVisitExamin.Modified then DSetVisitExamin.Cancel;
              if DSetVisitBlob.Modified then DSetVisitBlob.Cancel;
            end;
          CanClose:= true;
        end;
  end;

  //����������� LookUp �� ������
  with FrmStatusPat.DBLookupCBDocChoice do
    begin
      ListSource:= nil;
      ListField:= '';
      KeyField:= '';
    end;

end;
//----------------------------------------------------------------------------
//������� �� ������ "������"
procedure TFrmStatusPat.BtnCancelClick(Sender: TObject);
begin
  FrmSenderModalResult:= mrCancel;
  Self.ModalResult:= FrmSenderModalResult;
end;

//----------------------------------------------------------------------------
//��������� ��������� (������� �� ������ "���������")
procedure TFrmStatusPat.BtnSaveClick(Sender: TObject);
var TmpID, i, LenStr, Old_VarID_Tbl_VisitMain: Integer;
    TmpStr, Tstr, TmpSpermTxt: string;
    TmpRE: TRichEdit;//���-���� ��� ��������� ����

    msComplaints, msSecretStuff, msStPraesens, msStLocalis, msStProstata,
    msLues, msBlood, msAIDS, msSperm,
    msUrethBactInoc, msUrinBactInoc, msProstBactInoc, msMicUrBactInoc,
    msOAM, msMazUrethra, msMazProst, msIFA, msPCR, msUZIRen, msUZIGenit, msUrScopiaDry,
    msUrScopiaIrrig, msDrugs, msManip, msDs, msRecom: TMemoryStream;

begin
//TmpID:= 0;
//LenStr:= 0;
TmpStr:= '';
Tstr:= '';
SenderTag:= 665;//�������� ���������� ����� ���� ������-�������

{$region '��������� ��������� � ���������� ������'}
//���������, �� ����� �� ��� ������� ������� ������, ���� �� �� �����������
if not VisitPatientFlag then//���� ������ �������������
  with DSetStPatTmp do
    begin
      if Active then Close;
      SQLs.SelectSQL.Text:= 'SELECT VM.ID_VISITMAIN FROM TBL_VISITMAIN VM WHERE VM.ID_VISITMAIN = :prmVM_ID';
      Prepare;
      ParamByName('prmVM_ID').Value:= DMFIB.DSetSinglePat.FN('ID_VISITMAIN').Value;
      Open;
      VisitPatientFlag:= IsEmpty;//���� ����� ����, �� ������������� ������� ������ �����������
    end;

//��������� ������������� DBLookUpCB � ���������
if DMFIB.DSetTemp.Active then
  begin
    if DMFIB.DSetTemp.IsEmpty then
      begin
      PgCtrlVisit.ActivePageIndex:= 0;//������� �� ������� � �������
      Application.MessageBox('��������� ������� ��������!', '������������ ������!',
                              MB_OK + MB_ICONWARNING);
      DBLookupCBDocChoice.SetFocus;
      Abort;
      end;

    with DSetStPatTmp do
      begin
        if Active then Close;
        SQLs.SelectSQL.Clear;
        SQLs.SelectSQL.Text:= 'SELECT ID_DOCTOR FROM TBL_DOCTOR WHERE ID_DOCTOR = :prmID_DOCTOR';
        Prepare;
        ParamByName('prmID_DOCTOR').Value:= DBLookupCBDocChoice.KeyValue;
        Open;
      end;

    //��������, �� ������ �� ��������� ������ �� ����
    if DSetStPatTmp.IsEmpty then
      begin
        Application.MessageBox(PChar('��������! ���� ' + Trim(DMFIB.DSetTemp.FN('FIODOC').AsString)
          + ' � ���� ������ �� ������. ��������� �����, ������������ �� ������ "�������������" ��� ����� ������� '
          + '���������� ���� ����� �� ����, ���� �� ������� ������ ��������. ���������� ������ ������ ����� '
          + '������.'), '������������ ������',MB_ICONINFORMATION);
        PrepareDBLookUpCBDocChoice(Sender);//��������� �����
        if DBLookupCBDocChoice.CanFocus then DBLookupCBDocChoice.SetFocus;
        Abort;
      end;
  end;

//��������� ������������� DBLookUpCB � ���
if DMFIB.DSetLookUpClin.Active then
  begin
    if DMFIB.DSetLookUpClin.IsEmpty then
      begin
        PgCtrlVisit.ActivePageIndex:= 0;//������� �� ������� � �������
        Application.MessageBox('��������� ������� ���!', '������������ ������!',
                                MB_OK + MB_ICONWARNING);
        DBLookupCBClinChoice.SetFocus;
        Abort;
      end;

    with DSetStPatTmp do
      begin
        if Active then Close;
        SQLs.SelectSQL.Clear;
        SQLs.SelectSQL.Text:= 'SELECT ID_CLINIC FROM TBL_CLINIC WHERE ID_CLINIC = :prmID_CLINIC';
        Prepare;
        ParamByName('prmID_CLINIC').Value:= DBLookupCBClinChoice.KeyValue;
        Open;
      end;

    //��������, �� ������� �� ��������� ��� �� ����
    if DSetStPatTmp.IsEmpty then
      begin
        Application.MessageBox(PChar('��������! ��� "' + Trim(DMFIB.DSetLookUpClin.FN('CLIN_NAME').AsString)
          + '" � ���� ������ �� �������. ��������� �����, ������������ �� ������ "�������������" ��� ����� '
          + '������� �������� ���� ������� �� ����, ���� �� ������� ������ ��������. ���������� ������ '
          + '������ �������-������������c���� ����������(���) ������.'),
            '������������ ������',MB_ICONINFORMATION);

        PrepareDBLookUpCBClinChoice(Sender);//��������� �����
        if DBLookupCBClinChoice.CanFocus then DBLookupCBClinChoice.SetFocus;
        Abort;
      end;
  end;

//���� ��������� ������
if VisitPatientFlag then //��������, ��� �� ��� � �������� ������� � ������� ����� �� ��� �����
begin
  with DMFIB, DSetTmp_2 do
    begin
      if Active then Close;

      SQLs.SelectSQL.Text:= 'SELECT VM.DATEVISIT '
                            + 'FROM TBL_VISITMAIN VM '
                            + 'LEFT JOIN TBL_DOCTOR D ON (VM.VIS_LINKDOCTOR = D.ID_DOCTOR) '
                            + 'LEFT JOIN TBL_ANKETA A ON (VM.VIS_LINKANKETA = A.ID_ANKETA) '
                            + 'WHERE VM.DATEVISIT = :prmDateVisit AND '
                            + 'VM.VIS_LINKANKETA = :prmIDPat AND D.ID_DOCTOR = :prmIDDoc';

      Prepare;
      ParamByName ('prmDateVisit').Value:= DTPickPriem.DateTime;
      ParamByName('prmIDPat').Value:= DSetAnketa.FN('ID_ANKETA').Value;
      ParamByName('prmIDDoc').Value:= DBLookupCBDocChoice.KeyValue;
      Open;

      if not DSetTmp_2.IsEmpty then //���� ����� ������ ����
      begin
        //������������� ������ � ����������� ��������
        if not DSetDoctor.IsEmpty then
          begin
            if not DSetDoctor.Active then DSetDoctor.Open;
            if not DSetDoctor.IsEmpty then
                              DSetDoctor.Locate('ID_DOCTOR',DBLookupCBDocChoice.KeyValue,[]);
          end;

        if DSetAnketa.FN('SEX').AsInteger = 1
          then
            TmpStr:= '��������! ������� '
          else
            TmpStr:= '��������! ��������� ';

        TmpStr:= TmpStr + Trim(FrmMainProg.LblStatusSingle.Caption) + ', ��� ';

        if DSetAnketa.FN('SEX').AsInteger = 1
           then
             TmpStr:= TmpStr + '���'
           else
             TmpStr:= TmpStr + '����';

        TmpStr:= TmpStr + ' ' + FormatDateTime('DD.MM.YYYY',DTPickPriem.DateTime) + ' �. �� ������ � ����� '
        + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,2) + ' '
        + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
        AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.',
        AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.',
        (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 2)
        + ' ����������, ������� ���������� ����, ����� �������� ����� '
        + '����� � ����� �����, ���� �������������� ��� ��������� ������ �� '
        + FormatDateTime('DD.MM.YYYY',DTPickPriem.DateTime) + ' �.';

        Application.MessageBox(PChar(TmpStr),PChar('������ ���������� ������'), MB_ICONINFORMATION);
        Exit;
      end;
    end;

end;
//    //���� ����
//    if ChkExistsDateVisit(DTPickPriem.DateTime,DMFIB.DSetAnketa.FN('ID_ANKETA').Value,
//                                                                      DBLookupCBDocChoice.KeyValue)
//      then //����������� (������ �������) �� ���� � �������� �����
//        begin
//          ShowMessage('ChkExistsDateVisit: abort');
//          Abort;
//        end;


//������������ ������� � "���������������" ��������
with DMFIB, DSetSinglePat do
  begin
    DSSinglePatDataChange(Sender,FN('ID_VISITMAIN'));
  end;{with}

//���������� ID �������������� ������������ ���������
VarID_Tbl_Clinic:= DBLookupCBClinChoice.KeyValue;
VarID_Tbl_Doctor:= DBLookupCBDocChoice.KeyValue;

{$endregion}

FrmSenderModalResult:= mrNone;

FThreadSaveRec:= TThreadSaveRec.Create(True);
Self.Hide;//������� ����� �� ����� ������ ������
try
  frmSplash:= TfrmSplash.Create(Self);
  if FThreadSaveRec.Suspended then FThreadSaveRec.Resume;
  try
    frmSplash.ShowModal;
  finally
    FreeAndNil(frmSplash);
  end;
finally
  FreeAndNil(FThreadSaveRec);
end;

if FrmSenderModalResult = mrNone
  then Self.Show//������� �����, ���� ���� ������ ��������� ������
  else Self.ModalResult:= FrmSenderModalResult;
end;

//----------------------------------------------------------------------------
//����� �������
procedure TFrmStatusPat.PgCtrlVisitChange(Sender: TObject);
begin
//��������� ������ "����-����"
BtnPrev.Enabled:= not (PgCtrlVisit.ActivePageIndex = 0);
BtnNext.Enabled:= not (PgCtrlVisit.ActivePageIndex = Pred(PgCtrlVisit.PageCount));

if PgCtrlVisit.ActivePageIndex = 1
  then  //���� ��� ������ ("�������") �������
    begin
    AnamListNo:= AnamListNo + 1;//�������� ����� ��������� �� �������
    ReadyComplaintsText(Sender);//���������� ����� �����

    if AnamListNo = 1 //���� �������� �� ��� ������� � ������ ���
      then // �� ��������� ���� ����� ��� ��������������
        RichEditComplaints.Text:= TextComplaint
      else // ����� ����������� � ��������� ����������
        if (Trim(TextComplaint) <> Trim(RichEditComplaints.Text)) then
          if Application.MessageBox('����� ��������� ������ �������� ������ ����� �������� �� ����� '
                 + '��������������. ��������� ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
            then RichEditComplaints.Text:= TextComplaint;//��������� ���������
    end {if..then PageIndex =1}
  else //���� ��� �� ������ �������
    begin
    TextComplaint:= Trim(RichEditComplaints.Text);
    end;{if..else PageIndex =1}

//���� ��� ������� "�������", �� ���������� ��
if PgCtrlVisit.ActivePageIndex = 3 then ShowLabAnalises(Sender);
end;

//----------------------------------------------------------------------------
//��������� ������  ������ ����� � ����������� �� ��������� �����
procedure TFrmStatusPat.ReadyComplaintsText(Sender: TObject);
var DolorCheck,
    BadSensCheck,
    ColicSensCheck,
    DisuriaCheck,
    EjaculCheck,
    HypohondriaCheck,
    VasaCheck: Boolean;
    TmpStr: AnsiString;
begin

// ==== ��������� ����� ����� ====
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then TmpStr:= '��������� '
  else TmpStr:= '���������� ';
TmpStr:= TmpStr + FormatDateTime('dd' + '.' + 'MM' + '.' + 'YY',DTPickPriem.DateTime);

if PgCtrlComplaint.ActivePageIndex = 0
  then //������� "��������������� ������"
    begin
      //��������� ������������ ������� � ��� ��� ���� GroupBox'�
      //----- ������� ������� -----
      DolorCheck:= (ChkBoxDolorPubica.Checked or ChkBoxDolorPerineum.Checked or
                    ChkBoxDolorInguinal.Checked or ChkBoxDolorTestis.Checked or
                    ChkBoxDolorLumbo.Checked or ChkBoxDolorSacrum.Checked or
                    ChkBoxDolorPenisDetumesc.Checked or ChkBoxDolorPenisErect.Checked);

      //*** ----- ����������� ������
      /// ==== ����������
      BadSensCheck:= (ChkBoxBadSensUreth.Checked or ChkBoxBadSensPerineum.Checked);

      /// === ������� ����
      ColicSensCheck:= (ChkBoxColicSensUreth.Checked or ChkBoxColicSensPerineum.Checked);

      //----- ������������ ������� -----
      DisuriaCheck:= (ChkBoxPollakiuria.Checked or ChkBoxDolorMiccia.Checked or
                      ChkBoxNicturia.Checked or ChkBoxStranguria.Checked or
                      ChkBoxVesUrinUncomplete.Checked or ChkBoxIshuria.Checked or
                      ChkBoxIncontinence.Checked);

      //----- ��������������� ������� -----
      EjaculCheck:= (ChkBoxFastEjacul.Checked or ChkBoxAnEjacul.Checked or
                     ChkBoxDolorEjacul.Checked or ChkBoxBloodEjacul.Checked or
                     ChkBoxIdleEjacul.Checked or ChkBoxSlowEjacul.Checked);

      //----- ��������������� ������� -----
      HypohondriaCheck:= (ChkBoxLowLibido.Checked or ChkBoxLowTonus.Checked or
                          ChkBoxLowVozbuzhd.Checked);

      //----- ���������� ������� -----
      VasaCheck:= (ChkBoxLowErection.Checked or ChkBoxSlowTumesc.Checked or
                   ChkBoxBadErection.Checked or ChkBoxNoErection.Checked or
                   ChkBoxPenisDeform.Checked or ChkBoxVaricocele.Checked);

      //>> ���� �� ���� ����� �� �������
      if not(DolorCheck or
             BadSensCheck or
             ColicSensCheck or
             DisuriaCheck or
             EjaculCheck or
             HypohondriaCheck or
             ChkBoxDischarge.Checked or //----- ������������ ������� -----
             VasaCheck)
             and ChkBoxMorningErection.Checked //������� �� ����� �������� �� ��������� !!!!
          then {if..then  ��� ������ �� �������� - ����� ��� }
            begin
              TmpStr:= TmpStr + '. �� ������ ������� ������� ����� �� �����������.';
              TextComplaint:= Trim(TmpStr);//�������� ��������������� ����� ����������
              Exit;//�������, �.�. ������ ����� �� ���������
            end
          else //����� ���� ���� ����� ������� ��� ����� ������� � "�������� �������"
            begin
              TmpStr:= TmpStr + ' � �������� �� ';

              //----- ������� ������� -----
              if DolorCheck then
                begin
                  TmpStr:= TmpStr + '���� ';
                  if ChkBoxDolorPubica.Checked
                    then TmpStr:= TmpStr + '��� �����, ';
                  if ChkBoxDolorPerineum.Checked
                    then TmpStr:= TmpStr + '� �����������, ';
                  if ChkBoxDolorInguinal.Checked
                    then TmpStr:= TmpStr + '� ������� �������, ';
                  if ChkBoxDolorTestis.Checked
                    then TmpStr:= TmpStr + '� ������, ';
                  if ChkBoxDolorLumbo.Checked
                    then TmpStr:= TmpStr + '� ���������� �������, ';
                  if ChkBoxDolorSacrum.Checked
                    then TmpStr:= TmpStr + '� ������� �������, ';

                  if ChkBoxDolorPenisDetumesc.Checked or ChkBoxDolorPenisErect.Checked then
                    begin
                      if ChkBoxDolorPenisDetumesc.Checked and ChkBoxDolorPenisErect.Checked
                        then
                          TmpStr:= TmpStr + '� ������� ����� ��� ����������� �� �������, '
                        else
                          begin
                            if ChkBoxDolorPenisDetumesc.Checked
                              then
                                TmpStr:= TmpStr + '� ������� ����� ��� �������, '
                              else
                                TmpStr:= TmpStr + '� ������� ����� ��� �������, ';
                          end;
                    end;


                  //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                  if BadSensCheck or ColicSensCheck or
                     DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then DolorCheck}

              ///*** ����������� �����
              if BadSensCheck then
                begin
                  TmpStr:= TmpStr + '���������� �������� ';
                  if ChkBoxBadSensUreth.Checked and ChkBoxBadSensPerineum.Checked
                    then
                      TmpStr:= TmpStr + '� ������ � �����������,'
                    else
                      begin
                        if ChkBoxBadSensUreth.Checked
                          then
                            TmpStr:= TmpStr + '� ������,'
                          else
                            TmpStr:= TmpStr + '� �����������,';
                      end;
                  //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                  if ColicSensCheck or
                     DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then BadSensCheck}

              ///*** ����������� �����
              if ColicSensCheck then
                begin
                  TmpStr:= TmpStr + '���� ';
                  if ChkBoxColicSensUreth.Checked and ChkBoxColicSensPerineum.Checked
                    then
                      TmpStr:= TmpStr + '� ������ � �����������,'
                    else
                      begin
                        if ChkBoxColicSensUreth.Checked
                          then
                            TmpStr:= TmpStr + '� ������,'
                          else
                            TmpStr:= TmpStr + '� �����������,';
                      end;
                  //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                  if DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then ColicSensCheck}

              //----- ������������ ������� -----
              if DisuriaCheck then
                begin
                  if ChkBoxPollakiuria.Checked then
                    begin
                      TmpStr:= TmpStr + '��������� �������������� �� '
                               + IntToStr(SpEdtMicciaCount.Value) + ' �/����� � ������� '
                               + IntToStr(SpEdtPollaciuriaAge.Value);

                      if SpEdtPollaciuriaAge.Value <> 1
                        then
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxPollaciuriaPeriod.Text) + ', '
                        else
                          case CbBoxPollaciuriaPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' ���, ';
                            1: TmpStr:= TmpStr + ' ������, ';
                            2: TmpStr:= TmpStr + ' ����, ';
                            3: TmpStr:= TmpStr + ' ������, ';
                          end;
                    end;

                   if ChkBoxDolorMiccia.Checked
                    then TmpStr:= TmpStr + '����������� ��������������, ';

                   if ChkBoxNicturia.Checked then
                    begin
                      TmpStr:= TmpStr + '�������� �� ' + IntToStr(SpEdtNicturiaCount.Value) +
                               ' �/���� � ������� ' + IntToStr(SpEdtNicturiaAge.Value);

                      if SpEdtNicturiaAge.Value <> 1
                        then
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxNicturiaPeriod.Text) + ', '
                        else
                          case  CbBoxNicturiaPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' ���, ';
                            1: TmpStr:= TmpStr + ' ������, ';
                            2: TmpStr:= TmpStr + ' ����, ';
                            3: TmpStr:= TmpStr + ' ������, ';
                          end;
                    end;

                   if ChkBoxStranguria.Checked
                    then TmpStr:= TmpStr + '����������� ��� ��������������, ';

                   if ChkBoxIshuria.Checked
                     then TmpStr:= TmpStr + '�������� ��������������, ';

                   if ChkBoxIncontinence.Checked
                     then TmpStr:= TmpStr + '���������� (�����������) ���� '
                                                                        + Trim(CbBoxIncontinenceCase.Text) + ', ';
                                                                        
                   if ChkBoxVesUrinUncomplete.Checked
                    then TmpStr:= TmpStr + '������� ��������� ����������� �������� ������, ';

                   //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                   if EjaculCheck or HypohondriaCheck or
                      ChkBoxDischarge.Checked or VasaCheck or
                      (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then DisuriaCheck}

              //----- ��������������� ������� -----
              if EjaculCheck then
                begin
                   if ChkBoxFastEjacul.Checked or ChkBoxSlowEjacul.Checked then
                    begin
                      if ChkBoxFastEjacul.Checked and ChkBoxSlowEjacul.Checked
                        then
                          TmpStr:= TmpStr + '����������� �������� ���������������� �������������� '
                          + '� ��������� ������ ����������� �������, '
                        else
                          begin
                            if ChkBoxFastEjacul.Checked
                              then
                                TmpStr:= TmpStr + '��������������� ��������������, '
                              else
                                TmpStr:= TmpStr + '������ ���������� ������, ';
                          end;

                    end;

                   if ChkBoxAnEjacul.Checked
                    then TmpStr:= TmpStr + '���������� �������� ��� �������, ';

                   if ChkBoxDolorEjacul.Checked
                    then TmpStr:= TmpStr + '����������� ��������������, ';

                   if ChkBoxBloodEjacul.Checked
                    then TmpStr:= TmpStr + '������� ����� � ��������, ';

                   if ChkBoxIdleEjacul.Checked
                    then TmpStr:= TmpStr + '�������, ����� ������, ';

                   //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                   if HypohondriaCheck or ChkBoxDischarge.Checked or VasaCheck or
                      (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then EjaculCheck}

              //----- ��������������� ������� -----
              if HypohondriaCheck then
                begin
                   if ChkBoxLowLibido.Checked
                    then TmpStr:= TmpStr + '�������� �������� � ��������, ';

                   if ChkBoxLowTonus.Checked
                    then TmpStr:= TmpStr + '������ ���, ';

                   if ChkBoxLowVozbuzhd.Checked
                    then TmpStr:= TmpStr + '������ ������������ ��� ������� ���� � ���������� ' +
                                  '������� ����������, ';

                   //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                   if ChkBoxDischarge.Checked or VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then HypohondriaCheck}

              //----- ������������ ������� -----
              if ChkBoxDischarge.Checked then
                begin
                  if CbBoxDischargeVolume.ItemIndex <> 3
                    then
                      begin
                        TmpStr:= TmpStr + Trim(CbBoxDischargeRegul.Text) + ' '
                          + Trim(CbBoxDischargeVolume.Text) + ' '
                          + Trim(CbBoxDischargeNature.Text) + ' ��������� � ������� '
                          + IntToStr(SpEdtUrethAge.Value);

                        if (RightStr(IntToStr(SpEdtUrethAge.Value),1) = '1')
                                                            and (SpEdtUrethAge.Value <> 11)
                          then
                            case CbBoxDischargeDurat.ItemIndex of
                              0: TmpStr:= TmpStr + ' ���, ';
                              1: TmpStr:= TmpStr + ' ������, ';
                              2: TmpStr:= TmpStr + ' ����, ';
                              3: TmpStr:= TmpStr + ' ������, ';
                            end
                          else
                            TmpStr:= TmpStr + ' ' + Trim(CbBoxDischargeDurat.Text) + ', ';
                      end
                    else
                      TmpStr:= TmpStr + '��������� ��������� �� ������, ';

                  //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                  if VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//����������
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//������ �����
                end;{if..then ChkBoxDischarge.Checked}

              //--------- ���������� ������� --------------------
              if VasaCheck then
                begin
                   if ChkBoxNoErection.Checked or ChkBoxSlowTumesc.Checked
                                                                  or ChkBoxLowErection.Checked then
                    if ChkBoxNoErection.Checked and ChkBoxSlowTumesc.Checked
                                                                      and ChkBoxLowErection.Checked
                      then
                        TmpStr:= TmpStr + '����������� ������ ���������� ������� ��� ��������� '
                                          + '� ������ "����������" �������� ����� ��� �����������, '
                                          + '���� ������������ ��� ���������� �������� ����, '
                      else
                        begin
                          if ChkBoxNoErection.Checked and ChkBoxSlowTumesc.Checked
                            then
                              TmpStr:= TmpStr + '����������� ������ ���������� ������� ��� '
                                                                + '��������� ����������� �������, '
                            else
                              begin
                                if ChkBoxNoErection.Checked and ChkBoxLowErection.Checked
                                  then
                                    TmpStr:= TmpStr + '����������� ������ ���������� ������� ��� '
                                            + '������ "����������" �������� ����� ��� �����������, '
                                            + '���� ������������ ��� ���������� �������� ����, '
                                  else
                                    begin
                                      if ChkBoxSlowTumesc.Checked and ChkBoxLowErection.Checked
                                        then
                                          TmpStr:= TmpStr + '��������� � ������ "����������" ' +
                                                                  '�������� ����� ��� �����������, '
                                        else
                                          begin
                                            if ChkBoxNoErection.Checked
                                              then
                                                TmpStr:= TmpStr + '���������� ������� ' +
                                                                                '��� �����������, ';
                                            if ChkBoxLowErection.Checked
                                              then
                                                TmpStr:= TmpStr + '������ "����������" ' +
                                                                 '�������� ����� ��� �����������, ';
                                            if ChkBoxSlowTumesc.Checked
                                              then
                                                TmpStr:= TmpStr + '��������� "����������" ��������'
                                                                       + ' ����� ��� �����������, ';
                                          end;
                                    end;
                              end;
                        end;

                   if ChkBoxBadErection.Checked
                    then TmpStr:= TmpStr + '����������� ������� ��� ������� ����, ';

                   if ChkBoxPenisDeform.Checked
                    then
                      TmpStr:= TmpStr + '����������� � ���������� �������� ����� ��� �������, ';

                   if ChkBoxVaricocele.Checked
                    then
                      begin
                      TmpStr:= TmpStr + '���������� ��� ��������� �������� '
                                                                        + Trim(CbBoxVaricSide.Text);

                         case CbBoxVaricPosit.ItemIndex of
                           0: TmpStr:= TmpStr + ' � �������������� ���������, ';
                           1: TmpStr:= TmpStr + ' � ������������ ���������, ';
                           2: TmpStr:= TmpStr + ' ��� �����������, ';
                         end;

                      end;

                end; {if..then VasaCheck}

              if not ChkBoxMorningErection.Checked
                then TmpStr:= TmpStr + '���������� �������� �������.';


              TmpStr:= WriteSymbolToEndString(TmpStr,'.');//������ ������������� �����
            end;{if..else ������� ���� ���� ����� �� ���������� ��������}
    end;

if PgCtrlComplaint.ActivePageIndex = 1
  then // ������� "������������� ������"
    begin
      //��������� ������������ ������� � ��� ��� ���� GroupBox'�
      //---- ������� ������������
      if ChkBoxUrAsthenia.Checked or
         ChkBoxUrFlabbiness.Checked or
         ChkBoxUrHyperhidros.Checked or
         ChkBoxUrSubfebril.Checked
        then HypohondriaCheck:= True
        else HypohondriaCheck:= False;

      //----- ������� ������� -----
      if ChkBoxUrDolorLumb.Checked or
         ChkBoxUrDolorSacr.Checked or
         ChkBoxUrDolorMesagastr.Checked or
         ChkBoxUrDolorHypogastr.Checked or
         ChkBoxUrDolorPubica.Checked or
         ChkBoxUrDolorIrradiat.Checked
          then DolorCheck:= True
          else DolorCheck:= False;

      //----- ������������ ������� -----
      if ChkBoxUrColic.Checked or
         ChkBoxUrPollac.Checked or
         ChkBoxUrNicturia.Checked or
         ChkBoxUrNotFullVesic.Checked or
         ChkBoxUrSediment.Checked or
         ChkBoxUrFlakes.Checked or
         ChkBoxUrBloodDash.Checked
          then DisuriaCheck:= True
          else DisuriaCheck:= False;

      //>> ���� �� ���� ����� �� �������
      if not (HypohondriaCheck or DolorCheck or DisuriaCheck)
        then //����� ���
          begin
            TmpStr:= TmpStr + '. �� ������ ������� ������� ����� �� �����������.';
            TextComplaint:= Trim(TmpStr);//�������� ��������������� ����� ����������
            Exit;//�������, �.�. ������ ����� �� ���������
          end
        else //���������� ���������� ������
          begin
            TmpStr:= TmpStr + ' � �������� �� ';
            //----- ������� ������������ -----
            if HypohondriaCheck then
              begin
                if ChkBoxUrAsthenia.Checked then TmpStr:= TmpStr + '��������, ';
                if ChkBoxUrFlabbiness.Checked then TmpStr:= TmpStr + '�������, ';
                if ChkBoxUrHyperhidros.Checked then TmpStr:= TmpStr + '����������, ';
                if ChkBoxUrSubfebril.Checked then
                    TmpStr:= TmpStr + '��������� ����������� '
                      + CbBoxUrSubfebril.Items[CbBoxUrSubfebril.ItemIndex] + ' �������� �������, ';
                //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                if DolorCheck or DisuriaCheck
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '; '
                  else TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '.';
              end;

            //----- ������� ������� -----
            if DolorCheck then
              begin
                if ChkBoxUrDolorLumb.Checked
                  then TmpStr:= TmpStr + '���� � ���������� ������� '
                   + CbBoxUrDolorLumb.Items[CbBoxUrDolorLumb.ItemIndex]  + ', ';
                if ChkBoxUrDolorSacr.Checked then TmpStr:= TmpStr + '���� � ���������� �������, ';
                if ChkBoxUrDolorMesagastr.Checked
                  then TmpStr:= TmpStr + '���� � ����������� '
                    + CbBoxUrDolorMesogastr.Items[CbBoxUrDolorMesogastr.ItemIndex] + ', ';
                if ChkBoxUrDolorHypogastr.Checked
                  then TmpStr:= TmpStr + '���� � ����������� '
                    + CbBoxUrDolorHypogastr.Items[CbBoxUrDolorHypogastr.ItemIndex] + ', ';
                if ChkBoxUrDolorPubica.Checked then TmpStr:= TmpStr + '���� ��� �����, ';
                if ChkBoxUrDolorIrradiat.Checked
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + ' � ����������� '
                                      + CbBoxUrDolorIrradiat.Items[CbBoxUrDolorIrradiat.ItemIndex] + ', ';
                //���������, �������� �� ��������� �����, �.�. ���������� �� ������
                if DisuriaCheck
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '; '
                  else TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '.';
              end;

            //----- ������������ ������� -----
            if DisuriaCheck then
              begin
                if ChkBoxUrColic.Checked then TmpStr:= TmpStr + '���� ��� ��������������, ';
                if ChkBoxUrPollac.Checked
                  then
                    begin
                      TmpStr:= TmpStr + '�������� �������������� �� '
                                                + IntToStr(SpEdtUrPollacCount.Value) + ' �/����� '
                                                + '� ������� ' + IntToStr(SpEdtUrPollacAge.Value);

                      //����������� ��������� ����� ����-�����
                      if (RightStr(IntToStr(SpEdtUrPollacAge.Value),1) = '1')
                                                                  and (SpEdtUrPollacAge.Value <> 11)
                        then //����� ��������� �� "1" � ��� �� "11"
                          case CbBoxUrPollacPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' ���, ';
                            1: TmpStr:= TmpStr + ' ������, ';
                            2: TmpStr:= TmpStr + ' ����, ';
                            3: TmpStr:= TmpStr + ' ������, ';
                          end
                        else
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxUrPollacPeriod.Text) + ', ';
                    end;

                if ChkBoxUrNicturia.Checked
                  then
                    begin
                      TmpStr:= TmpStr + '�������� ' + IntToStr(SpEdtUrNictCount.Value)
                                      + ' ��� �� ���� � ������� ' + IntToStr(SpEdtUrNictAge.Value);

                      //����������� ��������� ����� ����-�����
                      if (RightStr(IntToStr(SpEdtUrNictAge.Value),1) = '1')
                                                                  and (SpEdtUrNictAge.Value <> 11)
                        then //����� ��������� �� "1" � ��� �� "11"
                          case CbBoxUrNictPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' ���, ';
                            1: TmpStr:= TmpStr + ' ������, ';
                            2: TmpStr:= TmpStr + ' ����, ';
                            3: TmpStr:= TmpStr + ' ������, ';
                          end
                        else
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxUrNictPeriod.Text) + ', ';
                    end;

                if ChkBoxUrNotFullVesic.Checked
                  then TmpStr:= TmpStr + '������� ��������� ����������� �������� ������, ';
                if ChkBoxUrSediment.Checked then TmpStr:= TmpStr + '������� ������ � ����, ';
                if ChkBoxUrFlakes.Checked then TmpStr:= TmpStr + '������� ������� � ����, ';
                if ChkBoxUrBloodDash.Checked then
                  begin
                    TmpStr:= TmpStr + '������� ����� � ���� ';
                    case CbBoxUrBloodDash.ItemIndex of
                      0: TmpStr:= TmpStr + '� ������ ���� ��������������.';
                      1: TmpStr:= TmpStr + '� ����� ���� ��������������.';
                      2: TmpStr:= TmpStr + '�� ���������� ����� ���� ��������������.';
                    end;
                  end;
              end;
            TmpStr:= WriteSymbolToEndString(TmpStr,'.');//������ ������������� �����
          end;
    end;

if PgCtrlComplaint.ActivePageIndex = 2
  then //������� "������"
    begin
      TmpStr:= TmpStr + ' � ����� ';

      if RdBtnAnothPrevCheckup.Checked
        then TmpStr:= TmpStr + '������������� ������������.';

      if RdBtnAnothPrevTreat.Checked
        then TmpStr:= TmpStr + '������������� ������� �� ������ (!!! �������� !!!)';

      if RdBtnAnothPlanGravid.Checked
        then TmpStr:= TmpStr + '������������� ������������ � ���������� ������� ����� ����������� '
                                                               + '������������� ������� ���������.';
      if RdBtnAnothContrCheckup.Checked
        then TmpStr:= TmpStr + '������������ ������������ ����� ������������ ����� �������.';

      if RdBtnAnothPlanTreat.Checked
        then TmpStr:= TmpStr + '������� � �������� ������� �� ������ (!!! �������� !!!)';

      if RdBtnAnothResrchRezlt.Checked
        then TmpStr:= TmpStr + '������� � ������������ ������������.';

      TmpStr:= WriteSymbolToEndString(TmpStr,'.');//������ ������������� �����    
    end;

TextComplaint:= Trim(TmpStr);//�������� ��������������� ����� ����������
end;

//----------------------------------------------------------------------------
//������� �� ������ "�����"
procedure TFrmStatusPat.BtnNextClick(Sender: TObject);
begin
if PgCtrlVisit.ActivePageIndex < Pred(PgCtrlVisit.PageCount)//���� �� ��������� ��������
  then PgCtrlVisit.SelectNextPage(True);//�������� ������
end;

//----------------------------------------------------------------------------
//������� �� ������ "�����"
procedure TFrmStatusPat.BtnPrevClick(Sender: TObject);
begin
if PgCtrlVisit.ActivePageIndex > 0//���� �� ������ ��������
  then PgCtrlVisit.SelectNextPage(False);//�������� �����
end;

//----------------------------------------------------------------------------
//�������, ������������ ��� �������� �����
procedure TFrmStatusPat.FormCreate(Sender: TObject);
var
  dt: TDateTime;
begin
  NiceSetFrmStatPat.RegKey:= NiceSetRegKeyPath;
  // ������ ��������� �����
  NiceSetFrmStatPat.LoadSettings;

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

  //�� ������� �������� ��������� ����� ��� ������
  CloseFrmPermition:= False;

  FocusFlag:= True;//�������� �� ������� �����

  //��������� ��������� ��� ���������� �����
  dt:= Now;
  FSessionDir:= FormatDateTime('yyyy_mm_dd_hh_mm_ss',dt);

  //�������� ���� � ����� c:\Users\%USERPROFILE%\local\armdoc\session ��� �������� ��������� ������
  FPath:= GetEnvironmentVariable('USERPROFILE') + '\AppData\local\arm_doc\session\' + FSessionDir;

  if not DirectoryExists(FPath) then ForceDirectories(FPath);

  //���������� ������� ���.������������ � ����������� �� �������� �����
  if VisitPatientFlag
    then PgCtrlLabResearch.ActivePageIndex:= 0 //��������� ������
    else PgCtrlLabResearch.ActivePageIndex:= DMFIB.DSetVisitLabor.FN('PGCTRL_LABRES_INDEX').AsInteger;
end;

//----------------------------------------------------------------------------
//���������� (��������������) �����
procedure TFrmStatusPat.FormShow(Sender: TObject);
var TmpStr: string;
begin
//��������� ������� ������� � ��������
  with DSetStPatTmp do
    begin
      if Active then Close;
      SQLs.SelectSQL.Text:= 'SELECT 1 FROM TBL_ANKETA A '
                          + 'WHERE  EXISTS('
                          + 'SELECT 1 FROM TBL_SHEDULE SH '
                          + 'INNER JOIN TBL_ANKETA A ON (SH.SHEDUL_LINKANKETA = A.ID_ANKETA) '
                          + 'WHERE SH.SHEDULCHECK = 1 AND A.ID_ANKETA = :prmAnk) '
                          + 'AND A.ID_ANKETA = :prmAnk';
      Prepare;
      ParamByName('prmAnk').Value:= DMFIB.DSetAnketa.FN('ID_ANKETA').Value;
      Open;

      //���� ���������� ������ ����, �� ��������� ��� � �����
      with TrayIconVisit do
        if not IsEmpty //���� ������� �� ����, �.�. ���� �������
          then
            begin
              if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
                then
                  BalloonHint:= '��� ����� ��������'
                else
                  BalloonHint:= '��� ���� ���������';
              Hint:= '�������� ����� ����� �� ������, ����� ������� �������';
              BalloonHint:= BalloonHint + ' �� ������� ������ � ���� ������� ���������� �������.' + #13#10
                            + #13#10  + '�������� ����� �� ������������� ������, ����� ������� ���� � ���������.';
              BalloonTimeout:= 500;
              AnimateInterval:= 250;
              Visible:= True;
              ShowBalloonHint;
              Animate:= True;
            end
          else
            begin
              Animate:= False;
              Hint:= '';
              BalloonHint:= '';
              Visible:= False;
            end;
    end;

//����������� � ���������� ���������
FullPatName:= Trim(FrmMainProg.LblStatusSingle.Caption);

if VisitPatientFlag
  then TmpStr:= '���� ����� ������ ������'
  else TmpStr:= '�������������� ������ ������';


if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    Self.Caption:= TmpStr + ' (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else
    Self.Caption:= TmpStr + ' (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

if VisitPatientFlag //���� ��������� ������
  then //�������� � ������������ �����
    PgCtrlVisit.ActivePageIndex:= 0
  else //����� ��������� � �������� ������ �����
    PgCtrlVisit.ActivePageIndex:= 1;


//��������� ������ "����-����"
BtnPrev.Enabled:= not (PgCtrlVisit.ActivePageIndex = 0);
BtnNext.Enabled:= not (PgCtrlVisit.ActivePageIndex = Pred(PgCtrlVisit.PageCount));

ShowComplaintSheet(Sender);//������ ������� "������"
ShowAnamnesisSheet(Sender);//������ ������� "�������"
ShowStPraesensSheet(Sender);//������ ������� "StPraesens"
ShowLabAnalises(Sender);//������ ������� "������������ ������������"
ShowToolResearch(Sender);//������ ������� "���������������� ������������"
ShowTreatmentDs(Sender);//������ ������� "������� � �������"

//���� "�����"-����� �� ����� �������� �� ��������� TTabSheet, �� � VCL ActiveControll = TPageControl,
//���� �� ������� � ������, � ��������� ��� ����� ������, �� ActiveControll = TTabSheet.
//� ������ ������ �������-"�������" ����� �������� ����, �� ������ - �� ���������� ���� �����������
if PgCtrlVisit.ActivePage.CanFocus then PgCtrlVisit.ActivePage.SetFocus; //������� ����� �� �������
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////        ����� ������� "������" � ������������� ���������         ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////


procedure TFrmStatusPat.ShowComplaintSheet(Sender: TObject);
begin
//��������� �������������� � ���������
PrepareDBLookUpCBDocChoice(Sender);

//��������� �������������� � ���
PrepareDBLookUpCBClinChoice(Sender);

//���������� ������ ������ �� ������ �������
PgCtrlComplaint.Pages[0].TabVisible:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);


if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1 //���� �������
  then //���������� ������� "��������������� ������" � "������"
    begin
      PgCtrlComplaint.ActivePageIndex:= DMFIB.DSetVisitMain.FN('COMPLAINT_PAGEINDEX').AsInteger;
    end
  else //����� ��� �������, ������ ������� "��������������� ������" � "������"
    begin
      PgCtrlComplaint.ActivePageIndex:= 1;
    end;

if VisitPatientFlag
  then //����������� ����� ������
    begin
    DTPickPriem.DateTime:= Today;

    //����������� ������ ���������� �� ���������� �������
    RdBtnVisitPrimary.Checked:= DMFIB.DSetSinglePat.IsEmpty;


    //>>> ������� "��������������� ������"
    //---- ������� ������� -----
    ChkBoxDolorPubica.Checked:= False;
    ChkBoxDolorPerineum.Checked:= False;
    ChkBoxDolorInguinal.Checked:= False;
    ChkBoxDolorTestis.Checked:= False;
    ChkBoxDolorLumbo.Checked:= False;
    ChkBoxDolorSacrum.Checked:= False;
    ChkBoxBadSensUreth.Checked:= False;
    ChkBoxColicSensUreth.Checked:= False;
    ChkBoxBadSensPerineum.Checked:= False;
    ChkBoxColicSensPerineum.Checked:= False;
    ChkBoxDolorPenisDetumesc.Checked:= False;
    ChkBoxDolorPenisErect.Checked:= False;


    //----- ������������ ������� ------
    ChkBoxPollakiuria.Checked:= False;
    SpEdtMicciaCount.Value:= SpEdtMicciaCount.MinValue;
    SpEdtPollaciuriaAge.Value:= SpEdtPollaciuriaAge.MinValue;
    CbBoxPollaciuriaPeriod.ItemIndex:= 0;
    ChkBoxDolorMiccia.Checked:= False;
    ChkBoxNicturia.Checked:= False;
    SpEdtNicturiaCount.Value:= SpEdtNicturiaCount.MinValue;
    SpEdtNicturiaAge.Value:= SpEdtNicturiaAge.MinValue;
    CbBoxNicturiaPeriod.ItemIndex:= 0;
    ChkBoxStranguria.Checked:= False;
    ChkBoxVesUrinUncomplete.Checked:= False;
    ChkBoxIshuria.Checked:= False;
    ChkBoxIncontinence.Checked:= False;
    CbBoxIncontinenceCase.ItemIndex:= 0;

    // ----- ��������������� ������� -----
    ChkBoxFastEjacul.Checked:= False;
    ChkBoxAnEjacul.Checked:= False;
    ChkBoxDolorEjacul.Checked:= False;
    ChkBoxBloodEjacul.Checked:= False;
    ChkBoxIdleEjacul.Checked:= False;
    ChkBoxSlowEjacul.Checked:= False;

    //----- ��������������� ������� -----
    ChkBoxLowLibido.Checked:= False;
    ChkBoxLowTonus.Checked:= False;
    ChkBoxLowVozbuzhd.Checked:= False;

    //----- ������������ ������� -----
    ChkBoxDischarge.Checked:= False;
    SpEdtUrethAge.Value:= 0;

    //----- ���������� ������� -----
    ChkBoxLowErection.Checked:= False;
    ChkBoxSlowTumesc.Checked:= False;
    ChkBoxBadErection.Checked:= False;
    ChkBoxMorningErection.Checked:= True;

    ChkBoxNoErection.Checked:= False;
    ChkBoxPenisDeform.Checked:= False;
    ChkBoxVaricocele.Checked:= False;
    CbBoxVaricSide.ItemIndex:= 0;
    CbBoxVaricPosit.ItemIndex:= 1;

    //>>> ������� "������������� ������"
    //----- ������� ������������ -----
    ChkBoxUrAsthenia.Checked:= False;
    ChkBoxUrFlabbiness.Checked:= False;
    ChkBoxUrHyperhidros.Checked:= False;
    ChkBoxUrSubfebril.Checked:= False;
    CbBoxUrSubfebril.ItemIndex:= 0;

    //----- ������� ������� -----
    ChkBoxUrDolorLumb.Checked:= False;
    CbBoxUrDolorLumb.ItemIndex:= 2;
    ChkBoxUrDolorSacr.Checked:= False;
    ChkBoxUrDolorMesagastr.Checked:= False;
    CbBoxUrDolorMesogastr.ItemIndex:= 2;
    ChkBoxUrDolorHypogastr.Checked:= False;
    CbBoxUrDolorHypogastr.ItemIndex:= 2;
    ChkBoxUrDolorPubica.Checked:= False;
    ChkBoxUrDolorIrradiat.Checked:= False;
    CbBoxUrDolorIrradiat.ItemIndex:= 4;

    //----- ������������ ������� -----
    ChkBoxUrColic.Checked:= False;
    ChkBoxUrPollac.Checked:= False;
    SpEdtUrPollacCount.Value:= 5;
    SpEdtUrPollacAge.Value:= 1;
    CbBoxUrPollacPeriod.ItemIndex:= 0;
    CbBoxUrNictPeriod.ItemIndex:= 0;
    ChkBoxUrNicturia.Checked:= False;
    SpEdtUrNictCount.Value:= 1;
    SpEdtUrNictAge.Value:= 1;
    ChkBoxUrNotFullVesic.Checked:= False;
    ChkBoxUrSediment.Checked:= False;
    ChkBoxUrFlakes.Checked:= False;
    ChkBoxUrBloodDash.Checked:= False;
    CbBoxUrBloodDash.ItemIndex:= 1;

    //>>> ������� "������"
    RdBtnAnothPrevCheckup.Checked:= True;
    RdBtnAnothPrevTreat.Checked:= False;
    RdBtnAnothPlanGravid.Checked:= False;
    RdBtnAnothContrCheckup.Checked:= False;
    RdBtnAnothPlanTreat.Checked:= False;
    RdBtnAnothResrchRezlt.Checked:= False;

    end {if VisitPatientFlag..then}
  else //������������� ������
    begin
    with DMFIB.DSetVisitMain do
      begin
      DBLookupCBDocChoice.KeyValue:= FN('Vis_LinkDoctor').Value;
      DBLookupCBClinChoice.KeyValue:= FN('Vis_LinkClinic').Value;
      DTPickPriem.Date:= FN('DateVisit').AsDateTime;
      RdBtnVisitPrimary.Checked:= (FN('FirstVisit').AsInteger = 1);

      //>>> ������� "��������������� ������"
      //---- ������� ������� -----
      ChkBoxDolorPubica.Checked:= IntConvertBool(FN('DolorPubica').AsInteger);
      ChkBoxDolorPerineum.Checked:= IntConvertBool(FN('DolorPerineum').AsInteger);
      ChkBoxDolorInguinal.Checked:= IntConvertBool(FN('DolorInguinal').AsInteger);
      ChkBoxDolorTestis.Checked:= IntConvertBool(FN('DolorTestis').AsInteger);
      ChkBoxDolorLumbo.Checked:= IntConvertBool(FN('DolorLumbo').AsInteger);
      ChkBoxDolorSacrum.Checked:= IntConvertBool(FN('DolorSacrum').AsInteger);

      ChkBoxBadSensUreth.Checked:= IntConvertBool(FN('BadSensUreth').AsInteger);
      ChkBoxColicSensUreth.Checked:= IntConvertBool(FN('ColicSensUreth').AsInteger);
      ChkBoxBadSensPerineum.Checked:= IntConvertBool(FN('BadSensPerineum').AsInteger);
      ChkBoxColicSensPerineum.Checked:= IntConvertBool(FN('ColicSensPerineum').AsInteger);
      ChkBoxDolorPenisDetumesc.Checked:= IntConvertBool(FN('DolorPenisDetumesc').AsInteger);
      ChkBoxDolorPenisErect.Checked:= IntConvertBool(FN('DolorPenisErect').AsInteger);

      //----- ������������ ������� ------
      ChkBoxPollakiuria.Checked:= IntConvertBool(FN('Pollakiuria').AsInteger);
      SpEdtMicciaCount.Value:= FN('MicciaCount').AsInteger;
      SpEdtPollaciuriaAge.Value:= FN('PollakiuriaAge').AsInteger;
      CbBoxPollaciuriaPeriod.ItemIndex:= FN('POLLACIURIAPERIOD').AsInteger;
      ChkBoxDolorMiccia.Checked:= IntConvertBool(FN('DolorMiccia').AsInteger);
      ChkBoxNicturia.Checked:= IntConvertBool(FN('Nicturia').AsInteger);
      SpEdtNicturiaCount.Value:= FN('NicturiaCount').AsInteger;
      SpEdtNicturiaAge.Value:= FN('NicturiaAge').AsInteger;
      CbBoxNicturiaPeriod.ItemIndex:= FN('NICTURIAPERIOD').AsInteger;
      ChkBoxStranguria.Checked:= IntConvertBool(FN('Stranguria').AsInteger);
      ChkBoxVesUrinUncomplete.Checked:= IntConvertBool(FN('VesUrinUncomplete').AsInteger);
      ChkBoxIshuria.Checked:= IntConvertBool(FN('ISHURIA').AsInteger);
      ChkBoxIncontinence.Checked:= IntConvertBool(FN('INCONTINENCE').AsInteger);
      CbBoxIncontinenceCase.ItemIndex:= FN('INCONTINENCECASE').AsInteger;

      // ----- ��������������� ������� -----
      ChkBoxFastEjacul.Checked:= IntConvertBool(FN('FastEjacul').AsInteger);
      ChkBoxAnEjacul.Checked:= IntConvertBool(FN('AnEjacul').AsInteger);
      ChkBoxDolorEjacul.Checked:= IntConvertBool(FN('DolorEjacul').AsInteger);
      ChkBoxBloodEjacul.Checked:= IntConvertBool(FN('BloodEjacul').AsInteger);
      ChkBoxIdleEjacul.Checked:= IntConvertBool(FN('IdleEjacul').AsInteger);
      ChkBoxSlowEjacul.Checked:= IntConvertBool(FN('SlowEjacul').AsInteger);

      //----- ��������������� ������� -----
      ChkBoxLowLibido.Checked:= IntConvertBool(FN('LowLibido').AsInteger);
      ChkBoxLowTonus.Checked:= IntConvertBool(FN('LowTonus').AsInteger);
      ChkBoxLowVozbuzhd.Checked:= IntConvertBool(FN('LowVozbuzhd').AsInteger);

      //----- ������������ ������� -----
      ChkBoxDischarge.Checked:= IntConvertBool(FN('Discharge').AsInteger);
      SpEdtUrethAge.Value:= FN('UrethAge').AsInteger;
      CbBoxDischargeNature.ItemIndex:= FN('DischargeNature').AsInteger;
      CbBoxDischargeVolume.ItemIndex:= FN('DischargeVolume').AsInteger;
      CbBoxDischargeRegul.ItemIndex:= FN('DischargeRegul').AsInteger;
      CbBoxDischargeDurat.ItemIndex:= FN('DischargeDurat').AsInteger;

      //----- ���������� ������� -----
      ChkBoxLowErection.Checked:= IntConvertBool(FN('LowErection').AsInteger);
      ChkBoxSlowTumesc.Checked:= IntConvertBool(FN('SlowTumesc').AsInteger);
      ChkBoxBadErection.Checked:= IntConvertBool(FN('BadErection').AsInteger);
      ChkBoxMorningErection.Checked:= IntConvertBool(FN('MorningErection').AsInteger);

      ChkBoxNoErection.Checked:= IntConvertBool(FN('NoErection').AsInteger);
      ChkBoxPenisDeform.Checked:= IntConvertBool(FN('PenisDeform').AsInteger);
      ChkBoxVaricocele.Checked:= IntConvertBool(FN('Varicocele').AsInteger);
      CbBoxVaricSide.ItemIndex:= FN('VaricSide').AsInteger;
      CbBoxVaricPosit.ItemIndex:= FN('VaricPosit').AsInteger;

      //>>> ������� "������������� ������"
      //----- ������� ������������ -----
      ChkBoxUrAsthenia.Checked:= IntConvertBool(FN('UR_ASTHENIA').AsInteger);
      ChkBoxUrFlabbiness.Checked:= IntConvertBool(FN('UR_FLABBINESS').AsInteger);
      ChkBoxUrHyperhidros.Checked:= IntConvertBool(FN('UR_HYPERHIDROS').AsInteger);
      ChkBoxUrSubfebril.Checked:= IntConvertBool(FN('UR_SUBFEBRIL').AsInteger);
      CbBoxUrSubfebril.ItemIndex:= FN('UR_TEMPER_INT').AsInteger;

      //----- ������� ������� -----
      ChkBoxUrDolorLumb.Checked:= IntConvertBool(FN('UR_DOLORLUMB').AsInteger);
      CbBoxUrDolorLumb.ItemIndex:= FN('UR_DOLORLUMB_INT').AsInteger;
      ChkBoxUrDolorSacr.Checked:= IntConvertBool(FN('UR_DOLORSACR').AsInteger);
      ChkBoxUrDolorMesagastr.Checked:= IntConvertBool(FN('UR_DOLORMESOGASTR').AsInteger);
      CbBoxUrDolorMesogastr.ItemIndex:= FN('UR_DOLORMESOGASTR_INT').AsInteger;
      ChkBoxUrDolorHypogastr.Checked:= IntConvertBool(FN('UR_DOLORHYPOGASTR').AsInteger);
      CbBoxUrDolorHypogastr.ItemIndex:= FN('UR_DOLORHYPOGASTR_INT').AsInteger;
      ChkBoxUrDolorPubica.Checked:= IntConvertBool(FN('UR_DOLORPUBICA').AsInteger);
      ChkBoxUrDolorIrradiat.Checked:= IntConvertBool(FN('UR_DOLORIRRADIAT').AsInteger);
      CbBoxUrDolorIrradiat.ItemIndex:= FN('UR_DOLORIRRADIAT_INT').AsInteger;

      //----- ������������ ������� -----
      ChkBoxUrColic.Checked:= IntConvertBool(FN('UR_COLIC').AsInteger);
      ChkBoxUrPollac.Checked:= IntConvertBool(FN('UR_POLLAC').AsInteger);
      SpEdtUrPollacCount.Value:= FN('UR_POLLACCOUNT').AsInteger;
      SpEdtUrPollacAge.Value:= FN('UR_POLLACAGE').AsInteger;

      CbBoxUrPollacPeriod.ItemIndex:= FN('UrPollacPeriod').AsInteger;
      CbBoxUrNictPeriod.ItemIndex:= FN('UrNictPeriod').AsInteger;

      ChkBoxUrNicturia.Checked:= IntConvertBool(FN('UR_NICTURIA').AsInteger);
      SpEdtUrNictCount.Value:= FN('UR_NICTURIACOUNT').AsInteger;
      SpEdtUrNictAge.Value:= FN('UR_NICTURIAAGE').AsInteger;
      ChkBoxUrNotFullVesic.Checked:= IntConvertBool(FN('UR_NOTFULLVESIC').AsInteger);
      ChkBoxUrSediment.Checked:= IntConvertBool(FN('UR_SEDIMENT').AsInteger);
      ChkBoxUrFlakes.Checked:= IntConvertBool(FN('UR_FLAKES').AsInteger);
      ChkBoxUrBloodDash.Checked:= IntConvertBool(FN('UR_BLOODDASH').AsInteger);
      CbBoxUrBloodDash.ItemIndex:= FN('UR_BLOODDASH_INT').AsInteger;

      //>>> ������� "������"
      RdBtnAnothPrevCheckup.Checked:= IntConvertBool(FN('ANOTHPREVCHECKUP').AsInteger);
      RdBtnAnothPrevTreat.Checked:= IntConvertBool(FN('ANOTHPREVTREAT').AsInteger);
      RdBtnAnothPlanGravid.Checked:= IntConvertBool(FN('ANOTHPLANGRAVID').AsInteger);
      RdBtnAnothContrCheckup.Checked:= IntConvertBool(FN('ANOTHCONTRCHECKUP').AsInteger);
      RdBtnAnothPlanTreat.Checked:= IntConvertBool(FN('ANOTHPLANTREAT').AsInteger);
      RdBtnAnothResrchRezlt.Checked:= IntConvertBool(FN('AnothResrchRezlt').AsInteger);

      end;{with}
    end;{if VisitPatientFlag..else}

DTPickPriemChange(Sender);//���� ������ �������� ����������

//��������� ���������� ��������� � �����������
RdBtnVisitPrimaryClick(Sender);

ChkBoxPollakiuriaClick(Sender);
ChkBoxNicturiaClick(Sender);
ChkBoxIncontinenceClick(Sender);
ChkBoxVaricoceleClick(Sender);
ChkBoxDischargeClick(Sender);
ChkBoxUrSubfebrilClick(Sender);
ChkBoxUrDolorLumbClick(Sender);
ChkBoxUrDolorMesagastrClick(Sender);
ChkBoxUrDolorHypogastrClick(Sender);
ChkBoxUrDolorIrradiatClick(Sender);
ChkBoxUrPollacClick(Sender);
ChkBoxUrNicturiaClick(Sender);
ChkBoxUrBloodDashClick(Sender);
end;

//----------------------------------------------------------------------------
procedure TFrmStatusPat.PrepareDBLookUpCBDocChoice(Sender: TObject);
begin
//��������� ��������� � �������
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

//�������� DBLookUp � ���������� ��� � ������
with DBLookupCBDocChoice do
  begin
  if not DMFIB.DSetTemp.IsEmpty
    then //���� ����� �� ������
      begin
        ListSource:= nil;
        ListSource:= DMFIB.DSTemp;
        KeyField:= 'ID_Doctor';
        ListField:= 'FIODoc';
        Font.Color:= clWindowText;

        //�������� ���������� ���������� "�����������������" ����������� � ������
        if DMFIB.DSetTemp.Locate('ID_Doctor',VarID_Tbl_Doctor,[])//���� � ������ �� ID
          then KeyValue:= VarID_Tbl_Doctor//��������� ��� � ������, ���� �������
          else KeyValue:= DMFIB.DSetTemp.FN('ID_Doctor').Value;//��������� ��������, ���� �� �������
      end{if not..then}
    else //���� ����� ������
      begin
        KeyField:= '';
        ListField:= '';
        KeyValue:= 0;
        ListSource:= nil;
        Text:= '��������� ������� ��������!';
        Font.Color:= clRed;
      end;{if not..else}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.PrepareDBLookUpCBClinChoice(Sender: TObject);
begin
//��������� ��������� � ���
with DMFIB, DSetLookUpClin do
  begin
  if Active then Close;
  SQLs.SelectSQL.Clear;
  SQLs.SelectSQL.Text:= 'SELECT ID_CLINIC, CLIN_NAME FROM TBL_CLINIC ORDER BY 1';
  Prepare;
  Open;
  First;
  end;

//�������� DBLookUp � ���������� ��� � ������
with DBLookupCBClinChoice do
  begin
    if not DMFIB.DSetLookUpClin.IsEmpty
      then //���� ����� �� ������
        begin
          ListSource:= nil;
          ListSource:= DMFIB.DSLookUpClin;
          KeyField:= 'ID_CLINIC';
          ListField:= 'CLIN_NAME';
          Font.Color:= clWindowText;

        //�������� ���������� ��������� "����������������" ��� � ������
        if DMFIB.DSetLookUpClin.Locate('ID_CLINIC',VarID_Tbl_Clinic,[])//���� � ������ �� ID
          then KeyValue:= VarID_Tbl_Clinic//��������� ��� � ������, ���� �������
          else KeyValue:= DMFIB.DSetLookUpClin.FN('ID_CLINIC').Value;//��������� ��������, ���� �� �������
        end{if not..then}
      else //���� ����� ������
        begin
          KeyField:= '';
          ListField:= '';
          KeyValue:= 0;
          ListSource:= nil;
          Text:= '��������� ������� ���!';
          Font.Color:= clRed;
        end;{if not..else}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnVisitPrimaryClick(Sender: TObject);
begin
RdBtnVisitSecondary.Checked:= not RdBtnVisitPrimary.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxPollakiuriaClick(Sender: TObject);
begin
SpEdtMicciaCount.Enabled:= ChkBoxPollakiuria.Checked;
SpEdtPollaciuriaAge.Enabled:= ChkBoxPollakiuria.Checked;
Label3.Enabled:= ChkBoxPollakiuria.Checked;
CbBoxPollaciuriaPeriod.Enabled:= ChkBoxPollakiuria.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxNicturiaClick(Sender: TObject);
begin
SpEdtNicturiaCount.Enabled:= ChkBoxNicturia.Checked;
SpEdtNicturiaAge.Enabled:= ChkBoxNicturia.Checked;
Label5.Enabled:= ChkBoxNicturia.Checked;
CbBoxNicturiaPeriod.Enabled:= ChkBoxNicturia.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxIncontinenceClick(Sender: TObject);
begin
CbBoxIncontinenceCase.Enabled:= ChkBoxIncontinence.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxVaricoceleClick(Sender: TObject);
begin
CbBoxVaricSide.Enabled:= ChkBoxVaricocele.Checked;
CbBoxVaricPosit.Enabled:= ChkBoxVaricocele.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxDischargeClick(Sender: TObject);
begin
CbBoxDischargeNature.Enabled:= ChkBoxDischarge.Checked;
CbBoxDischargeVolume.Enabled:= ChkBoxDischarge.Checked;
CbBoxDischargeRegul.Enabled:= ChkBoxDischarge.Checked;
CbBoxDischargeDurat.Enabled:= ChkBoxDischarge.Checked;
SpEdtUrethAge.Enabled:= ChkBoxDischarge.Checked;
Label2.Enabled:= ChkBoxDischarge.Checked;

if ChkBoxDischarge.Checked then CbBoxDischargeVolumeChange(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.CbBoxDischargeVolumeChange(Sender: TObject);
begin
CbBoxDischargeNature.Enabled:= (CbBoxDischargeVolume.ItemIndex <> 3);
CbBoxDischargeRegul.Enabled:= (CbBoxDischargeVolume.ItemIndex <> 3);
CbBoxDischargeDurat.Enabled:= (CbBoxDischargeVolume.ItemIndex <> 3);
SpEdtUrethAge.Enabled:= (CbBoxDischargeVolume.ItemIndex <> 3);
Label2.Enabled:= (CbBoxDischargeVolume.ItemIndex <> 3);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrSubfebrilClick(Sender: TObject);
begin
CbBoxUrSubfebril.Enabled:= ChkBoxUrSubfebril.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrDolorLumbClick(Sender: TObject);
begin
CbBoxUrDolorLumb.Enabled:= ChkBoxUrDolorLumb.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrDolorMesagastrClick(Sender: TObject);
begin
CbBoxUrDolorMesogastr.Enabled:= ChkBoxUrDolorMesagastr.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrDolorHypogastrClick(Sender: TObject);
begin
CbBoxUrDolorHypogastr.Enabled:= ChkBoxUrDolorHypogastr.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrDolorIrradiatClick(Sender: TObject);
begin
CbBoxUrDolorIrradiat.Enabled:= ChkBoxUrDolorIrradiat.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrPollacClick(Sender: TObject);
begin
SpEdtUrPollacCount.Enabled:= ChkBoxUrPollac.Checked;
SpEdtUrPollacAge.Enabled:= ChkBoxUrPollac.Checked;
Label21.Enabled:= ChkBoxUrPollac.Checked;
CbBoxUrPollacPeriod.Enabled:= ChkBoxUrPollac.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrNicturiaClick(Sender: TObject);
begin
SpEdtUrNictCount.Enabled:= ChkBoxUrNicturia.Checked;
SpEdtUrNictAge.Enabled:= ChkBoxUrNicturia.Checked;
Label23.Enabled:= ChkBoxUrNicturia.Checked;
CbBoxUrNictPeriod.Enabled:= ChkBoxUrNicturia.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.ChkBoxUrBloodDashClick(Sender: TObject);
begin
CbBoxUrBloodDash.Enabled:= ChkBoxUrBloodDash.Checked;
end;


//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////        ����� ������� "�������" � ������������� ���������         //////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowAnamnesisSheet(Sender: TObject);
begin
PgCtrlAnamnesis.Pages[1].TabVisible:= (DMFIB.DSetAnketa.FN('Sex').AsInteger = 1);
PgCtrlAnamnesis.Pages[2].TabVisible:= not PgCtrlAnamnesis.Pages[1].TabVisible;

ChkBoxAnamnesAllergyClick(Sender);
ChkBoxBadHabitClick(Sender);
ChkBoxAndrOperationClick(Sender);
ChkBoxAnamnesFamilyClick(Sender);
ChkBoxAnamnesAndrSexClick(Sender);
ChkBoxAnamnesGinekClick(Sender);
ChkBoxAnamnesGinSexClick(Sender);


//�������� ����� ����������, ����� ��������� �� ��������� ���������
TextComplaint:= Trim(RichEditComplaints.Text);
TextSecretStuff:= Trim(RichEditSecretStuff.Text);
TextAnamAllergy:= Trim(RchEdtAnamAllergy.Text);
TextAnamChldDes:= Trim(RchEdtAnamChldDes.Text);
TextAnamAnthrDes:= Trim(RchEdtAnamAnthrDes.Text);
TextAndrZPPP:= Trim(RchEdtAndrZPPP.Text);
TextGinZPPP:= Trim(RchEdtGinZPPP.Text);

end;

//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////   ����� ������� "Status Praesens" � ������������� ���������     ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowStPraesensSheet(Sender: TObject);
begin
RdBtnStPraesensTemplClick(Sender);//��������� ��������� ����������� ������ �������

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1 //���� ��� �������
  then
    begin
      RichEditStLocalis.Color:= clWindow;
      RichEditProstata.Color:= clWindow;
      RdBtnStLocalisTemplClick(Sender);//��������� ��������� ����������� �������� �������
      RdBtnProstataTemplClick(Sender);//��������� ��������� ����������� ������� ��������
    end
  else
    begin
      RichEditStLocalis.Color:= clBtnFace;
      RichEditProstata.Color:= clBtnFace;
    end;

//StLocalis
RdBtnStLocalisTempl.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RdBtnStLocalisNonPathology.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RdBtnStLocalisNonDynamics.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditStLocalis.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnTemplateStLocalis.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnStLocalisFoto.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtStLocalis.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//Prostata
RdBtnProstataTempl.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RdBtnProstataNonPathology.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RdBtnProstataExamRefuse.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditProstata.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnTemplateProstata.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtProstata.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;//����� � ����
end;

//----------------------------------------------------------------------------
//����������� �������� ������������ �������
procedure TFrmStatusPat.RdBtnStPraesensTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditStPraesens);//������� �������������� � ���-�����
RichEditStPraesens.Text:= TextStPraesens;//�������� ���� ������� ����� �������
BtnTemplateStPraesens.Enabled:= True;//������� ������ ��������������
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStPraesensNonParticularClick(Sender: TObject);
begin
if RdBtnStPraesensTempl.Checked then
  TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));
SetDefaultSelAttrRichEdt(RichEditStPraesens);
BtnTemplateStPraesens.Enabled:= False;
RichEditStPraesens.Text:= '��������� ������������������. Status praesens ' +
                                                                     '��� ������������.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStPreasensNonDynamicsClick(Sender: TObject);
begin
if RdBtnStPraesensTempl.Checked then
  TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));
SetDefaultSelAttrRichEdt(RichEditStPraesens);
BtnTemplateStPraesens.Enabled:= False;
RichEditStPraesens.Text:= '��������� ������������������. Status praesens ' +
                                                           '��� ������������� ��������.';
end;

//----------------------------------------------------------------------------
//����������� �������� �������� �������
procedure TFrmStatusPat.RdBtnStLocalisTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditStLocalis);//������� �������������� � ���-�����
RichEditStLocalis.Text:= TextStLocalis;//�������� ���� ������� ����� �������
BtnTemplateStLocalis.Enabled:= True;//������� ������ ��������������
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStLocalisNonPathologyClick(Sender: TObject);
begin
if RdBtnStLocalisTempl.Checked then TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

SetDefaultSelAttrRichEdt(RichEditStLocalis);
BtnTemplateStLocalis.Enabled:= False;
RichEditStLocalis.Text:= '�������� ��������� ��� ������� ��������� ����������.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStLocalisNonDynamicsClick(Sender: TObject);
begin
if RdBtnStLocalisTempl.Checked then TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

SetDefaultSelAttrRichEdt(RichEditStLocalis);
BtnTemplateStLocalis.Enabled:= False;
RichEditStLocalis.Text:= 'St.localis ��� ������������� ��������.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditProstata);//������� �������������� � ���-�����
RichEditProstata.Text:= TextStProstata;//�������� ���� ������� ����� �������
BtnTemplateProstata.Enabled:= True;//������� ������ ��������������
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataNonPathologyClick(Sender: TObject);
begin
if RdBtnProstataTempl.Checked then TextStProstata:= Trim(GetRTFText(RichEditProstata));
SetDefaultSelAttrRichEdt(RichEditProstata);
BtnTemplateProstata.Enabled:= False;
RichEditProstata.Text:= '�������������� ������ ����������� �� ��������.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataExamRefuseClick(Sender: TObject);
begin
if RdBtnProstataTempl.Checked then TextStProstata:= Trim(GetRTFText(RichEditProstata));
SetDefaultSelAttrRichEdt(RichEditProstata);
BtnTemplateProstata.Enabled:= False;
RichEditProstata.Text:= '�� ����������� ������� �������� �����������.';
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////             ����� ������� "������������ ������������"           ///////
//////                   � ������������� ���������                     ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowLabAnalises(Sender: TObject);
begin

//--- ��������� ������ RW, ���, �������
RichEdtAIDS.Text:= TextAIDS;

if Trim(RichEdtAIDS.Text) = ''
  then
    begin
      RichEdtAIDS.Color:= clBtnFace;
      RichEdtAIDS.Enabled:= False;
    end
  else
    begin
      RichEdtAIDS.Color:= clWindow;
      RichEdtAIDS.Enabled:= True;
    end;


//�������
BtnSpermGrList.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtSperm.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//--- ��������� ������ ������������ �� �������
RichEdtLues.Text:= TextLues;

if Trim(RichEdtLues.Text) = ''
  then
    begin
      RichEdtLues.Color:= clBtnFace;
      RichEdtLues.Enabled:= False;
    end
  else
    begin
      RichEdtLues.Color:= clWindow;
      RichEdtLues.Enabled:= True;
    end;

//--- ��������� ������ ����.�������� �����
RichEdtBlood.Text:= TextBlood;

if Trim(RichEdtBlood.Text) = ''
  then
    begin
      RichEdtBlood.Color:= clBtnFace;
      RichEdtBlood.Enabled:= False;
    end
  else
    begin
      RichEdtBlood.Color:= clWindow;
      RichEdtBlood.Enabled:= True;
    end;


//--- ��������� ������ �������� �� �������, ���, �������
RichEdtAIDS.Text:= TextAIDS;

if Trim(RichEdtAIDS.Text) = ''
  then
    begin
      RichEdtAIDS.Color:= clBtnFace;
      RichEdtAIDS.Enabled:= False;
    end
  else
    begin
      RichEdtAIDS.Color:= clWindow;
      RichEdtAIDS.Enabled:= True;
    end;

//--- ��������� ������ �������� ��������
RichEdtSperm.Text:= TextSperm;

if Trim(RichEdtSperm.Text) = ''
  then
    begin
      RichEdtSperm.Color:= clBtnFace;
      RichEdtSperm.Enabled:= False;
    end
  else
    begin
      RichEdtSperm.Color:= clWindow;
      RichEdtSperm.Enabled:= True;
    end;

//--- ��������� ������ �������� ���.������ �� ������
RichEdtUrethBactInoc.Text:= TextUrethBactInoc;

if Trim(RichEdtUrethBactInoc.Text) = ''
  then
    begin
      RichEdtUrethBactInoc.Color:= clBtnFace;
      RichEdtUrethBactInoc.Enabled:= False;
    end
  else
    begin
      RichEdtUrethBactInoc.Color:= clWindow;
      RichEdtUrethBactInoc.Enabled:= True;
    end;

//--- ��������� ������ �������� ���.������ ���
RichEdtProstBactInoc.Text:= TextProstBactInoc;

if Trim(RichEdtProstBactInoc.Text) = ''
  then
    begin
      RichEdtProstBactInoc.Color:= clBtnFace;
      RichEdtProstBactInoc.Enabled:= False;
    end
  else
    begin
      RichEdtProstBactInoc.Color:= clWindow;
      RichEdtProstBactInoc.Enabled:= True;
    end;

//--- ��������� ������ �������� ���.������ �� ���������� � ����������
RichEdtMicUrBactInoc.Text:= TextMicUrBactInoc;

if Trim(RichEdtMicUrBactInoc.Text) = ''
  then
    begin
      RichEdtMicUrBactInoc.Color:= clBtnFace;
      RichEdtMicUrBactInoc.Enabled:= False;
    end
  else
    begin
      RichEdtMicUrBactInoc.Color:= clWindow;
      RichEdtMicUrBactInoc.Enabled:= True;
    end;

//--- ��������� ������ �������� ���.������ ����
RichEdtUrinBactInoc.Text:= TextUrinBactInoc;

if Trim(RichEdtUrinBactInoc.Text) = ''
  then
    begin
      RichEdtUrinBactInoc.Color:= clBtnFace;
      RichEdtUrinBactInoc.Enabled:= False;
    end
  else
    begin
      RichEdtUrinBactInoc.Color:= clWindow;
      RichEdtUrinBactInoc.Enabled:= True;
    end;

//--- ��������� ������ ���
RichEditPCR.Text:= TextPCR;

if Trim(RichEditPCR.Text) = ''
  then
    begin
      RichEditPCR.Color:= clBtnFace;
      RichEditPCR.Enabled:= False;
    end
  else
    begin
      RichEditPCR.Color:= clWindow;
      RichEditPCR.Enabled:= True;
    end;


//--- ��������� ������ ���
RichEditIFA.Text:= TextIFA;

if Trim(RichEditIFA.Text) = ''
  then
    begin
      RichEditIFA.Color:= clBtnFace;
      RichEditIFA.Enabled:= False;
    end
  else
    begin
      RichEditIFA.Color:= clWindow;
      RichEditIFA.Enabled:= True;
    end;

//--- ��������� ������ ���
RichEditOAM.Text:= TextOAM;

if Trim(RichEditOAM.Text) = ''
  then
    begin
      RichEditOAM.Color:= clBtnFace;
      RichEditOAM.Enabled:= False;
    end
  else
    begin
      RichEditOAM.Color:= clWindow;
      RichEditOAM.Enabled:= True;
    end;

//--- ��������� ������ ����� �� ������

//����� �� ������
//LblDateMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//RichEditMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//BtnMazUrTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//BtnFotoMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);


if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
    GrBoxMazUr.Caption:= '   ����� �� ������   '
  else //���� ��� �������
    GrBoxMazUr.Caption:= '   ����� �� ������� �������   ';


RichEditMazUr.Text:= TextMazUr;

if Trim(RichEditMazUr.Text) = ''
  then
    begin
//      LblDateMazUr.Caption:= '������������ �� �����������';
      RichEditMazUr.Color:= clBtnFace;
      RichEditMazUr.Enabled:= False;
    end
  else
    begin
//      LblDateMazUr.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')', VarMazUrethraDate);
      RichEditMazUr.Color:= clWindow;
      RichEditMazUr.Enabled:= True;
    end;

//--- ��������� ������ ����� ���� ��������

//����� ���� �������� - �� ����������, ���� �������
//LblDateMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

RichEditMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnMazProstTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnFotoMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditMazProst.Text:= TextMazProst;

if Trim(RichEditMazProst.Text) = ''
  then
    begin
//      LblDateMazProst.Caption:= '������������ �� �����������';
      RichEditMazProst.Color:= clBtnFace;
      RichEditMazProst.Enabled:= False;
    end
  else
    begin
//      LblDateMazProst.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')', VarMazProstDate);
      RichEditMazProst.Color:= clWindow;
      RichEditMazProst.Enabled:= True;
    end;

//>>> ���������� �������� � ����������� �� ���� ��������

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    begin
//      RichEditMazUr.Color:= clWindow;
      RichEditMazProst.Color:= clWindow;
    end
  else
    begin
//      RichEditMazUr.Color:= clBtnFace;
      RichEditMazProst.Color:= clBtnFace;
    end;

end;


//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////        ����� ������� "���������������� ������������"            ///////
//////                     � ������������� ���������                   ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowToolResearch(Sender: TObject);
begin
//--- ��������� ������ ��� ����� � �������� ������
RichEditUZIRen.Text:= TextUZIRen;

if Trim(RichEditUZIRen.Text) = ''
  then
    begin
      LblUZIRen.Caption:= '������������ �� �����������';
      RichEditUZIRen.Color:= clBtnFace;
      RichEditUZIRen.Enabled:= False;
    end
  else
    begin
      if ((VarBoolUZIRen = 1) and (VarBoolUZIVesicUr =0))//���� ���� ��� ����� � ��� ��� ������
          or ((VarBoolUZIRen = 1) and (VarBoolUZIVesicUr = 1)) // ��� ���� ��� ���
        then //�� ������������� ���� ��� �����
          LblUZIRen.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')', VarUZIRenDate)
        else //����� ������������� ���� ��� ������
          LblUZIRen.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')', VarUZIVesicUrDate);

      RichEditUZIRen.Color:= clWindow;
      RichEditUZIRen.Enabled:= True;
    end;


//>>> ���������� ��� ������ �������� � ����������� �� ���� ��������
//��� ���������
LblUziGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditUZIGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUZIGenitTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUZIGenitFotos.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtUZIGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//����� ������������
LblUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaDryTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaDryFotos.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//������������� ������������
LblUrScopiaIrrig.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditUrScopiaIrrig.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaIrrigTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaIrrigFotos.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtUrScopiaIrrig.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);



if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    begin
      RichEditUZIGenit.Color:= clWindow;
      RichEditUrScopiaDry.Color:= clWindow;
      RichEditUrScopiaIrrig.Color:= clWindow;
    end
  else
    begin
      RichEditUZIGenit.Color:= clBtnFace;
      RichEditUrScopiaDry.Color:= clBtnFace;
      RichEditUrScopiaIrrig.Color:= clBtnFace;
    end;

//--- ��������� ������ ��� ���������
RichEditUZIGenit.Text:= TextUZIGenit;

if Trim(RichEditUZIGenit.Text) = ''
  then
    begin
      LblUziGenit.Caption:= '������������ �� �����������';
      RichEditUZIGenit.Color:= clBtnFace;
      RichEditUZIGenit.Enabled:= False;
    end
  else
    begin
      if VarBoolUZIProstata = 1
        then LblUziGenit.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')',
                                                                    VarUZIProstataDate)
        else
          if VarBoolUZITestis = 1
            then LblUziGenit.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')',
                                                                      VarUZITestisDate)
            else
              if VarBoolUZIPenis = 1
                then LblUziGenit.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')',
                                                                        VarUZIPenisDate)
                else LblUziGenit.Caption:= '������������ �� �����������';

      RichEditUZIGenit.Color:= clWindow;
      RichEditUZIGenit.Enabled:= True;
    end;

//--- ��������� �������� �������� ����� ������������
RichEditUrScopiaDry.Text:= TextUrScopiaDry;

if Trim(RichEditUrScopiaDry.Text) = ''
  then
    begin
      LblUrScopiaDry.Caption:= '������������ �� �����������';
      RichEditUrScopiaDry.Color:= clBtnFace;
      RichEditUrScopiaDry.Enabled:= False;
    end
  else
    begin
      LblUrScopiaDry.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')',
                                                                      VarUrScopiaDryDate);
      RichEditUrScopiaDry.Color:= clWindow;
      RichEditUrScopiaDry.Enabled:= True;
    end;

//--- ��������� �������� ������������� ������������
RichEditUrScopiaIrrig.Text:= TextUrScopiaIrrig;

if Trim(RichEditUrScopiaIrrig.Text) = ''
  then
    begin
      LblUrScopiaIrrig.Caption:= '������������ �� �����������';
      RichEditUrScopiaIrrig.Color:= clBtnFace;
      RichEditUrScopiaIrrig.Enabled:= False;
    end
  else
    begin
      LblUrScopiaIrrig.Caption:= FormatDateTime('���� (' + 'DD.MM.YY' + ')',
                                                                    VarUrScopiaIrrigDate);
      RichEditUrScopiaIrrig.Color:= clWindow;
      RichEditUrScopiaIrrig.Enabled:= True;
    end;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUZIRenChange(Sender: TObject);
begin
//��������� ����� � ����
TextUZIRen:= Trim(GetRTFText(RichEditUZIRen));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUZIGenitChange(Sender: TObject);
begin
//��������� ����� � ����
TextUZIGenit:= Trim(GetRTFText(RichEditUZIGenit));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUrScopiaDryChange(Sender: TObject);
begin
//��������� ����� � ����
TextUrScopiaDry:= Trim(GetRTFText(RichEditUrScopiaDry));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUrScopiaIrrigChange(Sender: TObject);
begin
//��������� ����� � ����
TextUrScopiaIrrig:= Trim(GetRTFText(RichEditUrScopiaIrrig));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUZIRenTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUZIRen:= Trim(GetRTFText(RichEditUZIRen));

with TFrmUZIRen.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUZIRen.CanFocus then RichEditUZIRen.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaDryTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUrScopiaDry:= Trim(GetRTFText(RichEditUrScopiaDry));

with TFrmUrScopiaDry.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUrScopiaDry.CanFocus then RichEditUrScopiaDry.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUZIGenitTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUZIGenit:= Trim(GetRTFText(RichEditUZIGenit));

with TFrmUZIGenit.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUZIGenit.CanFocus then RichEditUZIGenit.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaIrrigTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUrScopiaIrrig:= Trim(GetRTFText(RichEditUrScopiaIrrig));

with TFrmUrScopiaIrrig.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUrScopiaIrrig.CanFocus then RichEditUrScopiaIrrig.SetFocus;
end;


//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////                  ����� ������� "������� � �������"              ///////
//////                     � ������������� ���������                   ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowTreatmentDs(Sender: TObject);
begin
RichEditDrug.Text:= TextDrugs;
if Trim(RichEditDrug.Text) = ''
  then
    begin
      RichEditDrug.Color:= clBtnFace;
      RichEditDrug.Enabled:= False;
    end
  else
    begin
      RichEditDrug.Color:= clWindow;
      RichEditDrug.Enabled:= True;
    end;

RichEditManip.Text:= TextManip;
if Trim(RichEditManip.Text) = ''
  then
    begin
      RichEditManip.Color:= clBtnFace;
      RichEditManip.Enabled:= False;
    end
  else
    begin
      RichEditManip.Color:= clWindow;
      RichEditManip.Enabled:= True;
    end;

RichEditDs.Text:= TextDs;
if Trim(RichEditDs.Text) = ''
  then
    begin
      RichEditDs.Color:= clBtnFace;
      RichEditDs.Enabled:= False;
    end
  else
    begin
      RichEditDs.Color:= clWindow;
      RichEditDs.Enabled:= True;
    end;

RichEditRecom.Text:= TextRecom;
if Trim(RichEditRecom.Text) = ''
  then
    begin
      RichEditRecom.Color:= clBtnFace;
      RichEditRecom.Enabled:= False;
    end
  else
    begin
      RichEditRecom.Color:= clWindow;
      RichEditRecom.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------
//��������� ���� � ��������� ��� ����� ����� �� ������������� ������
procedure TFrmStatusPat.TrayIconVisitClick(Sender: TObject);
begin
  with TFrmShedul.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;

//����� ��������� ������� ������� � ��������
  with DSetStPatTmp do
    begin
      if Active then Close;
      SQLs.SelectSQL.Text:= 'SELECT 1 FROM TBL_ANKETA A '
                          + 'WHERE  EXISTS('
                          + 'SELECT 1 FROM TBL_SHEDULE SH '
                          + 'INNER JOIN TBL_ANKETA A ON (SH.SHEDUL_LINKANKETA = A.ID_ANKETA) '
                          + 'WHERE SH.SHEDULCHECK = 1 AND A.ID_ANKETA = :prmAnk) '
                          + 'AND A.ID_ANKETA = :prmAnk';
      Prepare;
      ParamByName('prmAnk').Value:= DMFIB.DSetAnketa.FN('ID_ANKETA').Value;
      Open;

      //���� ���������� ������ ����, �� ��������� ��� � �����
      with TrayIconVisit do
        if not IsEmpty //���� ������� �� ����, �.�. ���� �������
          then
            begin
              if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
                then
                  BalloonHint:= '��� ����� ��������'
                else
                  BalloonHint:= '��� ���� ���������';
              Hint:= '�������� ����� ����� �� ������, ����� ������� �������';
              BalloonHint:= BalloonHint + ' �� ������� ������ � ���� ������� ���������� �������.' + #13#10
                            + #13#10  + '�������� ����� �� ������������� ������, ����� ������� ���� � ���������.';
              BalloonTimeout:= 500;
              AnimateInterval:= 250;
              Visible:= True;
//              ShowBalloonHint;//�������� �� ����������
              Animate:= True;
            end
          else
            begin
              Animate:= False;
              Hint:= '';
              BalloonHint:= '';
              Visible:= False;
            end;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelDrugClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextDrugs:= Trim(GetRTFText(RichEditDrug));

DrugChoiceBtn:= True;//������ ������ �������� ����� ���������

//������� �����
with TFrmTblDrugs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditDrug.CanFocus then RichEditDrug.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelManipClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextManip:= Trim(GetRTFText(RichEditManip));

ManipChoiceBtn:= True;//������ ������ ����������� ����� ���������

with TFrmTblManip.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditManip.CanFocus then RichEditManip.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelDsClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextDs:= Trim(GetRTFText(RichEditDs));

DsChoiceBtn:= True;//������ ������ �������� ����� ���������

with TFrmTblDs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditDs.CanFocus then RichEditDs.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelRecomClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextRecom:= Trim(GetRTFText(RichEditRecom));

RecomChoiceBtn:= True;//������ ������ ������������ ����� ���������

with TFrmTblRecom.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditRecom.CanFocus then RichEditRecom.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditDrugChange(Sender: TObject);
begin
//��������� ����� � ����
TextDrugs:= RichEditDrug.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditManipChange(Sender: TObject);
begin
//��������� ����� � ����
TextManip:= RichEditManip.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditDsChange(Sender: TObject);
begin
//��������� ����� � ����
TextDs:= RichEditDs.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditRecomChange(Sender: TObject);
begin
//��������� ����� � ����
TextRecom:= RichEditRecom.Text;
end;


(****************************************************************************)
(*          ��������� ������ run-time ���� ��� ����� ��������               *)
(****************************************************************************)

//----------------------------------------------------------------------------
//����� ������� ����������� ������ ������������ �������
procedure TFrmStatusPat.BtnTemplateStPraesensClick(Sender: TObject);
begin
TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));

with TFrmStPraesensTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RichEditStPraesens.Text:= Trim(TextStPraesens);

if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;
end;

//----------------------------------------------------------------------------
//����� ������� ����������� ������ �������� �������
procedure TFrmStatusPat.BtnTemplateStLocalisClick(Sender: TObject);
begin
TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

with TFrmStLocalisTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RichEditStLocalis.Text:= Trim(TextStLocalis);

if RichEditStLocalis.CanFocus then RichEditStLocalis.SetFocus;
end;

//----------------------------------------------------------------------------
//����� ������� ����������� ������ ������� ��������
procedure TFrmStatusPat.BtnTemplateProstataClick(Sender: TObject);
begin
TextStProstata:= Trim(GetRTFText(RichEditProstata));

with TFrmStProstataTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RichEditProstata.Text:= Trim(TextStProstata);

if RichEditProstata.CanFocus then RichEditProstata.SetFocus;
end;

//----------------------------------------------------------------------------
//����� ����� ������������ �� �������
procedure TFrmStatusPat.CallResearcheLuesList(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextLues:= Trim(GetRTFText(RichEdtLues));

with TFrmResearchLues.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtLues.CanFocus then RichEdtLues.SetFocus;
end;

//----------------------------------------------------------------------------
//������ ��� ���.������ �� ������
procedure TFrmStatusPat.BtnUrethBactInocTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUrethBactInoc:= Trim(GetRTFText(RichEdtUrethBactInoc));

with TFrmUrethBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtUrethBactInoc.CanFocus then RichEdtUrethBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//������ ��� ���.������ ����
procedure TFrmStatusPat.BtnUrinBactInocTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextUrinBactInoc:= Trim(GetRTFText(RichEdtUrinBactInoc));

with TFrmUrinBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtUrinBactInoc.CanFocus then RichEdtUrinBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//������ ���.������ ���� ��������
procedure TFrmStatusPat.BtnProstBactInocTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextProstBactInoc:= Trim(GetRTFText(RichEdtProstBactInoc));

with TFrmProstBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtProstBactInoc.CanFocus then RichEdtProstBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//������ ���.������ �� ���������� � ����������
procedure TFrmStatusPat.BtnMicUrBactInocTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextMicUrBactInoc:= Trim(GetRTFText(RichEdtMicUrBactInoc));

with TFrmMicUrBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtMicUrBactInoc.CanFocus then RichEdtMicUrBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnBloodTestClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextBlood:= Trim(GetRTFText(RichEdtBlood));

with TFrmBloodHorm.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtBlood.CanFocus then RichEdtBlood.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.AppEventsStPatShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
//    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
//    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
//      begin
//        BtnSaveClick(Self);//��������� ������� ������� "���������"
//      end;
//
//    //����������� "������" ������ "����-����"
//    Handled:= True;
//    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and BtnPrev.Enabled
//      then BtnPrevClick(Self)
//      else //;
//        begin
//          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and BtnNext.Enabled
//            then BtnNextClick(Self)//;
//            else Handled:= False;
//        end;

    Handled:= True;
    if (GetKeyState(VK_ESCAPE) < 0)
      then BtnCancelClick(Self)//��������� ������� ������� "������"
      else
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0)
            then BtnSaveClick(Self)//��������� ������� ������� "���������"
            else
              begin
                if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and BtnPrev.Enabled
                  then BtnPrevClick(Self)
                  else
                    begin
                      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and BtnNext.Enabled
                        then BtnNextClick(Self)
                        else Handled:= False;
                    end;

              end;
        end;
  end;
AppEventsStPat.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------
//�������� ����� �������� � ����� ����������� �� ��������, �������, ���
procedure TFrmStatusPat.BtnAIDSTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextAIDS:= Trim(GetRTFText(RichEdtAIDS));

with TFrmAIDS.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtAIDS.CanFocus then RichEdtAIDS.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� �������� � ����� ����������� ������������
procedure TFrmStatusPat.BtnSpermGrListClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextSperm:= Trim(GetRTFText(RichEdtSperm));

with TFrmSpermGr.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtSperm.CanFocus then RichEdtSperm.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� ����� ������� ���
procedure TFrmStatusPat.BtnPCRTemlateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextPCR:= Trim(GetRTFText(RichEditPCR));

with TFrmPCR.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditPCR.CanFocus then RichEditPCR.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� �������������� ������� ����� ������� ���
procedure TFrmStatusPat.BtnIFATemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextIFA:= Trim(GetRTFText(RichEditIFA));

with TFrmIFA.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditIFA.CanFocus then RichEditIFA.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� �������������� ������� ����
procedure TFrmStatusPat.BtnOAMTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextOAM:= Trim(GetRTFText(RichEditOAM));

with TFrmOAM.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditOAM.CanFocus then RichEditOAM.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� �������������� ����� �� ������
procedure TFrmStatusPat.BtnMazUrTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextMazUr:= Trim(GetRTFText(RichEditMazUr));

with TFrmMazUrethra.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditMazUr.CanFocus then RichEditMazUr.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ����� �������������� ����� ���� ��������
procedure TFrmStatusPat.BtnMazProstTemplateClick(Sender: TObject);
begin
//���������� ��������������� ����� ���-����� � ������
TextMazProst:= Trim(GetRTFText(RichEditMazProst));

with TFrmMazProst.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditMazProst.CanFocus then RichEditMazProst.SetFocus;
end;

(****************************************************************************)
(*                ��������� ����� ������� run-time ����                     *)
(****************************************************************************)

//----------------------------------------------------------------------------
//�������� �����-�������� ������������ �� �������
procedure TFrmStatusPat.BtnLuesListClicktClick(Sender: TObject);
begin
CallResearcheLuesList(Sender);
end;

//----------------------------------------------------------------------------
//������ "..." DBLookUp � ���������
procedure TFrmStatusPat.DBLookupCBDocChoiceEditButtons0Click(Sender: TObject; var Handled: Boolean);
begin
//�������� ���������� � ���������
FrmMainProg.ActTblDoctorExecute(Sender);

//��������� �������������� � ��������� ������
PrepareDBLookUpCBDocChoice(Sender);

//��������� �������������� � ��� ������ (����� �������, ��� ��� ���� ������� ��� ������� �/�� �� �����)
PrepareDBLookUpCBClinChoice(Sender);
end;

//----------------------------------------------------------------------------
//������ "..." DBLookUp � ���
procedure TFrmStatusPat.DBLookupCBClinChoiceEditButtons0Click(Sender: TObject; var Handled: Boolean);
begin
//�������� ���������� � ���
FrmMainProg.ActTblClinicExecute(Sender);

//��������� �������������� � ��� ������
PrepareDBLookUpCBClinChoice(Sender);

//��������� �������������� � ��������� ������ (����� �������, ��� ������� ���� ������� ��� ������� �/�� �� �����)
PrepareDBLookUpCBDocChoice(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditOAMChange(Sender: TObject);
begin
//��������� ����� � ����
TextOAM:= RichEditOAM.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtLuesChange(Sender: TObject);
begin
//��������� ����� � ����
TextLues:= RichEdtLues.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtUrethBactInocChange(Sender: TObject);
begin
//��������� ����� � ����
TextUrethBactInoc:= RichEdtUrethBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtUrinBactInocChange(Sender: TObject);
begin
//��������� ����� � ����
TextUrinBactInoc:= RichEdtUrinBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtProstBactInocChange(Sender: TObject);
begin
//��������� ����� � ����
TextProstBactInoc:= RichEdtProstBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtMicUrBactInocChange(Sender: TObject);
begin
//��������� ����� � ����
TextMicUrBactInoc:= RichEdtMicUrBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtBloodChange(Sender: TObject);
begin
//��������� ����� � ����
TextBlood:= RichEdtBlood.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtAIDSChange(Sender: TObject);
begin
//��������� ����� � ����
TextAIDS:= RichEdtAIDS.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtSpermChange(Sender: TObject);
begin
//��������� ����� � ����
TextSperm:= RichEdtSperm.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditPCRChange(Sender: TObject);
begin
//��������� ����� � ����
TextPCR:= RichEditPCR.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditIFAChange(Sender: TObject);
begin
//��������� ����� � ����
TextIFA:= RichEditIFA.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditMazUrChange(Sender: TObject);
begin
//��������� ����� � ����
TextMazUr:= RichEditMazUr.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditMazProstChange(Sender: TObject);
begin
//��������� ����� � ����
TextMazProst:= RichEditMazProst.Text;
end;

//----------------------------------------------------------------------------
//������������� ���-����� "������" ��������� ������
procedure TFrmStatusPat.SetDefaultSelAttrRichEdt(Sender: TRichEdit);
begin
with TRichEdit(Sender) do
  begin
    Clear;
    SelAttributes.Assign(DefAttributes);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.DTPickPriemChange(Sender: TObject);
begin
DateStatusPat:= DTPickPriem.DateTime;
end;

(*****************************************************************************)
(***                    ���� ������ ���� � �������                         ***)
(*****************************************************************************)

//----------------------------------------------------------------------------
//�������� ����������� ������ �������
procedure TFrmStatusPat.BtnStPraesensFotoClick(Sender: TObject);
begin
with TFrmImgStPraesens.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//�������� ����������� ���������� �������
procedure TFrmStatusPat.BtnStLocalisFotoClick(Sender: TObject);
begin
with TFrmImgStLocalis.Create(nil)do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//�������� ����������� ��� �����
procedure TFrmStatusPat.BtnUZIRenFotosClick(Sender: TObject);
begin
with TFrmImgUZIRen.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUZIGenitFotosClick(Sender: TObject);
begin
with TFrmImgUZIGenit.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;   
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaDryFotosClick(Sender: TObject);
begin
with TFrmImgUrScopiaDry.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;   
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaIrrigFotosClick(Sender: TObject);
begin
with TFrmImgUrScopiaIrrig.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;   
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoMazUrClick(Sender: TObject);
begin
with TFrmImgMazUr.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoMazProstClick(Sender: TObject);
begin
with TFrmImgMazPr.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoAIDSClick(Sender: TObject);
begin
//������� �����, ���� ������ ��� ��������
with TFrmImgAIDSFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoHBVClick(Sender: TObject);
begin
//������� �����, ���� ������ ��� ��������
with TFrmImgHbsAgFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoRWClick(Sender: TObject);
begin
//������� �����, ���� ������ ��� ��������
with TFrmImgRWFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmStatusPat.BtnHlpClick(Sender: TObject);
begin
  case PgCtrlVisit.ActivePageIndex of
    0 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_0);
    1 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_1);
    2 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_2);
    3 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_3);
    4 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_4);
    5 : CallMyDocByHlpContext(BtnHlp,HlpCtxStatusPat_5);
    else
      CallMyDocByHlpContext(BtnHlp);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoIFAClick(Sender: TObject);
begin
//������� �����, ���� ������ ��� ��������
with TFrmImgIFAFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoPCRClick(Sender: TObject);
begin
//������� �����, ���� ������ ��� ��������
with TFrmImgPCRFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//��������������� �������� "������������" ������ ��� ������� ��������
function TFrmStatusPat.ChkExistsDateVisit(ADateTime: TDateTime; PatIDparam, DocIDparam: Variant): Boolean;
var TmpStr: AnsiString;
begin
//���������, �� ���� �� ������� � ����� �������� � ���� ����
  with DMFIB, DSetTmp_2 do
    begin
      if Active then Close;

      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT VM.DATEVISIT '
                            + 'FROM TBL_VISITMAIN VM '
                            + 'LEFT JOIN TBL_DOCTOR D ON (VM.VIS_LINKDOCTOR = D.ID_DOCTOR) '
                            + 'LEFT JOIN TBL_ANKETA A ON (VM.VIS_LINKANKETA = A.ID_ANKETA) '
                            + 'WHERE VM.DATEVISIT = :prmDateVisit AND '
                            + 'VM.VIS_LINKANKETA = :prmIDPat AND D.ID_DOCTOR = :prmIDDoc';

      Prepare;
      ParamByName ('prmDateVisit').Value:= ADateTime;
      ParamByName('prmIDPat').Value:= PatIDparam;
      ParamByName('prmIDDoc').Value:= DocIDparam;
      FullRefresh;

      Result:= not IsEmpty;

      //������������� ������ � ����������� ��������
      if not DSetDoctor.IsEmpty then
        begin
          if not DSetDoctor.Active then DSetDoctor.Open;
          if not DSetDoctor.IsEmpty then
                            DSetDoctor.Locate('ID_DOCTOR',DocIDparam,[]);
        end;

      if DSetAnketa.FN('SEX').AsInteger = 1
        then
          TmpStr:= '��������! ������� '
        else
          TmpStr:= '��������! ��������� ';

      TmpStr:= TmpStr + Trim(FrmMainProg.LblStatusSingle.Caption) + ', ��� ';

      if DSetAnketa.FN('SEX').AsInteger = 1
         then
           TmpStr:= TmpStr + '���'
         else
           TmpStr:= TmpStr + '����';

      TmpStr:= TmpStr + ' ' + FormatDateTime('DD.MM.YYYY',ADateTime) + ' �. �� ������ � ����� '
      + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,2) + ' '
      + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
      AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.',
      AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.',
      (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 2)
      + ' ����������, ������� ���������� ����, ����� �������� ����� '
      + '����� � ����� �����, ���� �������������� ��� ��������� ������ �� '
      + FormatDateTime('DD.MM.YYYY',ADateTime) + ' �.';


      if Result then
          Application.MessageBox(PChar(TmpStr),'������������ ������!', MB_ICONINFORMATION);
      if Active then Close;
    end;
end;

//----------------------------------------------------------------------------
//��������� ����������������� �������
procedure TFrmStatusPat.ChkBoxAnamnesAllergyClick(Sender: TObject);
begin
RdBtnAllergyNo.Enabled:= ChkBoxAnamnesAllergy.Checked;
RdBtnAllergyYes.Enabled:= ChkBoxAnamnesAllergy.Checked;
RchEdtAnamAllergy.Enabled:= ChkBoxAnamnesAllergy.Checked;
BtnTemplAnamAllergy.Enabled:= ChkBoxAnamnesAllergy.Checked;

if ChkBoxAnamnesAllergy.Checked
  then
    RchEdtAnamAllergy.Color:= clWindow
  else
    RchEdtAnamAllergy.Color:= clBtnFace;

if ChkBoxAnamnesAllergy.Checked then RdBtnAllergyNoClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnAllergyNoClick(Sender: TObject);
begin
RdBtnAllergyYesClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnAllergyYesClick(Sender: TObject);
begin
RdBtnAllergyYes.Checked:= not RdBtnAllergyNo.Checked;
BtnTemplAnamAllergy.Enabled:= RdBtnAllergyYes.Checked;
if Trim(RchEdtAnamAllergy.Text) = ''
  then
    RchEdtAnamAllergy.Color:= clBtnFace
  else
    RchEdtAnamAllergy.Color:= clWindow;

RchEdtAnamAllergy.Enabled:= not (Trim(RchEdtAnamAllergy.Text) = '');
end;

//----------------------------------------------------------------------------
//��������� ������� ��������
procedure TFrmStatusPat.ChkBoxBadHabitClick(Sender: TObject);
begin
ChkBoxAnamSmoke.Enabled:= ChkBoxBadHabit.Checked;
SpnEdtSigarCount.Enabled:= ChkBoxBadHabit.Checked;
LblSmoke1.Enabled:= ChkBoxBadHabit.Checked;
LblSmoke2.Enabled:= ChkBoxBadHabit.Checked;
SpnEdtSmokeAge.Enabled:= ChkBoxBadHabit.Checked;
CbBoxSmokePeriod.Enabled:= ChkBoxBadHabit.Checked;
ChkBoxAnamAlkohol.Enabled:= ChkBoxBadHabit.Checked;
LblChldDes.Enabled:= ChkBoxBadHabit.Checked;
RchEdtAnamChldDes.Enabled:= ChkBoxBadHabit.Checked;
BtnTemplAnamChldDes.Enabled:= ChkBoxBadHabit.Checked;
LblAnthrDes.Enabled:= ChkBoxBadHabit.Checked;
RchEdtAnamAnthrDes.Enabled:= ChkBoxBadHabit.Checked;
BtnTemplAnamAnthrDes.Enabled:= ChkBoxBadHabit.Checked;

if ChkBoxBadHabit.Checked
  then
    begin
      if Trim(RchEdtAnamChldDes.Text) = ''
        then
          RchEdtAnamChldDes.Color:= clBtnFace
        else
          RchEdtAnamChldDes.Color:= clWindow;

      if Trim(RchEdtAnamAnthrDes.Text) = ''
        then
          RchEdtAnamAnthrDes.Color:= clBtnFace
        else
          RchEdtAnamAnthrDes.Color:= clWindow;

      RchEdtAnamChldDes.Enabled:= not(Trim(RchEdtAnamChldDes.Text) = '');
      RchEdtAnamAnthrDes.Enabled:= not(Trim(RchEdtAnamAnthrDes.Text) = '');
      ChkBoxAnamSmokeClick(Sender);
    end
  else
    begin
      RchEdtAnamChldDes.Color:= clBtnFace;
      RchEdtAnamAnthrDes.Color:= clBtnFace;
    end;
end;

//----------------------------------------------------------------------------
//��������� �������
procedure TFrmStatusPat.ChkBoxAnamSmokeClick(Sender: TObject);
begin
SpnEdtSigarCount.Enabled:= ChkBoxAnamSmoke.Checked;
LblSmoke1.Enabled:= ChkBoxAnamSmoke.Checked;
LblSmoke2.Enabled:= ChkBoxAnamSmoke.Checked;
SpnEdtSmokeAge.Enabled:= ChkBoxAnamSmoke.Checked;
CbBoxSmokePeriod.Enabled:= ChkBoxAnamSmoke.Checked;
end;

//----------------------------------------------------------------------------
//��������� �������� � ������
procedure TFrmStatusPat.ChkBoxAndrOperationClick(Sender: TObject);
begin
ChkBoxAndrVaricocele.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrHydrocele.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrCryptorhism.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrCircumcisio.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrParotit.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrCastracio.Enabled:= ChkBoxAndrOperation.Checked;
ChkBoxAndrAdenomOper.Enabled:= ChkBoxAndrOperation.Checked;
end;

//----------------------------------------------------------------------------
//��������� �������� �������
procedure TFrmStatusPat.ChkBoxAnamnesFamilyClick(Sender: TObject);
begin
CbBoxAndrMarriage.Enabled:= ChkBoxAnamnesFamily.Checked;
ChkBoxAndrChild.Enabled:= ChkBoxAnamnesFamily.Checked;
SpnEdtAndrChildCount.Enabled:= ChkBoxAnamnesFamily.Checked;
ChkBoxAndrPregnancy.Enabled:= ChkBoxAnamnesFamily.Checked;

if ChkBoxAnamnesFamily.Checked then ChkBoxAndrChildClick(Sender);
end;

//----------------------------------------------------------------------------
//��������� ������� ��������� �����
procedure TFrmStatusPat.ChkBoxAndrChildClick(Sender: TObject);
begin
SpnEdtAndrChildCount.Enabled:= ChkBoxAndrChild.Checked;
end;

//----------------------------------------------------------------------------
//��������� ������� ������� � ������
procedure TFrmStatusPat.ChkBoxAnamnesAndrSexClick(Sender: TObject);
begin
LblSexPartner.Enabled:= ChkBoxAnamnesAndrSex.Checked;
CbBoxSexPartnFemaleCount.Enabled:= ChkBoxAnamnesAndrSex.Checked;
CbBoxSexPartnFemaleRamdom.Enabled:= ChkBoxAnamnesAndrSex.Checked;
LblAndrCoitusCount.Enabled:= ChkBoxAnamnesAndrSex.Checked;
SpnEdtAndrCoitusCount.Enabled:= ChkBoxAnamnesAndrSex.Checked;
CbBoxAndrCoitusPeriod.Enabled:= ChkBoxAnamnesAndrSex.Checked;
LblAndrOrgasmCount.Enabled:= ChkBoxAnamnesAndrSex.Checked;
SpnEdtAndrOrgasmCount.Enabled:= ChkBoxAnamnesAndrSex.Checked;
LblAndrOrgasmPeriod.Enabled:= ChkBoxAnamnesAndrSex.Checked;
LblAndrZPPP.Enabled:= ChkBoxAnamnesAndrSex.Checked;
RchEdtAndrZPPP.Enabled:= ChkBoxAnamnesAndrSex.Checked;
BtnTemplAndrZPPP.Enabled:= ChkBoxAnamnesAndrSex.Checked;

if ChkBoxAnamnesAndrSex.Checked
  then
    begin
      if Trim(RchEdtAndrZPPP.Text) = ''
        then
          RchEdtAndrZPPP.Color:= clBtnFace
        else
          RchEdtAndrZPPP.Color:= clWindow;

      RchEdtAndrZPPP.Enabled:= not(Trim(RchEdtAndrZPPP.Text) = '');
      CbBoxSexPartnFemaleCountChange(Sender);
    end
  else
    RchEdtAndrZPPP.Color:= clBtnFace;
end;

//----------------------------------------------------------------------------
//�������� ������� ������� � ������ 
procedure TFrmStatusPat.CbBoxSexPartnFemaleCountChange(Sender: TObject);
begin
CbBoxSexPartnFemaleRamdom.Enabled:= (CbBoxSexPartnFemaleCount.ItemIndex = 2);

LblAndrCoitusCount.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
SpnEdtAndrCoitusCount.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
CbBoxAndrCoitusPeriod.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
LblAndrOrgasmCount.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
SpnEdtAndrOrgasmCount.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
LblAndrOrgasmPeriod.Enabled:= not (CbBoxSexPartnFemaleCount.ItemIndex = 0);
end;

//----------------------------------------------------------------------------
//��������� ���������-���������������� �������
procedure TFrmStatusPat.ChkBoxAnamnesGinekClick(Sender: TObject);
begin
LblGinMenarhe.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinMenarhe.Enabled:= ChkBoxAnamnesGinek.Checked;
ChkBoxGinMenopause.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMenopauseAge1.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinMenopauseAge.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMenopauseAge2.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMensesPeriod1.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinMensesPeriod.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMensesPeriod2.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMensesPeriod3.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinMensesAge.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMensesPeriod4.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinLastMenses.Enabled:= ChkBoxAnamnesGinek.Checked;
DTPickGinLastMensesDate.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinPregnancy.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinPregnancyCount.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinChildBirth.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinChildBirthCount.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinAbortion.Enabled:= ChkBoxAnamnesGinek.Checked;
SpnEdtGinAbortionCount.Enabled:= ChkBoxAnamnesGinek.Checked;
LblGinMarriage.Enabled:= ChkBoxAnamnesGinek.Checked;
CbBoxGinMarriage.Enabled:= ChkBoxAnamnesGinek.Checked;

if ChkBoxAnamnesGinek.Checked then ChkBoxGinMenopauseClick(Sender);
end;

//----------------------------------------------------------------------------
//�������� ������ ���������
procedure TFrmStatusPat.ChkBoxGinMenopauseClick(Sender: TObject);
begin
LblGinMenopauseAge1.Enabled:= ChkBoxGinMenopause.Checked;
SpnEdtGinMenopauseAge.Enabled:= ChkBoxGinMenopause.Checked;
LblGinMenopauseAge2.Enabled:= ChkBoxGinMenopause.Checked;

LblGinMensesPeriod1.Enabled:= not ChkBoxGinMenopause.Checked;
SpnEdtGinMensesPeriod.Enabled:= not ChkBoxGinMenopause.Checked;
LblGinMensesPeriod2.Enabled:= not ChkBoxGinMenopause.Checked;
LblGinMensesPeriod3.Enabled:= not ChkBoxGinMenopause.Checked;
SpnEdtGinMensesAge.Enabled:= not ChkBoxGinMenopause.Checked;
LblGinMensesPeriod4.Enabled:= not ChkBoxGinMenopause.Checked;
LblGinLastMenses.Enabled:= not ChkBoxGinMenopause.Checked;
DTPickGinLastMensesDate.Enabled:= not ChkBoxGinMenopause.Checked;
end;

//----------------------------------------------------------------------------
//��������� ������� ������� � ������
procedure TFrmStatusPat.ChkBoxAnamnesGinSexClick(Sender: TObject);
begin
LblSexPartnerFemale.Enabled:= ChkBoxAnamnesGinSex.Checked;
CbBoxSexPartnMaleCount.Enabled:= ChkBoxAnamnesGinSex.Checked;
CbBoxSexPartnMaleRamdom.Enabled:= ChkBoxAnamnesGinSex.Checked;
LblGinCoitusCount.Enabled:= ChkBoxAnamnesGinSex.Checked;
SpnEdtGinCoitusCount.Enabled:= ChkBoxAnamnesGinSex.Checked;
CbBoxGinCoitusPeriod.Enabled:= ChkBoxAnamnesGinSex.Checked;
LblGinZPPP.Enabled:= ChkBoxAnamnesGinSex.Checked;
RchEdtGinZPPP.Enabled:= ChkBoxAnamnesGinSex.Checked;
BtnTemplGinZPPP.Enabled:= ChkBoxAnamnesGinSex.Checked;

if ChkBoxAnamnesGinSex.Checked
  then
    begin
      if Trim(RchEdtGinZPPP.Text) = ''
        then
          RchEdtGinZPPP.Color:= clBtnFace
        else
          RchEdtGinZPPP.Color:= clWindow;

      RchEdtGinZPPP.Enabled:= not(Trim(RchEdtGinZPPP.Text) = '');
      CbBoxSexPartnMaleCountChange(Sender);
    end
  else
    RchEdtGinZPPP.Color:= clBtnFace;

end;

//----------------------------------------------------------------------------
//�������� ������� ����� � ������
procedure TFrmStatusPat.CbBoxSexPartnMaleCountChange(Sender: TObject);
begin
CbBoxSexPartnMaleRamdom.Enabled:= (CbBoxSexPartnMaleCount.ItemIndex = 2);

LblGinCoitusCount.Enabled:= not (CbBoxSexPartnMaleCount.ItemIndex = 0);
SpnEdtGinCoitusCount.Enabled:= not (CbBoxSexPartnMaleCount.ItemIndex = 0);
CbBoxGinCoitusPeriod.Enabled:= not (CbBoxSexPartnMaleCount.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplAnamAllergyClick(Sender: TObject);
begin
TextAnamAllergy:= Trim(RchEdtAnamAllergy.Text);

with TFrmAllergyChoice.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RchEdtAnamAllergy.Text:= Trim(TextAnamAllergy);

//�������� ����������� ��������� � ������������ � �������
ChkBoxAnamnesAllergyClick(Sender);

if RchEdtAnamAllergy.CanFocus then RchEdtAnamAllergy.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplAnamChldDesClick(Sender: TObject);
begin
TextAnamChldDes:= Trim(RchEdtAnamChldDes.Text);

with TFrmChildDes.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RchEdtAnamChldDes.Text:= Trim(TextAnamChldDes);

//�������� ����������� ��������� � ������������ � �������
ChkBoxBadHabitClick(Sender);

if RchEdtAnamChldDes.CanFocus then RchEdtAnamChldDes.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplAnamAnthrDesClick(Sender: TObject);
begin
TextAnamAnthrDes:= Trim(RchEdtAnamAnthrDes.Text);

with TFrmAnthrDes.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RchEdtAnamAnthrDes.Text:= Trim(TextAnamAnthrDes);

//�������� ����������� ��������� � ������������ � �������
ChkBoxBadHabitClick(Sender);

if RchEdtAnamAnthrDes.CanFocus then RchEdtAnamAnthrDes.SetFocus;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplAndrZPPPClick(Sender: TObject);
begin
TextAndrZPPP:= Trim(RchEdtAndrZPPP.Text);
ZPPPboolFlag:= True;//����-������ ----> "�������" ������� ����

with TFrmZPPP.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RchEdtAndrZPPP.Text:= Trim(TextAndrZPPP);

//�������� ����������� ��������� � ������������ � �������
ChkBoxAnamnesAndrSexClick(Sender);

if RchEdtAndrZPPP.CanFocus then RchEdtAndrZPPP.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplGinZPPPClick(Sender: TObject);
begin
TextGinZPPP:= Trim(RchEdtGinZPPP.Text);
ZPPPboolFlag:= False;//����-������ ----> "�������" ������� ����

with TFrmZPPP.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//�������� ������������ ����� � ���-����
RchEdtGinZPPP.Text:= Trim(TextGinZPPP);

//�������� ����������� ��������� � ������������ � �������
ChkBoxAnamnesGinSexClick(Sender);

if RchEdtGinZPPP.CanFocus then RchEdtGinZPPP.SetFocus;
end;

(********** ���� ������������ ������� ������ �������������� ������ � ������ TwwDBRichEdit **********)

//----------------------------------------------------------------------------
//������ ��������
procedure TFrmStatusPat.BtnRichFmtComplaintsClick(Sender: TObject);
begin
//�������� ������������ ����� � ���-����
RichEditComplaints.Text:= Trim(CallSimpleRichEditor(RichEditComplaints));

//����� � edit-����
if RichEditComplaints.CanFocus then RichEditComplaints.SetFocus;
end;

//----------------------------------------------------------------------------
//"���������" ��������
procedure TFrmStatusPat.BtnRichFmtSecretStuffClick(Sender: TObject);
begin
//�������� ������������ ����� � ���-����
RichEditSecretStuff.Text:= Trim(CallSimpleRichEditor(RichEditSecretStuff));

//����� � edit-����
if RichEditSecretStuff.CanFocus then RichEditSecretStuff.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������
procedure TFrmStatusPat.BtnRichFmtStPraesensClick(Sender: TObject);
begin
//�������� ������������ ����� � ���-����
RichEditStPraesens.Text:= Trim(CallSimpleRichEditor(RichEditStPraesens));

//����� � edit-����
if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ���������� ������
procedure TFrmStatusPat.BtnRichFmtProstataClick(Sender: TObject);
begin
//�������� ������������ ����� � ���-����
RichEditProstata.Text:= Trim(CallSimpleRichEditor(RichEditProstata));

//����� � edit-����
if RichEditProstata.CanFocus then RichEditProstata.SetFocus;
end;

//----------------------------------------------------------------------------
//��������� ������
procedure TFrmStatusPat.BtnRichFmtStLocalisClick(Sender: TObject);
begin
//�������� ������������ ����� � ���-����
RichEditStLocalis.Text:= Trim(CallSimpleRichEditor(RichEditStLocalis));

if RichEditStLocalis.CanFocus then RichEditStLocalis.SetFocus;
end;

//----------------------------------------------------------------------------
//���� ������������ �� �������
procedure TFrmStatusPat.BtnRichFmtLuesClick(Sender: TObject);
begin
TextLues:= CallSimpleRichEditor(RichEdtLues);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtLues.CanFocus then RichEdtLues.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ �����
procedure TFrmStatusPat.BtnRichFmtBloodClick(Sender: TObject);
begin
TextBlood:= CallSimpleRichEditor(RichEdtBlood);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtBlood.CanFocus then RichEdtBlood.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ����
procedure TFrmStatusPat.BtnRichFmtOAMClick(Sender: TObject);
begin
TextOAM:= CallSimpleRichEditor(RichEditOAM);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditOAM.CanFocus then RichEditOAM.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ����� �� RW, ���, �������
procedure TFrmStatusPat.BtnRichFmtAIDSClick(Sender: TObject);
begin
TextAIDS:= CallSimpleRichEditor(RichEdtAIDS);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtAIDS.CanFocus then RichEdtAIDS.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ����� �� ������
procedure TFrmStatusPat.BtnRichFmtMazUrClick(Sender: TObject);
begin
TextMazUr:= CallSimpleRichEditor(RichEditMazUr);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditMazUr.CanFocus then RichEditMazUr.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ����� ���
procedure TFrmStatusPat.BtnRichFmtMazProstClick(Sender: TObject);
begin
TextMazProst:= CallSimpleRichEditor(RichEditMazProst);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditMazProst.CanFocus then RichEditMazProst.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ��������
procedure TFrmStatusPat.BtnRichFmtSpermClick(Sender: TObject);
begin
TextSperm:= CallSimpleRichEditor(RichEdtSperm);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtSperm.CanFocus then RichEdtSperm.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ������� ���
procedure TFrmStatusPat.BtnRichFmtPCRClick(Sender: TObject);
begin
TextPCR:= CallSimpleRichEditor(RichEditPCR);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditPCR.CanFocus then RichEditPCR.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ������� ���
procedure TFrmStatusPat.BtnRichFmtIFAClick(Sender: TObject);
begin
TextIFA:= CallSimpleRichEditor(RichEditIFA);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEditIFA.CanFocus then RichEditIFA.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ���.������ �� ������
procedure TFrmStatusPat.BtnRichFmtUrethBactInocClick(Sender: TObject);
begin
TextUrethBactInoc:= CallSimpleRichEditor(RichEdtUrethBactInoc);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtUrethBactInoc.CanFocus then RichEdtUrethBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ���.������ ���
procedure TFrmStatusPat.BtnRichFmtProstBactInocClick(Sender: TObject);
begin
TextProstBactInoc:= CallSimpleRichEditor(RichEdtProstBactInoc);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtProstBactInoc.CanFocus then RichEdtProstBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ���.������ �� ����������-����������
procedure TFrmStatusPat.BtnRichFmtMicUrBactInocClick(Sender: TObject);
begin
TextMicUrBactInoc:= CallSimpleRichEditor(RichEdtMicUrBactInoc);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtMicUrBactInoc.CanFocus then RichEdtMicUrBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//����������� ������������ ���.������ ����
procedure TFrmStatusPat.BtnRichFmtUrinBactInocClick(Sender: TObject);
begin
TextUrinBactInoc:= CallSimpleRichEditor(RichEdtUrinBactInoc);

//�������������� ������� ������
ShowLabAnalises(Sender);

//����� � edit-����
if RichEdtUrinBactInoc.CanFocus then RichEdtUrinBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//��� ������������ ����� � �������� ������ 
procedure TFrmStatusPat.BtnRichFmtUZIRenClick(Sender: TObject);
begin
TextUZIRen:= CallSimpleRichEditor(RichEditUZIRen);

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUZIRen.CanFocus then RichEditUZIRen.SetFocus;
end;

//----------------------------------------------------------------------------
//��� ������������ ���������
procedure TFrmStatusPat.BtnRichFmtUZIGenitClick(Sender: TObject);
begin
TextUZIGenit:= CallSimpleRichEditor(RichEditUZIGenit);

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUZIGenit.CanFocus then RichEditUZIGenit.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ������������ "�����" ������������
procedure TFrmStatusPat.BtnRichFmtUrScopiaDryClick(Sender: TObject);
begin
TextUrScopiaDry:= CallSimpleRichEditor(RichEditUrScopiaDry);

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUrScopiaDry.CanFocus then RichEditUrScopiaDry.SetFocus;
end;

//----------------------------------------------------------------------------
//�������� ������������ ������������� ������������
procedure TFrmStatusPat.BtnRichFmtUrScopiaIrrigClick(Sender: TObject);
begin
TextUrScopiaIrrig:= CallSimpleRichEditor(RichEditUrScopiaIrrig);

//�������������� ������� ������
ShowToolResearch(Sender);

//����� � edit-����
if RichEditUrScopiaIrrig.CanFocus then RichEditUrScopiaIrrig.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtDrugClick(Sender: TObject);
begin
TextDrugs:= CallSimpleRichEditor(RichEditDrug);

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditDrug.CanFocus then RichEditDrug.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtDsClick(Sender: TObject);
begin
TextDs:= CallSimpleRichEditor(RichEditDs);

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditDs.CanFocus then RichEditDs.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtManipClick(Sender: TObject);
begin
TextManip:= CallSimpleRichEditor(RichEditManip);

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditManip.CanFocus then RichEditManip.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtRecomClick(Sender: TObject);
begin
TextRecom:= CallSimpleRichEditor(RichEditRecom);

//�������������� ������� ������
ShowTreatmentDs(Sender);

//����� � edit-����
if RichEditRecom.CanFocus then RichEditRecom.SetFocus;
end;

//----------------------------------------------------------------------------
function TFrmStatusPat.CallSimpleRichEditor(Sender: TRichEdit) : string;
begin
//���������� ������������� ����� ��� �������� � "�������" ���-����
SimpleREStr:= Trim(GetRTFText(TRichEdit(Sender)));

with TFrmSimpleEditor.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

Result:= SimpleREStr;//���������� ��������� �� ���������
end;

{ TThreadSaveRec }

procedure TThreadSaveRec.CloseSplashMsg;
begin
  IsFinishedThread:= True;
  if Assigned(frmSplash) then frmSplash.Close;
end;

constructor TThreadSaveRec.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  Priority:= tpLower;
  FreeOnTerminate:= False;
  IsFinishedThread:= False;
  IsThreadExecuteAbort:= False;
end;

procedure TThreadSaveRec.Execute;
var
  i, Old_VarID_Tbl_VisitMain: Integer;
  TmpRE: TRichEdit;//���-���� ��� ��������� ����
  TmpMS : TMemoryStream;
  TmpSpermTxt: string;

begin
  inherited;
  Old_VarID_Tbl_VisitMain:= VarID_Tbl_VisitMain;//�������� ������ ��������

    try
      try
        FMsgParam:= 4;
        FMsgIntValue:= 0;//�� ������ ������, ���� ���-�� �����
        Synchronize(MyMsg);//������ pnlBottom �� ������

        FMsgStrValue:= '���������� ������';
        FMsgParam:= 2;
        Synchronize(MyMsg);//��������� ������

        FMsgStrValue:= '��������� ������ � �������.' + #13#10 + '����������, ���������';
        FMsgParam:= 1;
        Queue(MyMsg);//��������� ��������� �� ������
        Sleep(1000);

        DMFIB.WriteTransVisit.StartTransaction;

        if VisitPatientFlag//���� ������ ����� ���� "��������"
          then //�� ��������� ������ � �������
            begin
              DMFIB.DSetVisitMain.Insert;
              VarID_Tbl_VisitMain:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger;//�������� ����� �������� ID
            end
          else // ����� ����������� ������� ������
            DMFIB.DSetVisitMain.Edit;

        {$region '��������� ������ � �������'}
        with FrmStatusPat do
        begin
          with DMFIB.DSetVisitMain do
          begin
            //���������� "�������" ������ � Tbl_VisitCompl �� ��������� Tbl_Anketa
            DMFIB.DSetVisitMain.FN('Vis_LinkAnketa').AsInteger:=
                                            DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger;
            //���������� ������� � ��������
            DMFIB.DSetVisitMain.FN('COMPLAINT_PAGEINDEX').AsInteger:=
                                            FrmStatusPat.PgCtrlComplaint.ActivePageIndex;
            // ========== ������� "������" ===========

            FN('Vis_LinkDoctor').Value:= DBLookupCBDocChoice.KeyValue;
            FN('Vis_LinkClinic').Value:= DBLookupCBClinChoice.KeyValue;
            FN('DateVisit').AsDateTime:= DTPickPriem.Date;
            if RdBtnVisitPrimary.Checked
              then FN('FirstVisit').AsInteger:= 1
              else FN('FirstVisit').AsInteger:= 0;

            //>>> ������� "��������������� ������"
            //---- ������� ������� -----
            FN('DolorPubica').AsInteger:= BoolConvertInt(ChkBoxDolorPubica.Checked);
            FN('DolorPerineum').AsInteger:= BoolConvertInt(ChkBoxDolorPerineum.Checked);
            FN('DolorInguinal').AsInteger:= BoolConvertInt(ChkBoxDolorInguinal.Checked);
            FN('DolorTestis').AsInteger:= BoolConvertInt(ChkBoxDolorTestis.Checked);
            FN('DolorLumbo').AsInteger:= BoolConvertInt(ChkBoxDolorLumbo.Checked);
            FN('DolorSacrum').AsInteger:= BoolConvertInt(ChkBoxDolorSacrum.Checked);
            FN('BadSensUreth').AsInteger:= BoolConvertInt(ChkBoxBadSensUreth.Checked);
            FN('ColicSensUreth').AsInteger:= BoolConvertInt(ChkBoxColicSensUreth.Checked);
            FN('BadSensPerineum').AsInteger:= BoolConvertInt(ChkBoxBadSensPerineum.Checked);
            FN('ColicSensPerineum').AsInteger:= BoolConvertInt(ChkBoxColicSensPerineum.Checked);
            FN('DolorPenisDetumesc').AsInteger:= BoolConvertInt(ChkBoxDolorPenisDetumesc.Checked);
            FN('DolorPenisErect').AsInteger:= BoolConvertInt(ChkBoxDolorPenisErect.Checked);

            //----- ������������ ������� ------
            FN('Pollakiuria').AsInteger:= BoolConvertInt(ChkBoxPollakiuria.Checked);
            FN('MicciaCount').AsInteger:= SpEdtMicciaCount.Value;
            FN('PollakiuriaAge').AsInteger:= SpEdtPollaciuriaAge.Value;
            FN('POLLACIURIAPERIOD').AsInteger:= CbBoxPollaciuriaPeriod.ItemIndex;
            FN('DolorMiccia').AsInteger:= BoolConvertInt(ChkBoxDolorMiccia.Checked);
            FN('Nicturia').AsInteger:= BoolConvertInt(ChkBoxNicturia.Checked);
            FN('NicturiaCount').AsInteger:= SpEdtNicturiaCount.Value;
            FN('NicturiaAge').AsInteger:= SpEdtNicturiaAge.Value;
            FN('NICTURIAPERIOD').AsInteger:= CbBoxNicturiaPeriod.ItemIndex;
            FN('Stranguria').AsInteger:= BoolConvertInt(ChkBoxStranguria.Checked);
            FN('VesUrinUncomplete').AsInteger:= BoolConvertInt(ChkBoxVesUrinUncomplete.Checked);
            FN('ISHURIA').AsInteger:= BoolConvertInt(ChkBoxIshuria.Checked);
            FN('INCONTINENCE').AsInteger:= BoolConvertInt(ChkBoxIncontinence.Checked);
            FN('INCONTINENCECASE').AsInteger:= CbBoxIncontinenceCase.ItemIndex;

            // ----- ��������������� ������� -----
            FN('FastEjacul').AsInteger:= BoolConvertInt(ChkBoxFastEjacul.Checked);
            FN('AnEjacul').AsInteger:= BoolConvertInt(ChkBoxAnEjacul.Checked);
            FN('DolorEjacul').AsInteger:= BoolConvertInt(ChkBoxDolorEjacul.Checked);
            FN('BloodEjacul').AsInteger:= BoolConvertInt(ChkBoxBloodEjacul.Checked);
            FN('IdleEjacul').AsInteger:= BoolConvertInt(ChkBoxIdleEjacul.Checked);
            FN('SlowEjacul').AsInteger:= BoolConvertInt(ChkBoxSlowEjacul.Checked);

            //----- ��������������� ������� -----
            FN('LowLibido').AsInteger:= BoolConvertInt(ChkBoxLowLibido.Checked);
            FN('LowTonus').AsInteger:= BoolConvertInt(ChkBoxLowTonus.Checked);
            FN('LowVozbuzhd').AsInteger:= BoolConvertInt(ChkBoxLowVozbuzhd.Checked);

            //----- ������������ ������� -----
            FN('Discharge').AsInteger:= BoolConvertInt(ChkBoxDischarge.Checked);
            FN('UrethAge').AsInteger:= SpEdtUrethAge.Value;

            if ChkBoxDischarge.Checked
              then
                begin
                FN('DischargeNature').AsInteger:= CbBoxDischargeNature.ItemIndex;
                FN('DischargeVolume').AsInteger:= CbBoxDischargeVolume.ItemIndex;
                FN('DischargeRegul').AsInteger:= CbBoxDischargeRegul.ItemIndex;
                FN('DischargeDurat').AsInteger:= CbBoxDischargeDurat.ItemIndex;
                end {if ChkBoxDischarge.Checked..then}
              else
                begin
                FN('DischargeNature').AsInteger:= 0;
                FN('DischargeVolume').AsInteger:= 0;
                FN('DischargeRegul').AsInteger:= 0;
                FN('DischargeDurat').AsInteger:= 0;
                end; {if ChkBoxDischarge.Checked..else}


            //----- ���������� ������� -----
            FN('LowErection').AsInteger:= BoolConvertInt(ChkBoxLowErection.Checked);
            FN('SlowTumesc').AsInteger:= BoolConvertInt(ChkBoxSlowTumesc.Checked);
            FN('BadErection').AsInteger:= BoolConvertInt(ChkBoxBadErection.Checked);
            FN('MorningErection').AsInteger:= BoolConvertInt(ChkBoxMorningErection.Checked);

            FN('NoErection').AsInteger:= BoolConvertInt(ChkBoxNoErection.Checked);
            FN('PenisDeform').AsInteger:= BoolConvertInt(ChkBoxPenisDeform.Checked);
            FN('Varicocele').AsInteger:= BoolConvertInt(ChkBoxVaricocele.Checked);
            FN('VaricSide').AsInteger:= CbBoxVaricSide.ItemIndex;
            FN('VaricPosit').AsInteger:= CbBoxVaricPosit.ItemIndex;


            //>>> ������� "������������� ������"
            //----- ������� ������������ -----
            FN('UR_ASTHENIA').AsInteger:= BoolConvertInt(ChkBoxUrAsthenia.Checked);
            FN('UR_FLABBINESS').AsInteger:= BoolConvertInt(ChkBoxUrFlabbiness.Checked);
            FN('UR_HYPERHIDROS').AsInteger:= BoolConvertInt(ChkBoxUrHyperhidros.Checked);
            FN('UR_SUBFEBRIL').AsInteger:= BoolConvertInt(ChkBoxUrSubfebril.Checked);
            FN('UR_TEMPER_INT').AsInteger:= CbBoxUrSubfebril.ItemIndex;

            //----- ������� ������� -----
            FN('UR_DOLORLUMB').AsInteger:= BoolConvertInt(ChkBoxUrDolorLumb.Checked);
            FN('UR_DOLORLUMB_INT').AsInteger:= CbBoxUrDolorLumb.ItemIndex;
            FN('UR_DOLORSACR').AsInteger:= BoolConvertInt(ChkBoxUrDolorSacr.Checked);
            FN('UR_DOLORMESOGASTR').AsInteger:= BoolConvertInt(ChkBoxUrDolorMesagastr.Checked);
            FN('UR_DOLORMESOGASTR_INT').AsInteger:= CbBoxUrDolorMesogastr.ItemIndex;
            FN('UR_DOLORHYPOGASTR').AsInteger:= BoolConvertInt(ChkBoxUrDolorHypogastr.Checked);
            FN('UR_DOLORHYPOGASTR_INT').AsInteger:= CbBoxUrDolorHypogastr.ItemIndex;
            FN('UR_DOLORPUBICA').AsInteger:= BoolConvertInt(ChkBoxUrDolorPubica.Checked);
            FN('UR_DOLORIRRADIAT').AsInteger:= BoolConvertInt(ChkBoxUrDolorIrradiat.Checked);
            FN('UR_DOLORIRRADIAT_INT').AsInteger:= CbBoxUrDolorIrradiat.ItemIndex;

            //----- ������������ ������� -----
            FN('UR_COLIC').AsInteger:= BoolConvertInt(ChkBoxUrColic.Checked);
            FN('UR_POLLAC').AsInteger:= BoolConvertInt(ChkBoxUrPollac.Checked);
            FN('UR_POLLACCOUNT').AsInteger:= SpEdtUrPollacCount.Value;
            FN('UR_POLLACAGE').AsInteger:= SpEdtUrPollacAge.Value;

            FN('UrPollacPeriod').AsInteger:= CbBoxUrPollacPeriod.ItemIndex;
            FN('UrNictPeriod').AsInteger:= CbBoxUrNictPeriod.ItemIndex;

            FN('UR_NICTURIA').AsInteger:= BoolConvertInt(ChkBoxUrNicturia.Checked);
            FN('UR_NICTURIACOUNT').AsInteger:= SpEdtUrNictCount.Value;
            FN('UR_NICTURIAAGE').AsInteger:= SpEdtUrNictAge.Value;
            FN('UR_NOTFULLVESIC').AsInteger:= BoolConvertInt(ChkBoxUrNotFullVesic.Checked);
            FN('UR_SEDIMENT').AsInteger:= BoolConvertInt(ChkBoxUrSediment.Checked);
            FN('UR_FLAKES').AsInteger:= BoolConvertInt(ChkBoxUrFlakes.Checked);
            FN('UR_BLOODDASH').AsInteger:= BoolConvertInt(ChkBoxUrBloodDash.Checked);
            FN('UR_BLOODDASH_INT').AsInteger:= CbBoxUrBloodDash.ItemIndex;

            //>>> ������� "������"
            FN('ANOTHPREVCHECKUP').AsInteger:= BoolConvertInt(RdBtnAnothPrevCheckup.Checked);
            FN('ANOTHPREVTREAT').AsInteger:= BoolConvertInt(RdBtnAnothPrevTreat.Checked);
            FN('ANOTHPLANGRAVID').AsInteger:= BoolConvertInt(RdBtnAnothPlanGravid.Checked);
            FN('ANOTHCONTRCHECKUP').AsInteger:= BoolConvertInt(RdBtnAnothContrCheckup.Checked);
            FN('ANOTHPLANTREAT').AsInteger:= BoolConvertInt(RdBtnAnothPlanTreat.Checked);
            FN('AnothResrchRezlt').AsInteger:= BoolConvertInt(RdBtnAnothResrchRezlt.Checked);


            //������ ����� ��������� �������� �� ���-10 ��� ���������� ������������ ������
            FN('DS_RECNUMBER').AsString:= Trim(DsMKBnumberID);

            // =============== ���� ������������ �� ������� ==================
            FN('LVisus').AsInteger:= VarLVisus;
            FN('LOtis').AsInteger:= VarLOtis;
            FN('LMemor').AsInteger:= VarLMemor;
            FN('LTaxis').AsInteger:= VarLTaxis;

            FN('HAllopecia').AsInteger:= VarHAllopecia;
            FN('HPapula').AsInteger:= VarHPapula;
            FN('HPustula').AsInteger:= VarHPustula;
            FN('HKorochka').AsInteger:= VarHKorochka;

            FN('TMakula').AsInteger:= VarTMakula;
            FN('TPapula').AsInteger:= VarTPapula;
            FN('TErozia').AsInteger:= VarTErozia;
            FN('TUlcer').AsInteger:= VarTUlcer;
            FN('TAngina').AsInteger:= VarTAngina;
            FN('TMindal').AsInteger:= VarTMindal;

            FN('LipPapula').AsInteger:= VarLipPapula;
            FN('LipZaeda').AsInteger:= VarLipZaeda;
            FN('LipErozia').AsInteger:= VarLipErozia;
            FN('LipUlcer').AsInteger:= VarLipUlcer;
            FN('PhonemaSound').AsInteger:= VarPhonemaSound;

            FN('LdiCervix').AsInteger:= VarLdiCervix;
            FN('LdiSubLing').AsInteger:= VarLdiSubLing;
            FN('LdiAxillar').AsInteger:= VarLdiAxillar;
            FN('LdiUlnar').AsInteger:= VarLdiUlnar;
            FN('LdiInguinal').AsInteger:= VarLdiInguinal;

            FN('SellaNos').AsInteger:= VarSellaNos;
            FN('PalatumGotica').AsInteger:= VarPalatumGotica;
            FN('GetchinsonZub').AsInteger:= VarGetchinsonZub;
            FN('ProcessusMetch').AsInteger:= VarProcessusMetch;
            FN('SableGolen').AsInteger:= VarSableGolen;

            // ================= ������� "�������" ==================

            //----- ���������� ����� �����, ���� �� ����� ������ ������ �������
            //      � ����� ������ ������ "���������"
            if (AnamListNo = 0) and VisitPatientFlag then
              begin
                ReadyComplaintsText(TObject(Self));//���������� ����� �����
                RichEditComplaints.Text:= TextComplaint;//��������� ���� �����
              end;

            //�������, ��������� �� � ���.����� ��������� ��������
            FN('CHKSECRET_STUFF').AsInteger:= BoolConvertInt(ChkBoxSecretStuff.Checked);

            FN('ALLERGY_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamAllergy.Text),999);
            FN('ANAMANTHRDES_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamAnthrDes.Text),999);
            FN('ANAMCHLDDES_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamChldDes.Text),999);
            FN('ANDRZPPP_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAndrZPPP.Text),999);
            FN('GINZPPP_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtGinZPPP.Text),999);

            //==== ����� ������� ====
            FN('ANAMNESALLERGY_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesAllergy.Checked);
            FN('ALLERGY').AsInteger:= BoolConvertInt(RdBtnAllergyNo.Checked);
            FN('BADHABIT_CHK').AsInteger:= BoolConvertInt(ChkBoxBadHabit.Checked);
            FN('ANAMSMOKE').AsInteger:= BoolConvertInt(ChkBoxAnamSmoke.Checked);
            FN('SIGARCOUNT').AsInteger:= SpnEdtSigarCount.Value;
            FN('SMOKEAGE').AsInteger:= SpnEdtSmokeAge.Value;
            FN('SMOKEPERIOD').AsInteger:= CbBoxSmokePeriod.ItemIndex;
            FN('ANAMALKOHOL').AsInteger:= BoolConvertInt(ChkBoxAnamAlkohol.Checked);

            // ===== ��������������� ������� ====
            FN('ANDROPERATION_CHK').AsInteger:= BoolConvertInt(ChkBoxAndrOperation.Checked);

            FN('ANDRVARICOCELE').AsInteger:= BoolConvertInt(ChkBoxAndrVaricocele.Checked);
            FN('ANDRHYDROCELE').AsInteger:= BoolConvertInt(ChkBoxAndrHydrocele.Checked);
            FN('ANDRCRYPTORHISM').AsInteger:= BoolConvertInt(ChkBoxAndrCryptorhism.Checked);
            FN('ANDRCIRCUMCISIO').AsInteger:= BoolConvertInt(ChkBoxAndrCircumcisio.Checked);
            FN('ANDRPAROTIT').AsInteger:= BoolConvertInt(ChkBoxAndrParotit.Checked);
            FN('ANDRCASTRACIO').AsInteger:= BoolConvertInt(ChkBoxAndrCastracio.Checked);
            FN('ANDRADENOMOPER').AsInteger:= BoolConvertInt(ChkBoxAndrAdenomOper.Checked);

            FN('ANAMNESFAMILY_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesFamily.Checked);
            FN('ANDRMARRIAGE').AsInteger:= CbBoxAndrMarriage.ItemIndex;
            FN('ANDRCHILD').AsInteger:= BoolConvertInt(ChkBoxAndrChild.Checked);
            FN('ANDRCHILDCOUNT').AsInteger:= SpnEdtAndrChildCount.Value;
            FN('ANDRPREGNANCY').AsInteger:= BoolConvertInt(ChkBoxAndrPregnancy.Checked);

            FN('ANAMNESANDRSEX_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesAndrSex.Checked);
            FN('SEXPARTNFEMALECOUNT').AsInteger:= CbBoxSexPartnFemaleCount.ItemIndex;
            FN('SEXPARTNFEMALERAMDOM').AsInteger:= CbBoxSexPartnFemaleRamdom.ItemIndex;
            FN('ANDRCOITUSCOUNT').AsInteger:= SpnEdtAndrCoitusCount.Value;
            FN('ANDRCOITUSPERIOD').AsInteger:= CbBoxAndrCoitusPeriod.ItemIndex;
            FN('ANDRORGASMCOUNT').AsInteger:= SpnEdtAndrOrgasmCount.Value;

            //==== ���������������� ������� ====
            FN('ANAMNESGINEK_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesGinek.Checked);

            FN('GINMENARHE').AsInteger:= SpnEdtGinMenarhe.Value;
            FN('GINMENOPAUSE').AsInteger:= BoolConvertInt(ChkBoxGinMenopause.Checked);
            FN('GINMENOPAUSEAGE').AsInteger:= SpnEdtGinMenopauseAge.Value;
            FN('GINMENSESPERIOD').AsInteger:= SpnEdtGinMensesPeriod.Value;
            FN('GINMENSESAGE').AsInteger:= SpnEdtGinMensesAge.Value;
            FN('GINLASTMENSESDATE').AsDateTime:= DTPickGinLastMensesDate.Date;
            FN('GINPREGNANCYCOUNT').AsInteger:= SpnEdtGinPregnancyCount.Value;
            FN('GINCHILDBIRTHCOUNT').AsInteger:= SpnEdtGinChildBirthCount.Value;
            FN('GINABORTIONCOUNT').AsInteger:= SpnEdtGinAbortionCount.Value;
            FN('GINMARRIAGE').AsInteger:= CbBoxGinMarriage.ItemIndex;

            FN('ANAMNESGINSEX_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesGinSex.Checked);
            FN('SEXPARTNMALECOUNT').AsInteger:= CbBoxSexPartnMaleCount.ItemIndex;
            FN('SEXPARTNMALERAMDOM').AsInteger:= CbBoxSexPartnMaleRamdom.ItemIndex;
            FN('GINCOITUSCOUNT').AsInteger:= SpnEdtGinCoitusCount.Value;
            FN('GINCOITUSPERIOD').AsInteger:= CbBoxGinCoitusPeriod.ItemIndex;
          end;
        end;

        {$endregion '��������� ������ � �������'}

        DMFIB.DSetVisitMain.Post;

        FMsgStrValue:= '��������� ������ ������� � ������������ ������������.' + #13#10 + '����������, ���������';
        FMsgParam:= 1;
        Queue(MyMsg);//��������� ��������� �� ������
        Sleep(1000);

        if VisitPatientFlag//���� ������ ����� ���� "��������"
          then //�� ��������� ������ � �������
            begin
              DMFIB.DSetVisitLabor.Insert;
              DMFIB.DSetVisitLabor.FN('ID_VISITLABOR').AsInteger:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger;//�� � "������������" �������
            end
          else // ����� ����������� ������� ������
              DMFIB.DSetVisitLabor.Edit;

        {$region '��������� ������ ������� � ������������ ������������'}
        with FrmStatusPat do
        begin
          with DMFIB.DSetVisitLabor do
          begin
            //���������� ����� ��������-������� ���.������������
            FN('PGCTRL_LABRES_INDEX').AsInteger:= PgCtrlLabResearch.ActivePageIndex;

            //----- ��������� ������� ���
            FN('ChkRW').AsInteger:= VarChkRW;
            FN('RW').AsInteger:= VarRW;

            FN('ChkAIDS').AsInteger:= VarChkAIDS;
            FN('AIDS').AsInteger:= VarAIDS;
            FN('DateAIDS').AsDateTime:= VarDateAIDS;

            FN('ChkHBsAg').AsInteger:= VarChkHBsAg;
            FN('HBsAg').AsInteger:= VarHBsAg;

            FN('ChkHBeAg').AsInteger:= VarChkHBeAg;
            FN('ChkAntiHBcSum').AsInteger:= VarChkAntiHBcSum;
            FN('ChkAntiHBc_IgM').AsInteger:= VarChkAntiHBc_IgM;
            FN('ChkAntiHBe_IgG').AsInteger:= VarChkAntiHBe_IgG;
            FN('ChkAntiHBsNumer').AsInteger:= VarChkAntiHBsNumer;
            FN('ChkAntiHCVSum').AsInteger:= VarChkAntiHCVSum;
            FN('ChkAntiHCV_Core_IgM').AsInteger:= VarChkAntiHCV_Core_IgM;
            FN('ChkAntiHDVSum').AsInteger:= VarChkAntiHDVSum;
            FN('ChkAntiHCVSumCore').AsInteger:= VarChkAntiHCVSumCore;
            FN('ChkAntiHCVSumNS3').AsInteger:= VarChkAntiHCVSumNS3;
            FN('ChkAntiHCVSumNS4').AsInteger:= VarChkAntiHCVSumNS4;
            FN('ChkAntiHCVSumNS5').AsInteger:= VarChkAntiHCVSumNS5;
            FN('ChkSumAtLues').AsInteger:= VarChkSumAtLues;

            FN('HBeAg').AsInteger:= VarHBeAg;
            FN('AntiHBcSum').AsInteger:= VarAntiHBcSum;
            FN('AntiHBc_IgM').AsInteger:= VarAntiHBc_IgM;
            FN('AntiHBe_IgG').AsInteger:= VarAntiHBe_IgG;
            FN('AntiHBsNumerStr').AsString:= Trim(VarAntiHBsNumerStr);
            FN('AntiHCVSum').AsInteger:= VarAntiHCVSum;
            FN('AntiHCV_Core_IgM').AsInteger:= VarAntiHCV_Core_IgM;
            FN('AntiHDVSum').AsInteger:= VarAntiHDVSum;
            FN('AntiHCVSumCore').AsInteger:= VarAntiHCVSumCore;
            FN('AntiHCVSumNS3').AsInteger:= VarAntiHCVSumNS3;
            FN('AntiHCVSumNS4').AsInteger:= VarAntiHCVSumNS4;
            FN('AntiHCVSumNS5').AsInteger:= VarAntiHCVSumNS5;
            FN('SumAtLues').AsInteger:= VarSumAtLues;

            //��������� ������ ���� ���
            FN('PCRDate').AsDateTime:= VarPCRDate;

            FN('GnAn').AsInteger:= VarGnAn;
            FN('GnRez').AsInteger:= VarGnRez;

            FN('TrAn').AsInteger:= VarTrAn;
            FN('TrRez').AsInteger:= VarTrRez;

            FN('ChlamAn').AsInteger:= VarChlamAn;
            FN('ChlamRez').AsInteger:= VarChlamRez;

            FN('UrAn').AsInteger:= VarUrAn;
            FN('UrRez').AsInteger:= VarUrRez;

            FN('MicHomAn').AsInteger:= VarMicHomAn;
            FN('MicHomRez').AsInteger:= VarMicHomRez;

            FN('MicGenAn').AsInteger:= VarMicGenAn;
            FN('MicGenRez').AsInteger:= VarMicGenRez;

            FN('GardAn').AsInteger:= VarGardAn;
            FN('GardRez').AsInteger:= VarGardRez;

            FN('CMVAn').AsInteger:= VarCMVAn;
            FN('CMVRez').AsInteger:= VarCMVRez;

            FN('VHSAn').AsInteger:= VarVHSAn;
            FN('VHSRez').AsInteger:= VarVHSRez;

            FN('PHVAn').AsInteger:= VarPHVAn;
            FN('PHVRez').AsInteger:= VarPHVRez;

            FN('PHVANHIGH').AsInteger:= VarPHVAnHigh;
            FN('PHVREZHIGH').AsInteger:= VarPHVRezHigh;

            FN('TubAn').AsInteger:= VarTubAn;
            FN('TubRez').AsInteger:= VarTubRez;

            FN('CandAn').AsInteger:= VarCandAn;
            FN('CandRez').AsInteger:= VarCandRez;

            //��������� ���������� ���
            FN('IFADate').AsDateTime:= VarIFADate;

            FN('IFAChlIgA').AsInteger:=  VarIFAChlIgA;
            FN('IFAChlIgG').AsInteger:= VarIFAChlIgG;
            FN('IFAChlIgGb').AsInteger:= VarIFAChlIgGb;

            FN('IFAMicIgG').AsInteger:= VarIFAMicIgG;
            FN('IFAMicIgA').AsInteger:= VarIFAMicIgA;

            FN('IFAUrIgG').AsInteger:= VarIFAUrIgG;
            FN('IFAUrIgA').AsInteger:= VarIFAUrIgA;

            FN('IFATrIgG').AsInteger:= VarIFATrIgG;

            FN('IFACMVIgM').AsInteger:= VarIFACMVIgM;
            FN('IFACMVIgG').AsInteger:= VarIFACMVIgG;
            FN('IFACMVIgGavid').AsInteger:= VarIFACMVIgGavid;

            FN('IFAHerpIgM').AsInteger:= VarIFAHerpIgM;
            FN('IFAHerpIgG').AsInteger:= VarIFAHerpIgG;
            FN('IFAHerpIgGavid').AsInteger:= VarIFAHerpIgGavid;

            FN('IFACandIgG').AsInteger:= VarIFACandIgG;

              //---������ ItemIndex ��������������� �����������

            FN('NumIFAChlIgA').AsInteger:= VarNumIFAChlIgA;
            FN('NumIFAChlIgG').AsInteger:= VarNumIFAChlIgG;
            FN('NumIFAChlIgGb').AsInteger:= VarNumIFAChlIgGb;

            FN('NumIFAMicIgG').AsInteger:= VarNumIFAMicIgG;
            FN('NumIFAMicIgA').AsInteger:= VarNumIFAMicIgA;

            FN('NumIFAUrIgG').AsInteger:= VarNumIFAUrIgG;
            FN('NumIFAUrIgA').AsInteger:= VarNumIFAUrIgA;

            FN('NumIFATrIgG').AsInteger:= VarNumIFATrIgG;

            FN('NumIFACMVIgM').AsInteger:= VarNumIFACMVIgM;
            FN('NumIFACMVIgG').AsInteger:= VarNumIFACMVIgG;
            FN('NumIFACMVIgGavid').AsInteger:= VarNumIFACMVIgGavid;

            FN('NumIFAHerpIgM').AsInteger:= VarNumIFAHerpIgM;
            FN('NumIFAHerpIgG').AsInteger:= VarNumIFAHerpIgG;
            FN('NumIFAHerpIgGavid').AsInteger:= VarNumIFAHerpIgGavid;

            FN('NumIFACandIgG').AsInteger:= VarNumIFACandIgG;


            //----- ��������� ������� ����
            FN('OAMDate').AsDateTime:= VarOAMDate;
            FN('OAMColor').AsInteger:= VarOAMColor;
            FN('OAMTransparent').AsInteger:= VarOAMTransparent;
            FN('OAMDensity').AsString:= Trim(VarOAMDensity);
            FN('OAMSugar').AsInteger:= VarOAMSugar;
            FN('OAMProtein').AsInteger:= VarOAMProtein;
            FN('OAMLeu').AsString:= Trim(VarOAMLeu);
            FN('OAMEr').AsString:= Trim(VarOAMEr);
            FN('OAMEpit').AsString:= Trim(VarOAMEpit);
            FN('OAMSalt').AsString:= Trim(VarOAMSalt);
            FN('OAMFlora').AsString:= Trim(VarOAMFlora);
            FN('OAMVolume').AsString:= Trim(VarOAMVolume);
            FN('OAMSmell').AsString:= Trim(VarOAMSmell);
            FN('OAMResiduum').AsString:= Trim(VarOAMResiduum);
            FN('OAM_pH').AsString:= Trim(VarOAM_pH);
            FN('OAMAceticAcid').AsString:= Trim(VarOAMAceticAcid);
            FN('OAMBilifuscin').AsString:= Trim(VarOAMBilifuscin);
            FN('OAMAceton').AsString:= Trim(VarOAMAceton);
            FN('OAMUrobilin').AsString:= Trim(VarOAMUrobilin);
            FN('OAMCylindr').AsString:= Trim(VarOAMCylindr);
            FN('OAMMucos').AsString:= Trim(VarOAMMucos);

            FN('NechiporDate').AsDateTime:= VarNechiporDate;
            FN('NechiporLeu').AsString:= Trim(VarNechiporLeu);
            FN('NechiporEr').AsString:= Trim(VarNechiporEr);
            FN('NechiporFlora').AsString:= Trim(VarNechiporFlora);

            //----- ��������� ����� �� ������
            FN('MazUrethraDate').AsDateTime:= VarMazUrethraDate;
            FN('MazUrLeu').AsString:= Trim(VarMazUrLeu);
            FN('MazUrEr').AsString:= Trim(VarMazUrEr);
            FN('MazUrGn').AsInteger:= VarMazUrGn;
            FN('MazUrTr').AsInteger:= VarMazUrTr;
            FN('MazUrFlora').AsInteger:= VarMazUrFlora;
            FN('MazUrEpit').AsString:= VarMazUrEpit;
            FN('MazUrKeyCell').AsInteger:= VarMazUrKeyCell;
            FN('MazUrCand').AsInteger:= VarMazUrCand;
            FN('MazUrMucos').AsString:= VarMazUrMucos;

            //----- ��������� ����� �� ����� �����
            FN('MazCvxLeu').AsString:= Trim(VarMazCvxLeu);
            FN('MazCvxEr').AsString:= Trim(VarMazCvxEr);
            FN('MazCvxGn').AsInteger:= VarMazCvxGn;
            FN('MazCvxTr').AsInteger:= VarMazCvxTr;
            FN('MazCvxFlora').AsInteger:= VarMazCvxFlora;
            FN('MazCvxEpit').AsString:= VarMazCvxEpit;
            FN('MazCvxKeyCell').AsInteger:= VarMazCvxKeyCell;
            FN('MazCvxCand').AsInteger:= VarMazCvxCand;
            FN('MazCvxMucos').AsString:= VarMazCvxMucos;

            //----- ��������� ����� �� ���������
            FN('MazVgnLeu').AsString:= Trim(VarMazVgnLeu);
            FN('MazVgnEr').AsString:= Trim(VarMazVgnEr);
            FN('MazVgnGn').AsInteger:= VarMazVgnGn;
            FN('MazVgnTr').AsInteger:= VarMazVgnTr;
            FN('MazVgnFlora').AsInteger:= VarMazVgnFlora;
            FN('MazVgnEpit').AsString:= VarMazVgnEpit;
            FN('MazVgnKeyCell').AsInteger:= VarMazVgnKeyCell;
            FN('MazVgnCand').AsInteger:= VarMazVgnCand;
            FN('MazVgnMucos').AsString:= VarMazVgnMucos;

            //----- ��������� ����� �� ������ �����
            FN('MazRectLeu').AsString:= Trim(VarMazRectLeu);
            FN('MazRectEr').AsString:= Trim(VarMazRectEr);
            FN('MazRectGn').AsInteger:= VarMazRectGn;
            FN('MazRectTr').AsInteger:= VarMazRectTr;
            FN('MazRectFlora').AsInteger:= VarMazRectFlora;
            FN('MazRectEpit').AsString:= VarMazRectEpit;
            FN('MazRectKeyCell').AsInteger:= VarMazRectKeyCell;
            FN('MazRectCand').AsInteger:= VarMazRectCand;
            FN('MazRectMucos').AsString:= VarMazRectMucos;

            //----- ��������� ����� ���� ��������
            FN('MazProstDate').AsDateTime:= VarMazProstDate;
            FN('MazProstLeu').AsString:= Trim(VarMazProstLeu);
            FN('MazProstEr').AsString:= Trim(VarMazProstEr);
            FN('MazProstGn').AsInteger:= VarMazProstGn;
            FN('MazProstTr').AsInteger:= VarMazProstTr;
            FN('MazProstFlora').AsInteger:= VarMazProstFlora;
            FN('MazProstLZ').AsInteger:= VarMazProstLZ;
            FN('MazProstBekht').AsInteger:= VarMazProstBekht;
            FN('MazProstSperm').AsInteger:= VarMazProstSperm;
            FN('MazProstEpit').AsString:= VarMazProstEpit;
            FN('MazProstMFag').AsString:= VarMazProstMFag;
            FN('MazProstAmil').AsString:= VarMazProstAmil;
            FN('MazProst_pH').AsString:= VarMazProst_pH;

            //------- ���������� ������� �������� ���������� ������������

            FN('SpermDate').AsDateTime:= VarSpermDate;
            FN('SpermVolume').AsString:= Trim(VarSpermVolume);
            FN('SpermColor').AsString:= Trim(VarSpermColor);
            FN('Sperm_pH').AsString:= Trim(VarSperm_pH);
            FN('SpermViscosity').AsString:= Trim(VarSpermViscosity);
            FN('SpermFluid').AsString:= Trim(VarSpermFluid);
            FN('SpermLeu').AsString:= Trim(VarSpermLeu);
            FN('SpermEr').AsString:= Trim(VarSpermEr);
            FN('SpermLipoidSoma').AsString:= Trim(VarSpermLipoidSoma);
            FN('SpermAgglut').AsString:= Trim(VarSpermAgglut);
            FN('SpermAggreg').AsString:= Trim(VarSpermAggreg);
            FN('SpermEpitel').AsString:= Trim(VarSpermEpitel);
            FN('SpermAbstinence').AsString:= Trim(VarSpermAbstinence);
            FN('SpermConcentr').AsString:= Trim(VarSpermConcentr);
            FN('SpermTotal').AsString:= Trim(VarSpermTotal);
            FN('SpermFastForwMove').AsString:= Trim(VarSpermFastForwMove);
            FN('SpermSlowForwMove').AsString:= Trim(VarSpermSlowForwMove);
            FN('SpermRollMove').AsString:= Trim(VarSpermRollMove);
            FN('SpermStaticMove').AsString:= Trim(VarSpermStaticMove);
            FN('SpermReport').AsInteger:= VarSpermReport;

            FN('KrugDate').AsDateTime:= VarKrugDate;
            FN('KrugNorma').AsString:= Trim(VarKrugNorma);
            FN('KrugCapCoarse').AsString:= Trim(VarKrugCapCoarse);
            FN('KrugCapSlight').AsString:= Trim(VarKrugCapSlight);
            FN('KrugCapSpecif').AsString:= Trim(VarKrugCapSpecif);
            FN('KrugCollumCoarse').AsString:= Trim(VarKrugCollumCoarse);
            FN('KrugCollumSlight').AsString:= Trim(VarKrugCollumSlight);
            FN('KrugBrush').AsString:= Trim(VarKrugBrush);
            FN('KrugSpermCell').AsString:= Trim(VarKrugSpermCell);
            FN('KrugYoungCell').AsString:= Trim(VarKrugYoungCell);
            FN('KrugMorphIndex').AsString:= Trim(VarKrugMorphIndex);
            FN('KrugNotice').AsString:= Trim(VarKrugNotice);

            FN('SpermBiochemicDate').AsDateTime:= VarSpermBiochemicDate;
            FN('SpermBiochemicFruct').AsString:= Trim(VarSpermBiochemicFruct);
            FN('SpermBiochemicGlyc').AsString:= Trim(VarSpermBiochemicGlyc);

            FN('MARDate').AsDateTime:= VarMARDate;
            FN('MAR').AsString:= Trim(VarMAR);

            FN('SpermVitalDate').AsDateTime:= VarSpermVitalDate;
            FN('SpermVitalTest').AsString:= Trim(VarSpermVitalTest);
            FN('SpermVitalHOS').AsString:= Trim(VarSpermVitalHOS);

          //------- ���������� ������� �������� ���������� �������� �����

            //���������� ����� ������������� ������� ����� � ��������� �����
            FN('PGCTRL_BLOODHORM_INDEX').AsInteger:= VarPgCtrlBloodHorm;

            //--- ����� ������ �����
            FN('OAKDate').AsDateTime:= VarOAKDate;
            FN('OAKHb').AsString:= Trim(VarOAKHb);
            FN('OAKEr').AsString:= Trim(VarOAKEr);
            FN('OAKColourIndex').AsString:= Trim(VarOAKColourIndex);
            FN('OAKTromb').AsString:= Trim(VarOAKTromb);
            FN('OAKLeu').AsString:= Trim(VarOAKLeu);
            FN('OAKLeuYoung').AsString:= Trim(VarOAKLeuYoung);
            FN('OAKLeuStab').AsString:= Trim(VarOAKLeuStab);
            FN('OAKLeuSegment').AsString:= Trim(VarOAKLeuSegment);
            FN('OAKLymph').AsString:= Trim(VarOAKLymph);
            FN('OAKMonocyte').AsString:= Trim(VarOAKMonocyte);
            FN('OAKEosinophil').AsString:= Trim(VarOAKEosinophil);
            FN('OAKBasophil').AsString:= Trim(VarOAKBasophil);
            FN('OAKSOE').AsString:= Trim(VarOAKSOE);
            FN('OAKCoagul').AsString:= Trim(VarOAKCoagul);
            FN('OAKHemorrhagTime').AsString:= Trim(VarOAKHemorrhagTime);
            FN('OAKReticulocyte').AsString:= Trim(VarOAKReticulocyte);
            FN('OAKGlucosaCapill').AsString:= Trim(VarOAKGlucosaCapill);
            FN('OAKEosinSliz').AsString:= Trim(VarOAKEosinSliz);
            FN('OAKHmtc').AsString:= Trim(VarOAKHmtc);

            //--- �������� �����
            FN('BloodBioDate').AsDateTime:= VarBloodBioDate;
            FN('BloodBioALT').AsString:= Trim(VarBloodBioALT);
            FN('BloodBioAST').AsString:= Trim(VarBloodBioAST);
            FN('BloodBioProtein').AsString:= Trim(VarBloodBioProtein);
            FN('BloodBioBiTotal').AsString:= Trim(VarBloodBioBiTotal);
            FN('BloodBioBiDirect').AsString:= Trim(VarBloodBioBiDirect);
            FN('BloodBioCholest').AsString:= Trim(VarBloodBioCholest);
            FN('BloodBioSodiumFosf').AsString:= Trim(VarBloodBioSodiumFosf);
            FN('BloodBioGGT').AsString:= Trim(VarBloodBioGGT);
            FN('BloodBioLPVP').AsString:= Trim(VarBloodBioLPVP);
            FN('BloodBioLPNP').AsString:= Trim(VarBloodBioLPNP);
            FN('BloodBioMochevina').AsString:= Trim(VarBloodBioMochevina);
            FN('BloodBioUricAcid').AsString:= Trim(VarBloodBioUricAcid);
            FN('BloodBioCreatinin').AsString:= Trim(VarBloodBioCreatinin);
            FN('BloodBioAlbumin').AsString:= Trim(VarBloodBioAlbumin);
            FN('BloodBioGlucosa').AsString:= Trim(VarBloodBioGlucosa);
            FN('BloodBioTriglyc').AsString:= Trim(VarBloodBioTriglyc);
            FN('BloodBioCalcium').AsString:= Trim(VarBloodBioCalcium);
            FN('BloodBioPhosphor').AsString:= Trim(VarBloodBioPhosphor);
            FN('BloodBioFerrum').AsString:= Trim(VarBloodBioFerrum);
            FN('BloodBioOZhSS').AsString:= Trim(VarBloodBioOZhSS);

            //--- ������� �����
            FN('HormSterDate').AsDateTime:= VarHormSterDate;
            FN('HormLG').AsString:= Trim(VarHormLG);
            FN('HormFSG').AsString:= Trim(VarHormFSG);
            FN('HormProlactin').AsString:= Trim(VarHormProlactin);
            FN('HormEstradiol').AsString:= Trim(VarHormEstradiol);
            FN('HormProgest').AsString:= Trim(VarHormProgest);
            FN('HormTestosterTotal').AsString:= Trim(VarHormTestosterTotal);
            FN('HormDGEAS').AsString:= Trim(VarHormDGEAS);
            FN('HormProgest_17OH').AsString:= Trim(VarHormProgest_17OH);
            FN('HormTestosterFree').AsString:= Trim(VarHormTestosterFree);
            FN('HormSSSG').AsString:= Trim(VarHormSSSG);

            FN('HormTireoidDate').AsDateTime:= VarHormTireoidDate;
            FN('HormT4_Total').AsString:= Trim(VarHormT4_Total);
            FN('HormT4_Free').AsString:= Trim(VarHormT4_Free);
            FN('HormT3_Total').AsString:= Trim(VarHormT3_Total);
            FN('HormT3_Free').AsString:= Trim(VarHormT3_Free);
            FN('HormTTG').AsString:= Trim(VarHormTTG);
            FN('HormKortizol').AsString:= Trim(VarHormKortizol);
            FN('HormTireoglob_At').AsString:= Trim(VarHormTireoglob_At);
            FN('HormTireoPerox_At').AsString:= Trim(VarHormTireoPerox_At);
            FN('HormInhibin_B').AsString:= Trim(VarHormInhibin_B);

            //--- �����������
            FN('ONKOMARKDATE').AsDateTime:= VarOnkomarkDate;
            FN('PSA_TOTAL').AsString:= Trim(VarPSA_Total);
            FN('PSA_FREE').AsString:= Trim(VarPSA_Free);
            FN('PSA_RATIO').AsString:= Trim(VarPSA_Ratio);

            //--- �����������
            FN('BLOODIONESDATE').AsDateTime:= VarBloodIonesDate;
            FN('IONES_NA').AsString:= Trim(VarIones_Na);
            FN('IONES_K').AsString:= Trim(VarIones_K);
            FN('IONES_CL').AsString:= Trim(VarIones_Cl);
            FN('IONES_CA').AsString:= Trim(VarIones_Ca);
            FN('IONESBLOOD_PH').AsString:= Trim(VarIonesBlood_pH);

            //--- ���.����� �� ������
            FN('URETHBACTINOCDATE').AsDateTime:= VarUrethBactInocDate;

            FN('CHKURETHPATHOGEN1').AsInteger:= VarChkUrethPathogen1;
            FN('URETH_PATHOGEN1_01').AsInteger:= VarUreth_Pathogen1_01;
            FN('URETH_PATHOGEN1_02').AsInteger:= VarUreth_Pathogen1_02;
            FN('URETH_PATHOGEN1_03').AsInteger:= VarUreth_Pathogen1_03;
            FN('URETH_PATHOGEN1_04').AsInteger:= VarUreth_Pathogen1_04;
            FN('URETH_PATHOGEN1_05').AsInteger:= VarUreth_Pathogen1_05;
            FN('URETH_PATHOGEN1_06').AsInteger:= VarUreth_Pathogen1_06;
            FN('URETH_PATHOGEN1_07').AsInteger:= VarUreth_Pathogen1_07;
            FN('URETH_PATHOGEN1_08').AsInteger:= VarUreth_Pathogen1_08;
            FN('URETH_PATHOGEN1_09').AsInteger:= VarUreth_Pathogen1_09;
            FN('URETH_PATHOGEN1_10').AsInteger:= VarUreth_Pathogen1_10;
            FN('URETH_PATHOGEN1_11').AsInteger:= VarUreth_Pathogen1_11;
            FN('URETH_PATHOGEN1_12').AsInteger:= VarUreth_Pathogen1_12;
            FN('URETH_PATHOGEN1_13').AsInteger:= VarUreth_Pathogen1_13;
            FN('URETH_PATHOGEN1_14').AsInteger:= VarUreth_Pathogen1_14;
            FN('URETH_PATHOGEN1_15').AsInteger:= VarUreth_Pathogen1_15;
            FN('URETH_PATHOGEN1_16').AsInteger:= VarUreth_Pathogen1_16;

            FN('CHKURETHPATHOGEN2').AsInteger:= VarChkUrethPathogen2;
            FN('URETH_PATHOGEN2_01').AsInteger:= VarUreth_Pathogen2_01;
            FN('URETH_PATHOGEN2_02').AsInteger:= VarUreth_Pathogen2_02;
            FN('URETH_PATHOGEN2_03').AsInteger:= VarUreth_Pathogen2_03;
            FN('URETH_PATHOGEN2_04').AsInteger:= VarUreth_Pathogen2_04;
            FN('URETH_PATHOGEN2_05').AsInteger:= VarUreth_Pathogen2_05;
            FN('URETH_PATHOGEN2_06').AsInteger:= VarUreth_Pathogen2_06;
            FN('URETH_PATHOGEN2_07').AsInteger:= VarUreth_Pathogen2_07;
            FN('URETH_PATHOGEN2_08').AsInteger:= VarUreth_Pathogen2_08;
            FN('URETH_PATHOGEN2_09').AsInteger:= VarUreth_Pathogen2_09;
            FN('URETH_PATHOGEN2_10').AsInteger:= VarUreth_Pathogen2_10;
            FN('URETH_PATHOGEN2_11').AsInteger:= VarUreth_Pathogen2_11;
            FN('URETH_PATHOGEN2_12').AsInteger:= VarUreth_Pathogen2_12;
            FN('URETH_PATHOGEN2_13').AsInteger:= VarUreth_Pathogen2_13;
            FN('URETH_PATHOGEN2_14').AsInteger:= VarUreth_Pathogen2_14;
            FN('URETH_PATHOGEN2_15').AsInteger:= VarUreth_Pathogen2_15;
            FN('URETH_PATHOGEN2_16').AsInteger:= VarUreth_Pathogen2_16;

            FN('STRURETHPATHOGEN1').AsString:= Trim(VarStrUrethPathogen1);
            FN('STRURETHPATHOGEN2').AsString:= Trim(VarStrUrethPathogen2);
            FN('STRURETHEXTRA1').AsString:= Trim(VarStrUrethExtra1);
            FN('STRURETHEXTRA2').AsString:= Trim(VarStrUrethExtra2);

            FN('CHKURETHDRUG_01').AsInteger:= VarChkUrethDrug_01;
            FN('CHKURETHDRUG_02').AsInteger:= VarChkUrethDrug_02;
            FN('CHKURETHDRUG_03').AsInteger:= VarChkUrethDrug_03;
            FN('CHKURETHDRUG_04').AsInteger:= VarChkUrethDrug_04;
            FN('CHKURETHDRUG_05').AsInteger:= VarChkUrethDrug_05;
            FN('CHKURETHDRUG_06').AsInteger:= VarChkUrethDrug_06;
            FN('CHKURETHDRUG_07').AsInteger:= VarChkUrethDrug_07;
            FN('CHKURETHDRUG_08').AsInteger:= VarChkUrethDrug_08;
            FN('CHKURETHDRUG_09').AsInteger:= VarChkUrethDrug_09;
            FN('CHKURETHDRUG_10').AsInteger:= VarChkUrethDrug_10;
            FN('CHKURETHDRUG_11').AsInteger:= VarChkUrethDrug_11;
            FN('CHKURETHDRUG_12').AsInteger:= VarChkUrethDrug_12;
            FN('CHKURETHDRUG_13').AsInteger:= VarChkUrethDrug_13;
            FN('CHKURETHDRUG_14').AsInteger:= VarChkUrethDrug_14;
            FN('CHKURETHDRUG_15').AsInteger:= VarChkUrethDrug_15;
            FN('CHKURETHDRUG_16').AsInteger:= VarChkUrethDrug_16;

            //--- ���.����� ���
            FN('PROSTBACTINOCDATE').AsDateTime:= VarProstBactInocDate;

            FN('CHKPROSTPATHOGEN1').AsInteger:= VarChkProstPathogen1;
            FN('PROST_PATHOGEN1_01').AsInteger:= VarProst_Pathogen1_01;
            FN('PROST_PATHOGEN1_02').AsInteger:= VarProst_Pathogen1_02;
            FN('PROST_PATHOGEN1_03').AsInteger:= VarProst_Pathogen1_03;
            FN('PROST_PATHOGEN1_04').AsInteger:= VarProst_Pathogen1_04;
            FN('PROST_PATHOGEN1_05').AsInteger:= VarProst_Pathogen1_05;
            FN('PROST_PATHOGEN1_06').AsInteger:= VarProst_Pathogen1_06;
            FN('PROST_PATHOGEN1_07').AsInteger:= VarProst_Pathogen1_07;
            FN('PROST_PATHOGEN1_08').AsInteger:= VarProst_Pathogen1_08;
            FN('PROST_PATHOGEN1_09').AsInteger:= VarProst_Pathogen1_09;
            FN('PROST_PATHOGEN1_10').AsInteger:= VarProst_Pathogen1_10;
            FN('PROST_PATHOGEN1_11').AsInteger:= VarProst_Pathogen1_11;
            FN('PROST_PATHOGEN1_12').AsInteger:= VarProst_Pathogen1_12;
            FN('PROST_PATHOGEN1_13').AsInteger:= VarProst_Pathogen1_13;
            FN('PROST_PATHOGEN1_14').AsInteger:= VarProst_Pathogen1_14;
            FN('PROST_PATHOGEN1_15').AsInteger:= VarProst_Pathogen1_15;
            FN('PROST_PATHOGEN1_16').AsInteger:= VarProst_Pathogen1_16;
            FN('PROST_PATHOGEN1_17').AsInteger:= VarProst_Pathogen1_17;

            FN('CHKPROSTPATHOGEN2').AsInteger:= VarChkProstPathogen2;
            FN('PROST_PATHOGEN2_01').AsInteger:= VarProst_Pathogen2_01;
            FN('PROST_PATHOGEN2_02').AsInteger:= VarProst_Pathogen2_02;
            FN('PROST_PATHOGEN2_03').AsInteger:= VarProst_Pathogen2_03;
            FN('PROST_PATHOGEN2_04').AsInteger:= VarProst_Pathogen2_04;
            FN('PROST_PATHOGEN2_05').AsInteger:= VarProst_Pathogen2_05;
            FN('PROST_PATHOGEN2_06').AsInteger:= VarProst_Pathogen2_06;
            FN('PROST_PATHOGEN2_07').AsInteger:= VarProst_Pathogen2_07;
            FN('PROST_PATHOGEN2_08').AsInteger:= VarProst_Pathogen2_08;
            FN('PROST_PATHOGEN2_09').AsInteger:= VarProst_Pathogen2_09;
            FN('PROST_PATHOGEN2_10').AsInteger:= VarProst_Pathogen2_10;
            FN('PROST_PATHOGEN2_11').AsInteger:= VarProst_Pathogen2_11;
            FN('PROST_PATHOGEN2_12').AsInteger:= VarProst_Pathogen2_12;
            FN('PROST_PATHOGEN2_13').AsInteger:= VarProst_Pathogen2_13;
            FN('PROST_PATHOGEN2_14').AsInteger:= VarProst_Pathogen2_14;
            FN('PROST_PATHOGEN2_15').AsInteger:= VarProst_Pathogen2_15;
            FN('PROST_PATHOGEN2_16').AsInteger:= VarProst_Pathogen2_16;
            FN('PROST_PATHOGEN2_17').AsInteger:= VarProst_Pathogen2_17;

            FN('STRPROSTPATHOGEN1').AsString:= Trim(VarStrProstPathogen1);
            FN('STRPROSTPATHOGEN2').AsString:= Trim(VarStrProstPathogen2);
            FN('STRPROSTEXTRA1').AsString:= Trim(VarStrProstExtra1);
            FN('STRPROSTEXTRA2').AsString:= Trim(VarStrProstExtra2);

            FN('CHKPROSTDRUG_01').AsInteger:= VarChkProstDrug_01;
            FN('CHKPROSTDRUG_02').AsInteger:= VarChkProstDrug_02;
            FN('CHKPROSTDRUG_03').AsInteger:= VarChkProstDrug_03;
            FN('CHKPROSTDRUG_04').AsInteger:= VarChkProstDrug_04;
            FN('CHKPROSTDRUG_05').AsInteger:= VarChkProstDrug_05;
            FN('CHKPROSTDRUG_06').AsInteger:= VarChkProstDrug_06;
            FN('CHKPROSTDRUG_07').AsInteger:= VarChkProstDrug_07;
            FN('CHKPROSTDRUG_08').AsInteger:= VarChkProstDrug_08;
            FN('CHKPROSTDRUG_09').AsInteger:= VarChkProstDrug_09;
            FN('CHKPROSTDRUG_10').AsInteger:= VarChkProstDrug_10;
            FN('CHKPROSTDRUG_11').AsInteger:= VarChkProstDrug_11;
            FN('CHKPROSTDRUG_12').AsInteger:= VarChkProstDrug_12;
            FN('CHKPROSTDRUG_13').AsInteger:= VarChkProstDrug_13;
            FN('CHKPROSTDRUG_14').AsInteger:= VarChkProstDrug_14;
            FN('CHKPROSTDRUG_15').AsInteger:= VarChkProstDrug_15;
            FN('CHKPROSTDRUG_16').AsInteger:= VarChkProstDrug_16;
            FN('CHKPROSTDRUG_17').AsInteger:= VarChkProstDrug_17;

            //--- ���.����� ���������� � ����������
            FN('MICURBACTINOCDATE').AsDateTime:= VarMicUrBactInocDate;

            FN('CHKURBACTINOCPATHOGEN').AsInteger:= VarChkUrBactInocPathogen;
            FN('NUMEDTURBACTINOC').AsInteger:= VarNumEdtUrBactInoc;
            FN('URPATHOGEN1_01').AsInteger:= VarUrPathogen1_01;
            FN('URPATHOGEN1_02').AsInteger:= VarUrPathogen1_02;
            FN('URPATHOGEN1_03').AsInteger:= VarUrPathogen1_03;
            FN('URPATHOGEN1_04').AsInteger:= VarUrPathogen1_04;
            FN('URPATHOGEN1_05').AsInteger:= VarUrPathogen1_05;
            FN('URPATHOGEN1_06').AsInteger:= VarUrPathogen1_06;
            FN('URPATHOGEN1_07').AsInteger:= VarUrPathogen1_07;
            FN('URPATHOGEN1_08').AsInteger:= VarUrPathogen1_08;
            FN('URPATHOGEN1_09').AsInteger:= VarUrPathogen1_09;
            FN('URPATHOGEN1_10').AsInteger:= VarUrPathogen1_10;

            FN('URPATHOGEN2_01').AsInteger:= VarUrPathogen2_01;
            FN('URPATHOGEN2_02').AsInteger:= VarUrPathogen2_02;
            FN('URPATHOGEN2_03').AsInteger:= VarUrPathogen2_03;
            FN('URPATHOGEN2_04').AsInteger:= VarUrPathogen2_04;
            FN('URPATHOGEN2_05').AsInteger:= VarUrPathogen2_05;
            FN('URPATHOGEN2_06').AsInteger:= VarUrPathogen2_06;
            FN('URPATHOGEN2_07').AsInteger:= VarUrPathogen2_07;
            FN('URPATHOGEN2_08').AsInteger:= VarUrPathogen2_08;
            FN('URPATHOGEN2_09').AsInteger:= VarUrPathogen2_09;
            FN('URPATHOGEN2_10').AsInteger:= VarUrPathogen2_10;

            FN('CHKMICBACTINOCPATHOGEN').AsInteger:= VarChkMicBactInocPathogen;
            FN('NUMEDTMICBACTINOC').AsInteger:= VarNumEdtMicBactInoc;
            FN('MICPATHOGEN1_01').AsInteger:= VarMicPathogen1_01;
            FN('MICPATHOGEN1_02').AsInteger:= VarMicPathogen1_02;
            FN('MICPATHOGEN1_03').AsInteger:= VarMicPathogen1_03;
            FN('MICPATHOGEN1_04').AsInteger:= VarMicPathogen1_04;
            FN('MICPATHOGEN1_05').AsInteger:= VarMicPathogen1_05;
            FN('MICPATHOGEN1_06').AsInteger:= VarMicPathogen1_06;
            FN('MICPATHOGEN1_07').AsInteger:= VarMicPathogen1_07;
            FN('MICPATHOGEN1_08').AsInteger:= VarMicPathogen1_08;
            FN('MICPATHOGEN1_09').AsInteger:= VarMicPathogen1_09;
            FN('MICPATHOGEN1_10').AsInteger:= VarMicPathogen1_10;

            FN('MICPATHOGEN2_01').AsInteger:= VarMicPathogen2_01;
            FN('MICPATHOGEN2_02').AsInteger:= VarMicPathogen2_02;
            FN('MICPATHOGEN2_03').AsInteger:= VarMicPathogen2_03;
            FN('MICPATHOGEN2_04').AsInteger:= VarMicPathogen2_04;
            FN('MICPATHOGEN2_05').AsInteger:= VarMicPathogen2_05;
            FN('MICPATHOGEN2_06').AsInteger:= VarMicPathogen2_06;
            FN('MICPATHOGEN2_07').AsInteger:= VarMicPathogen2_07;
            FN('MICPATHOGEN2_08').AsInteger:= VarMicPathogen2_08;
            FN('MICPATHOGEN2_09').AsInteger:= VarMicPathogen2_09;
            FN('MICPATHOGEN2_10').AsInteger:= VarMicPathogen2_10;

            FN('STRMICUREXTRA1').AsString:= Trim(VarStrMicUrExtra1);
            FN('STRMICUREXTRA2').AsString:= Trim(VarStrMicUrExtra2);
            FN('STREXTRA1UR_VAL1').AsString:= Trim(VarStrExtra1Ur_Val1);
            FN('STREXTRA1UR_VAL2').AsString:= Trim(VarStrExtra1Ur_Val2);
            FN('STREXTRA2UR_VAL1').AsString:= Trim(VarStrExtra2Ur_Val1);
            FN('STREXTRA2UR_VAL2').AsString:= Trim(VarStrExtra2Ur_Val2);
            FN('STREXTRA1MIC_VAL1').AsString:= Trim(VarStrExtra1Mic_Val1);
            FN('STREXTRA1MIC_VAL2').AsString:= Trim(VarStrExtra1Mic_Val2);
            FN('STREXTRA2MIC_VAL1').AsString:= Trim(VarStrExtra2Mic_Val1);
            FN('STREXTRA2MIC_VAL2').AsString:= Trim(VarStrExtra2Mic_Val2);

            FN('CHKMICURDRUG_01').AsInteger:= VarChkMicUrDrug_01;
            FN('CHKMICURDRUG_02').AsInteger:= VarChkMicUrDrug_02;
            FN('CHKMICURDRUG_03').AsInteger:= VarChkMicUrDrug_03;
            FN('CHKMICURDRUG_04').AsInteger:= VarChkMicUrDrug_04;
            FN('CHKMICURDRUG_05').AsInteger:= VarChkMicUrDrug_05;
            FN('CHKMICURDRUG_06').AsInteger:= VarChkMicUrDrug_06;
            FN('CHKMICURDRUG_07').AsInteger:= VarChkMicUrDrug_07;
            FN('CHKMICURDRUG_08').AsInteger:= VarChkMicUrDrug_08;
            FN('CHKMICURDRUG_09').AsInteger:= VarChkMicUrDrug_09;
            FN('CHKMICURDRUG_10').AsInteger:= VarChkMicUrDrug_10;

            FN('NUMEDTURETHBACT1').AsInteger:= VarNumEdtUrethBact1;
            FN('NUMEDTURETHBACT2').AsInteger:= VarNumEdtUrethBact2;
            FN('NUMEDTPROSTBACT1').AsInteger:= VarNumEdtProstBact1;
            FN('NUMEDTPROSTBACT2').AsInteger:= VarNumEdtProstBact2;

            //--- ���.����� ����
            FN('URINBACTINOCDATE').AsDateTime:= VarUrinBactInocDate;

            FN('CHKURINPATHOGEN1').AsInteger:= VarChkUrinPathogen1;
            FN('NUMEDTURIN1').AsInteger:= VarNumEdtUrin1;
            FN('URIN_PATHOGEN1_01').AsInteger:= VarUrin_Pathogen1_01;
            FN('URIN_PATHOGEN1_02').AsInteger:= VarUrin_Pathogen1_02;
            FN('URIN_PATHOGEN1_03').AsInteger:= VarUrin_Pathogen1_03;
            FN('URIN_PATHOGEN1_04').AsInteger:= VarUrin_Pathogen1_04;
            FN('URIN_PATHOGEN1_05').AsInteger:= VarUrin_Pathogen1_05;
            FN('URIN_PATHOGEN1_06').AsInteger:= VarUrin_Pathogen1_06;
            FN('URIN_PATHOGEN1_07').AsInteger:= VarUrin_Pathogen1_07;
            FN('URIN_PATHOGEN1_08').AsInteger:= VarUrin_Pathogen1_08;
            FN('URIN_PATHOGEN1_09').AsInteger:= VarUrin_Pathogen1_09;
            FN('URIN_PATHOGEN1_10').AsInteger:= VarUrin_Pathogen1_10;
            FN('URIN_PATHOGEN1_11').AsInteger:= VarUrin_Pathogen1_11;
            FN('URIN_PATHOGEN1_12').AsInteger:= VarUrin_Pathogen1_12;
            FN('URIN_PATHOGEN1_13').AsInteger:= VarUrin_Pathogen1_13;
            FN('URIN_PATHOGEN1_14').AsInteger:= VarUrin_Pathogen1_14;
            FN('URIN_PATHOGEN1_15').AsInteger:= VarUrin_Pathogen1_15;
            FN('URIN_PATHOGEN1_16').AsInteger:= VarUrin_Pathogen1_16;
            FN('URIN_PATHOGEN1_17').AsInteger:= VarUrin_Pathogen1_17;
            FN('URIN_PATHOGEN1_18').AsInteger:= VarUrin_Pathogen1_18;
            FN('URIN_PATHOGEN1_19').AsInteger:= VarUrin_Pathogen1_19;
            FN('URIN_PATHOGEN1_20').AsInteger:= VarUrin_Pathogen1_20;

            FN('CHKURINPATHOGEN2').AsInteger:= VarChkUrinPathogen2;
            FN('NUMEDTURIN2').AsInteger:= VarNumEdtUrin2;
            FN('URIN_PATHOGEN2_01').AsInteger:= VarUrin_Pathogen2_01;
            FN('URIN_PATHOGEN2_02').AsInteger:= VarUrin_Pathogen2_02;
            FN('URIN_PATHOGEN2_03').AsInteger:= VarUrin_Pathogen2_03;
            FN('URIN_PATHOGEN2_04').AsInteger:= VarUrin_Pathogen2_04;
            FN('URIN_PATHOGEN2_05').AsInteger:= VarUrin_Pathogen2_05;
            FN('URIN_PATHOGEN2_06').AsInteger:= VarUrin_Pathogen2_06;
            FN('URIN_PATHOGEN2_07').AsInteger:= VarUrin_Pathogen2_07;
            FN('URIN_PATHOGEN2_08').AsInteger:= VarUrin_Pathogen2_08;
            FN('URIN_PATHOGEN2_09').AsInteger:= VarUrin_Pathogen2_09;
            FN('URIN_PATHOGEN2_10').AsInteger:= VarUrin_Pathogen2_10;
            FN('URIN_PATHOGEN2_11').AsInteger:= VarUrin_Pathogen2_11;
            FN('URIN_PATHOGEN2_12').AsInteger:= VarUrin_Pathogen2_12;
            FN('URIN_PATHOGEN2_13').AsInteger:= VarUrin_Pathogen2_13;
            FN('URIN_PATHOGEN2_14').AsInteger:= VarUrin_Pathogen2_14;
            FN('URIN_PATHOGEN2_15').AsInteger:= VarUrin_Pathogen2_15;
            FN('URIN_PATHOGEN2_16').AsInteger:= VarUrin_Pathogen2_16;
            FN('URIN_PATHOGEN2_17').AsInteger:= VarUrin_Pathogen2_17;
            FN('URIN_PATHOGEN2_18').AsInteger:= VarUrin_Pathogen2_18;
            FN('URIN_PATHOGEN2_19').AsInteger:= VarUrin_Pathogen2_19;
            FN('URIN_PATHOGEN2_20').AsInteger:= VarUrin_Pathogen2_20;

            FN('CHKURINDRUG_01').AsInteger:= VarChkUrinDrug_01;
            FN('CHKURINDRUG_02').AsInteger:= VarChkUrinDrug_02;
            FN('CHKURINDRUG_03').AsInteger:= VarChkUrinDrug_03;
            FN('CHKURINDRUG_04').AsInteger:= VarChkUrinDrug_04;
            FN('CHKURINDRUG_05').AsInteger:= VarChkUrinDrug_05;
            FN('CHKURINDRUG_06').AsInteger:= VarChkUrinDrug_06;
            FN('CHKURINDRUG_07').AsInteger:= VarChkUrinDrug_07;
            FN('CHKURINDRUG_08').AsInteger:= VarChkUrinDrug_08;
            FN('CHKURINDRUG_09').AsInteger:= VarChkUrinDrug_09;
            FN('CHKURINDRUG_10').AsInteger:= VarChkUrinDrug_10;
            FN('CHKURINDRUG_11').AsInteger:= VarChkUrinDrug_11;
            FN('CHKURINDRUG_12').AsInteger:= VarChkUrinDrug_12;
            FN('CHKURINDRUG_13').AsInteger:= VarChkUrinDrug_13;
            FN('CHKURINDRUG_14').AsInteger:= VarChkUrinDrug_14;
            FN('CHKURINDRUG_15').AsInteger:= VarChkUrinDrug_15;
            FN('CHKURINDRUG_16').AsInteger:= VarChkUrinDrug_16;
            FN('CHKURINDRUG_17').AsInteger:= VarChkUrinDrug_17;
            FN('CHKURINDRUG_18').AsInteger:= VarChkUrinDrug_18;
            FN('CHKURINDRUG_19').AsInteger:= VarChkUrinDrug_19;
            FN('CHKURINDRUG_20').AsInteger:= VarChkUrinDrug_20;

            FN('STRURINPATHOGEN1').AsString:= VarStrUrinPathogen1;
            FN('STRURINPATHOGEN2').AsString:= VarStrUrinPathogen2;
            FN('STRURINEXTRA1').AsString:= VarStrUrinExtra1;
            FN('STRURINEXTRA2').AsString:= VarStrUrinExtra2;
          end;
        end;
        {$endregion '��������� ������ ������� � ������������ ������������'}

        DMFIB.DSetVisitLabor.Post;

        FMsgStrValue:= '��������� ������ ���������������� ������������.' + #13#10 + '����������, ���������';
        FMsgParam:= 1;
        Queue(MyMsg);//��������� ��������� �� ������
        Sleep(1000);

        if VisitPatientFlag//���� ������ ����� ���� "��������"
          then //�� ��������� ������ � �������
            begin
              DMFIB.DSetVisitExamin.Insert;
              DMFIB.DSetVisitExamin.FN('ID_VISITEXAMIN').AsInteger:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger;//�� � "������������" �������
            end
          else // ����� ����������� ������� ������
              DMFIB.DSetVisitExamin.Edit;

        {$region '��������� ������ ���������������� ������������'}
        //���������������� ������������
        with FrmStatusPat do
        begin
          with DMFIB.DSetVisitExamin do
          begin
            FN('PGCTRLUZIGENIT').AsInteger:= VarPgCtrlUZIGenit;//��������� ����� ������� �� ����� � ��� ���������

            //--- ���������� ��� �����
            FN('UZIRenDate').AsDateTime:= VarUZIRenDate;
            FN('BoolUZIRen').AsInteger:= VarBoolUZIRen;
            FN('DextRen_01').AsString:= Trim(VarDextRen_01);
            FN('DextRen_02').AsString:= Trim(VarDextRen_02);
            FN('DextRen_03').AsString:= Trim(VarDextRen_03);
            FN('DextRen_04').AsString:= Trim(VarDextRen_04);
            FN('DextPielosSize').AsInteger:= VarDextPielosSize;
            FN('DextPielosDens').AsInteger:= VarDextPielosDens;
            FN('DextPielosDeform').AsInteger:= VarDextPielosDeform;
            FN('DextPielosLytos').AsInteger:= VarDextPielosLytos;
            FN('DextUreterSize').AsInteger:= VarDextUreterSize;
            FN('DextUreterLytos').AsInteger:= VarDextUreterLytos;

            FN('SinRen_01').AsString:= Trim(VarSinRen_01);
            FN('SinRen_02').AsString:= Trim(VarSinRen_02);
            FN('SinRen_03').AsString:= Trim(VarSinRen_03);
            FN('SinRen_04').AsString:= Trim(VarSinRen_04);
            FN('SinPielosSize').AsInteger:= VarSinPielosSize;
            FN('SinPielosDens').AsInteger:= VarSinPielosDens;
            FN('SinPielosDeform').AsInteger:= VarSinPielosDeform;
            FN('SinPielosLytos').AsInteger:= VarSinPielosLytos;
            FN('SinUreterSize').AsInteger:= VarSinUreterSize;
            FN('SinUreterLytos').AsInteger:= VarSinUreterLytos;

            //---���������� ��� �������� ������
            FN('UZIVesicUrDate').AsDateTime:= VarUZIVesicUrDate;
            FN('BoolUZIVesicUr').AsInteger:= VarBoolUZIVesicUr;
            FN('VesicUr_01').AsString:= Trim(VarVesicUr_01);
            FN('VesicUr_02').AsString:= Trim(VarVesicUr_02);
            FN('VesicUr_03').AsString:= Trim(VarVesicUr_03);
            FN('VesicUr_04').AsString:= Trim(VarVesicUr_04);
            FN('VesicUr_05').AsString:= Trim(VarVesicUr_05);
            FN('VesicUrContents').AsInteger:= VarVesicUrContents;
            FN('VesicUrLytos').AsInteger:= VarVesicUrLytos;
            FN('DEXTRENPOSIT').AsInteger:= VarDextRenPosit;
            FN('DEXTRENRMVBL').AsInteger:= VarDextRenRmvbl;
            FN('DEXTRENPATHPREC').AsInteger:= VarDextRenPathPrec;
            FN('DEXTRENPATHEVEN').AsInteger:= VarDextRenPathEven;
            FN('SINRENPOSIT').AsInteger:= VarSinRenPosit;
            FN('SINRENRMVBL').AsInteger:= VarSinRenRmvbl;
            FN('SINRENPATHPREC').AsInteger:= VarSinRenPathPrec;
            FN('SINRENPATHEVEN').AsInteger:= VarSinRenPathEven;
            FN('VESICURPATHPREC').AsInteger:= VarVesicUrPathPrec;
            FN('VESICURPATHEVEN').AsInteger:= VarVesicUrPathEven;
            FN('VESICURWALLDENSITY').AsInteger:= VarVesicUrWallDensity;
            FN('VESICURWALLTHICKN').AsInteger:= VarVesicUrWallThickn;
            FN('VESICUR_06').AsString:=  Trim(VarVesicUr_06);

            //---���������� ��� ��������
            FN('UZIProstataDate').AsDateTime:= VarUZIProstataDate;
            FN('BoolUZIProstata').AsInteger:= VarBoolUZIProstata;

            FN('UZIProstContour').AsInteger:= VarUZIProstContour;
            FN('UZIProstOutline').AsInteger:= VarUZIProstOutline;
            FN('UZIProstStructure').AsInteger:= VarUZIProstStructure;
            FN('UZIProstDensity').AsInteger:= VarUZIProstDensity;
            FN('UZIProstFibrosis').AsInteger:= VarUZIProstFibrosis;
            FN('UZIProstLytos').AsInteger:= VarUZIProstLytos;
            FN('UZIProstCentrFocal').AsInteger:= VarUZIProstCentrFocal;
            FN('UZIProstCentrDens').AsInteger:= VarUZIProstCentrDens;
            FN('UZIProstPerifFocal').AsInteger:= VarUZIProstPerifFocal;
            FN('UZIProstPerifDens').AsInteger:= VarUZIProstPerifDens;
            FN('UZIVesSeminDextWall').AsInteger:= VarUZIVesSeminDextWall;
            FN('UZIVesSeminDextDens').AsInteger:= VarUZIVesSeminDextDens;
            FN('UZIVesSeminSinWall').AsInteger:= VarUZIVesSeminSinWall;
            FN('UZIVesSeminSinDens').AsInteger:= VarUZIVesSeminSinDens;
            FN('UZIPROSTECHOGENDEXT').AsInteger:= VarUZIProstEchogenDext;
            FN('UZIPROSTECHOGENSIN').AsInteger:= VarUZIProstEchogenSin;
            FN('CHKUZIVESICSEMIN').AsInteger:= VarChkUZIVesicSemin;

            FN('UZIProstSize_01').AsString:= Trim(VarUZIProstSize_01);
            FN('UZIProstSize_02').AsString:= Trim(VarUZIProstSize_02);
            FN('UZIProstSize_03').AsString:= Trim(VarUZIProstSize_03);
            FN('UZIProstVolume').AsString:= Trim(VarUZIProstVolume);
            FN('UZIProstResidUrine').AsString:= Trim(VarUZIProstResidUrine);
            FN('UZIVesSeminDext_01').AsString:= Trim(VarUZIVesSeminDext_01);
            FN('UZIVesSeminDext_02').AsString:= Trim(VarUZIVesSeminDext_02);
            FN('UZIVesSeminSin_01').AsString:= Trim(VarUZIVesSeminSin_01);
            FN('UZIVesSeminSin_02').AsString:= Trim(VarUZIVesSeminSin_02);


            //--- ���������� ��� �������
            FN('UZITestisDate').AsDateTime:= VarUZITestisDate;
            FN('BoolUZITestis').AsInteger:= VarBoolUZITestis;

            FN('UZITestisDextPath').AsInteger:= VarUZITestisDextPath;
            FN('UZITestisDextEdge').AsInteger:= VarUZITestisDextEdge;
            FN('UZITestisDextStruct').AsInteger:= VarUZITestisDextStruct;
            FN('UZITestisDextLiquid').AsInteger:= VarUZITestisDextLiquid;
            FN('UZIEpididimDextPath').AsInteger:= VarUZIEpididimDextPath;
            FN('UZIEpididimDextEdge').AsInteger:= VarUZIEpididimDextEdge;
            FN('UZIEpididimDextStruct').AsInteger:= VarUZIEpididimDextStruct;
            FN('UZIEpididimDextNidus').AsInteger:= VarUZIEpididimDextNidus;

            FN('UZITestisSinPath').AsInteger:= VarUZITestisSinPath;
            FN('UZITestisSinEdge').AsInteger:= VarUZITestisSinEdge;
            FN('UZITestisSinStruct').AsInteger:= VarUZITestisSinStruct;
            FN('UZITestisSinLiquid').AsInteger:= VarUZITestisSinLiquid;
            FN('UZIEpididimSinPath').AsInteger:= VarUZIEpididimSinPath;
            FN('UZIEpididimSinEdge').AsInteger:= VarUZIEpididimSinEdge;
            FN('UZIEpididimSinStruct').AsInteger:= VarUZIEpididimSinStruct;
            FN('UZIEpididimSinNidus').AsInteger:= VarUZIEpididimSinNidus;

            FN('UZITestisDext_01').AsString:= Trim(VarUZITestisDext_01);
            FN('UZITestisDext_02').AsString:= Trim(VarUZITestisDext_02);
            FN('UZITestisDext_03').AsString:= Trim(VarUZITestisDext_03);
            FN('UZITestisDext_04').AsString:= Trim(VarUZITestisDext_04);
            FN('UZIEpididimDext_01').AsString:= Trim(VarUZIEpididimDext_01);
            FN('UZIEpididimDext_02').AsString:= Trim(VarUZIEpididimDext_02);
            FN('UZIEpididimDext_03').AsString:= Trim(VarUZIEpididimDext_03);
            FN('UZIEpididimDext_04').AsString:= Trim(VarUZIEpididimDext_04);

            FN('UZITestisSin_01').AsString:= Trim(VarUZITestisSin_01);
            FN('UZITestisSin_02').AsString:= Trim(VarUZITestisSin_02);
            FN('UZITestisSin_03').AsString:= Trim(VarUZITestisSin_03);
            FN('UZITestisSin_04').AsString:= Trim(VarUZITestisSin_04);
            FN('UZIEpididimSin_01').AsString:= Trim(VarUZIEpididimSin_01);
            FN('UZIEpididimSin_02').AsString:= Trim(VarUZIEpididimSin_02);
            FN('UZIEpididimSin_03').AsString:= Trim(VarUZIEpididimSin_03);
            FN('UZIEpididimSin_04').AsString:= Trim(VarUZIEpididimSin_04);

            //--- ���������� ��� ������
            FN('UZIPenisDate').AsDateTime:= VarUZIPenisDate;
            FN('BoolUZIPenis').AsInteger:= VarBoolUZIPenis;

            FN('UZIPenisCavernStruct').AsInteger:= VarUZIPenisCavernStruct;
            FN('UZIPenisCavernDensit').AsInteger:= VarUZIPenisCavernDensit;
            FN('UZIPenisCavernInclus').AsInteger:= VarUZIPenisCavernInclus;
            FN('UZIPenisAlbuginStruct').AsInteger:= VarUZIPenisAlbuginStruct;
            FN('UZIPenisAlbuginThick').AsInteger:= VarUZIPenisAlbuginThick;

            FN('UZIPenisArtCavDext_01').AsString:= Trim(VarUZIPenisArtCavDext_01);
            FN('UZIPenisArtCavDext_02').AsString:= Trim(VarUZIPenisArtCavDext_02);
            FN('UZIPenisArtCavDext_03').AsString:= Trim(VarUZIPenisArtCavDext_03);
            FN('UZIPenisArtCavDext_04').AsString:= Trim(VarUZIPenisArtCavDext_04);
            FN('UZIPenisArtCavDext_05').AsString:= Trim(VarUZIPenisArtCavDext_05);
            FN('UZIPenisArtCavSin_01').AsString:= Trim(VarUZIPenisArtCavSin_01);
            FN('UZIPenisArtCavSin_02').AsString:= Trim(VarUZIPenisArtCavSin_02);
            FN('UZIPenisArtCavSin_03').AsString:= Trim(VarUZIPenisArtCavSin_03);
            FN('UZIPenisArtCavSin_04').AsString:= Trim(VarUZIPenisArtCavSin_04);
            FN('UZIPenisArtCavSin_05').AsString:= Trim(VarUZIPenisArtCavSin_05);

            FN('UZIPenisArtDorsDext_01').AsString:= Trim(VarUZIPenisArtDorsDext_01);
            FN('UZIPenisArtDorsDext_02').AsString:= Trim(VarUZIPenisArtDorsDext_02);
            FN('UZIPenisArtDorsDext_03').AsString:= Trim(VarUZIPenisArtDorsDext_03);
            FN('UZIPenisArtDorsDext_04').AsString:= Trim(VarUZIPenisArtDorsDext_04);
            FN('UZIPenisArtDorsDext_05').AsString:= Trim(VarUZIPenisArtDorsDext_05);
            FN('UZIPenisArtDorsSin_01').AsString:= Trim(VarUZIPenisArtDorsSin_01);
            FN('UZIPenisArtDorsSin_02').AsString:= Trim(VarUZIPenisArtDorsSin_02);
            FN('UZIPenisArtDorsSin_03').AsString:= Trim(VarUZIPenisArtDorsSin_03);
            FN('UZIPenisArtDorsSin_04').AsString:= Trim(VarUZIPenisArtDorsSin_04);
            FN('UZIPenisArtDorsSin_05').AsString:= Trim(VarUZIPenisArtDorsSin_05);

            FN('UZIPenisVenaDorsDext_01').AsString:= Trim(VarUZIPenisVenaDorsDext_01);
            FN('UZIPenisVenaDorsDext_02').AsString:= Trim(VarUZIPenisVenaDorsDext_02);
            FN('UZIPenisVenaDorsDext_03').AsString:= Trim(VarUZIPenisVenaDorsDext_03);
            FN('UZIPenisVenaDorsSin_01').AsString:= Trim(VarUZIPenisVenaDorsSin_01);
            FN('UZIPenisVenaDorsSin_02').AsString:= Trim(VarUZIPenisVenaDorsSin_02);
            FN('UZIPenisVenaDorsSin_03').AsString:= Trim(VarUZIPenisVenaDorsSin_03);

            //--- ���������� ���� ������� �������
            FN('UZIDOPPLERTESTISDATE').AsDateTime:= VarUZIDopplerTestisDate;
            FN('CHKDOPPLERTESTIS').AsInteger:= VarChkDopplerTestis;
            FN('VASAFUNICDEXT').AsInteger:=  VarVasaFunicDext;
            FN('VALSALVEDEXT').AsInteger:= VarValsalveDext;
            FN('VASAFUNICPARENCHDEXT').AsInteger:= VarVasaFunicParenchDext;
            FN('VASAFUNICSIN').AsInteger:= VarVasaFunicSin;
            FN('VALSALVESIN').AsInteger:= VarValsalveSin;
            FN('VASAFUNICPARENCHSIN').AsInteger:= VarVasaFunicParenchSin;

            FN('STRVASAFUNIC_HORZDEXT').AsString:= Trim(VarStrVasaFunic_HorzDext);
            FN('STRVASAFUNIC_VERTDEXT').AsString:= Trim(VarStrVasaFunic_VertDext);
            FN('STRVASA_LSKFUNICDEXT').AsString:= Trim(VarStrVasa_LSKFunicDext);
            FN('STRVASA_LSKTESTISDEXT').AsString:= Trim(VarStrVasa_LSKTestisDext);
            FN('STRVASAFUNIC_HORZSIN').AsString:= Trim(VarStrVasaFunic_HorzSin);
            FN('STRVASAFUNIC_VERTSIN').AsString:= Trim(VarStrVasaFunic_VertSin);
            FN('STRVASA_LSKFUNICSIN').AsString:= Trim(VarStrVasa_LSKFunicSin);
            FN('STRVASA_LSKTESTISSIN').AsString:= Trim(VarStrVasa_LSKTestisSin);

            //--- ���������� ����������� ����� ������������
            FN('UrScopiaDryDate').AsDateTime:= VarUrScopiaDryDate;

            FN('UrScopiaDryOstium_01').AsInteger:= VarUrScopiaDryOstium_01;
            FN('UrScopiaDryOstium_02').AsInteger:= VarUrScopiaDryOstium_02;
            FN('UrScopiaDryOstium_03').AsInteger:= VarUrScopiaDryOstium_03;

            FN('UrScopiaDryTubus_01').AsInteger:= VarUrScopiaDryTubus_01;
            FN('UrScopiaDryTubus_02').AsInteger:= VarUrScopiaDryTubus_02;
            FN('UrScopiaDryTubus_03').AsInteger:= VarUrScopiaDryTubus_03;
            FN('UrScopiaDryTubus_04').AsInteger:= VarUrScopiaDryTubus_04;
            FN('UrScopiaDryTubus_05').AsInteger:= VarUrScopiaDryTubus_05;

            FN('UrScopiaDryGland_01').AsInteger:= VarUrScopiaDryGland_01;
            FN('UrScopiaDryGland_02').AsInteger:= VarUrScopiaDryGland_02;
            FN('UrScopiaDryGland_03').AsInteger:= VarUrScopiaDryGland_03;
            FN('UrScopiaDryGland_04').AsInteger:= VarUrScopiaDryGland_04;
            FN('UrScopiaDryGland_05').AsInteger:= VarUrScopiaDryGland_05;

            FN('UrScopiaDryFigure_01').AsInteger:= VarUrScopiaDryFigure_01;
            FN('UrScopiaDryFigure_02').AsInteger:= VarUrScopiaDryFigure_02;
            FN('UrScopiaDryFigure_03').AsInteger:= VarUrScopiaDryFigure_03;

            FN('UrScopiaDryPattern_01').AsInteger:= VarUrScopiaDryPattern_01;
            FN('UrScopiaDryPattern_02').AsInteger:= VarUrScopiaDryPattern_02;
            FN('UrScopiaDryPattern_03').AsInteger:= VarUrScopiaDryPattern_03;

            FN('UrScopiaDrySurface_01').AsInteger:= VarUrScopiaDrySurface_01;
            FN('UrScopiaDrySurface_02').AsInteger:= VarUrScopiaDrySurface_02;
            FN('UrScopiaDrySurface_03').AsInteger:= VarUrScopiaDrySurface_03;
            FN('UrScopiaDrySurface_04').AsInteger:= VarUrScopiaDrySurface_04;
            FN('UrScopiaDrySurface_05').AsInteger:= VarUrScopiaDrySurface_05;
            FN('UrScopiaDrySurface_06').AsInteger:= VarUrScopiaDrySurface_06;

            //--- ���������� ����������� ������������� ������������
            FN('UrScopiaIrrigDate').AsDateTime:= VarUrScopiaIrrigDate;

            FN('UrScopiaIrrigUrScAntTool_01').AsInteger:= VarIrrigUrScAntTool_01;
            FN('UrScopiaIrrigUrScAntTool_02').AsInteger:= VarIrrigUrScAntTool_02;
            FN('UrScopiaIrrigUrScAntTool_03').AsInteger:= VarIrrigUrScAntTool_03;
            FN('UrScopiaIrrigUrScAntTool_04').AsInteger:= VarIrrigUrScAntTool_04;

            FN('UrScopiaIrrigUrScAntOstium_01').AsInteger:= VarIrrigUrScAntOstium_01;
            FN('UrScopiaIrrigUrScAntOstium_02').AsInteger:= VarIrrigUrScAntOstium_02;
            FN('UrScopiaIrrigUrScAntOstium_03').AsInteger:= VarIrrigUrScAntOstium_03;

            FN('UrScopiaIrrigUrScAntMedium_01').AsInteger:= VarIrrigUrScAntMedium_01;
            FN('UrScopiaIrrigUrScAntMedium_02').AsInteger:= VarIrrigUrScAntMedium_02;

            FN('UrScopiaIrrigUrScAntScanne_01').AsInteger:= VarIrrigUrScAntScanne_01;
            FN('UrScopiaIrrigUrScAntScanne_02').AsInteger:= VarIrrigUrScAntScanne_02;
            FN('UrScopiaIrrigUrScAntScanne_03').AsInteger:= VarIrrigUrScAntScanne_03;
            FN('UrScopiaIrrigUrScAntScanne_04').AsInteger:= VarIrrigUrScAntScanne_04;
            FN('UrScopiaIrrigUrScAntScanne_05').AsInteger:= VarIrrigUrScAntScanne_05;

            FN('UrScopiaIrrigUrScAntPenal_01').AsInteger:= VarIrrigUrScAntPenal_01;
            FN('UrScopiaIrrigUrScAntPenal_02').AsInteger:= VarIrrigUrScAntPenal_02;
            FN('UrScopiaIrrigUrScAntPenal_03').AsInteger:= VarIrrigUrScAntPenal_03;
            FN('UrScopiaIrrigUrScAntPenal_04').AsInteger:= VarIrrigUrScAntPenal_04;
            FN('UrScopiaIrrigUrScAntPenal_05').AsInteger:= VarIrrigUrScAntPenal_05;
            FN('UrScopiaIrrigUrScAntPenal_06').AsInteger:= VarIrrigUrScAntPenal_06;

            FN('UrScopiaIrrigUrScAntBulb_01').AsInteger:= VarIrrigUrScAntBulb_01;
            FN('UrScopiaIrrigUrScAntBulb_02').AsInteger:= VarIrrigUrScAntBulb_02;
            FN('UrScopiaIrrigUrScAntBulb_03').AsInteger:= VarIrrigUrScAntBulb_03;

            FN('UrScopiaIrrigUrScAntMembr_01').AsInteger:= VarIrrigUrScAntMembr_01;
            FN('UrScopiaIrrigUrScAntMembr_02').AsInteger:= VarIrrigUrScAntMembr_02;

            FN('UrScopiaIrrigUrScAntCooper_01').AsInteger:= VarIrrigUrScAntCooper_01;
            FN('UrScopiaIrrigUrScAntCooper_02').AsInteger:= VarIrrigUrScAntCooper_02;
            FN('UrScopiaIrrigUrScAntCooper_03').AsInteger:= VarIrrigUrScAntCooper_03;
            FN('UrScopiaIrrigUrScAntCooper_04').AsInteger:= VarIrrigUrScAntCooper_04;

            FN('UrScopiaIrrigUrScPostMedium_01').AsInteger:= VarIrrigUrScPostMedium_01;
            FN('UrScopiaIrrigUrScPostMedium_02').AsInteger:= VarIrrigUrScPostMedium_02;

            FN('UrScopiaIrrigUrScPostMucous_01').AsInteger:= VarIrrigUrScPostMucous_01;
            FN('UrScopiaIrrigUrScPostMucous_02').AsInteger:= VarIrrigUrScPostMucous_02;
            FN('UrScopiaIrrigUrScPostMucous_03').AsInteger:= VarIrrigUrScPostMucous_03;
            FN('UrScopiaIrrigUrScPostMucous_04').AsInteger:= VarIrrigUrScPostMucous_04;
            FN('UrScopiaIrrigUrScPostMucous_05').AsInteger:= VarIrrigUrScPostMucous_05;
            FN('UrScopiaIrrigUrScPostMucous_06').AsInteger:= VarIrrigUrScPostMucous_06;
            FN('UrScopiaIrrigUrScPostMucous_07').AsInteger:= VarIrrigUrScPostMucous_07;
            FN('UrScopiaIrrigUrScPostMucous_08').AsInteger:= VarIrrigUrScPostMucous_08;

            FN('UrScopiaIrrigUrScPostCollic_01').AsInteger:= VarIrrigUrScPostCollic_01;
            FN('UrScopiaIrrigUrScPostCollic_02').AsInteger:= VarIrrigUrScPostCollic_02;
            FN('UrScopiaIrrigUrScPostCollic_03').AsInteger:= VarIrrigUrScPostCollic_03;
            FN('UrScopiaIrrigUrScPostCollic_04').AsInteger:= VarIrrigUrScPostCollic_04;
            FN('UrScopiaIrrigUrScPostCollic_05').AsInteger:= VarIrrigUrScPostCollic_05;
            FN('UrScopiaIrrigUrScPostCollic_06').AsInteger:= VarIrrigUrScPostCollic_06;
            FN('UrScopiaIrrigUrScPostCollic_07').AsInteger:= VarIrrigUrScPostCollic_07;
            FN('UrScopiaIrrigUrScPostCollic_08').AsInteger:= VarIrrigUrScPostCollic_08;

            FN('UrScopiaIrrigUrScPostDucts_01').AsInteger:= VarIrrigUrScPostDucts_01;
            FN('UrScopiaIrrigUrScPostDucts_02').AsInteger:= VarIrrigUrScPostDucts_02;
            FN('UrScopiaIrrigUrScPostDucts_03').AsInteger:= VarIrrigUrScPostDucts_03;
            FN('UrScopiaIrrigUrScPostDucts_04').AsInteger:= VarIrrigUrScPostDucts_04;

            FN('UrScopiaIrrigUrScPostVesic_01').AsInteger:= VarIrrigUrScPostVesic_01;
            FN('UrScopiaIrrigUrScPostVesic_02').AsInteger:= VarIrrigUrScPostVesic_02;
            FN('UrScopiaIrrigUrScPostVesic_03').AsInteger:= VarIrrigUrScPostVesic_03;
            FN('UrScopiaIrrigUrScPostVesic_04').AsInteger:= VarIrrigUrScPostVesic_04;
            FN('UrScopiaIrrigUrScPostVesic_05').AsInteger:= VarIrrigUrScPostVesic_05;
            FN('UrScopiaIrrigUrScPostVesic_06').AsInteger:= VarIrrigUrScPostVesic_06;
            FN('UrScopiaIrrigUrScPostVesic_07').AsInteger:= VarIrrigUrScPostVesic_07;
          end;
        end;

        {$endregion '��������� ������ ���������������� ������������'}

        DMFIB.DSetVisitExamin.Post;

        FMsgStrValue:= '��������� ��������� ����������� ������.' + #13#10 + '����������, ���������';
        FMsgParam:= 1;
        Queue(MyMsg);//��������� ��������� �� ������
        Sleep(1000);

        if VisitPatientFlag//���� ������ ����� ���� "��������"
          then //�� ��������� ������ � �������
            begin
              DMFIB.DSetVisitBlob.Insert;
              DMFIB.DSetVisitBlob.FN('ID_VISITBLOB').AsInteger:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger;//�� � "������������" �������
            end
          else // ����� ����������� ������� ������
              DMFIB.DSetVisitBlob.Edit;

        {$region '��������� ��������� ����������� ������'}
        with FrmStatusPat do
          with DMFIB, DSetVisitBlob do
          begin
            //--- ������ �������
            FN('STPRESENSFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_01'));
            FN('STPRESENSFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_02'));
            FN('STPRESENSFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_03'));
            FN('STPRESENSFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_04'));

            FN('STPRESENSFOTOS_01_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_01_EXT').AsString;
            FN('STPRESENSFOTOS_02_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_02_EXT').AsString;
            FN('STPRESENSFOTOS_03_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_03_EXT').AsString;
            FN('STPRESENSFOTOS_04_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STPRESENSFOTOS_04_EXT').AsString;

            //--- ���������� �������
            FN('STLOCALISFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_01'));
            FN('STLOCALISFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_02'));
            FN('STLOCALISFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_03'));
            FN('STLOCALISFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_04'));

            FN('STLOCALISFOTOS_01_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_01_EXT').AsString;
            FN('STLOCALISFOTOS_02_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_02_EXT').AsString;
            FN('STLOCALISFOTOS_03_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_03_EXT').AsString;
            FN('STLOCALISFOTOS_04_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_STLOCALISFOTOS_04_EXT').AsString;

            //--- ����� �� ������
            FN('MAZURFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_01'));
            FN('MAZURFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_02'));
            FN('MAZURFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_03'));
            FN('MAZURFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_04'));
            FN('MAZURFOTOS_05').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_05'));
            FN('MAZURFOTOS_06').Assign(DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_06'));

            FN('MAZURFOTOS_01_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_01_EXT').AsString;
            FN('MAZURFOTOS_02_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_02_EXT').AsString;
            FN('MAZURFOTOS_03_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_03_EXT').AsString;
            FN('MAZURFOTOS_04_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_04_EXT').AsString;
            FN('MAZURFOTOS_05_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_05_EXT').AsString;
            FN('MAZURFOTOS_06_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZURFOTOS_06_EXT').AsString;

            //--- ����� ���� ��������
            FN('MAZPRFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_01'));
            FN('MAZPRFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_02'));
            FN('MAZPRFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_03'));
            FN('MAZPRFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_04'));

            FN('MAZPRFOTOS_01_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_01_EXT').AsString;
            FN('MAZPRFOTOS_02_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_02_EXT').AsString;
            FN('MAZPRFOTOS_03_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_03_EXT').AsString;
            FN('MAZPRFOTOS_04_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_MAZPRFOTOS_04_EXT').AsString;

            //--- ��� �����
            FN('UZIRENFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_01'));
            FN('UZIRENFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_02'));
            FN('UZIRENFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_03'));
            FN('UZIRENFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_04'));

            FN('UZIRENFOTOS_01_EXT').AsString:=
                                      DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_01_EXT').AsString;
            FN('UZIRENFOTOS_02_EXT').AsString:=
                                      DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_02_EXT').AsString;
            FN('UZIRENFOTOS_03_EXT').AsString:=
                                      DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_03_EXT').AsString;
            FN('UZIRENFOTOS_04_EXT').AsString:=
                                      DSetTmpBlobVisit.FN('TMP_UZIRENFOTOS_04_EXT').AsString;

            //--- ��� ���������
            FN('UZIGENITFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_01'));
            FN('UZIGENITFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_02'));
            FN('UZIGENITFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_03'));
            FN('UZIGENITFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_04'));

            FN('UZIGENITFOTOS_01_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_01_EXT').AsString;
            FN('UZIGENITFOTOS_02_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_02_EXT').AsString;
            FN('UZIGENITFOTOS_03_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_03_EXT').AsString;
            FN('UZIGENITFOTOS_04_EXT').AsString:=
                                    DSetTmpBlobVisit.FN('TMP_UZIGENITFOTOS_04_EXT').AsString;

            //--- ����� ������������
            FN('URSCOPIADRYFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_01'));
            FN('URSCOPIADRYFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_02'));
            FN('URSCOPIADRYFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_03'));
            FN('URSCOPIADRYFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_04'));
            FN('URSCOPIADRYFOTOS_05').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_05'));
            FN('URSCOPIADRYFOTOS_06').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_06'));

            FN('URSCOPIADRYFOTOS_01_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_01_EXT').AsString;
            FN('URSCOPIADRYFOTOS_02_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_02_EXT').AsString;
            FN('URSCOPIADRYFOTOS_03_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_03_EXT').AsString;
            FN('URSCOPIADRYFOTOS_04_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_04_EXT').AsString;
            FN('URSCOPIADRYFOTOS_05_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_05_EXT').AsString;
            FN('URSCOPIADRYFOTOS_06_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_URSCOPIADRYFOTOS_06_EXT').AsString;

            FN('URSCOPIAIRRIGFOTOS_01').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_01'));
            FN('URSCOPIAIRRIGFOTOS_02').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_02'));
            FN('URSCOPIAIRRIGFOTOS_03').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_03'));
            FN('URSCOPIAIRRIGFOTOS_04').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_04'));
            FN('URSCOPIAIRRIGFOTOS_05').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_05'));
            FN('URSCOPIAIRRIGFOTOS_06').Assign(DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_06'));

            FN('URSCOPIAIRRIGFOTOS_01_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_01_EXT').AsString;
            FN('URSCOPIAIRRIGFOTOS_02_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_02_EXT').AsString;
            FN('URSCOPIAIRRIGFOTOS_03_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_03_EXT').AsString;
            FN('URSCOPIAIRRIGFOTOS_04_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_04_EXT').AsString;
            FN('URSCOPIAIRRIGFOTOS_05_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_05_EXT').AsString;
            FN('URSCOPIAIRRIGFOTOS_06_EXT').AsString:=
                                DSetTmpBlobVisit.FN('TMP_URSCOPIAIRRIGFOTOS_06_EXT').AsString;

            //��������� OLE-������� � ���������� ����������� ������
            FN('RWFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_RWFOTOS'));
            FN('AIDSFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_AIDSFOTOS'));
            FN('HBSAGFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_HBSAGFOTOS'));

            FN('RWFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_RWFOTOS_EXT').AsString;
            FN('AIDSFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_AIDSFOTOS_EXT').AsString;
            FN('HBSAGFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_HBSAGFOTOS_EXT').AsString;

            FN('SPERM').Assign(DSetTmpBlobVisit.FN('TMP_SPERM'));
            FN('KRUG').Assign(DSetTmpBlobVisit.FN('TMP_KRUG'));
            FN('SPERMBIOCHEMIC').Assign(DSetTmpBlobVisit.FN('TMP_SPERMBIOCHEMIC'));
            FN('MAR').Assign(DSetTmpBlobVisit.FN('TMP_MAR'));
            FN('SPERMVITAL').Assign(DSetTmpBlobVisit.FN('TMP_SPERMVITAL'));

            FN('PCRFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_PCRFOTOS'));
            FN('IFAFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_IFAFOTOS'));
            FN('SPERMFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_SPERMFOTOS'));
            FN('KRUGFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_KRUGFOTOS'));
            FN('SPERMBIOCHEMICFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_SPERMBIOCHEMICFOTOS'));
            FN('MARFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_MARFOTOS'));
            FN('SPERMVITALFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_SPERMVITALFOTOS'));

            FN('OAK').Assign(DSetTmpBlobVisit.FN('TMP_OAK'));
            FN('BLOODBIO').Assign(DSetTmpBlobVisit.FN('TMP_BLOODBIO'));
            FN('HORM').Assign(DSetTmpBlobVisit.FN('TMP_HORM'));

            FN('OAKFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_OAKFOTOS'));
            FN('BLOODBIOFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_BLOODBIOFOTOS'));
            FN('HORMFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_HORMFOTOS'));

            FN('PCRFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_PCRFOTOS_EXT').AsString;
            FN('IFAFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_IFAFOTOS_EXT').AsString;
            FN('SPERMFOTOS_EXT').AsString:=
                                          DSetTmpBlobVisit.FN('TMP_SPERMFOTOS_EXT').AsString;
            FN('KRUGFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_KRUGFOTOS_EXT').AsString;
            FN('SPERMBIOCHEMICFOTOS_EXT').AsString:=
                                  DSetTmpBlobVisit.FN('TMP_SPERMBIOCHEMICFOTOS_EXT').AsString;
            FN('MARFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_MARFOTOS_EXT').AsString;
            FN('SPERMVITALFOTOS_EXT').AsString:=
                                      DSetTmpBlobVisit.FN('TMP_SPERMVITALFOTOS_EXT').AsString;
            FN('OAKFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_OAKFOTOS_EXT').AsString;
            FN('BLOODBIOFOTOS_EXT').AsString:=
                                        DSetTmpBlobVisit.FN('TMP_BLOODBIOFOTOS_EXT').AsString;
            FN('HORMFOTOS_EXT').AsString:= DSetTmpBlobVisit.FN('TMP_HORMFOTOS_EXT').AsString;

            FN('ONKOMARKER').Assign(DSetTmpBlobVisit.FN('TMP_ONKOMARKER'));
            FN('ONKOMARKERFOTOS').Assign(DSetTmpBlobVisit.FN('TMP_ONKOMARKERFOTOS'));
            FN('ONKOMARKERFOTOS_EXT').Assign(DSetTmpBlobVisit.FN('TMP_ONKOMARKERFOTOS_EXT'));

            FN('IONES').Assign(DSetTmpBlobVisit.FN('TMP_IONES'));

            //������������ ��������������� ����� ���� ������� ����� "� �������" ��� ����������� � �����

            FN('DRUGTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditDrug,'�����',True);
            FN('DSTEXT_MEMO').AsString:= CutStrFromBulkText(RichEditDs,'ds:');
            FN('RECOMTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditRecom,'�����',False);
            FN('MANIPTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditManip,'�����', False);

            //�� �� ����� ������ ��� ����� �� 999 ������ (������ ����� ����� ��������)
            FN('DRUGTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditDrug,'�����',True),999);
            FN('DSTEXT_STR').AsString:= LeftStr(CutStrFromBulkText(RichEditDs,'ds:'),999);
            FN('RECOMTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditRecom,'�����',False),999);
            FN('MANIPTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditManip,'�����',False),999);

          end;

        {$endregion '��������� ��������� ����������� ������'}

        {$region '��������� ��������� �����'}
        //��������� ��������� �����
        try
          //������� "���������" ���-�����
          TmpRE:= TRichEdit.CreateParented(Self.Handle);

          //������ ��� ��������
          TmpRE.Visible:= False;
          TmpRE.PlainText:= True;//������� ��� ��� "��������������" �����

          // ============== ������� "�������" ==============
          try
            TmpMS:= TMemoryStream.Create;

            //"��������" ��� ����-����, ���� ��������������� ���-����� ������
            with FrmStatusPat do
            begin
              if Trim(RichEditComplaints.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditComplaints.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('Complaints')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('Complaints')).Clear;

              if Trim(RichEditSecretStuff.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditSecretStuff.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('SECRET_STUFF')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('SECRET_STUFF')).Clear;

              if Trim(RichEditStPraesens.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditStPraesens.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('StPraesens')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('StPraesens')).Clear;

              if Trim(RichEditStLocalis.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditStLocalis.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('StLocalis')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('StLocalis')).Clear;

              if Trim(RichEditProstata.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditProstata.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('StProstata')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('StProstata')).Clear;

              if Trim(RichEdtLues.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtLues.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('LUESTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('LUESTEXT')).Clear;

              if Trim(RichEdtBlood.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtBlood.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('BLOODTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('BLOODTEXT')).Clear;

              if Trim(RichEdtAIDS.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtAIDS.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('AIDSTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('AIDSTEXT')).Clear;

              if Trim(RichEdtSperm.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    TmpSpermTxt:= Trim(RichEdtSperm.Text);
                    RichEdtSperm.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('SPERMTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('SPERMTEXT')).Clear;

              if Trim(RichEdtUrethBactInoc.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtUrethBactInoc.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('URETHBACTINOCTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('URETHBACTINOCTEXT')).Clear;

              if Trim(RichEdtProstBactInoc.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtProstBactInoc.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('PROSTBACTINOCTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('PROSTBACTINOCTEXT')).Clear;

              if Trim(RichEdtMicUrBactInoc.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtMicUrBactInoc.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('MICURBACTINOCTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('MICURBACTINOCTEXT')).Clear;

              if Trim(RichEdtUrinBactInoc.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEdtUrinBactInoc.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('URINBACTINOCTEXT')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('URINBACTINOCTEXT')).Clear;

              if Trim(RichEditOAM.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditOAM.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('OAM')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('OAM')).Clear;

              if Trim(RichEditMazUr.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditMazUr.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('MazUrethra')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('MazUrethra')).Clear;

              if Trim(RichEditMazProst.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditMazProst.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('MazProst')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('MazProst')).Clear;

              if Trim(RichEditIFA.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditIFA.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('IFA')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('IFA')).Clear;

              if Trim(RichEditPCR.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditPCR.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('PCR')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('PCR')).Clear;

              if Trim(RichEditUZIRen.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditUZIRen.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('UZIRen')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('UZIRen')).Clear;

              if Trim(RichEditUZIGenit.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditUZIGenit.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('UZIGenit')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('UZIGenit')).Clear;

              if Trim(RichEditUrScopiaDry.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditUrScopiaDry.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('UrScopiaDry')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('UrScopiaDry')).Clear;

              if Trim(RichEditUrScopiaIrrig.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditUrScopiaIrrig.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('UrScopiaIrrig')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('UrScopiaIrrig')).Clear;

              if Trim(RichEditDrug.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditDrug.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('DrugText')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('DrugText')).Clear;

              if Trim(RichEditManip.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditManip.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('ManipText')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('ManipText')).Clear;

              if Trim(RichEditDs.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditDs.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('DsText')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('DsText')).Clear;

              if Trim(RichEditRecom.Text) <> ''
                then
                  begin
                    TmpMS.Clear;
                    RichEditRecom.Lines.SaveToStream(TmpMS);
                    TmpMS.Position:= 0;
                    TBlobField(DMFIB.DSetVisitBlob.FN('RecomText')).LoadFromStream(TmpMS);
                  end
                else
                  TBlobField(DMFIB.DSetVisitBlob.FN('RecomText')).Clear;
            end;
          finally
            FreeAndNil(TmpMS);
          end;
        finally
          FreeAndNil(TmpRE);
        end;

        {$endregion '��������� ��������� �����'}

        DMFIB.DSetVisitBlob.Post;

        DMFIB.WriteTransVisit.Commit;//��������� ���������
        FrmSenderModalResult:= mrOk;//��� OK, ����� �����������

        //��������� �����
        if DMFIB.DSetTemp.Active then DMFIB.DSetTemp.Close;
        if DMFIB.DSetTmpBlobVisit.Active then DMFIB.DSetTmpBlobVisit.Active:= False;

        //��������������� ��������� ��� "���������������" �������
        with DMFIB do
          begin
            if DSetVisitMain.Active then DSetVisitMain.Close;
            if DSetVisitLabor.Active then DSetVisitLabor.Close;
            if DSetVisitExamin.Active then DSetVisitExamin.Close;
            if DSetVisitBlob.Active then DSetVisitBlob.Close;
            if DSetTmpBlobVisit.Active then DSetTmpBlobVisit.Close;
          end;
      except
        on E:Exception do
        begin
          FMsgStrValue:= '������ ���������� ������';
          FMsgParam:= 2;
          Synchronize(MyMsg);//��������� ������

          FMsgStrValue:= E.Message;
          FMsgParam:= 1;
          Queue(MyMsg);//��������� ��������� �� ������


          if not (DMFIB.DSetVisitMain.State=dsBrowse)
            then DMFIB.DSetVisitMain.Cancel;

          if not (DMFIB.DSetVisitLabor.State=dsBrowse)
            then DMFIB.DSetVisitLabor.Cancel;

          if not (DMFIB.DSetVisitExamin.State=dsBrowse)
            then DMFIB.DSetVisitExamin.Cancel;

          if not (DMFIB.DSetVisitBlob.State=dsBrowse)
            then DMFIB.DSetVisitBlob.Cancel;

          VarID_Tbl_VisitMain:= Old_VarID_Tbl_VisitMain;//"������������" �� ������ �������� � ������ ������

          FrmSenderModalResult:= mrNone;

          DMFIB.WriteTransVisit.Rollback;//������������
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

          //����������� � finally ������
          Exit;
        end;
      end;
    finally
      IsFinishedThread:= True;
      FMsgParam:= 0;
      FMsgIntValue:= 0;
      Synchronize(CloseSplashMsg);//��������� �����
    end;
end;

procedure TThreadSaveRec.MyMsg;
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
      //�����{msg.WParam > 0}/��������{msg.WParam = 0} pnlBottom �� ������
      4:
        begin
          frmSplash.pnlBottom.Visible:= (FMsgIntValue <> 0);
          frmSplash.Repaint;
        end;
    end;
end;

end.
