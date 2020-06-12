unit StatusPatUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Spin, DBGridEh, ExtCtrls, Mask, DBCtrlsEh, padegFIO,
  DBLookupEh, DB, DBTables, ADODB, FIBDataSet, FIBQuery, MsgSplash, DateUtils,
  NiceSettings, pFIBDataSet;

type
  TFrmStatusPat = class(TForm)
    PgCtrlVisit: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    BtnCancel: TButton;
    Label7: TLabel;
    Label9: TLabel;
    DTPickPriem: TDateTimePicker;
    Panel1: TPanel;
    Label1: TLabel;
    RdBtnVisitPrimary: TRadioButton;
    RdBtnVisitSecondary: TRadioButton;
    Label8: TLabel;
    DBLookupCBDocChoice: TDBLookupComboboxEh;
    LblStatusPatName: TLabel;
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
    Label17: TLabel;
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
    ChkBoxAmanAlkohol: TCheckBox;
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
    procedure DTPickPriemCloseUp(Sender: TObject);
    procedure DBLookupCBDocChoiceCloseUp(Sender: TObject; Accept: Boolean);
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

  private
    { Private declarations }
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
//    procedure SetDefaultSelAttrRichEdtEx(Sender: TwwDBRichEdit);
  public
    { Public declarations }
    //возвращаем форматированную строку из "простого" ричэдит-редактора
    function CallSimpleRichEditor(Sender: TRichEdit) : string;
    procedure CallResearcheLuesList(Sender: TObject);
//    procedure CallSimpleRichEditor(Sender: TRichEdit);//вызываем простой ричэдит-редактор
  end;

var
  FrmStatusPat: TFrmStatusPat;
  DateStatusPat: TDateTime;
  FullPatName, FPath//пути к временным папкам и файлам
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
     uFrmMicUrBactInoc, uFrmProstBactInoc, uFrmUrinBactInoc, uRichEdtor;

var
    AnamListNo //число попаданий на вкладку "Анамнез"
              : Integer;

{$R *.dfm}

(*****************************************************************************)
(*                                                                           *)
(*                      "Базовые" процедуры и функции                        *)
(*                                                                           *)
(*****************************************************************************)

//----------------------------------------------------------------------------

procedure TFrmStatusPat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//удалим папку для временных файлов
if DirectoryExists(FPath) then RemoveTmpDir(FPath);

//освобождаем LookUp от набора
with DBLookupCBDocChoice do
  begin
    ListSource:= nil;
    ListField:= '';
    KeyField:= '';
  end;
//закрываем набор
if DMFIB.DSetTemp.Active then DMFIB.DSetTemp.Close;

//последовательно закрываем все "запараллеленные" таблицы
with DMFIB do
  begin
    if DSetVisitMain.Active then DSetVisitMain.Close;
    if DSetVisitLabor.Active then DSetVisitLabor.Close;
    if DSetVisitExamin.Active then DSetVisitExamin.Close;
    if DSetVisitBlob.Active then DSetVisitBlob.Close;
    if DSetTmpBlobVisit.Active then DSetTmpBlobVisit.Close;
  end;

//сохраняем параметры формы
NiceSetFrmStatPat.SaveSettings;
end;

//----------------------------------------------------------------------------
//нажатие на кнопку "Отмена"
procedure TFrmStatusPat.BtnCancelClick(Sender: TObject);
begin
if Application.MessageBox('Вновь введенные Вами данные или исправления будут отменены. Вы уверены, что хотите '
                         + 'закрыть окно?','Отмена изменения данных',MB_ICONINFORMATION + MB_YESNO) = IDYes then
  begin
    with DMFIB do
      begin
        if DSetVisitMain.Modified then DSetVisitMain.Cancel;
        if DSetVisitLabor.Modified then DSetVisitLabor.Cancel;
        if DSetVisitExamin.Modified then DSetVisitExamin.Cancel;
        if DSetVisitBlob.Modified then DSetVisitBlob.Cancel;
      end;
    Close;
  end;
end;

//----------------------------------------------------------------------------
//сохраняем изменения (нажатие на кнопку "Сохранить")
procedure TFrmStatusPat.BtnSaveClick(Sender: TObject);
var TmpID, i, LenStr, Old_VarID_Tbl_VisitMain: Integer;
    TmpStr, Tstr: string;
    TmpRE: TRichEdit;//рич-эдит для служебных нужд

    msComplaints, msSecretStuff, msStPraesens, msStLocalis, msStProstata,
    msLues, msBlood, msAIDS, msSperm,
    msUrethBactInoc, msUrinBactInoc, msProstBactInoc, msMicUrBactInoc,
    msOAM, msMazUrethra, msMazProst, msIFA, msPCR, msUZIRen, msUZIGenit, msUrScopiaDry,
    msUrScopiaIrrig, msDrugs, msManip, msDs, msRecom: TMemoryStream;

begin
TmpID:= 0;
LenStr:= 0;
TmpStr:= '';
Tstr:= '';
Old_VarID_Tbl_VisitMain:= VarID_Tbl_VisitMain;//запомним старое значение
SenderTag:= 665;//присвоим уникальный номер этой кнопке-сендеру

//проверяем, не успел ли кто удалить текущую запись, пока мы ее редактируем
if not VisitPatientFlag then//если запись редактируется
  with DSetStPatTmp do
    begin
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT VM.ID_VISITMAIN FROM TBL_VISITMAIN VM WHERE VM.ID_VISITMAIN = :prmVM_ID';
      Prepare;
      ParamByName('prmVM_ID').Value:= DMFIB.DSetSinglePat.FN('ID_VISITMAIN').Value;
      Open;
      VisitPatientFlag:= IsEmpty;//если набор пуст, то автоматически сделаем запись добавляемой
    end;

//проверяем заполненность DBLookUpCB с докторами
//if DMFIB.DSetTemp.Active then
//  begin
//    if DMFIB.DSetTemp.IsEmpty then
//      begin
//      PgCtrlVisit.ActivePageIndex:= 0;//листаем на вкладку с ЛукАпом
//      Application.MessageBox('Заполните таблицу докторов!', 'Недостаточно данных!',
//                              MB_OK + MB_ICONWARNING);
//      DBLookupCBDocChoice.SetFocus;
//      Abort;
//      end;
//
//    with DSetStPatTmp do
//      begin
//        if Active then Close;
//        SQLs.SelectSQL.Clear;
//        SQLs.SelectSQL.Text:= 'SELECT ID_DOCTOR FROM TBL_DOCTOR WHERE ID_DOCTOR = :prmID_DOCTOR';
//        Prepare;
//        ParamByName('prmID_DOCTOR').Value:= DBLookupCBDocChoice.KeyValue;
//        Open;
//      end;
//  end;

//проверяем заполненность DBLookUpCB с ЛПУ
//if DMFIB.DSetLookUpClin.Active then
//  begin
//    if DMFIB.DSetLookUpClin.IsEmpty then
//      begin
//      PgCtrlVisit.ActivePageIndex:= 0;//листаем на вкладку с ЛукАпом
//      Application.MessageBox('Заполните таблицу ЛПУ!', 'Недостаточно данных!',
//                              MB_OK + MB_ICONWARNING);
//      DBLookupCBClinChoice.SetFocus;
//      Abort;
//      end;
//
//    with DSetStPatTmp do
//      begin
//        if Active then Close;
//        SQLs.SelectSQL.Clear;
//        SQLs.SelectSQL.Text:= 'SELECT ID_CLINIC FROM TBL_CLINIC WHERE ID_CLINIC = :prmID_CLINIC';
//        Prepare;
//        ParamByName('prmID_CLINIC').Value:= DBLookupCBClinChoice.KeyValue;
//        Open;
//      end;
//  end;

if VisitPatientFlag //если добавляем данные
  then //проверим, нет ли уже у пациента визитов к данному врачу за это число
    //если есть
    if ChkExistsDateVisit(DTPickPriem.DateTime,DMFIB.DSetAnketa.FN('ID_ANKETA').Value,
                                                                      DBLookupCBDocChoice.KeyValue)
      then //предупредим (внутри функции) об этом и вернемся назад
        Abort;

//сопоставляем курсоры в "запараллеленных" таблицах
with DMFIB, DSetSinglePat do
  begin
    DSSinglePatDataChange(Sender,FN('ID_VISITMAIN'));
  end;{with}

//запоминаем ID использованных справочников глобально
VarID_Tbl_Clinic:= DBLookupCBClinChoice.KeyValue;
VarID_Tbl_Doctor:= DBLookupCBDocChoice.KeyValue;

(************************ начало транзакции **************************)
with DMFIB do
  begin
    WriteTransVisit.StartTransaction;
    try

    with DSetVisitMain do
      begin
        if VisitPatientFlag//если выбран пункт меню "Добавить"
          then //то добавляем запись к таблице
            begin
              DSetVisitMain.Insert;
              TmpID:= DSetVisitMain.FN('ID_VISITMAIN').AsInteger;
              VarID_Tbl_VisitMain:= TmpID;//запомним новое значение ID
            end
          else // иначе редактируем текущую запись
            DSetVisitMain.Edit;

        //однозначно "столбим" запись в Tbl_VisitCompl за пациентом Tbl_Anketa
        FieldByName('Vis_LinkAnketa').AsInteger:=
                                        DSetTotalPat.FieldByName('ID_ANKETA').AsInteger;
        //запоминаем вкладку с жалобами
        FN('COMPLAINT_PAGEINDEX').AsInteger:= PgCtrlComplaint.ActivePageIndex;

        // ========== вкладка "Жалобы" ===========

        FieldByName('Vis_LinkDoctor').Value:= DBLookupCBDocChoice.KeyValue;
        FieldByName('Vis_LinkClinic').Value:= DBLookupCBClinChoice.KeyValue;
        FieldByName('DateVisit').AsDateTime:= DTPickPriem.Date;
        if RdBtnVisitPrimary.Checked
          then FieldByName('FirstVisit').AsInteger:= 1
          else FieldByName('FirstVisit').AsInteger:= 0;

        //>>> вкладка "Андрологические жалобы"
        //---- болевой синдром -----
        FieldByName('DolorPubica').AsInteger:= BoolConvertInt(ChkBoxDolorPubica.Checked);
        FieldByName('DolorPerineum').AsInteger:= BoolConvertInt(ChkBoxDolorPerineum.Checked);
        FieldByName('DolorInguinal').AsInteger:= BoolConvertInt(ChkBoxDolorInguinal.Checked);
        FieldByName('DolorTestis').AsInteger:= BoolConvertInt(ChkBoxDolorTestis.Checked);
        FieldByName('DolorLumbo').AsInteger:= BoolConvertInt(ChkBoxDolorLumbo.Checked);
        FieldByName('DolorSacrum').AsInteger:= BoolConvertInt(ChkBoxDolorSacrum.Checked);
        FN('BadSensUreth').AsInteger:= BoolConvertInt(ChkBoxBadSensUreth.Checked);
        FN('ColicSensUreth').AsInteger:= BoolConvertInt(ChkBoxColicSensUreth.Checked);
        FN('BadSensPerineum').AsInteger:= BoolConvertInt(ChkBoxBadSensPerineum.Checked);
        FN('ColicSensPerineum').AsInteger:= BoolConvertInt(ChkBoxColicSensPerineum.Checked);
        FN('DolorPenisDetumesc').AsInteger:= BoolConvertInt(ChkBoxDolorPenisDetumesc.Checked);
        FN('DolorPenisErect').AsInteger:= BoolConvertInt(ChkBoxDolorPenisErect.Checked);

        //----- дизурический синдром ------
        FieldByName('Pollakiuria').AsInteger:= BoolConvertInt(ChkBoxPollakiuria.Checked);
        FieldByName('MicciaCount').AsInteger:= SpEdtMicciaCount.Value;
        FieldByName('PollakiuriaAge').AsInteger:= SpEdtPollaciuriaAge.Value;
        FieldByName('POLLACIURIAPERIOD').AsInteger:= CbBoxPollaciuriaPeriod.ItemIndex;
        FieldByName('DolorMiccia').AsInteger:= BoolConvertInt(ChkBoxDolorMiccia.Checked);
        FieldByName('Nicturia').AsInteger:= BoolConvertInt(ChkBoxNicturia.Checked);
        FieldByName('NicturiaCount').AsInteger:= SpEdtNicturiaCount.Value;
        FieldByName('NicturiaAge').AsInteger:= SpEdtNicturiaAge.Value;
        FieldByName('NICTURIAPERIOD').AsInteger:= CbBoxNicturiaPeriod.ItemIndex;
        FieldByName('Stranguria').AsInteger:= BoolConvertInt(ChkBoxStranguria.Checked);
        FieldByName('VesUrinUncomplete').AsInteger:= BoolConvertInt(ChkBoxVesUrinUncomplete.Checked);
        FN('ISHURIA').AsInteger:= BoolConvertInt(ChkBoxIshuria.Checked);
        FN('INCONTINENCE').AsInteger:= BoolConvertInt(ChkBoxIncontinence.Checked);
        FN('INCONTINENCECASE').AsInteger:= CbBoxIncontinenceCase.ItemIndex;

        // ----- дизэякуляторный синдром -----
        FieldByName('FastEjacul').AsInteger:= BoolConvertInt(ChkBoxFastEjacul.Checked);
        FieldByName('AnEjacul').AsInteger:= BoolConvertInt(ChkBoxAnEjacul.Checked);
        FieldByName('DolorEjacul').AsInteger:= BoolConvertInt(ChkBoxDolorEjacul.Checked);
        FieldByName('BloodEjacul').AsInteger:= BoolConvertInt(ChkBoxBloodEjacul.Checked);
        FieldByName('IdleEjacul').AsInteger:= BoolConvertInt(ChkBoxIdleEjacul.Checked);
        FieldByName('SlowEjacul').AsInteger:= BoolConvertInt(ChkBoxSlowEjacul.Checked);

        //----- ипохондрический синдром -----
        FieldByName('LowLibido').AsInteger:= BoolConvertInt(ChkBoxLowLibido.Checked);
        FieldByName('LowTonus').AsInteger:= BoolConvertInt(ChkBoxLowTonus.Checked);
        FieldByName('LowVozbuzhd').AsInteger:= BoolConvertInt(ChkBoxLowVozbuzhd.Checked);

        //----- ирритативный синдром -----
        FieldByName('Discharge').AsInteger:= BoolConvertInt(ChkBoxDischarge.Checked);
        FieldByName('UrethAge').AsInteger:= SpEdtUrethAge.Value;

        if ChkBoxDischarge.Checked
          then
            begin
            FieldByName('DischargeNature').AsInteger:= CbBoxDischargeNature.ItemIndex;
            FieldByName('DischargeVolume').AsInteger:= CbBoxDischargeVolume.ItemIndex;
            FieldByName('DischargeRegul').AsInteger:= CbBoxDischargeRegul.ItemIndex;
            FieldByName('DischargeDurat').AsInteger:= CbBoxDischargeDurat.ItemIndex;
            end {if ChkBoxDischarge.Checked..then}
          else
            begin
            FieldByName('DischargeNature').AsInteger:= 0;
            FieldByName('DischargeVolume').AsInteger:= 0;
            FieldByName('DischargeRegul').AsInteger:= 0;
            FieldByName('DischargeDurat').AsInteger:= 0;
            end; {if ChkBoxDischarge.Checked..else}


        //----- сосудистый синдром -----
        FieldByName('LowErection').AsInteger:= BoolConvertInt(ChkBoxLowErection.Checked);
        FieldByName('SlowTumesc').AsInteger:= BoolConvertInt(ChkBoxSlowTumesc.Checked);
        FieldByName('BadErection').AsInteger:= BoolConvertInt(ChkBoxBadErection.Checked);
        FieldByName('MorningErection').AsInteger:= BoolConvertInt(ChkBoxMorningErection.Checked);

        FieldByName('NoErection').AsInteger:= BoolConvertInt(ChkBoxNoErection.Checked);
        FieldByName('PenisDeform').AsInteger:= BoolConvertInt(ChkBoxPenisDeform.Checked);
        FieldByName('Varicocele').AsInteger:= BoolConvertInt(ChkBoxVaricocele.Checked);
        FieldByName('VaricSide').AsInteger:= CbBoxVaricSide.ItemIndex;
        FieldByName('VaricPosit').AsInteger:= CbBoxVaricPosit.ItemIndex;


        //>>> вкладка "Урологические жалобы"
        //----- синдром интоксикации -----
        FieldByName('UR_ASTHENIA').AsInteger:= BoolConvertInt(ChkBoxUrAsthenia.Checked);
        FieldByName('UR_FLABBINESS').AsInteger:= BoolConvertInt(ChkBoxUrFlabbiness.Checked);
        FieldByName('UR_HYPERHIDROS').AsInteger:= BoolConvertInt(ChkBoxUrHyperhidros.Checked);
        FieldByName('UR_SUBFEBRIL').AsInteger:= BoolConvertInt(ChkBoxUrSubfebril.Checked);
        FieldByName('UR_TEMPER_INT').AsInteger:= CbBoxUrSubfebril.ItemIndex;

        //----- болевой синдром -----
        FieldByName('UR_DOLORLUMB').AsInteger:= BoolConvertInt(ChkBoxUrDolorLumb.Checked);
        FieldByName('UR_DOLORLUMB_INT').AsInteger:= CbBoxUrDolorLumb.ItemIndex;
        FieldByName('UR_DOLORSACR').AsInteger:= BoolConvertInt(ChkBoxUrDolorSacr.Checked);
        FieldByName('UR_DOLORMESOGASTR').AsInteger:= BoolConvertInt(ChkBoxUrDolorMesagastr.Checked);
        FieldByName('UR_DOLORMESOGASTR_INT').AsInteger:= CbBoxUrDolorMesogastr.ItemIndex;
        FieldByName('UR_DOLORHYPOGASTR').AsInteger:= BoolConvertInt(ChkBoxUrDolorHypogastr.Checked);
        FieldByName('UR_DOLORHYPOGASTR_INT').AsInteger:= CbBoxUrDolorHypogastr.ItemIndex;
        FieldByName('UR_DOLORPUBICA').AsInteger:= BoolConvertInt(ChkBoxUrDolorPubica.Checked);
        FieldByName('UR_DOLORIRRADIAT').AsInteger:= BoolConvertInt(ChkBoxUrDolorIrradiat.Checked);
        FieldByName('UR_DOLORIRRADIAT_INT').AsInteger:= CbBoxUrDolorIrradiat.ItemIndex;

        //----- дизурический синдром ----- 
        FieldByName('UR_COLIC').AsInteger:= BoolConvertInt(ChkBoxUrColic.Checked);
        FieldByName('UR_POLLAC').AsInteger:= BoolConvertInt(ChkBoxUrPollac.Checked);
        FieldByName('UR_POLLACCOUNT').AsInteger:= SpEdtUrPollacCount.Value;
        FieldByName('UR_POLLACAGE').AsInteger:= SpEdtUrPollacAge.Value;

        FieldByName('UrPollacPeriod').AsInteger:= CbBoxUrPollacPeriod.ItemIndex;
        FieldByName('UrNictPeriod').AsInteger:= CbBoxUrNictPeriod.ItemIndex;

        FieldByName('UR_NICTURIA').AsInteger:= BoolConvertInt(ChkBoxUrNicturia.Checked);
        FieldByName('UR_NICTURIACOUNT').AsInteger:= SpEdtUrNictCount.Value;
        FieldByName('UR_NICTURIAAGE').AsInteger:= SpEdtUrNictAge.Value;
        FieldByName('UR_NOTFULLVESIC').AsInteger:= BoolConvertInt(ChkBoxUrNotFullVesic.Checked);
        FieldByName('UR_SEDIMENT').AsInteger:= BoolConvertInt(ChkBoxUrSediment.Checked);
        FieldByName('UR_FLAKES').AsInteger:= BoolConvertInt(ChkBoxUrFlakes.Checked);
        FieldByName('UR_BLOODDASH').AsInteger:= BoolConvertInt(ChkBoxUrBloodDash.Checked);
        FieldByName('UR_BLOODDASH_INT').AsInteger:= CbBoxUrBloodDash.ItemIndex;

        //>>> вкладка "Прочие"
        FN('ANOTHPREVCHECKUP').AsInteger:= BoolConvertInt(RdBtnAnothPrevCheckup.Checked);
        FN('ANOTHPREVTREAT').AsInteger:= BoolConvertInt(RdBtnAnothPrevTreat.Checked);
        FN('ANOTHPLANGRAVID').AsInteger:= BoolConvertInt(RdBtnAnothPlanGravid.Checked);
        FN('ANOTHCONTRCHECKUP').AsInteger:= BoolConvertInt(RdBtnAnothContrCheckup.Checked);
        FN('ANOTHPLANTREAT').AsInteger:= BoolConvertInt(RdBtnAnothPlanTreat.Checked);
        FN('AnothResrchRezlt').AsInteger:= BoolConvertInt(RdBtnAnothResrchRezlt.Checked);


        //список номер диагнозов пациента оп МКБ-10 для облегчения последующего поиска
        FN('DS_RECNUMBER').AsString:= Trim(DsMKBnumberID);

        // =============== лист обследования на сифилис ==================
        FieldByName('LVisus').AsInteger:= VarLVisus;
        FieldByName('LOtis').AsInteger:= VarLOtis;
        FieldByName('LMemor').AsInteger:= VarLMemor;
        FieldByName('LTaxis').AsInteger:= VarLTaxis;

        FieldByName('HAllopecia').AsInteger:= VarHAllopecia;
        FieldByName('HPapula').AsInteger:= VarHPapula;
        FieldByName('HPustula').AsInteger:= VarHPustula;
        FieldByName('HKorochka').AsInteger:= VarHKorochka;

        FieldByName('TMakula').AsInteger:= VarTMakula;
        FieldByName('TPapula').AsInteger:= VarTPapula;
        FieldByName('TErozia').AsInteger:= VarTErozia;
        FieldByName('TUlcer').AsInteger:= VarTUlcer;
        FieldByName('TAngina').AsInteger:= VarTAngina;
        FieldByName('TMindal').AsInteger:= VarTMindal;

        FieldByName('LipPapula').AsInteger:= VarLipPapula;
        FieldByName('LipZaeda').AsInteger:= VarLipZaeda;
        FieldByName('LipErozia').AsInteger:= VarLipErozia;
        FieldByName('LipUlcer').AsInteger:= VarLipUlcer;
        FieldByName('PhonemaSound').AsInteger:= VarPhonemaSound;

        FieldByName('LdiCervix').AsInteger:= VarLdiCervix;
        FieldByName('LdiSubLing').AsInteger:= VarLdiSubLing;
        FieldByName('LdiAxillar').AsInteger:= VarLdiAxillar;
        FieldByName('LdiUlnar').AsInteger:= VarLdiUlnar;
        FieldByName('LdiInguinal').AsInteger:= VarLdiInguinal;

        FieldByName('SellaNos').AsInteger:= VarSellaNos;
        FieldByName('PalatumGotica').AsInteger:= VarPalatumGotica;
        FieldByName('GetchinsonZub').AsInteger:= VarGetchinsonZub;
        FieldByName('ProcessusMetch').AsInteger:= VarProcessusMetch;
        FieldByName('SableGolen').AsInteger:= VarSableGolen;

        // ================= вкладка "Анамнез" ==================

        //----- сформируем текст жалоб, если не пошли дальше первой вкладки
        //      и сразу нажали кнопку "Сохранить"
        if (AnamListNo = 0) and VisitPatientFlag then
          begin
            ReadyComplaintsText(Sender);//генерируем текст жалоб
            RichEditComplaints.Text:= TextComplaint;//заполняем лист жалоб
          end;

        //пометка, указывать ли в амб.карте секретные сведения
        FN('CHKSECRET_STUFF').AsInteger:= BoolConvertInt(ChkBoxSecretStuff.Checked);

        FN('ALLERGY_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamAllergy.Text),999);
        FN('ANAMANTHRDES_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamAnthrDes.Text),999);
        FN('ANAMCHLDDES_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAnamChldDes.Text),999);
        FN('ANDRZPPP_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtAndrZPPP.Text),999);
        FN('GINZPPP_STRRICHMEMO').AsString:= LeftStr(Trim(RchEdtGinZPPP.Text),999);

        //==== общий анамнез ====
        FN('ANAMNESALLERGY_CHK').AsInteger:= BoolConvertInt(ChkBoxAnamnesAllergy.Checked);
        FN('ALLERGY').AsInteger:= BoolConvertInt(RdBtnAllergyNo.Checked);
        FN('BADHABIT_CHK').AsInteger:= BoolConvertInt(ChkBoxBadHabit.Checked);
        FN('ANAMSMOKE').AsInteger:= BoolConvertInt(ChkBoxAnamSmoke.Checked);
        FN('SIGARCOUNT').AsInteger:= SpnEdtSigarCount.Value;
        FN('SMOKEAGE').AsInteger:= SpnEdtSmokeAge.Value;
        FN('SMOKEPERIOD').AsInteger:= CbBoxSmokePeriod.ItemIndex;
        FN('ANAMALKOHOL').AsInteger:= BoolConvertInt(ChkBoxAmanAlkohol.Checked);

        // ===== андрологический анамнез ====
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

        //==== гинекологический анамнез ====
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


        if DSetVisitMain.Modified then DSetVisitMain.Post;
      end;{with DSetVisitMain do}

    with DSetVisitLabor do
      begin
        // ================= Вкладка "Лабораторные исследования" =======================

        if VisitPatientFlag//если выбран пункт меню "Добавить"
          then //то добавляем запись к таблице
            begin
              DSetVisitLabor.Insert;
              DSetVisitLabor.FN('ID_VISITLABOR').AsInteger:= TmpID;//ПК в "параллельную" таблицу
            end
          else // иначе редактируем текущую запись
              DSetVisitLabor.Edit;

        //запоминает номер страницы-вкладки лаб.исследований
        FN('PGCTRL_LABRES_INDEX').AsInteger:= PgCtrlLabResearch.ActivePageIndex;

        //----- сохраняем анализы ПЦР
        FieldByName('ChkRW').AsInteger:= VarChkRW;
        FieldByName('RW').AsInteger:= VarRW;

        FieldByName('ChkAIDS').AsInteger:= VarChkAIDS;
        FieldByName('AIDS').AsInteger:= VarAIDS;
        FieldByName('DateAIDS').AsDateTime:= VarDateAIDS;

        FieldByName('ChkHBsAg').AsInteger:= VarChkHBsAg;
        FieldByName('HBsAg').AsInteger:= VarHBsAg;

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

        //сохраняем булевы поля ПЦР
        FieldByName('PCRDate').AsDateTime:= VarPCRDate;

        FieldByName('GnAn').AsInteger:= VarGnAn;
        FieldByName('GnRez').AsInteger:= VarGnRez;

        FieldByName('TrAn').AsInteger:= VarTrAn;
        FieldByName('TrRez').AsInteger:= VarTrRez;

        FieldByName('ChlamAn').AsInteger:= VarChlamAn;
        FieldByName('ChlamRez').AsInteger:= VarChlamRez;

        FieldByName('UrAn').AsInteger:= VarUrAn;
        FieldByName('UrRez').AsInteger:= VarUrRez;

        FieldByName('MicHomAn').AsInteger:= VarMicHomAn;
        FieldByName('MicHomRez').AsInteger:= VarMicHomRez;

        FieldByName('MicGenAn').AsInteger:= VarMicGenAn;
        FieldByName('MicGenRez').AsInteger:= VarMicGenRez;

        FieldByName('GardAn').AsInteger:= VarGardAn;
        FieldByName('GardRez').AsInteger:= VarGardRez;

        FieldByName('CMVAn').AsInteger:= VarCMVAn;
        FieldByName('CMVRez').AsInteger:= VarCMVRez;

        FieldByName('VHSAn').AsInteger:= VarVHSAn;
        FieldByName('VHSRez').AsInteger:= VarVHSRez;

        FieldByName('PHVAn').AsInteger:= VarPHVAn;
        FieldByName('PHVRez').AsInteger:= VarPHVRez;

        FN('PHVANHIGH').AsInteger:= VarPHVAnHigh;
        FN('PHVREZHIGH').AsInteger:= VarPHVRezHigh;

        FieldByName('TubAn').AsInteger:= VarTubAn;
        FieldByName('TubRez').AsInteger:= VarTubRez;

        FieldByName('CandAn').AsInteger:= VarCandAn;
        FieldByName('CandRez').AsInteger:= VarCandRez;

        //сохраняем результаты ИФА
        FieldByName('IFADate').AsDateTime:= VarIFADate;

        FieldByName('IFAChlIgA').AsInteger:=  VarIFAChlIgA;
        FieldByName('IFAChlIgG').AsInteger:= VarIFAChlIgG;
        FieldByName('IFAChlIgGb').AsInteger:= VarIFAChlIgGb;

        FieldByName('IFAMicIgG').AsInteger:= VarIFAMicIgG;
        FieldByName('IFAMicIgA').AsInteger:= VarIFAMicIgA;

        FieldByName('IFAUrIgG').AsInteger:= VarIFAUrIgG;
        FieldByName('IFAUrIgA').AsInteger:= VarIFAUrIgA;

        FieldByName('IFATrIgG').AsInteger:= VarIFATrIgG;

        FieldByName('IFACMVIgM').AsInteger:= VarIFACMVIgM;
        FieldByName('IFACMVIgG').AsInteger:= VarIFACMVIgG;
        FieldByName('IFACMVIgGavid').AsInteger:= VarIFACMVIgGavid;

        FieldByName('IFAHerpIgM').AsInteger:= VarIFAHerpIgM;
        FieldByName('IFAHerpIgG').AsInteger:= VarIFAHerpIgG;
        FieldByName('IFAHerpIgGavid').AsInteger:= VarIFAHerpIgGavid;

        FieldByName('IFACandIgG').AsInteger:= VarIFACandIgG;

          //---номера ItemIndex соответствующих комбобоксов

        FieldByName('NumIFAChlIgA').AsInteger:= VarNumIFAChlIgA;
        FieldByName('NumIFAChlIgG').AsInteger:= VarNumIFAChlIgG;
        FieldByName('NumIFAChlIgGb').AsInteger:= VarNumIFAChlIgGb;

        FieldByName('NumIFAMicIgG').AsInteger:= VarNumIFAMicIgG;
        FieldByName('NumIFAMicIgA').AsInteger:= VarNumIFAMicIgA;

        FieldByName('NumIFAUrIgG').AsInteger:= VarNumIFAUrIgG;
        FieldByName('NumIFAUrIgA').AsInteger:= VarNumIFAUrIgA;

        FieldByName('NumIFATrIgG').AsInteger:= VarNumIFATrIgG;

        FieldByName('NumIFACMVIgM').AsInteger:= VarNumIFACMVIgM;
        FieldByName('NumIFACMVIgG').AsInteger:= VarNumIFACMVIgG;
        FieldByName('NumIFACMVIgGavid').AsInteger:= VarNumIFACMVIgGavid;

        FieldByName('NumIFAHerpIgM').AsInteger:= VarNumIFAHerpIgM;
        FieldByName('NumIFAHerpIgG').AsInteger:= VarNumIFAHerpIgG;
        FieldByName('NumIFAHerpIgGavid').AsInteger:= VarNumIFAHerpIgGavid;

        FieldByName('NumIFACandIgG').AsInteger:= VarNumIFACandIgG;


        //----- сохраняем анализы мочи
        FieldByName('OAMDate').AsDateTime:= VarOAMDate;
        FieldByName('OAMColor').AsInteger:= VarOAMColor;
        FieldByName('OAMTransparent').AsInteger:= VarOAMTransparent;
        FieldByName('OAMDensity').AsString:= Trim(VarOAMDensity);
        FieldByName('OAMSugar').AsInteger:= VarOAMSugar;
        FieldByName('OAMProtein').AsInteger:= VarOAMProtein;
        FieldByName('OAMLeu').AsString:= Trim(VarOAMLeu);
        FieldByName('OAMEr').AsString:= Trim(VarOAMEr);
        FieldByName('OAMEpit').AsString:= Trim(VarOAMEpit);
        FieldByName('OAMSalt').AsString:= Trim(VarOAMSalt);
        FieldByName('OAMFlora').AsString:= Trim(VarOAMFlora);
        FieldByName('OAMVolume').AsString:= Trim(VarOAMVolume);
        FieldByName('OAMSmell').AsString:= Trim(VarOAMSmell);
        FieldByName('OAMResiduum').AsString:= Trim(VarOAMResiduum);
        FieldByName('OAM_pH').AsString:= Trim(VarOAM_pH);
        FieldByName('OAMAceticAcid').AsString:= Trim(VarOAMAceticAcid);
        FieldByName('OAMBilifuscin').AsString:= Trim(VarOAMBilifuscin);
        FieldByName('OAMAceton').AsString:= Trim(VarOAMAceton);
        FieldByName('OAMUrobilin').AsString:= Trim(VarOAMUrobilin);
        FieldByName('OAMCylindr').AsString:= Trim(VarOAMCylindr);
        FieldByName('OAMMucos').AsString:= Trim(VarOAMMucos);

        FieldByName('NechiporDate').AsDateTime:= VarNechiporDate;
        FieldByName('NechiporLeu').AsString:= Trim(VarNechiporLeu);
        FieldByName('NechiporEr').AsString:= Trim(VarNechiporEr);
        FieldByName('NechiporFlora').AsString:= Trim(VarNechiporFlora);

        //----- сохраняем мазок из уретры
        FieldByName('MazUrethraDate').AsDateTime:= VarMazUrethraDate;
        FieldByName('MazUrLeu').AsString:= Trim(VarMazUrLeu);
        FieldByName('MazUrEr').AsString:= Trim(VarMazUrEr);
        FieldByName('MazUrGn').AsInteger:= VarMazUrGn;
        FieldByName('MazUrTr').AsInteger:= VarMazUrTr;
        FieldByName('MazUrFlora').AsInteger:= VarMazUrFlora;
        FieldByName('MazUrEpit').AsString:= VarMazUrEpit;
        FieldByName('MazUrKeyCell').AsInteger:= VarMazUrKeyCell;
        FieldByName('MazUrCand').AsInteger:= VarMazUrCand;
        FieldByName('MazUrMucos').AsString:= VarMazUrMucos;

        //----- сохраняем мазок из шейки матки
        FieldByName('MazCvxLeu').AsString:= Trim(VarMazCvxLeu);
        FieldByName('MazCvxEr').AsString:= Trim(VarMazCvxEr);
        FieldByName('MazCvxGn').AsInteger:= VarMazCvxGn;
        FieldByName('MazCvxTr').AsInteger:= VarMazCvxTr;
        FieldByName('MazCvxFlora').AsInteger:= VarMazCvxFlora;
        FieldByName('MazCvxEpit').AsString:= VarMazCvxEpit;
        FieldByName('MazCvxKeyCell').AsInteger:= VarMazCvxKeyCell;
        FieldByName('MazCvxCand').AsInteger:= VarMazCvxCand;
        FieldByName('MazCvxMucos').AsString:= VarMazCvxMucos;

        //----- сохраняем мазок из влагалища
        FieldByName('MazVgnLeu').AsString:= Trim(VarMazVgnLeu);
        FieldByName('MazVgnEr').AsString:= Trim(VarMazVgnEr);
        FieldByName('MazVgnGn').AsInteger:= VarMazVgnGn;
        FieldByName('MazVgnTr').AsInteger:= VarMazVgnTr;
        FieldByName('MazVgnFlora').AsInteger:= VarMazVgnFlora;
        FieldByName('MazVgnEpit').AsString:= VarMazVgnEpit;
        FieldByName('MazVgnKeyCell').AsInteger:= VarMazVgnKeyCell;
        FieldByName('MazVgnCand').AsInteger:= VarMazVgnCand;
        FieldByName('MazVgnMucos').AsString:= VarMazVgnMucos;

        //----- сохраняем мазок из прямой кишки
        FieldByName('MazRectLeu').AsString:= Trim(VarMazRectLeu);
        FieldByName('MazRectEr').AsString:= Trim(VarMazRectEr);
        FieldByName('MazRectGn').AsInteger:= VarMazRectGn;
        FieldByName('MazRectTr').AsInteger:= VarMazRectTr;
        FieldByName('MazRectFlora').AsInteger:= VarMazRectFlora;
        FieldByName('MazRectEpit').AsString:= VarMazRectEpit;
        FieldByName('MazRectKeyCell').AsInteger:= VarMazRectKeyCell;
        FieldByName('MazRectCand').AsInteger:= VarMazRectCand;
        FieldByName('MazRectMucos').AsString:= VarMazRectMucos;

        //----- сохраняем мазок сока простаты
        FieldByName('MazProstDate').AsDateTime:= VarMazProstDate;
        FieldByName('MazProstLeu').AsString:= Trim(VarMazProstLeu);
        FieldByName('MazProstEr').AsString:= Trim(VarMazProstEr);
        FieldByName('MazProstGn').AsInteger:= VarMazProstGn;
        FieldByName('MazProstTr').AsInteger:= VarMazProstTr;
        FieldByName('MazProstFlora').AsInteger:= VarMazProstFlora;
        FieldByName('MazProstLZ').AsInteger:= VarMazProstLZ;
        FieldByName('MazProstBekht').AsInteger:= VarMazProstBekht;
        FieldByName('MazProstSperm').AsInteger:= VarMazProstSperm;
        FieldByName('MazProstEpit').AsString:= VarMazProstEpit;
        FieldByName('MazProstMFag').AsString:= VarMazProstMFag;
        FieldByName('MazProstAmil').AsString:= VarMazProstAmil;
        FieldByName('MazProst_pH').AsString:= VarMazProst_pH;

        //------- записываем текущие значения переменных спермограммы

        FieldByName('SpermDate').AsDateTime:= VarSpermDate;
        FieldByName('SpermVolume').AsString:= Trim(VarSpermVolume);
        FieldByName('SpermColor').AsString:= Trim(VarSpermColor);
        FieldByName('Sperm_pH').AsString:= Trim(VarSperm_pH);
        FieldByName('SpermViscosity').AsString:= Trim(VarSpermViscosity);
        FieldByName('SpermFluid').AsString:= Trim(VarSpermFluid);
        FieldByName('SpermLeu').AsString:= Trim(VarSpermLeu);
        FieldByName('SpermEr').AsString:= Trim(VarSpermEr);
        FieldByName('SpermLipoidSoma').AsString:= Trim(VarSpermLipoidSoma);
        FieldByName('SpermAgglut').AsString:= Trim(VarSpermAgglut);
        FieldByName('SpermAggreg').AsString:= Trim(VarSpermAggreg);
        FieldByName('SpermEpitel').AsString:= Trim(VarSpermEpitel);
        FieldByName('SpermAbstinence').AsString:= Trim(VarSpermAbstinence);
        FieldByName('SpermConcentr').AsString:= Trim(VarSpermConcentr);
        FieldByName('SpermTotal').AsString:= Trim(VarSpermTotal);
        FieldByName('SpermFastForwMove').AsString:= Trim(VarSpermFastForwMove);
        FieldByName('SpermSlowForwMove').AsString:= Trim(VarSpermSlowForwMove);
        FieldByName('SpermRollMove').AsString:= Trim(VarSpermRollMove);
        FieldByName('SpermStaticMove').AsString:= Trim(VarSpermStaticMove);
        FieldByName('SpermReport').AsInteger:= VarSpermReport;

        FieldByName('KrugDate').AsDateTime:= VarKrugDate;
        FieldByName('KrugNorma').AsString:= Trim(VarKrugNorma);
        FieldByName('KrugCapCoarse').AsString:= Trim(VarKrugCapCoarse);
        FieldByName('KrugCapSlight').AsString:= Trim(VarKrugCapSlight);
        FieldByName('KrugCapSpecif').AsString:= Trim(VarKrugCapSpecif);
        FieldByName('KrugCollumCoarse').AsString:= Trim(VarKrugCollumCoarse);
        FieldByName('KrugCollumSlight').AsString:= Trim(VarKrugCollumSlight);
        FieldByName('KrugBrush').AsString:= Trim(VarKrugBrush);
        FieldByName('KrugSpermCell').AsString:= Trim(VarKrugSpermCell);
        FieldByName('KrugYoungCell').AsString:= Trim(VarKrugYoungCell);
        FieldByName('KrugMorphIndex').AsString:= Trim(VarKrugMorphIndex);
        FieldByName('KrugNotice').AsString:= Trim(VarKrugNotice);

        FieldByName('SpermBiochemicDate').AsDateTime:= VarSpermBiochemicDate;
        FieldByName('SpermBiochemicFruct').AsString:= Trim(VarSpermBiochemicFruct);
        FieldByName('SpermBiochemicGlyc').AsString:= Trim(VarSpermBiochemicGlyc);

        FieldByName('MARDate').AsDateTime:= VarMARDate;
        FieldByName('MAR').AsString:= Trim(VarMAR);

        FieldByName('SpermVitalDate').AsDateTime:= VarSpermVitalDate;
        FieldByName('SpermVitalTest').AsString:= Trim(VarSpermVitalTest);
        FieldByName('SpermVitalHOS').AsString:= Trim(VarSpermVitalHOS);

      //------- записываем текущие значения переменных анализов крови

        //запоминаем номер открывавшейся вкладки формы с анализами крови
        FN('PGCTRL_BLOODHORM_INDEX').AsInteger:= VarPgCtrlBloodHorm;

        //--- общий анализ крови
        FieldByName('OAKDate').AsDateTime:= VarOAKDate;
        FieldByName('OAKHb').AsString:= Trim(VarOAKHb);
        FieldByName('OAKEr').AsString:= Trim(VarOAKEr);
        FieldByName('OAKColourIndex').AsString:= Trim(VarOAKColourIndex);
        FieldByName('OAKTromb').AsString:= Trim(VarOAKTromb);
        FieldByName('OAKLeu').AsString:= Trim(VarOAKLeu);
        FieldByName('OAKLeuYoung').AsString:= Trim(VarOAKLeuYoung);
        FieldByName('OAKLeuStab').AsString:= Trim(VarOAKLeuStab);
        FieldByName('OAKLeuSegment').AsString:= Trim(VarOAKLeuSegment);
        FieldByName('OAKLymph').AsString:= Trim(VarOAKLymph);
        FieldByName('OAKMonocyte').AsString:= Trim(VarOAKMonocyte);
        FieldByName('OAKEosinophil').AsString:= Trim(VarOAKEosinophil);
        FieldByName('OAKBasophil').AsString:= Trim(VarOAKBasophil);
        FieldByName('OAKSOE').AsString:= Trim(VarOAKSOE);
        FieldByName('OAKCoagul').AsString:= Trim(VarOAKCoagul);
        FieldByName('OAKHemorrhagTime').AsString:= Trim(VarOAKHemorrhagTime);
        FieldByName('OAKReticulocyte').AsString:= Trim(VarOAKReticulocyte);
        FieldByName('OAKGlucosaCapill').AsString:= Trim(VarOAKGlucosaCapill);
        FieldByName('OAKEosinSliz').AsString:= Trim(VarOAKEosinSliz);
        FieldByName('OAKHmtc').AsString:= Trim(VarOAKHmtc);

        //--- биохимия крови
        FieldByName('BloodBioDate').AsDateTime:= VarBloodBioDate;
        FieldByName('BloodBioALT').AsString:= Trim(VarBloodBioALT);
        FieldByName('BloodBioAST').AsString:= Trim(VarBloodBioAST);
        FieldByName('BloodBioProtein').AsString:= Trim(VarBloodBioProtein);
        FieldByName('BloodBioBiTotal').AsString:= Trim(VarBloodBioBiTotal);
        FieldByName('BloodBioBiDirect').AsString:= Trim(VarBloodBioBiDirect);
        FieldByName('BloodBioCholest').AsString:= Trim(VarBloodBioCholest);
        FieldByName('BloodBioSodiumFosf').AsString:= Trim(VarBloodBioSodiumFosf);
        FieldByName('BloodBioGGT').AsString:= Trim(VarBloodBioGGT);
        FieldByName('BloodBioLPVP').AsString:= Trim(VarBloodBioLPVP);
        FieldByName('BloodBioLPNP').AsString:= Trim(VarBloodBioLPNP);
        FieldByName('BloodBioMochevina').AsString:= Trim(VarBloodBioMochevina);
        FieldByName('BloodBioUricAcid').AsString:= Trim(VarBloodBioUricAcid);
        FieldByName('BloodBioCreatinin').AsString:= Trim(VarBloodBioCreatinin);
        FieldByName('BloodBioAlbumin').AsString:= Trim(VarBloodBioAlbumin);
        FieldByName('BloodBioGlucosa').AsString:= Trim(VarBloodBioGlucosa);
        FieldByName('BloodBioTriglyc').AsString:= Trim(VarBloodBioTriglyc);
        FieldByName('BloodBioCalcium').AsString:= Trim(VarBloodBioCalcium);
        FieldByName('BloodBioPhosphor').AsString:= Trim(VarBloodBioPhosphor);
        FieldByName('BloodBioFerrum').AsString:= Trim(VarBloodBioFerrum);
        FieldByName('BloodBioOZhSS').AsString:= Trim(VarBloodBioOZhSS);

        //--- гормоны крови
        FieldByName('HormSterDate').AsDateTime:= VarHormSterDate;
        FieldByName('HormLG').AsString:= Trim(VarHormLG);
        FieldByName('HormFSG').AsString:= Trim(VarHormFSG);
        FieldByName('HormProlactin').AsString:= Trim(VarHormProlactin);
        FieldByName('HormEstradiol').AsString:= Trim(VarHormEstradiol);
        FieldByName('HormProgest').AsString:= Trim(VarHormProgest);
        FieldByName('HormTestosterTotal').AsString:= Trim(VarHormTestosterTotal);
        FieldByName('HormDGEAS').AsString:= Trim(VarHormDGEAS);
        FieldByName('HormProgest_17OH').AsString:= Trim(VarHormProgest_17OH);
        FieldByName('HormTestosterFree').AsString:= Trim(VarHormTestosterFree);
        FieldByName('HormSSSG').AsString:= Trim(VarHormSSSG);

        FieldByName('HormTireoidDate').AsDateTime:= VarHormTireoidDate;
        FieldByName('HormT4_Total').AsString:= Trim(VarHormT4_Total);
        FieldByName('HormT4_Free').AsString:= Trim(VarHormT4_Free);
        FieldByName('HormT3_Total').AsString:= Trim(VarHormT3_Total);
        FieldByName('HormT3_Free').AsString:= Trim(VarHormT3_Free);
        FieldByName('HormTTG').AsString:= Trim(VarHormTTG);
        FieldByName('HormKortizol').AsString:= Trim(VarHormKortizol);
        FieldByName('HormTireoglob_At').AsString:= Trim(VarHormTireoglob_At);
        FieldByName('HormTireoPerox_At').AsString:= Trim(VarHormTireoPerox_At);
        FieldByName('HormInhibin_B').AsString:= Trim(VarHormInhibin_B);

        //--- онкомаркеры
        FN('ONKOMARKDATE').AsDateTime:= VarOnkomarkDate;
        FN('PSA_TOTAL').AsString:= Trim(VarPSA_Total);
        FN('PSA_FREE').AsString:= Trim(VarPSA_Free);
        FN('PSA_RATIO').AsString:= Trim(VarPSA_Ratio);

        //--- электролиты
        FN('BLOODIONESDATE').AsDateTime:= VarBloodIonesDate;
        FN('IONES_NA').AsString:= Trim(VarIones_Na);
        FN('IONES_K').AsString:= Trim(VarIones_K);
        FN('IONES_CL').AsString:= Trim(VarIones_Cl);
        FN('IONES_CA').AsString:= Trim(VarIones_Ca);
        FN('IONESBLOOD_PH').AsString:= Trim(VarIonesBlood_pH);

        //--- бак.посев из уретры
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

        //--- бак.посев СПЖ
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

        //--- бак.посев уреаплазмы и микоплазмы
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

        //--- бак.посев мочи
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

        if DSetVisitLabor.Modified then DSetVisitLabor.Post;
      end;{with DSetVisitLabor do}

    with DSetVisitExamin do
      begin
        if VisitPatientFlag//если выбран пункт меню "Добавить"
          then //то добавляем запись к таблице
            begin
              DSetVisitExamin.Insert;
              DSetVisitExamin.FN('ID_VISITEXAMIN').AsInteger:= TmpID;//ПК в "параллельную" таблицу
            end
          else // иначе редактируем текущую запись
              DSetVisitExamin.Edit;

        FN('PGCTRLUZIGENIT').AsInteger:= VarPgCtrlUZIGenit;//сохраняем номер вкладки на форме с УЗИ гениталий

        //--- сохранение УЗИ почек
        FieldByName('UZIRenDate').AsDateTime:= VarUZIRenDate;
        FieldByName('BoolUZIRen').AsInteger:= VarBoolUZIRen;
        FieldByName('DextRen_01').AsString:= Trim(VarDextRen_01);
        FieldByName('DextRen_02').AsString:= Trim(VarDextRen_02);
        FieldByName('DextRen_03').AsString:= Trim(VarDextRen_03);
        FieldByName('DextRen_04').AsString:= Trim(VarDextRen_04);
        FieldByName('DextPielosSize').AsInteger:= VarDextPielosSize;
        FieldByName('DextPielosDens').AsInteger:= VarDextPielosDens;
        FieldByName('DextPielosDeform').AsInteger:= VarDextPielosDeform;
        FieldByName('DextPielosLytos').AsInteger:= VarDextPielosLytos;
        FieldByName('DextUreterSize').AsInteger:= VarDextUreterSize;
        FieldByName('DextUreterLytos').AsInteger:= VarDextUreterLytos;

        FieldByName('SinRen_01').AsString:= Trim(VarSinRen_01);
        FieldByName('SinRen_02').AsString:= Trim(VarSinRen_02);
        FieldByName('SinRen_03').AsString:= Trim(VarSinRen_03);
        FieldByName('SinRen_04').AsString:= Trim(VarSinRen_04);
        FieldByName('SinPielosSize').AsInteger:= VarSinPielosSize;
        FieldByName('SinPielosDens').AsInteger:= VarSinPielosDens;
        FieldByName('SinPielosDeform').AsInteger:= VarSinPielosDeform;
        FieldByName('SinPielosLytos').AsInteger:= VarSinPielosLytos;
        FieldByName('SinUreterSize').AsInteger:= VarSinUreterSize;
        FieldByName('SinUreterLytos').AsInteger:= VarSinUreterLytos;

        //---сохранение УЗИ мочевого пузыря
        FieldByName('UZIVesicUrDate').AsDateTime:= VarUZIVesicUrDate;
        FieldByName('BoolUZIVesicUr').AsInteger:= VarBoolUZIVesicUr;
        FieldByName('VesicUr_01').AsString:= Trim(VarVesicUr_01);
        FieldByName('VesicUr_02').AsString:= Trim(VarVesicUr_02);
        FieldByName('VesicUr_03').AsString:= Trim(VarVesicUr_03);
        FieldByName('VesicUr_04').AsString:= Trim(VarVesicUr_04);
        FieldByName('VesicUr_05').AsString:= Trim(VarVesicUr_05);
        FieldByName('VesicUrContents').AsInteger:= VarVesicUrContents;
        FieldByName('VesicUrLytos').AsInteger:= VarVesicUrLytos;
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

        //---сохранение УЗИ простаты
        FieldByName('UZIProstataDate').AsDateTime:= VarUZIProstataDate;
        FieldByName('BoolUZIProstata').AsInteger:= VarBoolUZIProstata;

        FieldByName('UZIProstContour').AsInteger:= VarUZIProstContour;
        FieldByName('UZIProstOutline').AsInteger:= VarUZIProstOutline;
        FieldByName('UZIProstStructure').AsInteger:= VarUZIProstStructure;
        FieldByName('UZIProstDensity').AsInteger:= VarUZIProstDensity;
        FieldByName('UZIProstFibrosis').AsInteger:= VarUZIProstFibrosis;
        FieldByName('UZIProstLytos').AsInteger:= VarUZIProstLytos;
        FieldByName('UZIProstCentrFocal').AsInteger:= VarUZIProstCentrFocal;
        FieldByName('UZIProstCentrDens').AsInteger:= VarUZIProstCentrDens;
        FieldByName('UZIProstPerifFocal').AsInteger:= VarUZIProstPerifFocal;
        FieldByName('UZIProstPerifDens').AsInteger:= VarUZIProstPerifDens;
        FieldByName('UZIVesSeminDextWall').AsInteger:= VarUZIVesSeminDextWall;
        FieldByName('UZIVesSeminDextDens').AsInteger:= VarUZIVesSeminDextDens;
        FieldByName('UZIVesSeminSinWall').AsInteger:= VarUZIVesSeminSinWall;
        FieldByName('UZIVesSeminSinDens').AsInteger:= VarUZIVesSeminSinDens;
        FN('UZIPROSTECHOGENDEXT').AsInteger:= VarUZIProstEchogenDext;
        FN('UZIPROSTECHOGENSIN').AsInteger:= VarUZIProstEchogenSin;
        FN('CHKUZIVESICSEMIN').AsInteger:= VarChkUZIVesicSemin;

        FieldByName('UZIProstSize_01').AsString:= Trim(VarUZIProstSize_01);
        FieldByName('UZIProstSize_02').AsString:= Trim(VarUZIProstSize_02);
        FieldByName('UZIProstSize_03').AsString:= Trim(VarUZIProstSize_03);
        FieldByName('UZIProstVolume').AsString:= Trim(VarUZIProstVolume);
        FieldByName('UZIProstResidUrine').AsString:= Trim(VarUZIProstResidUrine);
        FieldByName('UZIVesSeminDext_01').AsString:= Trim(VarUZIVesSeminDext_01);
        FieldByName('UZIVesSeminDext_02').AsString:= Trim(VarUZIVesSeminDext_02);
        FieldByName('UZIVesSeminSin_01').AsString:= Trim(VarUZIVesSeminSin_01);
        FieldByName('UZIVesSeminSin_02').AsString:= Trim(VarUZIVesSeminSin_02);


        //--- сохранение УЗИ мошонки
        FieldByName('UZITestisDate').AsDateTime:= VarUZITestisDate;
        FieldByName('BoolUZITestis').AsInteger:= VarBoolUZITestis;

        FieldByName('UZITestisDextPath').AsInteger:= VarUZITestisDextPath;
        FieldByName('UZITestisDextEdge').AsInteger:= VarUZITestisDextEdge;
        FieldByName('UZITestisDextStruct').AsInteger:= VarUZITestisDextStruct;
        FieldByName('UZITestisDextLiquid').AsInteger:= VarUZITestisDextLiquid;
        FieldByName('UZIEpididimDextPath').AsInteger:= VarUZIEpididimDextPath;
        FieldByName('UZIEpididimDextEdge').AsInteger:= VarUZIEpididimDextEdge;
        FieldByName('UZIEpididimDextStruct').AsInteger:= VarUZIEpididimDextStruct;
        FieldByName('UZIEpididimDextNidus').AsInteger:= VarUZIEpididimDextNidus;

        FieldByName('UZITestisSinPath').AsInteger:= VarUZITestisSinPath;
        FieldByName('UZITestisSinEdge').AsInteger:= VarUZITestisSinEdge;
        FieldByName('UZITestisSinStruct').AsInteger:= VarUZITestisSinStruct;
        FieldByName('UZITestisSinLiquid').AsInteger:= VarUZITestisSinLiquid;
        FieldByName('UZIEpididimSinPath').AsInteger:= VarUZIEpididimSinPath;
        FieldByName('UZIEpididimSinEdge').AsInteger:= VarUZIEpididimSinEdge;
        FieldByName('UZIEpididimSinStruct').AsInteger:= VarUZIEpididimSinStruct;
        FieldByName('UZIEpididimSinNidus').AsInteger:= VarUZIEpididimSinNidus;

        FieldByName('UZITestisDext_01').AsString:= Trim(VarUZITestisDext_01);
        FieldByName('UZITestisDext_02').AsString:= Trim(VarUZITestisDext_02);
        FieldByName('UZITestisDext_03').AsString:= Trim(VarUZITestisDext_03);
        FieldByName('UZITestisDext_04').AsString:= Trim(VarUZITestisDext_04);
        FieldByName('UZIEpididimDext_01').AsString:= Trim(VarUZIEpididimDext_01);
        FieldByName('UZIEpididimDext_02').AsString:= Trim(VarUZIEpididimDext_02);
        FieldByName('UZIEpididimDext_03').AsString:= Trim(VarUZIEpididimDext_03);
        FieldByName('UZIEpididimDext_04').AsString:= Trim(VarUZIEpididimDext_04);

        FieldByName('UZITestisSin_01').AsString:= Trim(VarUZITestisSin_01);
        FieldByName('UZITestisSin_02').AsString:= Trim(VarUZITestisSin_02);
        FieldByName('UZITestisSin_03').AsString:= Trim(VarUZITestisSin_03);
        FieldByName('UZITestisSin_04').AsString:= Trim(VarUZITestisSin_04);
        FieldByName('UZIEpididimSin_01').AsString:= Trim(VarUZIEpididimSin_01);
        FieldByName('UZIEpididimSin_02').AsString:= Trim(VarUZIEpididimSin_02);
        FieldByName('UZIEpididimSin_03').AsString:= Trim(VarUZIEpididimSin_03);
        FieldByName('UZIEpididimSin_04').AsString:= Trim(VarUZIEpididimSin_04);

        //--- сохранение УЗИ пениса
        FieldByName('UZIPenisDate').AsDateTime:= VarUZIPenisDate;
        FieldByName('BoolUZIPenis').AsInteger:= VarBoolUZIPenis;

        FieldByName('UZIPenisCavernStruct').AsInteger:= VarUZIPenisCavernStruct;
        FieldByName('UZIPenisCavernDensit').AsInteger:= VarUZIPenisCavernDensit;
        FieldByName('UZIPenisCavernInclus').AsInteger:= VarUZIPenisCavernInclus;
        FieldByName('UZIPenisAlbuginStruct').AsInteger:= VarUZIPenisAlbuginStruct;
        FieldByName('UZIPenisAlbuginThick').AsInteger:= VarUZIPenisAlbuginThick;

        FieldByName('UZIPenisArtCavDext_01').AsString:= Trim(VarUZIPenisArtCavDext_01);
        FieldByName('UZIPenisArtCavDext_02').AsString:= Trim(VarUZIPenisArtCavDext_02);
        FieldByName('UZIPenisArtCavDext_03').AsString:= Trim(VarUZIPenisArtCavDext_03);
        FieldByName('UZIPenisArtCavDext_04').AsString:= Trim(VarUZIPenisArtCavDext_04);
        FieldByName('UZIPenisArtCavDext_05').AsString:= Trim(VarUZIPenisArtCavDext_05);
        FieldByName('UZIPenisArtCavSin_01').AsString:= Trim(VarUZIPenisArtCavSin_01);
        FieldByName('UZIPenisArtCavSin_02').AsString:= Trim(VarUZIPenisArtCavSin_02);
        FieldByName('UZIPenisArtCavSin_03').AsString:= Trim(VarUZIPenisArtCavSin_03);
        FieldByName('UZIPenisArtCavSin_04').AsString:= Trim(VarUZIPenisArtCavSin_04);
        FieldByName('UZIPenisArtCavSin_05').AsString:= Trim(VarUZIPenisArtCavSin_05);

        FieldByName('UZIPenisArtDorsDext_01').AsString:= Trim(VarUZIPenisArtDorsDext_01);
        FieldByName('UZIPenisArtDorsDext_02').AsString:= Trim(VarUZIPenisArtDorsDext_02);
        FieldByName('UZIPenisArtDorsDext_03').AsString:= Trim(VarUZIPenisArtDorsDext_03);
        FieldByName('UZIPenisArtDorsDext_04').AsString:= Trim(VarUZIPenisArtDorsDext_04);
        FieldByName('UZIPenisArtDorsDext_05').AsString:= Trim(VarUZIPenisArtDorsDext_05);
        FieldByName('UZIPenisArtDorsSin_01').AsString:= Trim(VarUZIPenisArtDorsSin_01);
        FieldByName('UZIPenisArtDorsSin_02').AsString:= Trim(VarUZIPenisArtDorsSin_02);
        FieldByName('UZIPenisArtDorsSin_03').AsString:= Trim(VarUZIPenisArtDorsSin_03);
        FieldByName('UZIPenisArtDorsSin_04').AsString:= Trim(VarUZIPenisArtDorsSin_04);
        FieldByName('UZIPenisArtDorsSin_05').AsString:= Trim(VarUZIPenisArtDorsSin_05);

        FieldByName('UZIPenisVenaDorsDext_01').AsString:= Trim(VarUZIPenisVenaDorsDext_01);
        FieldByName('UZIPenisVenaDorsDext_02').AsString:= Trim(VarUZIPenisVenaDorsDext_02);
        FieldByName('UZIPenisVenaDorsDext_03').AsString:= Trim(VarUZIPenisVenaDorsDext_03);
        FieldByName('UZIPenisVenaDorsSin_01').AsString:= Trim(VarUZIPenisVenaDorsSin_01);
        FieldByName('UZIPenisVenaDorsSin_02').AsString:= Trim(VarUZIPenisVenaDorsSin_02);
        FieldByName('UZIPenisVenaDorsSin_03').AsString:= Trim(VarUZIPenisVenaDorsSin_03);

        //--- сохранение УЗДГ сосудов мошонки
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

        //--- сохранение результатов сухой уретроскопии
        FieldByName('UrScopiaDryDate').AsDateTime:= VarUrScopiaDryDate;

        FieldByName('UrScopiaDryOstium_01').AsInteger:= VarUrScopiaDryOstium_01;
        FieldByName('UrScopiaDryOstium_02').AsInteger:= VarUrScopiaDryOstium_02;
        FieldByName('UrScopiaDryOstium_03').AsInteger:= VarUrScopiaDryOstium_03;

        FieldByName('UrScopiaDryTubus_01').AsInteger:= VarUrScopiaDryTubus_01;
        FieldByName('UrScopiaDryTubus_02').AsInteger:= VarUrScopiaDryTubus_02;
        FieldByName('UrScopiaDryTubus_03').AsInteger:= VarUrScopiaDryTubus_03;
        FieldByName('UrScopiaDryTubus_04').AsInteger:= VarUrScopiaDryTubus_04;
        FieldByName('UrScopiaDryTubus_05').AsInteger:= VarUrScopiaDryTubus_05;

        FieldByName('UrScopiaDryGland_01').AsInteger:= VarUrScopiaDryGland_01;
        FieldByName('UrScopiaDryGland_02').AsInteger:= VarUrScopiaDryGland_02;
        FieldByName('UrScopiaDryGland_03').AsInteger:= VarUrScopiaDryGland_03;
        FieldByName('UrScopiaDryGland_04').AsInteger:= VarUrScopiaDryGland_04;
        FieldByName('UrScopiaDryGland_05').AsInteger:= VarUrScopiaDryGland_05;

        FieldByName('UrScopiaDryFigure_01').AsInteger:= VarUrScopiaDryFigure_01;
        FieldByName('UrScopiaDryFigure_02').AsInteger:= VarUrScopiaDryFigure_02;
        FieldByName('UrScopiaDryFigure_03').AsInteger:= VarUrScopiaDryFigure_03;

        FieldByName('UrScopiaDryPattern_01').AsInteger:= VarUrScopiaDryPattern_01;
        FieldByName('UrScopiaDryPattern_02').AsInteger:= VarUrScopiaDryPattern_02;
        FieldByName('UrScopiaDryPattern_03').AsInteger:= VarUrScopiaDryPattern_03;

        FieldByName('UrScopiaDrySurface_01').AsInteger:= VarUrScopiaDrySurface_01;
        FieldByName('UrScopiaDrySurface_02').AsInteger:= VarUrScopiaDrySurface_02;
        FieldByName('UrScopiaDrySurface_03').AsInteger:= VarUrScopiaDrySurface_03;
        FieldByName('UrScopiaDrySurface_04').AsInteger:= VarUrScopiaDrySurface_04;
        FieldByName('UrScopiaDrySurface_05').AsInteger:= VarUrScopiaDrySurface_05;
        FieldByName('UrScopiaDrySurface_06').AsInteger:= VarUrScopiaDrySurface_06;

        //--- сохранение результатов ирригационной уретроскопии
        FieldByName('UrScopiaIrrigDate').AsDateTime:= VarUrScopiaIrrigDate;

        FieldByName('UrScopiaIrrigUrScAntTool_01').AsInteger:= VarIrrigUrScAntTool_01;
        FieldByName('UrScopiaIrrigUrScAntTool_02').AsInteger:= VarIrrigUrScAntTool_02;
        FieldByName('UrScopiaIrrigUrScAntTool_03').AsInteger:= VarIrrigUrScAntTool_03;
        FieldByName('UrScopiaIrrigUrScAntTool_04').AsInteger:= VarIrrigUrScAntTool_04;

        FieldByName('UrScopiaIrrigUrScAntOstium_01').AsInteger:= VarIrrigUrScAntOstium_01;
        FieldByName('UrScopiaIrrigUrScAntOstium_02').AsInteger:= VarIrrigUrScAntOstium_02;
        FieldByName('UrScopiaIrrigUrScAntOstium_03').AsInteger:= VarIrrigUrScAntOstium_03;

        FieldByName('UrScopiaIrrigUrScAntMedium_01').AsInteger:= VarIrrigUrScAntMedium_01;
        FieldByName('UrScopiaIrrigUrScAntMedium_02').AsInteger:= VarIrrigUrScAntMedium_02;

        FieldByName('UrScopiaIrrigUrScAntScanne_01').AsInteger:= VarIrrigUrScAntScanne_01;
        FieldByName('UrScopiaIrrigUrScAntScanne_02').AsInteger:= VarIrrigUrScAntScanne_02;
        FieldByName('UrScopiaIrrigUrScAntScanne_03').AsInteger:= VarIrrigUrScAntScanne_03;
        FieldByName('UrScopiaIrrigUrScAntScanne_04').AsInteger:= VarIrrigUrScAntScanne_04;
        FieldByName('UrScopiaIrrigUrScAntScanne_05').AsInteger:= VarIrrigUrScAntScanne_05;

        FieldByName('UrScopiaIrrigUrScAntPenal_01').AsInteger:= VarIrrigUrScAntPenal_01;
        FieldByName('UrScopiaIrrigUrScAntPenal_02').AsInteger:= VarIrrigUrScAntPenal_02;
        FieldByName('UrScopiaIrrigUrScAntPenal_03').AsInteger:= VarIrrigUrScAntPenal_03;
        FieldByName('UrScopiaIrrigUrScAntPenal_04').AsInteger:= VarIrrigUrScAntPenal_04;
        FieldByName('UrScopiaIrrigUrScAntPenal_05').AsInteger:= VarIrrigUrScAntPenal_05;
        FieldByName('UrScopiaIrrigUrScAntPenal_06').AsInteger:= VarIrrigUrScAntPenal_06;

        FieldByName('UrScopiaIrrigUrScAntBulb_01').AsInteger:= VarIrrigUrScAntBulb_01;
        FieldByName('UrScopiaIrrigUrScAntBulb_02').AsInteger:= VarIrrigUrScAntBulb_02;
        FieldByName('UrScopiaIrrigUrScAntBulb_03').AsInteger:= VarIrrigUrScAntBulb_03;

        FieldByName('UrScopiaIrrigUrScAntMembr_01').AsInteger:= VarIrrigUrScAntMembr_01;
        FieldByName('UrScopiaIrrigUrScAntMembr_02').AsInteger:= VarIrrigUrScAntMembr_02;

        FieldByName('UrScopiaIrrigUrScAntCooper_01').AsInteger:= VarIrrigUrScAntCooper_01;
        FieldByName('UrScopiaIrrigUrScAntCooper_02').AsInteger:= VarIrrigUrScAntCooper_02;
        FieldByName('UrScopiaIrrigUrScAntCooper_03').AsInteger:= VarIrrigUrScAntCooper_03;
        FieldByName('UrScopiaIrrigUrScAntCooper_04').AsInteger:= VarIrrigUrScAntCooper_04;

        FieldByName('UrScopiaIrrigUrScPostMedium_01').AsInteger:= VarIrrigUrScPostMedium_01;
        FieldByName('UrScopiaIrrigUrScPostMedium_02').AsInteger:= VarIrrigUrScPostMedium_02;

        FieldByName('UrScopiaIrrigUrScPostMucous_01').AsInteger:= VarIrrigUrScPostMucous_01;
        FieldByName('UrScopiaIrrigUrScPostMucous_02').AsInteger:= VarIrrigUrScPostMucous_02;
        FieldByName('UrScopiaIrrigUrScPostMucous_03').AsInteger:= VarIrrigUrScPostMucous_03;
        FieldByName('UrScopiaIrrigUrScPostMucous_04').AsInteger:= VarIrrigUrScPostMucous_04;
        FieldByName('UrScopiaIrrigUrScPostMucous_05').AsInteger:= VarIrrigUrScPostMucous_05;
        FieldByName('UrScopiaIrrigUrScPostMucous_06').AsInteger:= VarIrrigUrScPostMucous_06;
        FieldByName('UrScopiaIrrigUrScPostMucous_07').AsInteger:= VarIrrigUrScPostMucous_07;
        FieldByName('UrScopiaIrrigUrScPostMucous_08').AsInteger:= VarIrrigUrScPostMucous_08;

        FieldByName('UrScopiaIrrigUrScPostCollic_01').AsInteger:= VarIrrigUrScPostCollic_01;
        FieldByName('UrScopiaIrrigUrScPostCollic_02').AsInteger:= VarIrrigUrScPostCollic_02;
        FieldByName('UrScopiaIrrigUrScPostCollic_03').AsInteger:= VarIrrigUrScPostCollic_03;
        FieldByName('UrScopiaIrrigUrScPostCollic_04').AsInteger:= VarIrrigUrScPostCollic_04;
        FieldByName('UrScopiaIrrigUrScPostCollic_05').AsInteger:= VarIrrigUrScPostCollic_05;
        FieldByName('UrScopiaIrrigUrScPostCollic_06').AsInteger:= VarIrrigUrScPostCollic_06;
        FieldByName('UrScopiaIrrigUrScPostCollic_07').AsInteger:= VarIrrigUrScPostCollic_07;
        FieldByName('UrScopiaIrrigUrScPostCollic_08').AsInteger:= VarIrrigUrScPostCollic_08;

        FieldByName('UrScopiaIrrigUrScPostDucts_01').AsInteger:= VarIrrigUrScPostDucts_01;
        FieldByName('UrScopiaIrrigUrScPostDucts_02').AsInteger:= VarIrrigUrScPostDucts_02;
        FieldByName('UrScopiaIrrigUrScPostDucts_03').AsInteger:= VarIrrigUrScPostDucts_03;
        FieldByName('UrScopiaIrrigUrScPostDucts_04').AsInteger:= VarIrrigUrScPostDucts_04;

        FieldByName('UrScopiaIrrigUrScPostVesic_01').AsInteger:= VarIrrigUrScPostVesic_01;
        FieldByName('UrScopiaIrrigUrScPostVesic_02').AsInteger:= VarIrrigUrScPostVesic_02;
        FieldByName('UrScopiaIrrigUrScPostVesic_03').AsInteger:= VarIrrigUrScPostVesic_03;
        FieldByName('UrScopiaIrrigUrScPostVesic_04').AsInteger:= VarIrrigUrScPostVesic_04;
        FieldByName('UrScopiaIrrigUrScPostVesic_05').AsInteger:= VarIrrigUrScPostVesic_05;
        FieldByName('UrScopiaIrrigUrScPostVesic_06').AsInteger:= VarIrrigUrScPostVesic_06;
        FieldByName('UrScopiaIrrigUrScPostVesic_07').AsInteger:= VarIrrigUrScPostVesic_07;

        if DSetVisitExamin.Modified then DSetVisitExamin.Post;

      end;{with DSetVisitExamin do}

    with DSetVisitBlob do
      begin
        if VisitPatientFlag//если выбран пункт меню "Добавить"
          then //то добавляем запись к таблице
            begin
              DSetVisitBlob.Insert;
              DSetVisitBlob.FN('ID_VISITBLOB').AsInteger:= TmpID;//ПК в "параллельную" таблицу
            end
          else // иначе редактируем текущую запись
              DSetVisitBlob.Edit;

        // ============== вкладка "Анамнез" ==============
        msComplaints:= TMemoryStream.Create;
        msSecretStuff:= TMemoryStream.Create;

        //сохраняем содержимое всех Мемо этой вкладки
        msStPraesens:= TMemoryStream.Create;
        msStLocalis:= TMemoryStream.Create;
        msStProstata:= TMemoryStream.Create;

        //создаем "служебные" рич-эдиты
        TmpRE:= TRichEdit.CreateParented(Self.Handle);

        try
        //задаем его свойства
        with TmpRE do
          begin
            Visible:= False;
            PlainText:= True;//сделаем рич без "форматирования" строк
          end;

        //сохраняем фотки и изображения

        //MessageForm.Show('Сохраняем: изображения общего статуса ...');
        MessageForm.Show('Сохраняются графические изображения. Подождите ...');

        //--- общего статуса
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

        //MessageForm.Text('Сохраняем: изображения локального статуса ...');
        //--- локального статуса
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

        //MessageForm.Text('Сохраняем: мазки из уретры ...');
        //--- мазки из уретры
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

        //MessageForm.Text('Сохраняем: мазки сока простаты ...');
        //--- мазка сока простаты
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

        //MessageForm.Text('Сохраняем: УЗИ почек ...');
        //--- УЗИ почек
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

        //MessageForm.Text('Сохраняем: УЗИ гениталий ...');
        //--- УЗИ гениталий
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

        //MessageForm.Text('Сохраняем: результаты передней уретроскопии ...');
        //--- Сухая уретроскопия
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

        //MessageForm.Text('Сохраняем: результаты ирригационной уретроскопии ...');

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

        //сохраняем OLE-объекты и расширения загруженных файлов

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

        //обрабатываем форматированный текст ниже лежащих полей "в строчку" для отображения в гриде
        FN('DRUGTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditDrug,'лечен',True);
        FN('DSTEXT_MEMO').AsString:= CutStrFromBulkText(RichEditDs,'ds:');
        FN('RECOMTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditRecom,'реком',False);
        FN('MANIPTEXT_MEMO').AsString:= FormatStrListToBulkText(RichEditManip,'манип', False);

        //то же самое только для строк до 999 знаков (лишние знаки будут обрезаны)
        FN('DRUGTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditDrug,'лечен',True),999);
        FN('DSTEXT_STR').AsString:= LeftStr(CutStrFromBulkText(RichEditDs,'ds:',),999);
        FN('RECOMTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditRecom,'реком',False),999);
        FN('MANIPTEXT_STR').AsString:= LeftStr(FormatStrListToBulkText(RichEditManip,'манип',False),999);

        finally
          MessageForm.Close;
          TmpRE.Free;
        end;

        msOAM:= TMemoryStream.Create;
        msMazUrethra:= TMemoryStream.Create;

        msMazProst:= TMemoryStream.Create;
        msIFA:= TMemoryStream.Create;
        msPCR:= TMemoryStream.Create;

        // === Вкладки "Лабораторные исследования" и "Инструментальные исследования" ===
        msLues:= TMemoryStream.Create;
        msBlood:= TMemoryStream.Create;
        msAIDS:= TMemoryStream.Create;
        msSperm:= TMemoryStream.Create;
        msUrethBactInoc:= TMemoryStream.Create;
        msUrinBactInoc:= TMemoryStream.Create;
        msProstBactInoc:= TMemoryStream.Create;
        msMicUrBactInoc:= TMemoryStream.Create;
        msUZIRen:= TMemoryStream.Create;
        msUZIGenit:= TMemoryStream.Create;
        msUrScopiaDry:= TMemoryStream.Create;
        msUrScopiaIrrig:= TMemoryStream.Create;
        msDrugs:= TMemoryStream.Create;
        msManip:= TMemoryStream.Create;
        msDs:= TMemoryStream.Create;
        msRecom:= TMemoryStream.Create;

        try
        MessageForm.Show('Сохраняются текстовые данные. Подождите ...');

          //"обнуляем" все Мемо-поля, если соответствующие рич-эдиты пустые
          if Trim(RichEditComplaints.Text) <> ''
            then
              begin
                RichEditComplaints.Lines.SaveToStream(msComplaints);
                msComplaints.Position:= 0;
                TBlobField(FN('Complaints')).LoadFromStream(msComplaints);
              end
            else
              TBlobField(FN('Complaints')).Clear;

          if Trim(RichEditSecretStuff.Text) <> ''
            then
              begin
                RichEditSecretStuff.Lines.SaveToStream(msSecretStuff);
                msSecretStuff.Position:= 0;
                TBlobField(FN('SECRET_STUFF')).LoadFromStream(msSecretStuff);
              end
            else
              TBlobField(FN('SECRET_STUFF')).Clear;

          if Trim(RichEditStPraesens.Text) <> ''
            then
              begin
                RichEditStPraesens.Lines.SaveToStream(msStPraesens);
                msStPraesens.Position:= 0;
                TBlobField(FN('StPraesens')).LoadFromStream(msStPraesens);
              end
            else
              TBlobField(FN('StPraesens')).Clear;

          if Trim(RichEditStLocalis.Text) <> ''
            then
              begin
                RichEditStLocalis.Lines.SaveToStream(msStLocalis);
                msStLocalis.Position:= 0;
                TBlobField(FN('StLocalis')).LoadFromStream(msStLocalis);
              end
            else
              TBlobField(FN('StLocalis')).Clear;

          if Trim(RichEditProstata.Text) <> ''
            then
              begin
                RichEditProstata.Lines.SaveToStream(msStProstata);
                msStProstata.Position:= 0;
                TBlobField(FN('StProstata')).LoadFromStream(msStProstata);
              end
            else
              TBlobField(FN('StProstata')).Clear;

          if Trim(RichEdtLues.Text) <> ''
            then
              begin
                RichEdtLues.Lines.SaveToStream(msLues);
                msLues.Position:= 0;
                TBlobField(FN('LUESTEXT')).LoadFromStream(msLues);
              end
            else
              TBlobField(FN('LUESTEXT')).Clear;

          if Trim(RichEdtBlood.Text) <> ''
            then
              begin
                RichEdtBlood.Lines.SaveToStream(msBlood);
                msBlood.Position:= 0;
                TBlobField(FN('BLOODTEXT')).LoadFromStream(msBlood);
              end
            else
              TBlobField(FN('BLOODTEXT')).Clear;

          if Trim(RichEdtAIDS.Text) <> ''
            then
              begin
                RichEdtAIDS.Lines.SaveToStream(msAIDS);
                msAIDS.Position:= 0;
                TBlobField(FN('AIDSTEXT')).LoadFromStream(msAIDS);
              end
            else
              TBlobField(FN('AIDSTEXT')).Clear;

          if Trim(RichEdtSperm.Text) <> ''
            then
              begin
                RichEdtSperm.Lines.SaveToStream(msSperm);
                msSperm.Position:= 0;
                TBlobField(FN('SPERMTEXT')).LoadFromStream(msSperm);
              end
            else
              TBlobField(FN('SPERMTEXT')).Clear;

          if Trim(RichEdtUrethBactInoc.Text) <> ''
            then
              begin
                RichEdtUrethBactInoc.Lines.SaveToStream(msUrethBactInoc);
                msUrethBactInoc.Position:= 0;
                TBlobField(FN('URETHBACTINOCTEXT')).LoadFromStream(msUrethBactInoc);
              end
            else
              TBlobField(FN('URETHBACTINOCTEXT')).Clear;

          if Trim(RichEdtProstBactInoc.Text) <> ''
            then
              begin
                RichEdtProstBactInoc.Lines.SaveToStream(msProstBactInoc);
                msProstBactInoc.Position:= 0;
                TBlobField(FN('PROSTBACTINOCTEXT')).LoadFromStream(msProstBactInoc);
              end
            else
              TBlobField(FN('PROSTBACTINOCTEXT')).Clear;

          if Trim(RichEdtMicUrBactInoc.Text) <> ''
            then
              begin
                RichEdtMicUrBactInoc.Lines.SaveToStream(msMicUrBactInoc);
                msMicUrBactInoc.Position:= 0;
                TBlobField(FN('MICURBACTINOCTEXT')).LoadFromStream(msMicUrBactInoc);
              end
            else
              TBlobField(FN('MICURBACTINOCTEXT')).Clear;

          if Trim(RichEdtUrinBactInoc.Text) <> ''
            then
              begin
                RichEdtUrinBactInoc.Lines.SaveToStream(msUrinBactInoc);
                msUrinBactInoc.Position:= 0;
                TBlobField(FN('URINBACTINOCTEXT')).LoadFromStream(msUrinBactInoc);
              end
            else
              TBlobField(FN('URINBACTINOCTEXT')).Clear;

          if Trim(RichEditOAM.Text) <> ''
            then
              begin
                RichEditOAM.Lines.SaveToStream(msOAM);
                msOAM.Position:= 0;
                TBlobField(FN('OAM')).LoadFromStream(msOAM);
              end
            else
              TBlobField(FN('OAM')).Clear;

          if Trim(RichEditMazUr.Text) <> ''
            then
              begin
                RichEditMazUr.Lines.SaveToStream(msMazUrethra);
                msMazUrethra.Position:= 0;
                TBlobField(FN('MazUrethra')).LoadFromStream(msMazUrethra);
              end
            else
              TBlobField(FN('MazUrethra')).Clear;

          if Trim(RichEditMazProst.Text) <> ''
            then
              begin
                RichEditMazProst.Lines.SaveToStream(msMazProst);
                msMazProst.Position:= 0;
                TBlobField(FN('MazProst')).LoadFromStream(msMazProst);
              end
            else
              TBlobField(FN('MazProst')).Clear;

          if Trim(RichEditIFA.Text) <> ''
            then
              begin
                RichEditIFA.Lines.SaveToStream(msIFA);
                msIFA.Position:= 0;
                TBlobField(FN('IFA')).LoadFromStream(msIFA);
              end
            else
              TBlobField(FN('IFA')).Clear;

          if Trim(RichEditPCR.Text) <> ''
            then
              begin
                RichEditPCR.Lines.SaveToStream(msPCR);
                msPCR.Position:= 0;
                TBlobField(FN('PCR')).LoadFromStream(msPCR);
              end
            else
              TBlobField(FN('PCR')).Clear;

          if Trim(RichEditUZIRen.Text) <> ''
            then
              begin
                RichEditUZIRen.Lines.SaveToStream(msUZIRen);
                msUZIRen.Position:= 0;
                TBlobField(FN('UZIRen')).LoadFromStream(msUZIRen);
              end
            else
              TBlobField(FN('UZIRen')).Clear;

          if Trim(RichEditUZIGenit.Text) <> ''
            then
              begin
                RichEditUZIGenit.Lines.SaveToStream(msUZIGenit);
                msUZIGenit.Position:= 0;
                TBlobField(FN('UZIGenit')).LoadFromStream(msUZIGenit);
              end
            else
              TBlobField(FN('UZIGenit')).Clear;

          if Trim(RichEditUrScopiaDry.Text) <> ''
            then
              begin
                RichEditUrScopiaDry.Lines.SaveToStream(msUrScopiaDry);
                msUrScopiaDry.Position:= 0;
                TBlobField(FN('UrScopiaDry')).LoadFromStream(msUrScopiaDry);
              end
            else
              TBlobField(FN('UrScopiaDry')).Clear;

          if Trim(RichEditUrScopiaIrrig.Text) <> ''
            then
              begin
                RichEditUrScopiaIrrig.Lines.SaveToStream(msUrScopiaIrrig);
                msUrScopiaIrrig.Position:= 0;
                TBlobField(FN('UrScopiaIrrig')).LoadFromStream(msUrScopiaIrrig);
              end
            else
              TBlobField(FN('UrScopiaIrrig')).Clear;

          if Trim(RichEditDrug.Text) <> ''
            then
              begin
                RichEditDrug.Lines.SaveToStream(msDrugs);
                msDrugs.Position:= 0;
                TBlobField(FN('DrugText')).LoadFromStream(msDrugs);
              end
            else
              TBlobField(FN('DrugText')).Clear;

          if Trim(RichEditManip.Text) <> ''
            then
              begin
                RichEditManip.Lines.SaveToStream(msManip);
                msManip.Position:= 0;
                TBlobField(FN('ManipText')).LoadFromStream(msManip);
              end
            else
              TBlobField(FN('ManipText')).Clear;

          if Trim(RichEditDs.Text) <> ''
            then
              begin
                RichEditDs.Lines.SaveToStream(msDs);
                msDs.Position:= 0;
                TBlobField(FN('DsText')).LoadFromStream(msDs);
               end
            else
              TBlobField(FN('DsText')).Clear;

          if Trim(RichEditRecom.Text) <> ''
            then
              begin
                RichEditRecom.Lines.SaveToStream(msRecom);
                msRecom.Position:= 0;
                TBlobField(FN('RecomText')).LoadFromStream(msRecom);
              end
            else
              TBlobField(FN('RecomText')).Clear;

        finally
          MessageForm.Close;

          msComplaints.Free;
          msSecretStuff.Free;
          msStPraesens.Free;
          msStLocalis.Free;
          msStProstata.Free;

          msLues.Free;
          msBlood.Free;
          msAIDS.Free;
          msSperm.Free;

          msUrethBactInoc.Free;
          msProstBactInoc.Free;
          msMicUrBactInoc.Free;
          msUrinBactInoc.Free;

          msOAM.Free;
          msMazUrethra.Free;
          msMazProst.Free;
          msIFA.Free;
          msPCR.Free;

          msUZIRen.Free;
          msUZIGenit.Free;
          msUrScopiaDry.Free;
          msUrScopiaIrrig.Free;
          msDrugs.Free;
          msManip.Free;
          msDs.Free;
          msRecom.Free;
        end;{try..finally}

        try
          MessageForm.Show('Идет запись в базу данных. Это может занять некоторое время, '
          + 'подождите ...');
          if DSetVisitBlob.Modified then DSetVisitBlob.Post;
        finally
          MessageForm.Close;
        end;
      end;{with DSetVisitBlob do}

      WriteTransVisit.Commit;//коммитимся в случае удачи

      //обнуляем счетчик заходов в FIBErrorHandler, если исключение обработано
      ErrCount:= 0;
    except
      if VisitPatientFlag
        then TmpStr:= 'Добавить данные визита пациента не удалось!'
        else TmpStr:= 'Данные визита пациента изменить не удалось!';

      VarID_Tbl_VisitMain:= Old_VarID_Tbl_VisitMain;//"откатываемся" на старое значение в случае ошибки

      Application.MessageBox(PChar(TmpStr), 'Ошибка работы с базой данных',
                                                     MB_ICONERROR + MB_OK);
      WriteTransVisit.Rollback;//откатываемся в случае неудачи
      //обнуляем счетчик заходов в FIBErrorHandler, если исключение обработано
      ErrCount:= 0;
      SenderTag:= 0;
    end;{try..except}
  (************************ окончание транзакции **************************)
  end;{with DMFIB do}

Close;
end;

//----------------------------------------------------------------------------
//смена вкладок
procedure TFrmStatusPat.PgCtrlVisitChange(Sender: TObject);
begin
//проверяем кнопки "туда-сюда"
BtnPrev.Enabled:= not (PgCtrlVisit.ActivePageIndex = 0);
BtnNext.Enabled:= not (PgCtrlVisit.ActivePageIndex = Pred(PgCtrlVisit.PageCount));

if PgCtrlVisit.ActivePageIndex = 1
  then  //если это вторая ("Анамнез") вкладка
    begin
    AnamListNo:= AnamListNo + 1;//увеличим число попаданий на вкладку
    ReadyComplaintsText(Sender);//генерируем текст жалоб

    if AnamListNo < 2 //если попадаем на эту вкладку в первый раз
      then // то заполняем лист жалоб без предупреждений
        RichEditComplaints.Text:= TextComplaint
      else // иначе предупредим о возможных изменениях
        if (Trim(TextComplaint) <> Trim(RichEditComplaints.Text)) then
          if Application.MessageBox('Ранее указанные жалобы пациента сейчас будут заменены на вновь '
                 + 'сформированные. Разрешить замену?', 'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
            then RichEditComplaints.Text:= TextComplaint;//сохраняем изменения
    end {if..then PageIndex =1}
  else //если это не вторая вкладка
    begin
    TextComplaint:= Trim(RichEditComplaints.Text);
    end;{if..else PageIndex =1}

//прорисовываем вкладки (по мере необходимости) в зависимости от ее номера

  case PgCtrlVisit.ActivePageIndex of
    0: ShowComplaintSheet(Sender);//грузим вкладку "жалобы"
    1: ShowAnamnesisSheet(Sender);//грузим вкладку "анамнез"
    2: ShowStPraesensSheet(Sender);//грузим вкладку "StPraesens"
    3: ShowLabAnalises(Sender);//грузим вкладку "Лабораторные исследования"
    4: ShowToolResearch(Sender);//грузим вкладку "Инструментальные исследования"
    5: ShowTreatmentDs(Sender);//грузим вкладку "Лечение и диагноз"
  end;
end;

//----------------------------------------------------------------------------
//процедура сборки  текста жалоб в зависимости от выбранных опций
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

// ==== формируем текст жалоб ====
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then TmpStr:= 'Обратился '
  else TmpStr:= 'Обратилась ';
TmpStr:= TmpStr + FormatDateTime('dd' + '.' + 'MM' + '.' + 'YY',DTPickPriem.DateTime);

if PgCtrlComplaint.ActivePageIndex = 0
  then //вкладка "Андрологические жалобы"
    begin
      //проверяем отмеченность пунктов в том или ином GroupBox'е
      //----- болевой синдром -----
      DolorCheck:= (ChkBoxDolorPubica.Checked or ChkBoxDolorPerineum.Checked or
                    ChkBoxDolorInguinal.Checked or ChkBoxDolorTestis.Checked or
                    ChkBoxDolorLumbo.Checked or ChkBoxDolorSacrum.Checked or
                    ChkBoxDolorPenisDetumesc.Checked or ChkBoxDolorPenisErect.Checked);

      //*** ----- добавленные пункты
      /// ==== дискомфорт
      BadSensCheck:= (ChkBoxBadSensUreth.Checked or ChkBoxBadSensPerineum.Checked);

      /// === чувство рези
      ColicSensCheck:= (ChkBoxColicSensUreth.Checked or ChkBoxColicSensPerineum.Checked);

      //----- дизурический синдром -----
      DisuriaCheck:= (ChkBoxPollakiuria.Checked or ChkBoxDolorMiccia.Checked or
                      ChkBoxNicturia.Checked or ChkBoxStranguria.Checked or
                      ChkBoxVesUrinUncomplete.Checked or ChkBoxIshuria.Checked or
                      ChkBoxIncontinence.Checked);

      //----- дизэякуляторный синдром -----
      EjaculCheck:= (ChkBoxFastEjacul.Checked or ChkBoxAnEjacul.Checked or
                     ChkBoxDolorEjacul.Checked or ChkBoxBloodEjacul.Checked or
                     ChkBoxIdleEjacul.Checked or ChkBoxSlowEjacul.Checked);

      //----- ипохондрический синдром -----
      HypohondriaCheck:= (ChkBoxLowLibido.Checked or ChkBoxLowTonus.Checked or
                          ChkBoxLowVozbuzhd.Checked);

      //----- сосудистый синдром -----
      VasaCheck:= (ChkBoxLowErection.Checked or ChkBoxSlowTumesc.Checked or
                   ChkBoxBadErection.Checked or ChkBoxNoErection.Checked or
                   ChkBoxPenisDeform.Checked or ChkBoxVaricocele.Checked);

      //>> если ни один пункт не отмечен
      if not(DolorCheck or
             BadSensCheck or
             ColicSensCheck or
             DisuriaCheck or
             EjaculCheck or
             HypohondriaCheck or
             ChkBoxDischarge.Checked or //----- ирритативный синдром -----
             VasaCheck)
             and ChkBoxMorningErection.Checked //эрекция по утрам отмечена по умолчанию !!!!
          then {if..then  все пункты не отмечены - жалоб нет }
            begin
              TmpStr:= TmpStr + '. На момент осмотра активно жалоб не предъявляет.';
              TextComplaint:= Trim(TmpStr);//присвоим сгенерированный текст переменной
              Exit;//выходим, т.к. дальше можно не проверять
            end
          else //иначе хоть один пункт отмечен или снята галочка с "утренней эрекции"
            begin
              TmpStr:= TmpStr + ' с жалобами на ';

              //----- болевой синдром -----
              if DolorCheck then
                begin
                  TmpStr:= TmpStr + 'боли ';
                  if ChkBoxDolorPubica.Checked
                    then TmpStr:= TmpStr + 'над лоном, ';
                  if ChkBoxDolorPerineum.Checked
                    then TmpStr:= TmpStr + 'в промежности, ';
                  if ChkBoxDolorInguinal.Checked
                    then TmpStr:= TmpStr + 'в паховой области, ';
                  if ChkBoxDolorTestis.Checked
                    then TmpStr:= TmpStr + 'в яичках, ';
                  if ChkBoxDolorLumbo.Checked
                    then TmpStr:= TmpStr + 'в поясничной области, ';
                  if ChkBoxDolorSacrum.Checked
                    then TmpStr:= TmpStr + 'в области крестца, ';

                  if ChkBoxDolorPenisDetumesc.Checked or ChkBoxDolorPenisErect.Checked then
                    begin
                      if ChkBoxDolorPenisDetumesc.Checked and ChkBoxDolorPenisErect.Checked
                        then
                          TmpStr:= TmpStr + 'в половом члене вне зависимости от эрекции, '
                        else
                          begin
                            if ChkBoxDolorPenisDetumesc.Checked
                              then
                                TmpStr:= TmpStr + 'в половом члене вне эрекции, '
                              else
                                TmpStr:= TmpStr + 'в половом члене при эрекции, ';
                          end;
                    end;


                  //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                  if BadSensCheck or ColicSensCheck or
                     DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then DolorCheck}

              ///*** добавленные опции
              if BadSensCheck then
                begin
                  TmpStr:= TmpStr + 'неприятные ощущения ';
                  if ChkBoxBadSensUreth.Checked and ChkBoxBadSensPerineum.Checked
                    then
                      TmpStr:= TmpStr + 'в уретре и промежности,'
                    else
                      begin
                        if ChkBoxBadSensUreth.Checked
                          then
                            TmpStr:= TmpStr + 'в уретре,'
                          else
                            TmpStr:= TmpStr + 'в промежности,';
                      end;
                  //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                  if ColicSensCheck or
                     DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then BadSensCheck}

              ///*** добавленные опции
              if ColicSensCheck then
                begin
                  TmpStr:= TmpStr + 'рези ';
                  if ChkBoxColicSensUreth.Checked and ChkBoxColicSensPerineum.Checked
                    then
                      TmpStr:= TmpStr + 'в уретре и промежности,'
                    else
                      begin
                        if ChkBoxColicSensUreth.Checked
                          then
                            TmpStr:= TmpStr + 'в уретре,'
                          else
                            TmpStr:= TmpStr + 'в промежности,';
                      end;
                  //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                  if DisuriaCheck or EjaculCheck or
                     HypohondriaCheck or ChkBoxDischarge.Checked or
                     VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then ColicSensCheck}

              //----- дизурический синдром -----
              if DisuriaCheck then
                begin
                  if ChkBoxPollakiuria.Checked then
                    begin
                      TmpStr:= TmpStr + 'учащенное мочеиспускание до '
                               + IntToStr(SpEdtMicciaCount.Value) + ' р/сутки в течение '
                               + IntToStr(SpEdtPollaciuriaAge.Value);

                      if SpEdtPollaciuriaAge.Value <> 1
                        then
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxPollaciuriaPeriod.Text) + ', '
                        else
                          case CbBoxNicturiaPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' дня, ';
                            1: TmpStr:= TmpStr + ' недели, ';
                            2: TmpStr:= TmpStr + ' года, ';
                          end;
                    end;

                   if ChkBoxDolorMiccia.Checked
                    then TmpStr:= TmpStr + 'болезненное мочеиспускание, ';

                   if ChkBoxNicturia.Checked then
                    begin
                      TmpStr:= TmpStr + 'никтурию до ' + IntToStr(SpEdtNicturiaCount.Value) +
                               ' р/ночь в течение ' + IntToStr(SpEdtNicturiaAge.Value);

                      if SpEdtNicturiaAge.Value <> 1
                        then
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxNicturiaPeriod.Text) + ', '
                        else
                          case  CbBoxNicturiaPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' дня, ';
                            1: TmpStr:= TmpStr + ' недели, ';
                            2: TmpStr:= TmpStr + ' года, ';
                          end;
                    end;

                   if ChkBoxStranguria.Checked
                    then TmpStr:= TmpStr + 'затруднение при мочеиспускании, ';

                   if ChkBoxIshuria.Checked
                     then TmpStr:= TmpStr + 'задержку мочеиспускания, ';

                   if ChkBoxIncontinence.Checked
                     then TmpStr:= TmpStr + 'недержание (неудержание) мочи '
                                                                        + Trim(CbBoxIncontinenceCase.Text) + ', ';
                                                                        
                   if ChkBoxVesUrinUncomplete.Checked
                    then TmpStr:= TmpStr + 'чувство неполного опорожнения мочевого пузыря, ';

                   //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                   if EjaculCheck or HypohondriaCheck or
                      ChkBoxDischarge.Checked or VasaCheck or
                      (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then DisuriaCheck}

              //----- дизэякуляторный синдром -----
              if EjaculCheck then
                begin
                   if ChkBoxFastEjacul.Checked or ChkBoxSlowEjacul.Checked then
                    begin
                      if ChkBoxFastEjacul.Checked and ChkBoxSlowEjacul.Checked
                        then
                          TmpStr:= TmpStr + 'чередование периодов преждевременного семяизвержения '
                          + 'с периодами трудно достижимого оргазма, '
                        else
                          begin
                            if ChkBoxFastEjacul.Checked
                              then
                                TmpStr:= TmpStr + 'преждевременное семяизвержение, '
                              else
                                TmpStr:= TmpStr + 'трудно достижимый оргазм, ';
                          end;

                    end;

                   if ChkBoxAnEjacul.Checked
                    then TmpStr:= TmpStr + 'отсутствие эякулята при оргазме, ';

                   if ChkBoxDolorEjacul.Checked
                    then TmpStr:= TmpStr + 'болезненное семяизвержение, ';

                   if ChkBoxBloodEjacul.Checked
                    then TmpStr:= TmpStr + 'наличие крови в эякуляте, ';

                   if ChkBoxIdleEjacul.Checked
                    then TmpStr:= TmpStr + 'тусклый, вялый оргазм, ';

                   //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                   if HypohondriaCheck or ChkBoxDischarge.Checked or VasaCheck or
                      (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then EjaculCheck}

              //----- ипохондрический синдром -----
              if HypohondriaCheck then
                begin
                   if ChkBoxLowLibido.Checked
                    then TmpStr:= TmpStr + 'снижение влечения к женщинам, ';

                   if ChkBoxLowTonus.Checked
                    then TmpStr:= TmpStr + 'упадок сил, ';

                   if ChkBoxLowVozbuzhd.Checked
                    then TmpStr:= TmpStr + 'слабую возбудимость при половом акте с постоянной ' +
                                  'половой партнершей, ';

                   //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                   if ChkBoxDischarge.Checked or VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then HypohondriaCheck}

              //----- ирритативный синдром -----
              if ChkBoxDischarge.Checked then
                begin
                  if CbBoxDischargeVolume.ItemIndex <> 3
                    then
                      begin
                        TmpStr:= TmpStr + Trim(CbBoxDischargeRegul.Text) + ' '
                          + Trim(CbBoxDischargeVolume.Text) + ' '
                          + Trim(CbBoxDischargeNature.Text) + ' выделения в течение '
                          + IntToStr(SpEdtUrethAge.Value);

                        if (RightStr(IntToStr(SpEdtUrethAge.Value),1) = '1')
                                                            and (SpEdtUrethAge.Value <> 11)
                          then
                            case CbBoxDischargeDurat.ItemIndex of
                              0: TmpStr:= TmpStr + ' дня, ';
                              1: TmpStr:= TmpStr + ' недели, ';
                              2: TmpStr:= TmpStr + ' года, ';
                            end
                          else
                            TmpStr:= TmpStr + ' ' + Trim(CbBoxDischargeDurat.Text) + ', ';
                      end
                    else
                      TmpStr:= TmpStr + 'кажущиеся выделения из уретры, ';

                  //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                  if VasaCheck or (not ChkBoxMorningErection.Checked)
                       then TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '; '//продолжаем
                       else TmpStr:= LeftStr(Trim(TmpStr), Length(Trim(TmpStr)) - 1) + '.';//ставим точку
                end;{if..then ChkBoxDischarge.Checked}

              //--------- сосудистый синдром --------------------
              if VasaCheck then
                begin
                   if ChkBoxNoErection.Checked or ChkBoxSlowTumesc.Checked
                                                                  or ChkBoxLowErection.Checked then
                    if ChkBoxNoErection.Checked and ChkBoxSlowTumesc.Checked
                                                                      and ChkBoxLowErection.Checked
                      then
                        TmpStr:= TmpStr + 'практически полное отсутствие эрекции или медленное '
                                          + 'и слабое "напряжение" полового члена при возбуждении, '
                                          + 'едва достаточного для проведения полового акта, '
                      else
                        begin
                          if ChkBoxNoErection.Checked and ChkBoxSlowTumesc.Checked
                            then
                              TmpStr:= TmpStr + 'практически полное отсутствие эрекции или '
                                                                + 'медленное наступление эрекции, '
                            else
                              begin
                                if ChkBoxNoErection.Checked and ChkBoxLowErection.Checked
                                  then
                                    TmpStr:= TmpStr + 'практически полное отсутствие эрекции или '
                                            + 'слабое "напряжение" полового члена при возбуждении, '
                                            + 'едва достаточного для проведения полового акта, '
                                  else
                                    begin
                                      if ChkBoxSlowTumesc.Checked and ChkBoxLowErection.Checked
                                        then
                                          TmpStr:= TmpStr + 'медленное и слабое "напряжение" ' +
                                                                  'полового члена при возбуждении, '
                                        else
                                          begin
                                            if ChkBoxNoErection.Checked
                                              then
                                                TmpStr:= TmpStr + 'отсутствие эрекции ' +
                                                                                'при возбуждении, ';
                                            if ChkBoxLowErection.Checked
                                              then
                                                TmpStr:= TmpStr + 'слабое "напряжение" ' +
                                                                 'полового члена при возбуждении, ';
                                            if ChkBoxSlowTumesc.Checked
                                              then
                                                TmpStr:= TmpStr + 'медленное "напряжение" полового'
                                                                       + ' члена при возбуждении, ';
                                          end;
                                    end;
                              end;
                        end;

                   if ChkBoxBadErection.Checked
                    then TmpStr:= TmpStr + 'нестойкость эрекции при половом акте, ';

                   if ChkBoxPenisDeform.Checked
                    then
                      TmpStr:= TmpStr + 'искривление и деформацию полового члена при эрекции, ';

                   if ChkBoxVaricocele.Checked
                    then
                      begin
                      TmpStr:= TmpStr + 'расширение вен семенного канатика '
                                                                        + Trim(CbBoxVaricSide.Text);

                         case CbBoxVaricPosit.ItemIndex of
                           0: TmpStr:= TmpStr + ' в горизонтальном положении, ';
                           1: TmpStr:= TmpStr + ' в вертикальном положении, ';
                           2: TmpStr:= TmpStr + ' при натуживании, ';
                         end;

                      end;

                end; {if..then VasaCheck}

              if not ChkBoxMorningErection.Checked
                then TmpStr:= TmpStr + 'отсутствие утренней эрекции.';


              TmpStr:= WriteSymbolToEndString(TmpStr,'.');//ставим окончательную точку
            end;{if..else изменен хоть один пункт от дефолтовых настроек}
    end;

if PgCtrlComplaint.ActivePageIndex = 1
  then // вкладка "Урологические жалобы"
    begin
      //проверяем отмеченность пунктов в том или ином GroupBox'е
      //---- синдром интоксикации
      if ChkBoxUrAsthenia.Checked or
         ChkBoxUrFlabbiness.Checked or
         ChkBoxUrHyperhidros.Checked or
         ChkBoxUrSubfebril.Checked
        then HypohondriaCheck:= True
        else HypohondriaCheck:= False;

      //----- болевой синдром -----
      if ChkBoxUrDolorLumb.Checked or
         ChkBoxUrDolorSacr.Checked or
         ChkBoxUrDolorMesagastr.Checked or
         ChkBoxUrDolorHypogastr.Checked or
         ChkBoxUrDolorPubica.Checked or
         ChkBoxUrDolorIrradiat.Checked
          then DolorCheck:= True
          else DolorCheck:= False;

      //----- дизурический синдром -----
      if ChkBoxUrColic.Checked or
         ChkBoxUrPollac.Checked or
         ChkBoxUrNicturia.Checked or
         ChkBoxUrNotFullVesic.Checked or
         ChkBoxUrSediment.Checked or
         ChkBoxUrFlakes.Checked or
         ChkBoxUrBloodDash.Checked
          then DisuriaCheck:= True
          else DisuriaCheck:= False;

      //>> если ни один пункт не отмечен
      if not (HypohondriaCheck or DolorCheck or DisuriaCheck)
        then //жалоб нет
          begin
            TmpStr:= TmpStr + '. На момент осмотра активно жалоб не предъявляет.';
            TextComplaint:= Trim(TmpStr);//присвоим сгенерированный текст переменной
            Exit;//выходим, т.к. дальше можно не проверять
          end
        else //составляем отмеченные жалобы
          begin
            TmpStr:= TmpStr + ' с жалобами на ';
            //----- синдром интоксикации -----
            if HypohondriaCheck then
              begin
                if ChkBoxUrAsthenia.Checked then TmpStr:= TmpStr + 'слабость, ';
                if ChkBoxUrFlabbiness.Checked then TmpStr:= TmpStr + 'вялость, ';
                if ChkBoxUrHyperhidros.Checked then TmpStr:= TmpStr + 'потливость, ';
                if ChkBoxUrSubfebril.Checked then
                    TmpStr:= TmpStr + 'повышение температуры '
                      + CbBoxUrSubfebril.Items[CbBoxUrSubfebril.ItemIndex] + ' градусов Цельсия, ';
                //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                if DolorCheck or DisuriaCheck
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '; '
                  else TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '.';
              end;

            //----- болевой синдром -----
            if DolorCheck then
              begin
                if ChkBoxUrDolorLumb.Checked
                  then TmpStr:= TmpStr + 'боли в поясничной области '
                   + CbBoxUrDolorLumb.Items[CbBoxUrDolorLumb.ItemIndex]  + ', ';
                if ChkBoxUrDolorSacr.Checked then TmpStr:= TmpStr + 'боли в крестцовой области, ';
                if ChkBoxUrDolorMesagastr.Checked
                  then TmpStr:= TmpStr + 'боли в мезагастрии '
                    + CbBoxUrDolorMesogastr.Items[CbBoxUrDolorMesogastr.ItemIndex] + ', ';
                if ChkBoxUrDolorHypogastr.Checked
                  then TmpStr:= TmpStr + 'боли в гипогастрии '
                    + CbBoxUrDolorHypogastr.Items[CbBoxUrDolorHypogastr.ItemIndex] + ', ';
                if ChkBoxUrDolorPubica.Checked then TmpStr:= TmpStr + 'боли над лоном, ';
                if ChkBoxUrDolorIrradiat.Checked
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + ' с иррадиацией '
                                      + CbBoxUrDolorIrradiat.Items[CbBoxUrDolorIrradiat.ItemIndex] + ', ';
                //проверяем, отмечены ли следующие опции, т.е. продолжать ли строку
                if DisuriaCheck
                  then TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '; '
                  else TmpStr:= LeftStr(Trim(TmpStr),Length(trim(TmpStr)) - 1) + '.';
              end;

            //----- дизурический синдром -----
            if DisuriaCheck then
              begin
                if ChkBoxUrColic.Checked then TmpStr:= TmpStr + 'рези при мочеиспускании, ';
                if ChkBoxUrPollac.Checked
                  then
                    begin
                      TmpStr:= TmpStr + 'учащение мочеиспускания до '
                                                + IntToStr(SpEdtUrPollacCount.Value) + ' р/сутки '
                                                + 'в течение ' + IntToStr(SpEdtUrPollacAge.Value);

                      //анализируем последнее число спин-эдита
                      if (RightStr(IntToStr(SpEdtUrPollacAge.Value),1) = '1')
                                                                  and (SpEdtUrPollacAge.Value <> 11)
                        then //число кончается на "1" и это не "11"
                          case CbBoxUrPollacPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' дня, ';
                            1: TmpStr:= TmpStr + ' недели, ';
                            2: TmpStr:= TmpStr + ' года, ';
                          end
                        else
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxUrPollacPeriod.Text) + ', ';
                    end;

                if ChkBoxUrNicturia.Checked
                  then
                    begin
                      TmpStr:= TmpStr + 'никтурию ' + IntToStr(SpEdtUrNictCount.Value)
                                      + ' раз за ночь в течение ' + IntToStr(SpEdtUrNictAge.Value);

                      //анализируем последнее число спин-эдита
                      if (RightStr(IntToStr(SpEdtUrNictAge.Value),1) = '1')
                                                                  and (SpEdtUrNictAge.Value <> 11)
                        then //число кончается на "1" и это не "11"
                          case CbBoxUrNictPeriod.ItemIndex of
                            0: TmpStr:= TmpStr + ' дня, ';
                            1: TmpStr:= TmpStr + ' недели, ';
                            2: TmpStr:= TmpStr + ' года, ';
                          end
                        else
                          TmpStr:= TmpStr + ' ' + Trim(CbBoxUrNictPeriod.Text) + ', ';
                    end;

                if ChkBoxUrNotFullVesic.Checked
                  then TmpStr:= TmpStr + 'чувство неполного опорожнения мочевого пузыря, ';
                if ChkBoxUrSediment.Checked then TmpStr:= TmpStr + 'наличие осадка в моче, ';
                if ChkBoxUrFlakes.Checked then TmpStr:= TmpStr + 'наличие хлопьев в моче, ';
                if ChkBoxUrBloodDash.Checked then
                  begin
                    TmpStr:= TmpStr + 'примесь крови в моче ';
                    case CbBoxUrBloodDash.ItemIndex of
                      0: TmpStr:= TmpStr + 'в начале акта мочеиспускания.';
                      1: TmpStr:= TmpStr + 'в конце акта мочеиспускания.';
                      2: TmpStr:= TmpStr + 'на протяжении всего акта мочеиспускания.';
                    end;
                  end;
              end;
            TmpStr:= WriteSymbolToEndString(TmpStr,'.');//ставим окончательную точку
          end;
    end;

if PgCtrlComplaint.ActivePageIndex = 2
  then //вкладка "Прочие"
    begin
      TmpStr:= TmpStr + ' с целью ';

      if RdBtnAnothPrevCheckup.Checked
        then TmpStr:= TmpStr + 'превентивного обследования.';

      if RdBtnAnothPrevTreat.Checked
        then TmpStr:= TmpStr + 'превентивного лечения по поводу (!!! ДОПИСАТЬ !!!)';

      if RdBtnAnothPlanGravid.Checked
        then TmpStr:= TmpStr + 'превентивного обследования и возможного лечения перед планируемой '
                                                               + 'беременностью половой партнерши.';
      if RdBtnAnothContrCheckup.Checked
        then TmpStr:= TmpStr + 'контрольного обследования после проведенного курса лечения.';

      if RdBtnAnothPlanTreat.Checked
        then TmpStr:= TmpStr + 'лечения в плановом порядке по поводу (!!! ДОПИСАТЬ !!!)';

      if RdBtnAnothResrchRezlt.Checked
        then TmpStr:= TmpStr + 'осмотра с результатами исследований.';

      TmpStr:= WriteSymbolToEndString(TmpStr,'.');//ставим окончательную точку    
    end;

TextComplaint:= Trim(TmpStr);//присвоим сгенерированный текст переменной
end;

//----------------------------------------------------------------------------
//нажатие на кнопку "Далее"
procedure TFrmStatusPat.BtnNextClick(Sender: TObject);
begin
if PgCtrlVisit.ActivePageIndex < Pred(PgCtrlVisit.PageCount)//если не последняя страница
  then PgCtrlVisit.SelectNextPage(True);//движемся вперед
end;

//----------------------------------------------------------------------------
//нажатие на кнопку "Назад"
procedure TFrmStatusPat.BtnPrevClick(Sender: TObject);
begin
if PgCtrlVisit.ActivePageIndex > 0//если не первая страница
  then PgCtrlVisit.SelectNextPage(False);//движемся назад
end;

//----------------------------------------------------------------------------
//события, происходящие при создании формы
procedure TFrmStatusPat.FormCreate(Sender: TObject);
var TmpBlobID, MainBlobID: Variant;
    msComplaints, msSecretStuff, msStPraesens, msStLocalis, msStProstata,
    msLues, msBlood, msAIDS, msSperm,
    msUrethBactInoc, msUrinBactInoc, msProstBactInoc, msMicUrBactInoc,
    msIFA, msPCR, msOAM, msMazUrethra, msMazProst,
    msUZIRen, msUZIGenit, msUrScopiaDry, msUrScopiaIrrig,
    msDrugs, msManip, msDs, msRecom: TMemoryStream;
    UnqFName: TGUID;
begin
// грузим параметры формы
NiceSetFrmStatPat.LoadSettings;

CreateGuid(UnqFName);//генерируем GUID

//создаем уникальную папку для временных файлов на основе GUID
FPath:= ExtractFileDrive(Application.ExeName) + '\Temp\' + GUIDToString(UnqFName) + '\';

if not DirectoryExists(FPath) then ForceDirectories(FPath);

//последовательно открываем все "запараллеленные" таблицы
with DMFIB do
  begin
    DSetVisitMain.FullRefresh;
    DSetVisitLabor.FullRefresh;
    DSetVisitExamin.FullRefresh;
    DSetVisitBlob.FullRefresh;
  end;{with DMFIB do}

//отображаем вкладку лаб.исследований в зависимости от значения флага
if VisitPatientFlag     
  then PgCtrlLabResearch.ActivePageIndex:= 0 //добавляем запись
  else PgCtrlLabResearch.ActivePageIndex:= DMFIB.DSetVisitLabor.FN('PGCTRL_LABRES_INDEX').AsInteger;

//создаем во временной таблице запись, с которой будем работать
with DMFIB, TmpBlobQry do
  begin
    SQL.Clear;
    //получаем значение генератора
    SQL.Text:= 'SELECT GEN_ID(GEN_TMP_VISITBLOB_ID, 1) as TempID FROM RDB$DATABASE';
    ExecQuery;
    TmpBlobID:= FldByName['TempID'].Value;//ПК для времянки
    MainBlobID:= DSetVisitMain.FN('ID_VISITMAIN').Value;//ПК текущей записи мастера

    SQL.Clear;
    //вставляем во времянку пустую строку с известным ID
    SQL.Text:= 'INSERT INTO TMP_VISITBLOB(TMP_ID_VISITBLOB) VALUES (:prmTempID)';
    ParamByName('prmTempID').Value:= TmpBlobID;
    ExecQuery;

    if not VisitPatientFlag //если таблица TBL_VISITBLOB редактируется
      then //вставляем во времянку текущие значения TBL_VISITBLOB
        begin
          SQL.Clear;
          SQL.Text:=
            'UPDATE TMP_VISITBLOB ' +
            'SET ' +
                'TMP_STPRESENSFOTOS_01 = (SELECT STPRESENSFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_02 = (SELECT STPRESENSFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_03 = (SELECT STPRESENSFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_04 = (SELECT STPRESENSFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_01 = (SELECT STLOCALISFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_02 = (SELECT STLOCALISFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_03 = (SELECT STLOCALISFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_04 = (SELECT STLOCALISFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_RWFOTOS = (SELECT RWFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_AIDSFOTOS = (SELECT AIDSFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_HBSAGFOTOS = (SELECT HBSAGFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_01 = (SELECT MAZURFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_02 = (SELECT MAZURFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_03 = (SELECT MAZURFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_04 = (SELECT MAZURFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_05 = (SELECT MAZURFOTOS_05 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_06 = (SELECT MAZURFOTOS_06 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_01 = (SELECT MAZPRFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_02 = (SELECT MAZPRFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_03 = (SELECT MAZPRFOTOS_03  ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_04 = (SELECT MAZPRFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_PCRFOTOS = (SELECT PCRFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_IFAFOTOS = (SELECT IFAFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERM = (SELECT SPERM ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_KRUG = (SELECT KRUG ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMBIOCHEMIC = (SELECT SPERMBIOCHEMIC ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAR = (SELECT MAR ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMVITAL = (SELECT SPERMVITAL ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMFOTOS = (SELECT SPERMFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_KRUGFOTOS = (SELECT KRUGFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMBIOCHEMICFOTOS = (SELECT SPERMBIOCHEMICFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MARFOTOS = (SELECT MARFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMVITALFOTOS = (SELECT SPERMVITALFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_OAKFOTOS = (SELECT OAKFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_OAK = (SELECT OAK ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_BLOODBIO = (SELECT BLOODBIO ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_HORM = (SELECT HORM ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_BLOODBIOFOTOS = (SELECT BLOODBIOFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_HORMFOTOS = (SELECT HORMFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_ONKOMARKER = (SELECT ONKOMARKER ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_ONKOMARKERFOTOS = (SELECT ONKOMARKERFOTOS ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_ONKOMARKERFOTOS_EXT = (SELECT ONKOMARKERFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_IONES = (SELECT IONES ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_01 = (SELECT UZIRENFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_02 = (SELECT UZIRENFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_03 = (SELECT UZIRENFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_04 = (SELECT UZIRENFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_01 = (SELECT UZIGENITFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_02 = (SELECT UZIGENITFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_03 = (SELECT UZIGENITFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_04 = (SELECT UZIGENITFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_01 = (SELECT URSCOPIADRYFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_02 = (SELECT URSCOPIADRYFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_03 = (SELECT URSCOPIADRYFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_04 = (SELECT URSCOPIADRYFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_05 = (SELECT URSCOPIADRYFOTOS_05 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_06 = (SELECT URSCOPIADRYFOTOS_06 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_01 = (SELECT URSCOPIAIRRIGFOTOS_01 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_02 = (SELECT URSCOPIAIRRIGFOTOS_02 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_03 = (SELECT URSCOPIAIRRIGFOTOS_03 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_04 = (SELECT URSCOPIAIRRIGFOTOS_04 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_05 = (SELECT URSCOPIAIRRIGFOTOS_05 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_06 = (SELECT URSCOPIAIRRIGFOTOS_06 ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_01_EXT = (SELECT STPRESENSFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_02_EXT = (SELECT STPRESENSFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_03_EXT = (SELECT STPRESENSFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STPRESENSFOTOS_04_EXT = (SELECT STPRESENSFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_01_EXT = (SELECT STLOCALISFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_02_EXT = (SELECT STLOCALISFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_03_EXT = (SELECT STLOCALISFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_STLOCALISFOTOS_04_EXT = (SELECT STLOCALISFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_RWFOTOS_EXT = (SELECT RWFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_AIDSFOTOS_EXT = (SELECT AIDSFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_HBSAGFOTOS_EXT = (SELECT HBSAGFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_01_EXT = (SELECT MAZURFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_02_EXT = (SELECT MAZURFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_03_EXT = (SELECT MAZURFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_04_EXT = (SELECT MAZURFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_05_EXT = (SELECT MAZURFOTOS_05_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZURFOTOS_06_EXT = (SELECT MAZURFOTOS_06_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_01_EXT = (SELECT MAZPRFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_02_EXT = (SELECT MAZPRFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_03_EXT = (SELECT MAZPRFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MAZPRFOTOS_04_EXT = (SELECT MAZPRFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_PCRFOTOS_EXT = (SELECT PCRFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_IFAFOTOS_EXT = (SELECT IFAFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMFOTOS_EXT = (SELECT SPERMFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_KRUGFOTOS_EXT = (SELECT KRUGFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMBIOCHEMICFOTOS_EXT = (SELECT SPERMBIOCHEMICFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_MARFOTOS_EXT = (SELECT MARFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMVITALFOTOS_EXT = (SELECT SPERMVITALFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_OAKFOTOS_EXT = (SELECT OAKFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_BLOODBIOFOTOS_EXT = (SELECT BLOODBIOFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_HORMFOTOS_EXT = (SELECT HORMFOTOS_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_01_EXT = (SELECT UZIRENFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_02_EXT = (SELECT UZIRENFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_03_EXT = (SELECT UZIRENFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIRENFOTOS_04_EXT = (SELECT UZIRENFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_01_EXT = (SELECT UZIGENITFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_02_EXT = (SELECT UZIGENITFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_03_EXT = (SELECT UZIGENITFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_UZIGENITFOTOS_04_EXT = (SELECT UZIGENITFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_01_EXT = (SELECT URSCOPIADRYFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_02_EXT = (SELECT URSCOPIADRYFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_03_EXT = (SELECT URSCOPIADRYFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_04_EXT = (SELECT URSCOPIADRYFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_05_EXT = (SELECT URSCOPIADRYFOTOS_05_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIADRYFOTOS_06_EXT = (SELECT URSCOPIADRYFOTOS_06_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_01_EXT = (SELECT URSCOPIAIRRIGFOTOS_01_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_02_EXT = (SELECT URSCOPIAIRRIGFOTOS_02_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_03_EXT = (SELECT URSCOPIAIRRIGFOTOS_03_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_04_EXT = (SELECT URSCOPIAIRRIGFOTOS_04_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_05_EXT = (SELECT URSCOPIAIRRIGFOTOS_05_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_URSCOPIAIRRIGFOTOS_06_EXT = (SELECT URSCOPIAIRRIGFOTOS_06_EXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_BLOODTEXT = (SELECT BLOODTEXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_LUESTEXT = (SELECT LUESTEXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_AIDSTEXT = (SELECT AIDSTEXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID), ' +
                'TMP_SPERMTEXT = (SELECT SPERMTEXT ' +
                  'FROM TBL_VISITBLOB WHERE ID_VISITBLOB = :prmMainID) ' +
            'WHERE TMP_ID_VISITBLOB = :prmTempID';

          Prepare;
          ParamByName('prmTempID').Value:= TmpBlobID;
          ParamByName('prmMainID').Value:= MainBlobID;
          ExecQuery;
        end;

    //откроем времянку, чтобы можно было работать как с обычной таблицей
    DSetTmpBlobVisit.ParamByName('prmTmpID').Value:= TmpBlobID;
    DSetTmpBlobVisit.Prepare;
    DSetTmpBlobVisit.FullRefresh;
  end;


//количество попаданий на вкладку "Анамнез" на момент создания формы
AnamListNo:= 0;
//if VisitPatientFlag
//  then
//   AnamListNo:= 0  //если запись создается
//  else
//    AnamListNo:= 1; //если запись редактируется, то мы можем не попасть на вкладку с жалобами,
                    //значит надо это "попадание" сэмулировать, иначе при сохранении формы
                    //жалобы будут принудительно сформированы

//ExstWarng:= 0;//показатель, что ни разу не кликали мышей лукап-боксы

//==== определяем текст жалоб и анамнеза
  //"обнуляем" глобальные переменные
  TextComplaint:= '';//жалобы
  TextSecretStuff:= '';//конфиденциальные сведения
  TextAnamAllergy:= '';//аллергологический анамнез
  TextAnamAnthrDes:= '';//перенесенные заболевания
  TextAnamChldDes:= '';//детские инфекции
  TextAndrZPPP:= '';//ИППП у мужчин
  TextGinZPPP:= '';//ИППП у женщин

  //чистим рич-эдиты
  RichEditComplaints.Clear;
  RichEditSecretStuff.Clear;
  RchEdtAnamAllergy.Clear;
  RchEdtAnamAnthrDes.Clear;
  RchEdtAnamChldDes.Clear;
  RchEdtAndrZPPP.Clear;
  RchEdtGinZPPP.Clear;


//вкладка жалобы и анамнез
if VisitPatientFlag
  then //если добавлена новая запись
    begin
      ChkBoxSecretStuff.Checked:= False;//секретные сведения

      //==== общий анамнез ====
      ChkBoxAnamnesAllergy.Checked:= False;
      RdBtnAllergyNo.Checked:= True;
      RdBtnAllergyYes.Checked:= False;

      ChkBoxBadHabit.Checked:= False;
      ChkBoxAnamSmoke.Checked:= False;
      SpnEdtSigarCount.Value:= 1;
      SpnEdtSmokeAge.Value:= 1;
      CbBoxSmokePeriod.ItemIndex:= 1;
      ChkBoxAmanAlkohol.Checked:= False;

      // ===== андрологический анамнез ====
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

      //==== гинекологический анамнез ====
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
    end
  else //редактируется имеющаяся запись
    with DMFIB do
      begin
        msComplaints:= TMemoryStream.Create;
        msSecretStuff:= TMemoryStream.Create;
        try
          //грузим текст жалоб
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

            //помечаем "секретный" чекбокс
            ChkBoxSecretStuff.Checked:= IntConvertBool(FN('CHKSECRET_STUFF').AsInteger);

            //==== общий анамнез ====
            ChkBoxAnamnesAllergy.Checked:= IntConvertBool(FN('ANAMNESALLERGY_CHK').AsInteger);
            RdBtnAllergyNo.Checked:= IntConvertBool(FN('ALLERGY').AsInteger);
            RdBtnAllergyYes.Checked:= not(IntConvertBool(FN('ALLERGY').AsInteger));

            ChkBoxBadHabit.Checked:= IntConvertBool(FN('BADHABIT_CHK').AsInteger);
            ChkBoxAnamSmoke.Checked:= IntConvertBool(FN('ANAMSMOKE').AsInteger);
            SpnEdtSigarCount.Value:= FN('SIGARCOUNT').AsInteger;
            SpnEdtSmokeAge.Value:= FN('SMOKEAGE').AsInteger;
            CbBoxSmokePeriod.ItemIndex:= FN('SMOKEPERIOD').AsInteger;
            ChkBoxAmanAlkohol.Checked:= IntConvertBool(FN('ANAMALKOHOL').AsInteger);

            // ===== андрологический анамнез ====
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

            //==== гинекологический анамнез ====
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

//принудительно помечаем кнопки "Требуется описать" вкладки "Status praesens"
RdBtnStPraesensTempl.Checked:= True; //общий статус
RdBtnStLocalisTempl.Checked:= True;//статус гениталий
RdBtnProstataTempl.Checked:= True;//статус простаты

//==== определяем текст объективного статуса

  //"обнуляем" глобальные переменные
  TextStPraesens:= '';//описание пустое
  TextStLocalis:= '';
  TextStProstata:= '';


if VisitPatientFlag
  then //если добавлена новая запись
    begin
    //"чистим" рич-эдиты
    RichEditStPraesens.Clear;
    RichEditStLocalis.Clear;
    RichEditProstata.Clear;

    //------ присваиваем переменным листа обследования на сифилис начальные значения
    //если добавлена новая запись, то все значения по умолчанию отрицательные
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

    end{if VisitPatientFlag..then}
  else //редактируется имеющаяся запись

    with DMFIB do
      begin
        msStPraesens:= TMemoryStream.Create;
        msStLocalis:= TMemoryStream.Create;
        msStProstata:= TMemoryStream.Create;

        try
          //грузим текст объективного статуса
          TBlobField(DSetVisitBlob.FN('StPraesens')).SaveToStream(msStPraesens);
          msStPraesens.Position:= 0;
          RichEditStPraesens.Lines.LoadFromStream(msStPraesens);
          TextStPraesens:= GetRTFText(RichEditStPraesens);

          //грузим текст местного статуса
          TBlobField(DSetVisitBlob.FN('StLocalis')).SaveToStream(msStLocalis);
          msStLocalis.Position:= 0;
          RichEditStLocalis.Lines.LoadFromStream(msStLocalis);
          TextStLocalis:= GetRTFText(RichEditStLocalis);

          //грузим текст описания простаты
          TBlobField(DSetVisitBlob.FN('StProstata')).SaveToStream(msStProstata);
          msStProstata.Position:= 0;
          RichEditProstata.Lines.LoadFromStream(msStProstata);
          TextStProstata:= GetRTFText(RichEditProstata);

        finally
          msStPraesens.Free;
          msStLocalis.Free;
          msStProstata.Free;
        end;{try..finally}

        //-- присваиваем переменным листа обследования на сифилис значения из БД
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

//===== определяем тексты на вкладке "Лабораторные исследования"
  //"обнуляем" глобальные переменные
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

if VisitPatientFlag
  then//добавлена новая запись
    begin
    //"чистим" рич-эдиты
    RichEdtLues.Clear;
    RichEdtBlood.Clear;
    RichEdtAIDS.Clear;
    RichEdtSperm.Clear;

    RichEdtUrethBactInoc.Clear;
    RichEdtProstBactInoc.Clear;
    RichEdtMicUrBactInoc.Clear;
    RichEdtUrinBactInoc.Clear;

    RichEditOAM.Clear;
    RichEditIFA.Clear;
    RichEditPCR.Clear;
    RichEditMazUr.Clear;
    RichEditMazProst.Clear;

    //------- присваиваем начальные значения ПЦР-переменным
    // по дефолту они все "нулевые(ложные)"
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

    //------- присваиваем начальные значения ИФА-переменным
      //булевым(в целочисленном эквиваленте) признакам наличия "сделанного" анализа
      VarIFADate:= Date;//дата проведения ИФА исследования

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

      //номера ItemIndex соответствующих комбобоксов

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


    //------- присваиваем начальные значения переменным анализов мочи
      VarOAMDate:= Date;//дата проведения общего анализа мочи
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


      VarNechiporDate:= Date;//дата проведения анализа мочи по Нечипоренко
      VarNechiporLeu:='';
      VarNechiporEr:='';
      VarNechiporFlora:='';

    //------- присваиваем начальные значения переменным мазка из уретры
      VarMazUrethraDate:= Date;//дата проведения мазка из уретры
      VarMazUrLeu:= '';
      VarMazUrEr:= '';
      VarMazUrGn:= 0;
      VarMazUrTr:= 0;
      VarMazUrFlora:= 0;
      VarMazUrEpit:= '';
      VarMazUrKeyCell:= 0;
      VarMazUrCand:= 0;
      VarMazUrMucos:= '';

    //------- присваиваем начальные значения переменным мазка из шейки матки
      VarMazCvxLeu:= '';
      VarMazCvxEr:= '';
      VarMazCvxGn:= 0;
      VarMazCvxTr:= 0;
      VarMazCvxFlora:= 0;
      VarMazCvxEpit:= '';
      VarMazCvxKeyCell:= 0;
      VarMazCvxCand:= 0;
      VarMazCvxMucos:= '';

    //------- присваиваем начальные значения переменным мазка из влагалища
      VarMazVgnLeu:= '';
      VarMazVgnEr:= '';
      VarMazVgnGn:= 0;
      VarMazVgnTr:= 0;
      VarMazVgnFlora:= 0;
      VarMazVgnEpit:= '';
      VarMazVgnKeyCell:= 0;
      VarMazVgnCand:= 0;
      VarMazVgnMucos:= '';

    //------- присваиваем начальные значения переменным мазка из прямой кишки
      VarMazRectLeu:= '';
      VarMazRectEr:= '';
      VarMazRectGn:= 0;
      VarMazRectTr:= 0;
      VarMazRectFlora:= 0;
      VarMazRectEpit:= '';
      VarMazRectKeyCell:= 0;
      VarMazRectCand:= 0;
      VarMazRectMucos:= '';


    //------- присваиваем начальные значения переменным мазка из уретры
      VarMazProstDate:= Date;//дата проведения мазка сока простаты
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

    //------- присваиваем начальные значения переменным спермограммы

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


      VarPgCtrlBloodHorm:= 0;//дефолтовый  номер вкладки формы с анализами крови
    //------- присваиваем начальные значения переменным общего анализа крови

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

    //------- присваиваем начальные значения переменным биохимии крови
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

      //------- присваиваем начальные значения "гормональным" переменным
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

      //------- присваиваем начальные значения "онкомаркерным" переменным
      VarOnkomarkDate:= Date;
      VarPSA_Total:= '';
      VarPSA_Free:= '';
      VarPSA_Ratio:= '';

      //------- присваиваем начальные значения "электролитным" переменным
      VarBloodIonesDate:= Date;
      VarIones_Na:= '';
      VarIones_K:= '';
      VarIones_Cl:= '';
      VarIones_Ca:= '';
      VarIonesBlood_pH:= '';


      //------- присваиваем начальные значения переменным бак.посевов

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

(**)
    end{if VisitPatientFlag..then}

  else//редактируется имеющаяся запись

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
          //грузим текст анализов Lues-листа
          TBlobField(DSetVisitBlob.FN('LUESTEXT')).SaveToStream(msLues);
          msLues.Position:= 0;
          RichEdtLues.Lines.LoadFromStream(msLues);
          TextLues:= GetRTFText(RichEdtLues);

          //грузим текст клинических анализов крови
          TBlobField(DSetVisitBlob.FN('BLOODTEXT')).SaveToStream(msBlood);
          msBlood.Position:= 0;
          RichEdtBlood.Lines.LoadFromStream(msBlood);
          TextBlood:= GetRTFText(RichEdtBlood);

          //грузим текст анализов на гепатиты, сифилис, СПИД
          TBlobField(DSetVisitBlob.FN('AIDSTEXT')).SaveToStream(msAIDS);
          msAIDS.Position:= 0;
          RichEdtAIDS.Lines.LoadFromStream(msAIDS);
          TextAIDS:= GetRTFText(RichEdtAIDS);

          //грузим текст анализов эякулята
          TBlobField(DSetVisitBlob.FN('SPERMTEXT')).SaveToStream(msSperm);
          msSperm.Position:= 0;
          RichEdtSperm.Lines.LoadFromStream(msSperm);
          TextSperm:= GetRTFText(RichEdtSperm);

          //грузим текст анализов бак.посева из уретры
          TBlobField(DSetVisitBlob.FN('URETHBACTINOCTEXT')).SaveToStream(msUrethBactInoc);
          msUrethBactInoc.Position:= 0;
          RichEdtUrethBactInoc.Lines.LoadFromStream(msUrethBactInoc);
          TextUrethBactInoc:= GetRTFText(RichEdtUrethBactInoc);

          //грузим текст анализов бак.посева мочи
          TBlobField(DSetVisitBlob.FN('URINBACTINOCTEXT')).SaveToStream(msUrinBactInoc);
          msUrinBactInoc.Position:= 0;
          RichEdtUrinBactInoc.Lines.LoadFromStream(msUrinBactInoc);
          TextUrinBactInoc:= GetRTFText(RichEdtUrinBactInoc);

          //грузим текст анализов бак.посева СПЖ
          TBlobField(DSetVisitBlob.FN('PROSTBACTINOCTEXT')).SaveToStream(msProstBactInoc);
          msProstBactInoc.Position:= 0;
          RichEdtProstBactInoc.Lines.LoadFromStream(msProstBactInoc);
          TextProstBactInoc:= GetRTFText(RichEdtProstBactInoc);

          //грузим текст анализов бак.посева на уреаплазму и микоплазму
          TBlobField(DSetVisitBlob.FN('MICURBACTINOCTEXT')).SaveToStream(msMicUrBactInoc);
          msMicUrBactInoc.Position:= 0;
          RichEdtMicUrBactInoc.Lines.LoadFromStream(msMicUrBactInoc);
          TextMicUrBactInoc:= GetRTFText(RichEdtMicUrBactInoc);

          //грузим текст анализов ИФА
          TBlobField(DSetVisitBlob.FN('IFA')).SaveToStream(msIFA);
          msIFA.Position:= 0;
          RichEditIFA.Lines.LoadFromStream(msIFA);
          TextIFA:= GetRTFText(RichEditIFA);

          //грузим текст анализов ПЦР
          TBlobField(DSetVisitBlob.FN('PCR')).SaveToStream(msPCR);
          msPCR.Position:= 0;
          RichEditPCR.Lines.LoadFromStream(msPCR);
          TextPCR:= GetRTFText(RichEditPCR);

          //грузим текст анализов мочи
          TBlobField(DSetVisitBlob.FN('OAM')).SaveToStream(msOAM);
          msOAM.Position:= 0;
          RichEditOAM.Lines.LoadFromStream(msOAM);
          TextOAM:= GetRTFText(RichEditOAM);

          //грузим текст мазка из уретры
          TBlobField(DSetVisitBlob.FN('MazUrethra')).SaveToStream(msMazUrethra);
          msMazUrethra.Position:= 0;
          RichEditMazUr.Lines.LoadFromStream(msMazUrethra);
          TextMazUr:= GetRTFText(RichEditMazUr);

          //грузим текст мазка сока простаты
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
            //------- присваиваем значения ПЦР-переменным
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

        //------- грузим имеющиеся в БД значения переменным анализов ИФА
            VarIFADate:= FieldByName('IFADate').AsDateTime;

            //булевым признакам наличия "сделанного" анализа
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

          //номера ItemIndex соответствующих комбобоксов

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

        //------- грузим имеющиеся в БД значения переменным анализов мочи
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

        //------- грузим имеющиеся в БД значения переменным мазка из уретры
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

        //------- грузим имеющиеся в БД значения переменным мазка из шейки матки
            VarMazCvxLeu:= FieldByName('MazCvxLeu').AsString;
            VarMazCvxEr:= FieldByName('MazCvxEr').AsString;
            VarMazCvxGn:= FieldByName('MazCvxGn').AsInteger;
            VarMazCvxTr:= FieldByName('MazCvxTr').AsInteger;
            VarMazCvxFlora:= FieldByName('MazCvxFlora').AsInteger;
            VarMazCvxEpit:= FieldByName('MazCvxEpit').AsString;
            VarMazCvxKeyCell:= FieldByName('MazCvxKeyCell').AsInteger;
            VarMazCvxCand:= FieldByName('MazCvxCand').AsInteger;
            VarMazCvxMucos:= FieldByName('MazCvxMucos').AsString;

        //------- грузим имеющиеся в БД значения переменным мазка из влагалища
            VarMazVgnLeu:= FieldByName('MazVgnLeu').AsString;
            VarMazVgnEr:= FieldByName('MazVgnEr').AsString;
            VarMazVgnGn:= FieldByName('MazVgnGn').AsInteger;
            VarMazVgnTr:= FieldByName('MazVgnTr').AsInteger;
            VarMazVgnFlora:= FieldByName('MazVgnFlora').AsInteger;
            VarMazVgnEpit:= FieldByName('MazVgnEpit').AsString;
            VarMazVgnKeyCell:= FieldByName('MazVgnKeyCell').AsInteger;
            VarMazVgnCand:= FieldByName('MazVgnCand').AsInteger;
            VarMazVgnMucos:= FieldByName('MazVgnMucos').AsString;

        //------- грузим имеющиеся в БД значения переменным мазка из прямой кишки
            VarMazRectLeu:= FieldByName('MazRectLeu').AsString;
            VarMazRectEr:= FieldByName('MazRectEr').AsString;
            VarMazRectGn:= FieldByName('MazRectGn').AsInteger;
            VarMazRectTr:= FieldByName('MazRectTr').AsInteger;
            VarMazRectFlora:= FieldByName('MazRectFlora').AsInteger;
            VarMazRectEpit:= FieldByName('MazRectEpit').AsString;
            VarMazRectKeyCell:= FieldByName('MazRectKeyCell').AsInteger;
            VarMazRectCand:= FieldByName('MazRectCand').AsInteger;
            VarMazRectMucos:= FieldByName('MazRectMucos').AsString;

        //------- грузим имеющиеся в БД значения переменным мазка сока простаты
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

          //------- присваиваем текущие значения переменным спермограммы

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

            //читаем номер вкладки, которую в последний раз открывали на форме с анализами крови
            VarPgCtrlBloodHorm:= FN('PGCTRL_BLOODHORM_INDEX').AsInteger;

            //------- присваиваем текущие значения переменным общего анализа крови

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

            //------- присваиваем текущие значения переменным биохимии крови
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

            //------- присваиваем значения "гормональным" переменным
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

            //------- присваиваем значения "электролитным" переменным
            VarBloodIonesDate:= FN('BLOODIONESDATE').AsDateTime;
            VarIones_Na:= Trim(FN('IONES_NA').AsString);
            VarIones_K:= Trim(FN('IONES_K').AsString);
            VarIones_Cl:= Trim(FN('IONES_CL').AsString);
            VarIones_Ca:= Trim(FN('IONES_CA').AsString);
            VarIonesBlood_pH:= Trim(FN('IONESBLOOD_PH').AsString);

            //сохраняем результаты бак.посевов

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

//===== определяем тексты на вкладке "Инструментальные исследования"
  //"обнуляем" глобальные переменные
  TextUZIRen:= '';
  TextUZIGenit:= '';
  TextUrScopiaDry:= '';
  TextUrScopiaIrrig:= '';

if VisitPatientFlag
  then//добавлена новая запись
    begin
    //"чистим" рич-эдиты
    RichEditUZIRen.Clear;
    RichEditUZIGenit.Clear;
    RichEditUrScopiaDry.Clear;
    RichEditUrScopiaIrrig.Clear;

    //------- присваиваем начальные значения УЗИ-переменным
    VarPgCtrlUZIGenit:= 0;//номер вкладки на форме

    //--- вкладка "УЗИ почек"
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

    //--- вкладка "УЗИ мочевого пузыря"
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


    //---вкладка "УЗИ простаты"
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


    //--- вкладка "УЗИ мошонки"
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

    //--- вкладка "УЗИ пениса"
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

    //--- вкладка "УЗДГ сосудов мошонки"
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

    //------- присваиваем начальные значения переменным сухой уретроскопии
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

    //------- присваиваем начальные значения переменным ирригационной уретроскопии
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

    end
  else//запись редактируется

    with DMFIB do
      begin
        msUZIRen:= TMemoryStream.Create;
        msUZIGenit:= TMemoryStream.Create;
        msUrScopiaDry:= TMemoryStream.Create;
        msUrScopiaIrrig:= TMemoryStream.Create;

        try
          //грузим текст УЗИ почек
          TBlobField(DSetVisitBlob.FN('UZIRen')).SaveToStream(msUZIRen);
          msUZIRen.Position:= 0;
          RichEditUZIRen.Lines.LoadFromStream(msUZIRen);
          TextUZIRen:= GetRTFText(RichEditUZIRen);

          //грузим текст УЗИ гениталий
          TBlobField(DSetVisitBlob.FN('UZIGenit')).SaveToStream(msUZIGenit);
          msUZIGenit.Position:= 0;
          RichEditUZIGenit.Lines.LoadFromStream(msUZIGenit);
          TextUZIGenit:= GetRTFText(RichEditUZIGenit);

          //грузим текст передней уретроскопии
          TBlobField(DSetVisitBlob.FN('UrScopiaDry')).SaveToStream(msUrScopiaDry);
          msUrScopiaDry.Position:= 0;
          RichEditUrScopiaDry.Lines.LoadFromStream(msUrScopiaDry);
          TextUrScopiaDry:= GetRTFText(RichEditUrScopiaDry);

         //грузим текст ирригационной уретроскопии
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
            //------- присваиваем значения переменным УЗИ
            VarPgCtrlUZIGenit:= FN('PGCTRLUZIGENIT').AsInteger;//номеру вкладки на форме

            //--- вкладка "УЗИ почек"
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

            //--- вкладка "УЗИ мочевого пузыря"
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


            //---вкладка "УЗИ простаты"
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


            //--- вкладка "УЗИ мошонки"
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

            //--- вкладка "УЗИ пениса"
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

            //--- вкладка "УЗДГ сосудов мошонки"
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


            //------- присваиваем начальные значения переменным сухой уретроскопии
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

            //------- присваиваем начальные значения переменным ирригационной уретроскопии
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

//===== определяем тексты на вкладке "Диагноз и лечение"

  //"обнуляем" глобальные переменные
  TextDrugs:= '';
  TextManip:= '';
  TextDs:= '';
  TextRecom:= '';

if VisitPatientFlag
  then //добавлена новая запись
    begin
    //"чистим" рич-эдиты
    RichEditDrug.Clear;
    RichEditManip.Clear;
    RichEditDs.Clear;
    RichEditRecom.Clear;
    end
  else //запись редактируется

    with DMFIB do
      begin
        msDrugs:= TMemoryStream.Create;
        msManip:= TMemoryStream.Create;
        msDs:= TMemoryStream.Create;
        msRecom:= TMemoryStream.Create;

        try
          //грузим тексты рич-эдитов из базы
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

//----------------------------------------------------------------------------
//показываем (перерисовываем) форму
procedure TFrmStatusPat.FormShow(Sender: TObject);
begin
//форматируем и отображаем заголовок
LblStatusPatName.Caption:= Trim(FrmMainProg.LblStatusSingle.Caption);
FullPatName:= LblStatusPatName.Caption;

with Label17 do
  begin
    if VisitPatientFlag
      then Caption:= ' - добавление данных'
      else Caption:= ' - редактирование данных';
  end;{with}

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then Label7.Caption:= 'пациент   '
  else Label7.Caption:= 'пациентка   ';

Label7.Left:= (ClientWidth - (Label7.Width + LblStatusPatName.
                                                        Width + Label17.Width)) div 2;
LblStatusPatName.Left:= Label7.Left + Label7.Width;
Label17.Left:= LblStatusPatName.Left + LblStatusPatName.Width;

if VisitPatientFlag //если добавляем запись
  then //начинаем с формирования жалоб
    PgCtrlVisit.ActivePageIndex:= 0
  else //сразу переходим к готовому тексту жалоб
    begin
      PgCtrlVisit.ActivePageIndex:= 1;
      ShowComplaintSheet(Sender);//эмулируем "заход" на вкладку с жалобами, чтобы правильно сформировать данные
    end;

//идем в процедуру листания вкладок и заполняем их там по мере необходимости
PgCtrlVisitChange(Sender);
end;


//----------------------------------------------------------------------------

(*****************************************************************************)
(*                                                                           *)
(*          Процедуры, описывающие показ(прорисовку) вкладок                 *)
(*                                                                           *)
(*****************************************************************************)

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////        Показ вкладки "жалобы" и сопутствующие процедуры         ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////


procedure TFrmStatusPat.ShowComplaintSheet(Sender: TObject);
begin
//заполняем ЛукАпКомбоБокс с докторами
PrepareDBLookUpCBDocChoice(Sender);

//заполняем ЛукАпКомбоБокс с ЛПУ
PrepareDBLookUpCBClinChoice(Sender);

//отображаем нужные жалобы на нужной вкладке
PgCtrlComplaint.Pages[0].TabVisible:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);


if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1 //если мужчина
  then //показываем вкладки "андрологические жалобы" и "прочие"
    begin
      PgCtrlComplaint.ActivePageIndex:= DMFIB.DSetVisitMain.FN('COMPLAINT_PAGEINDEX').AsInteger;
    end
  else //иначе это женщина, прячем вкладки "андрологические жалобы" и "прочие"
    begin
      PgCtrlComplaint.ActivePageIndex:= 1;
    end;

if VisitPatientFlag
  then //добавляются новые данные
    begin
    DTPickPriem.DateTime:= Today;

    //первичность визита определяем по предыдущим визитам
    RdBtnVisitPrimary.Checked:= DMFIB.DSetSinglePat.IsEmpty;


    //>>> вкладка "Андрологические жалобы"
    //---- болевой синдром -----
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


    //----- дизурический синдром ------
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

    // ----- дизэякуляторный синдром -----
    ChkBoxFastEjacul.Checked:= False;
    ChkBoxAnEjacul.Checked:= False;
    ChkBoxDolorEjacul.Checked:= False;
    ChkBoxBloodEjacul.Checked:= False;
    ChkBoxIdleEjacul.Checked:= False;
    ChkBoxSlowEjacul.Checked:= False;

    //----- ипохондрический синдром -----
    ChkBoxLowLibido.Checked:= False;
    ChkBoxLowTonus.Checked:= False;
    ChkBoxLowVozbuzhd.Checked:= False;

    //----- ирритативный синдром -----
    ChkBoxDischarge.Checked:= False;
    SpEdtUrethAge.Value:= 0;

    //----- сосудистый синдром -----
    ChkBoxLowErection.Checked:= False;
    ChkBoxSlowTumesc.Checked:= False;
    ChkBoxBadErection.Checked:= False;
    ChkBoxMorningErection.Checked:= True;

    ChkBoxNoErection.Checked:= False;
    ChkBoxPenisDeform.Checked:= False;
    ChkBoxVaricocele.Checked:= False;
    CbBoxVaricSide.ItemIndex:= 0;
    CbBoxVaricPosit.ItemIndex:= 1;

    //>>> вкладка "Урологические жалобы"
    //----- синдром интоксикации -----
    ChkBoxUrAsthenia.Checked:= False;
    ChkBoxUrFlabbiness.Checked:= False;
    ChkBoxUrHyperhidros.Checked:= False;
    ChkBoxUrSubfebril.Checked:= False;
    CbBoxUrSubfebril.ItemIndex:= 0;

    //----- болевой синдром -----
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

    //----- дизурический синдром -----
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

    //>>> вкладка "Прочие"
    RdBtnAnothPrevCheckup.Checked:= True;
    RdBtnAnothPrevTreat.Checked:= False;
    RdBtnAnothPlanGravid.Checked:= False;
    RdBtnAnothContrCheckup.Checked:= False;
    RdBtnAnothPlanTreat.Checked:= False;
    RdBtnAnothResrchRezlt.Checked:= False;

    end {if VisitPatientFlag..then}
  else //редактируются данные
    begin
    with DMFIB.DSetVisitMain do
      begin
      DBLookupCBDocChoice.KeyValue:= FieldByName('Vis_LinkDoctor').Value;
      DBLookupCBClinChoice.KeyValue:= FieldByName('Vis_LinkClinic').Value;
      DTPickPriem.Date:= FieldByName('DateVisit').AsDateTime;
      RdBtnVisitPrimary.Checked:= (FieldByName('FirstVisit').AsInteger = 1);

      //>>> вкладка "Андрологические жалобы"
      //---- болевой синдром -----
      ChkBoxDolorPubica.Checked:= IntConvertBool(FieldByName('DolorPubica').AsInteger);
      ChkBoxDolorPerineum.Checked:= IntConvertBool(FieldByName('DolorPerineum').AsInteger);
      ChkBoxDolorInguinal.Checked:= IntConvertBool(FieldByName('DolorInguinal').AsInteger);
      ChkBoxDolorTestis.Checked:= IntConvertBool(FieldByName('DolorTestis').AsInteger);
      ChkBoxDolorLumbo.Checked:= IntConvertBool(FieldByName('DolorLumbo').AsInteger);
      ChkBoxDolorSacrum.Checked:= IntConvertBool(FieldByName('DolorSacrum').AsInteger);

      ChkBoxBadSensUreth.Checked:= IntConvertBool(FieldByName('BadSensUreth').AsInteger);
      ChkBoxColicSensUreth.Checked:= IntConvertBool(FieldByName('ColicSensUreth').AsInteger);
      ChkBoxBadSensPerineum.Checked:= IntConvertBool(FieldByName('BadSensPerineum').AsInteger);
      ChkBoxColicSensPerineum.Checked:= IntConvertBool(FieldByName('ColicSensPerineum').AsInteger);
      ChkBoxDolorPenisDetumesc.Checked:= IntConvertBool(FieldByName('DolorPenisDetumesc').AsInteger);
      ChkBoxDolorPenisErect.Checked:= IntConvertBool(FieldByName('DolorPenisErect').AsInteger);

      //----- дизурический синдром ------
      ChkBoxPollakiuria.Checked:= IntConvertBool(FieldByName('Pollakiuria').AsInteger);
      SpEdtMicciaCount.Value:= FieldByName('MicciaCount').AsInteger;
      SpEdtPollaciuriaAge.Value:= FieldByName('PollakiuriaAge').AsInteger;
      CbBoxPollaciuriaPeriod.ItemIndex:= FieldByName('POLLACIURIAPERIOD').AsInteger;
      ChkBoxDolorMiccia.Checked:= IntConvertBool(FieldByName('DolorMiccia').AsInteger);
      ChkBoxNicturia.Checked:= IntConvertBool(FieldByName('Nicturia').AsInteger);
      SpEdtNicturiaCount.Value:= FieldByName('NicturiaCount').AsInteger;
      SpEdtNicturiaAge.Value:= FieldByName('NicturiaAge').AsInteger;
      CbBoxNicturiaPeriod.ItemIndex:= FieldByName('NICTURIAPERIOD').AsInteger;
      ChkBoxStranguria.Checked:= IntConvertBool(FieldByName('Stranguria').AsInteger);
      ChkBoxVesUrinUncomplete.Checked:= IntConvertBool(FieldByName('VesUrinUncomplete').AsInteger);
      ChkBoxIshuria.Checked:= IntConvertBool(FN('ISHURIA').AsInteger);
      ChkBoxIncontinence.Checked:= IntConvertBool(FN('INCONTINENCE').AsInteger);
      CbBoxIncontinenceCase.ItemIndex:= FN('INCONTINENCECASE').AsInteger;

      // ----- дизэякуляторный синдром -----
      ChkBoxFastEjacul.Checked:= IntConvertBool(FieldByName('FastEjacul').AsInteger);
      ChkBoxAnEjacul.Checked:= IntConvertBool(FieldByName('AnEjacul').AsInteger);
      ChkBoxDolorEjacul.Checked:= IntConvertBool(FieldByName('DolorEjacul').AsInteger);
      ChkBoxBloodEjacul.Checked:= IntConvertBool(FieldByName('BloodEjacul').AsInteger);
      ChkBoxIdleEjacul.Checked:= IntConvertBool(FieldByName('IdleEjacul').AsInteger);
      ChkBoxSlowEjacul.Checked:= IntConvertBool(FieldByName('SlowEjacul').AsInteger);

      //----- ипохондрический синдром -----
      ChkBoxLowLibido.Checked:= IntConvertBool(FieldByName('LowLibido').AsInteger);
      ChkBoxLowTonus.Checked:= IntConvertBool(FieldByName('LowTonus').AsInteger);
      ChkBoxLowVozbuzhd.Checked:= IntConvertBool(FieldByName('LowVozbuzhd').AsInteger);

      //----- ирритативный синдром -----
      ChkBoxDischarge.Checked:= IntConvertBool(FieldByName('Discharge').AsInteger);
      SpEdtUrethAge.Value:= FieldByName('UrethAge').AsInteger;
      CbBoxDischargeNature.ItemIndex:= FieldByName('DischargeNature').AsInteger;
      CbBoxDischargeVolume.ItemIndex:= FieldByName('DischargeVolume').AsInteger;
      CbBoxDischargeRegul.ItemIndex:= FieldByName('DischargeRegul').AsInteger;
      CbBoxDischargeDurat.ItemIndex:= FieldByName('DischargeDurat').AsInteger;

      //----- сосудистый синдром -----
      ChkBoxLowErection.Checked:= IntConvertBool(FieldByName('LowErection').AsInteger);
      ChkBoxSlowTumesc.Checked:= IntConvertBool(FieldByName('SlowTumesc').AsInteger);
      ChkBoxBadErection.Checked:= IntConvertBool(FieldByName('BadErection').AsInteger);
      ChkBoxMorningErection.Checked:= IntConvertBool(FieldByName('MorningErection').AsInteger);

      ChkBoxNoErection.Checked:= IntConvertBool(FieldByName('NoErection').AsInteger);
      ChkBoxPenisDeform.Checked:= IntConvertBool(FieldByName('PenisDeform').AsInteger);
      ChkBoxVaricocele.Checked:= IntConvertBool(FieldByName('Varicocele').AsInteger);
      CbBoxVaricSide.ItemIndex:= FieldByName('VaricSide').AsInteger;
      CbBoxVaricPosit.ItemIndex:= FieldByName('VaricPosit').AsInteger;

      //>>> вкладка "Урологические жалобы"
      //----- синдром интоксикации -----
      ChkBoxUrAsthenia.Checked:= IntConvertBool(FieldByName('UR_ASTHENIA').AsInteger);
      ChkBoxUrFlabbiness.Checked:= IntConvertBool(FieldByName('UR_FLABBINESS').AsInteger);
      ChkBoxUrHyperhidros.Checked:= IntConvertBool(FieldByName('UR_HYPERHIDROS').AsInteger);
      ChkBoxUrSubfebril.Checked:= IntConvertBool(FieldByName('UR_SUBFEBRIL').AsInteger);
      CbBoxUrSubfebril.ItemIndex:= FieldByName('UR_TEMPER_INT').AsInteger;

      //----- болевой синдром -----
      ChkBoxUrDolorLumb.Checked:= IntConvertBool(FieldByName('UR_DOLORLUMB').AsInteger);
      CbBoxUrDolorLumb.ItemIndex:= FieldByName('UR_DOLORLUMB_INT').AsInteger;
      ChkBoxUrDolorSacr.Checked:= IntConvertBool(FieldByName('UR_DOLORSACR').AsInteger);
      ChkBoxUrDolorMesagastr.Checked:= IntConvertBool(FieldByName('UR_DOLORMESOGASTR').AsInteger);
      CbBoxUrDolorMesogastr.ItemIndex:= FieldByName('UR_DOLORMESOGASTR_INT').AsInteger;
      ChkBoxUrDolorHypogastr.Checked:= IntConvertBool(FieldByName('UR_DOLORHYPOGASTR').AsInteger);
      CbBoxUrDolorHypogastr.ItemIndex:= FieldByName('UR_DOLORHYPOGASTR_INT').AsInteger;
      ChkBoxUrDolorPubica.Checked:= IntConvertBool(FieldByName('UR_DOLORPUBICA').AsInteger);
      ChkBoxUrDolorIrradiat.Checked:= IntConvertBool(FieldByName('UR_DOLORIRRADIAT').AsInteger);
      CbBoxUrDolorIrradiat.ItemIndex:= FieldByName('UR_DOLORIRRADIAT_INT').AsInteger;

      //----- дизурический синдром -----
      ChkBoxUrColic.Checked:= IntConvertBool(FieldByName('UR_COLIC').AsInteger);
      ChkBoxUrPollac.Checked:= IntConvertBool(FieldByName('UR_POLLAC').AsInteger);
      SpEdtUrPollacCount.Value:= FieldByName('UR_POLLACCOUNT').AsInteger;
      SpEdtUrPollacAge.Value:= FieldByName('UR_POLLACAGE').AsInteger;

      CbBoxUrPollacPeriod.ItemIndex:= FieldByName('UrPollacPeriod').AsInteger;
      CbBoxUrNictPeriod.ItemIndex:= FieldByName('UrNictPeriod').AsInteger;

      ChkBoxUrNicturia.Checked:= IntConvertBool(FieldByName('UR_NICTURIA').AsInteger);
      SpEdtUrNictCount.Value:= FieldByName('UR_NICTURIACOUNT').AsInteger;
      SpEdtUrNictAge.Value:= FieldByName('UR_NICTURIAAGE').AsInteger;
      ChkBoxUrNotFullVesic.Checked:= IntConvertBool(FieldByName('UR_NOTFULLVESIC').AsInteger);
      ChkBoxUrSediment.Checked:= IntConvertBool(FieldByName('UR_SEDIMENT').AsInteger);
      ChkBoxUrFlakes.Checked:= IntConvertBool(FieldByName('UR_FLAKES').AsInteger);
      ChkBoxUrBloodDash.Checked:= IntConvertBool(FieldByName('UR_BLOODDASH').AsInteger);
      CbBoxUrBloodDash.ItemIndex:= FieldByName('UR_BLOODDASH_INT').AsInteger;

      //>>> вкладка "Прочие"
      RdBtnAnothPrevCheckup.Checked:= IntConvertBool(FN('ANOTHPREVCHECKUP').AsInteger);
      RdBtnAnothPrevTreat.Checked:= IntConvertBool(FN('ANOTHPREVTREAT').AsInteger);
      RdBtnAnothPlanGravid.Checked:= IntConvertBool(FN('ANOTHPLANGRAVID').AsInteger);
      RdBtnAnothContrCheckup.Checked:= IntConvertBool(FN('ANOTHCONTRCHECKUP').AsInteger);
      RdBtnAnothPlanTreat.Checked:= IntConvertBool(FN('ANOTHPLANTREAT').AsInteger);
      RdBtnAnothResrchRezlt.Checked:= IntConvertBool(FN('AnothResrchRezlt').AsInteger);

      end;{with}
    end;{if VisitPatientFlag..else}

DTPickPriemChange(Sender);//дату приема присвоим переменной

//проверяем содержимое чекбоксов и радиокнопок
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
//заполняем комбобокс с врачами
with DMFIB, DSetTemp do
  begin
  if Active then Close;
  SQLs.SelectSQL.Clear;
  SQLs.SelectSQL.Text:=
                'SELECT D.ID_DOCTOR, D.DOC_LASTNAME, D.DOC_PROFIL||'' ''||D.DOC_LASTNAME||'' '''
                +'||LEFT(D.DOC_FIRSTNAME,1)||''.''||LEFT(D.DOC_THIRDNAME,1)||''.'' AS FIODOC,'
                + 'D.DOC_CATEGORY, D.DOC_STEPEN FROM TBL_DOCTOR D '
                + 'WHERE (D.ID_DOCTOR > 0) ORDER BY 2';
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
        Font.Color:= clWindowText;

        //пытаемся отобразить последнего "использовавшегося" специалиста в лукапе
        if DMFIB.DSetTemp.Locate('ID_Doctor',VarID_Tbl_Doctor,[])//ищем в наборе по ID
          then KeyValue:= VarID_Tbl_Doctor//указываем его в лукапе, если находим
          else KeyValue:= DMFIB.DSetTemp.FieldByName('ID_Doctor').Value;//случайное значение, если не находим
      end{if not..then}
    else //если набор пустой
      begin
        KeyField:= '';
        ListField:= '';
        KeyValue:= 0;
        ListSource:= nil;
        Text:= 'Заполните таблицу докторов!';
        Font.Color:= clRed;
      end;{if not..else}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.PrepareDBLookUpCBClinChoice(Sender: TObject);
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
          Font.Color:= clWindowText;

        //пытаемся отобразить последнее "использовавшееся" ЛПУ в лукапе
        if DMFIB.DSetLookUpClin.Locate('ID_CLINIC',VarID_Tbl_Clinic,[])//ищем в наборе по ID
          then KeyValue:= VarID_Tbl_Clinic//указываем его в лукапе, если находим
          else KeyValue:= DMFIB.DSetLookUpClin.FieldByName('ID_CLINIC').Value;//случайное значение, если не находим
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
//////        Показ вкладки "Анамнез" и сопутствующие процедуры         //////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowAnamnesisSheet(Sender: TObject);
//var msComplaints: TMemoryStream;
begin
//if VisitPatientFlag
//  then//добавляется новая запись
//    begin
//      RichEditComplaints.Clear;
//    end{if..then VisitPatientFlag}
//  else//редактируется имеющаяся запись
//
//    with DMFIB do
//      begin
//        msComplaints:= TMemoryStream.Create;
//        try
//          TBlobField(DSetVisitBlob.FN('Complaints')).SaveToStream(msComplaints);
//          msComplaints.Position:= 0;
//          RichEditComplaints.Lines.LoadFromStream(msComplaints);
//        finally
//          msComplaints.Free;
//        end;{try..finally}
//      end;{with DMFIB do}

PgCtrlAnamnesis.Pages[1].TabVisible:= (DMFIB.DSetAnketa.FN('Sex').AsInteger = 1);
PgCtrlAnamnesis.Pages[2].TabVisible:= not PgCtrlAnamnesis.Pages[1].TabVisible;

ChkBoxAnamnesAllergyClick(Sender);
ChkBoxBadHabitClick(Sender);
ChkBoxAndrOperationClick(Sender);
ChkBoxAnamnesFamilyClick(Sender);
ChkBoxAnamnesAndrSexClick(Sender);
ChkBoxAnamnesGinekClick(Sender);
ChkBoxAnamnesGinSexClick(Sender);


//присвоим текст переменной, чтобы проверять ее возможные изменения
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
//////   Показ вкладки "Status Praesens" и сопутствующие процедуры     ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowStPraesensSheet(Sender: TObject);
begin
RdBtnStPraesensTemplClick(Sender);//проверяем состояние радиокнопок общего статуса

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1 //если это мужчина
  then
    begin
      RichEditStLocalis.Color:= clWindow;
      RichEditProstata.Color:= clWindow;
      RdBtnStLocalisTemplClick(Sender);//проверяем состояние радиокнопок местного статуса
      RdBtnProstataTemplClick(Sender);//проверяем состояние радиокнопок статуса простаты
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

if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;//фокус в Мемо
end;

//----------------------------------------------------------------------------
//радиокнопка описания объективного статуса
procedure TFrmStatusPat.RdBtnStPraesensTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditStPraesens);//обнулим форматирование в рич-эдите
RichEditStPraesens.Text:= TextStPraesens;//присвоим Мемо текущий текст статуса
BtnTemplateStPraesens.Enabled:= True;//включим кнопку редактирования
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStPraesensNonParticularClick(Sender: TObject);
begin
if RdBtnStPraesensTempl.Checked then
  TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));
SetDefaultSelAttrRichEdt(RichEditStPraesens);
BtnTemplateStPraesens.Enabled:= False;
RichEditStPraesens.Text:= 'Состояние удовлетворительное. Status praesens ' +
                                                                     'без особенностей.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStPreasensNonDynamicsClick(Sender: TObject);
begin
if RdBtnStPraesensTempl.Checked then
  TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));
SetDefaultSelAttrRichEdt(RichEditStPraesens);
BtnTemplateStPraesens.Enabled:= False;
RichEditStPraesens.Text:= 'Состояние удовлетворительное. Status praesens ' +
                                                           'без отрицательной динамики.';
end;

//----------------------------------------------------------------------------
//радиокнопка описания местного статуса
procedure TFrmStatusPat.RdBtnStLocalisTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditStLocalis);//обнулим форматирование в рич-эдите
RichEditStLocalis.Text:= TextStLocalis;//присвоим Мемо текущий текст статуса
BtnTemplateStLocalis.Enabled:= True;//включим кнопку редактирования
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStLocalisNonPathologyClick(Sender: TObject);
begin
if RdBtnStLocalisTempl.Checked then TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

SetDefaultSelAttrRichEdt(RichEditStLocalis);
BtnTemplateStLocalis.Enabled:= False;
RichEditStLocalis.Text:= 'Наружные гениталии без видимых признаков воспаления.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnStLocalisNonDynamicsClick(Sender: TObject);
begin
if RdBtnStLocalisTempl.Checked then TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

SetDefaultSelAttrRichEdt(RichEditStLocalis);
BtnTemplateStLocalis.Enabled:= False;
RichEditStLocalis.Text:= 'St.localis без отрицательной динамики.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataTemplClick(Sender: TObject);
begin
SetDefaultSelAttrRichEdt(RichEditProstata);//обнулим форматирование в рич-эдите
RichEditProstata.Text:= TextStProstata;//присвоим Мемо текущий текст статуса
BtnTemplateProstata.Enabled:= True;//включим кнопку редактирования
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataNonPathologyClick(Sender: TObject);
begin
if RdBtnProstataTempl.Checked then TextStProstata:= Trim(GetRTFText(RichEditProstata));
SetDefaultSelAttrRichEdt(RichEditProstata);
BtnTemplateProstata.Enabled:= False;
RichEditProstata.Text:= 'Предстательная железа пальпаторно не изменена.';
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RdBtnProstataExamRefuseClick(Sender: TObject);
begin
if RdBtnProstataTempl.Checked then TextStProstata:= Trim(GetRTFText(RichEditProstata));
SetDefaultSelAttrRichEdt(RichEditProstata);
BtnTemplateProstata.Enabled:= False;
RichEditProstata.Text:= 'От ректального осмотра временно воздержался.';
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////             Показ вкладки "Лабораторные исследования"           ///////
//////                   и сопутствующие процедуры                     ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowLabAnalises(Sender: TObject);
begin

//--- описываем раздел RW, ВИЧ, гепатит
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


//эякулят
BtnSpermGrList.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtSperm.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//--- описываем раздел обследования на сифилис
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

//--- описываем раздел клин.анализов крови
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


//--- описываем раздел анализов на гепатит, ВИЧ, сифилис
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

//--- описываем раздел анализов эякулята
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

//--- описываем раздел анализов бак.посева из уретры
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

//--- описываем раздел анализов бак.посева СПЖ
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

//--- описываем раздел анализов бак.посева на уреаплазму и микоплазму
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

//--- описываем раздел анализов бак.посева мочи
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

//--- описываем раздел ПЦР
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


//--- описываем раздел ИФА
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

//--- описываем раздел ОАМ
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

//--- описываем раздел мазок из уретры

//мазок из уретры
//LblDateMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//RichEditMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//BtnMazUrTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
//BtnFotoMazUr.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);


if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
    GrBoxMazUr.Caption:= '   Мазок из уретры   '
  else //если это женщина
    GrBoxMazUr.Caption:= '   Мазок на степень чистоты   ';


RichEditMazUr.Text:= TextMazUr;

if Trim(RichEditMazUr.Text) = ''
  then
    begin
//      LblDateMazUr.Caption:= 'Исследование не проводилось';
      RichEditMazUr.Color:= clBtnFace;
      RichEditMazUr.Enabled:= False;
    end
  else
    begin
//      LblDateMazUr.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')', VarMazUrethraDate);
      RichEditMazUr.Color:= clWindow;
      RichEditMazUr.Enabled:= True;
    end;

//--- описываем раздел мазок сока простаты

//мазок сока простаты - не показываем, если женщина
//LblDateMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

RichEditMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnMazProstTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnFotoMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtMazProst.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditMazProst.Text:= TextMazProst;

if Trim(RichEditMazProst.Text) = ''
  then
    begin
//      LblDateMazProst.Caption:= 'Исследование не проводилось';
      RichEditMazProst.Color:= clBtnFace;
      RichEditMazProst.Enabled:= False;
    end
  else
    begin
//      LblDateMazProst.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')', VarMazProstDate);
      RichEditMazProst.Color:= clWindow;
      RichEditMazProst.Enabled:= True;
    end;

//>>> отображаем элементы в зависимости от пола пациента

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
//////        Показ вкладки "Инструментальные исследования"            ///////
//////                     и сопутствующие процедуры                   ///////
//////                                                                 ///////
//////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------

procedure TFrmStatusPat.ShowToolResearch(Sender: TObject);
begin
//--- описываем раздел УЗИ почек и мочевого пузыря
RichEditUZIRen.Text:= TextUZIRen;

if Trim(RichEditUZIRen.Text) = ''
  then
    begin
      LblUZIRen.Caption:= 'Исследование не проводилось';
      RichEditUZIRen.Color:= clBtnFace;
      RichEditUZIRen.Enabled:= False;
    end
  else
    begin
      if ((VarBoolUZIRen = 1) and (VarBoolUZIVesicUr =0))//если есть УЗИ почек и нет УЗИ пузыря
          or ((VarBoolUZIRen = 1) and (VarBoolUZIVesicUr = 1)) // или есть оба УЗИ
        then //то прорисовываем дату УЗИ почек
          LblUZIRen.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')', VarUZIRenDate)
        else //иначе прорисовываем дату УЗИ пузыря
          LblUZIRen.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')', VarUZIVesicUrDate);

      RichEditUZIRen.Color:= clWindow;
      RichEditUZIRen.Enabled:= True;
    end;


//>>> показываем или прячем элементы в зависимости от пола пациента
//УЗИ гениталий
LblUziGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditUZIGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUZIGenitTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUZIGenitFotos.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtUZIGenit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//сухая уретроскопия
LblUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
RichEditUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaDryTemplate.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnUrScopiaDryFotos.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
BtnRichFmtUrScopiaDry.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//ирригационная уретроскопия
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

//--- описываем раздел УЗИ гениталий
RichEditUZIGenit.Text:= TextUZIGenit;

if Trim(RichEditUZIGenit.Text) = ''
  then
    begin
      LblUziGenit.Caption:= 'Исследование не проводилось';
      RichEditUZIGenit.Color:= clBtnFace;
      RichEditUZIGenit.Enabled:= False;
    end
  else
    begin
      if VarBoolUZIProstata = 1
        then LblUziGenit.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')',
                                                                    VarUZIProstataDate)
        else
          if VarBoolUZITestis = 1
            then LblUziGenit.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')',
                                                                      VarUZITestisDate)
            else
              if VarBoolUZIPenis = 1
                then LblUziGenit.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')',
                                                                        VarUZIPenisDate)
                else LblUziGenit.Caption:= 'Исследование не проводилось';

      RichEditUZIGenit.Color:= clWindow;
      RichEditUZIGenit.Enabled:= True;
    end;

//--- описываем протокол передней сухой уретроскопии
RichEditUrScopiaDry.Text:= TextUrScopiaDry;

if Trim(RichEditUrScopiaDry.Text) = ''
  then
    begin
      LblUrScopiaDry.Caption:= 'Исследование не проводилось';
      RichEditUrScopiaDry.Color:= clBtnFace;
      RichEditUrScopiaDry.Enabled:= False;
    end
  else
    begin
      LblUrScopiaDry.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')',
                                                                      VarUrScopiaDryDate);
      RichEditUrScopiaDry.Color:= clWindow;
      RichEditUrScopiaDry.Enabled:= True;
    end;

//--- описываем протокол ирригационной уретроскопии
RichEditUrScopiaIrrig.Text:= TextUrScopiaIrrig;

if Trim(RichEditUrScopiaIrrig.Text) = ''
  then
    begin
      LblUrScopiaIrrig.Caption:= 'Исследование не проводилось';
      RichEditUrScopiaIrrig.Color:= clBtnFace;
      RichEditUrScopiaIrrig.Enabled:= False;
    end
  else
    begin
      LblUrScopiaIrrig.Caption:= FormatDateTime('дата (' + 'DD.MM.YY' + ')',
                                                                    VarUrScopiaIrrigDate);
      RichEditUrScopiaIrrig.Color:= clWindow;
      RichEditUrScopiaIrrig.Enabled:= True;
    end;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUZIRenChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUZIRen:= Trim(GetRTFText(RichEditUZIRen));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUZIGenitChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUZIGenit:= Trim(GetRTFText(RichEditUZIGenit));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUrScopiaDryChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUrScopiaDry:= Trim(GetRTFText(RichEditUrScopiaDry));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditUrScopiaIrrigChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUrScopiaIrrig:= Trim(GetRTFText(RichEditUrScopiaIrrig));
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUZIRenTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUZIRen:= Trim(GetRTFText(RichEditUZIRen));

with TFrmUZIRen.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUZIRen.CanFocus then RichEditUZIRen.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaDryTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUrScopiaDry:= Trim(GetRTFText(RichEditUrScopiaDry));

with TFrmUrScopiaDry.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUrScopiaDry.CanFocus then RichEditUrScopiaDry.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUZIGenitTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUZIGenit:= Trim(GetRTFText(RichEditUZIGenit));

with TFrmUZIGenit.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUZIGenit.CanFocus then RichEditUZIGenit.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnUrScopiaIrrigTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUrScopiaIrrig:= Trim(GetRTFText(RichEditUrScopiaIrrig));

with TFrmUrScopiaIrrig.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUrScopiaIrrig.CanFocus then RichEditUrScopiaIrrig.SetFocus;
end;


//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
//////                                                                 ///////
//////                  Показ вкладки "Лечение и диагноз"              ///////
//////                     и сопутствующие процедуры                   ///////
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

procedure TFrmStatusPat.BtnSelDrugClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextDrugs:= Trim(GetRTFText(RichEditDrug));

DrugChoiceBtn:= True;//кнопка выбора лекарств будет доступной

//создаем форму
with TFrmTblDrugs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditDrug.CanFocus then RichEditDrug.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelManipClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextManip:= Trim(GetRTFText(RichEditManip));

ManipChoiceBtn:= True;//кнопка выбора манипуляций будет доступной

with TFrmTblManip.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditManip.CanFocus then RichEditManip.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelDsClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextDs:= Trim(GetRTFText(RichEditDs));

DsChoiceBtn:= True;//кнопка выбора лекарств будет доступной

with TFrmTblDs.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditDs.CanFocus then RichEditDs.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnSelRecomClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextRecom:= Trim(GetRTFText(RichEditRecom));

RecomChoiceBtn:= True;//кнопка выбора рекомендаций будет доступной

with TFrmTblRecom.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditRecom.CanFocus then RichEditRecom.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditDrugChange(Sender: TObject);
begin
//сохраняем текст в окне
TextDrugs:= RichEditDrug.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditManipChange(Sender: TObject);
begin
//сохраняем текст в окне
TextManip:= RichEditManip.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditDsChange(Sender: TObject);
begin
//сохраняем текст в окне
TextDs:= RichEditDs.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditRecomChange(Sender: TObject);
begin
//сохраняем текст в окне
TextRecom:= RichEditRecom.Text;
end;


(****************************************************************************)
(*          Процедуры вызова run-time форм для ввода анализов               *)
(****************************************************************************)

//----------------------------------------------------------------------------
//вызов шаблона составления текста объективного статуса
procedure TFrmStatusPat.BtnTemplateStPraesensClick(Sender: TObject);
begin
TextStPraesens:= Trim(GetRTFText(RichEditStPraesens));

with TFrmStPraesensTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//загоняем получившийся текст в Рич-эдит
RichEditStPraesens.Text:= Trim(TextStPraesens);

if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;
end;

//----------------------------------------------------------------------------
//вызов шаблона составления текста местного статуса
procedure TFrmStatusPat.BtnTemplateStLocalisClick(Sender: TObject);
begin
TextStLocalis:= Trim(GetRTFText(RichEditStLocalis));

with TFrmStLocalisTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//загоняем получившийся текст в Рич-эдит
RichEditStLocalis.Text:= Trim(TextStLocalis);

if RichEditStLocalis.CanFocus then RichEditStLocalis.SetFocus;
end;

//----------------------------------------------------------------------------
//вызов шаблона составления текста статуса простаты
procedure TFrmStatusPat.BtnTemplateProstataClick(Sender: TObject);
begin
TextStProstata:= Trim(GetRTFText(RichEditProstata));

with TFrmStProstataTemplate.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//загоняем получившийся текст в Рич-эдит
RichEditProstata.Text:= Trim(TextStProstata);

if RichEditProstata.CanFocus then RichEditProstata.SetFocus;
end;

//----------------------------------------------------------------------------
//вызов листа обследования на сифилис
procedure TFrmStatusPat.CallResearcheLuesList(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextLues:= Trim(GetRTFText(RichEdtLues));

with TFrmResearchLues.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtLues.CanFocus then RichEdtLues.SetFocus;
end;

//----------------------------------------------------------------------------
//шаблон для бак.посева из уретры
procedure TFrmStatusPat.BtnUrethBactInocTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUrethBactInoc:= Trim(GetRTFText(RichEdtUrethBactInoc));

with TFrmUrethBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtUrethBactInoc.CanFocus then RichEdtUrethBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//шаблон для бак.посева мочи
procedure TFrmStatusPat.BtnUrinBactInocTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextUrinBactInoc:= Trim(GetRTFText(RichEdtUrinBactInoc));

with TFrmUrinBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtUrinBactInoc.CanFocus then RichEdtUrinBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//шаблон бак.посева сока простаты
procedure TFrmStatusPat.BtnProstBactInocTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextProstBactInoc:= Trim(GetRTFText(RichEdtProstBactInoc));

with TFrmProstBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtProstBactInoc.CanFocus then RichEdtProstBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//шаблон бак.посева на уреаплазму и микоплазму
procedure TFrmStatusPat.BtnMicUrBactInocTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextMicUrBactInoc:= Trim(GetRTFText(RichEdtMicUrBactInoc));

with TFrmMicUrBactInoc.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtMicUrBactInoc.CanFocus then RichEdtMicUrBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnBloodTestClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextBlood:= Trim(GetRTFText(RichEdtBlood));

with TFrmBloodHorm.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtBlood.CanFocus then RichEdtBlood.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму проверки и ввода показателей на гепатиты, сифилис, ВИЧ
procedure TFrmStatusPat.BtnAIDSTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextAIDS:= Trim(GetRTFText(RichEdtAIDS));

with TFrmAIDS.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtAIDS.CanFocus then RichEdtAIDS.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму проверки и ввода показателей спермограммы
procedure TFrmStatusPat.BtnSpermGrListClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextSperm:= Trim(GetRTFText(RichEdtSperm));

with TFrmSpermGr.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtSperm.CanFocus then RichEdtSperm.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму ввода анализа ПЦР
procedure TFrmStatusPat.BtnPCRTemlateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextPCR:= Trim(GetRTFText(RichEditPCR));

with TFrmPCR.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditPCR.CanFocus then RichEditPCR.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму редактирования анализа крови методом ИФА
procedure TFrmStatusPat.BtnIFATemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextIFA:= Trim(GetRTFText(RichEditIFA));

with TFrmIFA.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditIFA.CanFocus then RichEditIFA.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму редактирования анализа мочи
procedure TFrmStatusPat.BtnOAMTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextOAM:= Trim(GetRTFText(RichEditOAM));

with TFrmOAM.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditOAM.CanFocus then RichEditOAM.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму редактирования мазка из уретры
procedure TFrmStatusPat.BtnMazUrTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextMazUr:= Trim(GetRTFText(RichEditMazUr));

with TFrmMazUrethra.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditMazUr.CanFocus then RichEditMazUr.SetFocus;
end;

//----------------------------------------------------------------------------
//вызываем форму редактирования мазка сока простаты
procedure TFrmStatusPat.BtnMazProstTemplateClick(Sender: TObject);
begin
//записываем форматированный текст рич-эдита в строку
TextMazProst:= Trim(GetRTFText(RichEditMazProst));

with TFrmMazProst.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditMazProst.CanFocus then RichEditMazProst.SetFocus;
end;

(****************************************************************************)
(*                Окончание блока вызовов run-time окон                     *)
(****************************************************************************)

//----------------------------------------------------------------------------
//проверка листа-вкладыша обследования на сифилис
procedure TFrmStatusPat.BtnLuesListClicktClick(Sender: TObject);
begin
CallResearcheLuesList(Sender);
end;

//----------------------------------------------------------------------------
//кнопка "..." DBLookUp с докторами
procedure TFrmStatusPat.DBLookupCBDocChoiceEditButtons0Click(Sender: TObject; var Handled: Boolean);
begin
//вызываем справочник с докторами
FrmMainProg.ActTblDoctorExecute(Sender);

//заполняем ЛукАпКомбоБокс с докторами заново
PrepareDBLookUpCBDocChoice(Sender);

//заполняем ЛукАпКомбоБокс с ЛПУ заново (может статься, что ЛПУ были внесены или удалены в/из БД ранее)
PrepareDBLookUpCBClinChoice(Sender);
end;

//----------------------------------------------------------------------------
//кнопка "..." DBLookUp с ЛПУ
procedure TFrmStatusPat.DBLookupCBClinChoiceEditButtons0Click(Sender: TObject; var Handled: Boolean);
begin
//вызываем справочник с ЛПУ
FrmMainProg.ActTblClinicExecute(Sender);

//заполняем ЛукАпКомбоБокс с ЛПУ заново
PrepareDBLookUpCBClinChoice(Sender);

//заполняем ЛукАпКомбоБокс с докторами заново (может статься, что доктора были внесены или удалены в/из БД ранее)
PrepareDBLookUpCBDocChoice(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditOAMChange(Sender: TObject);
begin
//сохраняем текст в окне
TextOAM:= RichEditOAM.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtLuesChange(Sender: TObject);
begin
//сохраняем текст в окне
TextLues:= RichEdtLues.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtUrethBactInocChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUrethBactInoc:= RichEdtUrethBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtUrinBactInocChange(Sender: TObject);
begin
//сохраняем текст в окне
TextUrinBactInoc:= RichEdtUrinBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtProstBactInocChange(Sender: TObject);
begin
//сохраняем текст в окне
TextProstBactInoc:= RichEdtProstBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtMicUrBactInocChange(Sender: TObject);
begin
//сохраняем текст в окне
TextMicUrBactInoc:= RichEdtMicUrBactInoc.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtBloodChange(Sender: TObject);
begin
//сохраняем текст в окне
TextBlood:= RichEdtBlood.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtAIDSChange(Sender: TObject);
begin
//сохраняем текст в окне
TextAIDS:= RichEdtAIDS.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEdtSpermChange(Sender: TObject);
begin
//сохраняем текст в окне
TextSperm:= RichEdtSperm.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditPCRChange(Sender: TObject);
begin
//сохраняем текст в окне
TextPCR:= RichEditPCR.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditIFAChange(Sender: TObject);
begin
//сохраняем текст в окне
TextIFA:= RichEditIFA.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditMazUrChange(Sender: TObject);
begin
//сохраняем текст в окне
TextMazUr:= RichEditMazUr.Text;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.RichEditMazProstChange(Sender: TObject);
begin
//сохраняем текст в окне
TextMazProst:= RichEditMazProst.Text;
end;

//----------------------------------------------------------------------------
//устанавливаем рич-эдиту "пустые" аттрибуты текста
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

//это событие происходит при начальном присвоении значения пикеру
//if ExstWarng > 0
//  then //проверяем, нет ли такой даты в визитах к данному доктора у пациента
//    ChkExistsDateVisit(DTPickPriem.DateTime,DMFIB.DSetAnketa.FN('ID_ANKETA').AsVariant,
//    DBLookupCBDocChoice.KeyValue);
//
//ExstWarng:= ExstWarng + 1;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.DTPickPriemCloseUp(Sender: TObject);
begin
{}
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.DBLookupCBDocChoiceCloseUp(Sender: TObject;
  Accept: Boolean);
begin
//это событие происходит при начальном присвоении значения пикеру
//if ExstWarng > 0
//  then //проверяем, нет ли такой даты в визитах к данному доктора у пациента
//    ChkExistsDateVisit(DTPickPriem.DateTime,DMFIB.DSetAnketa.FN('ID_ANKETA').AsVariant,
//    DBLookupCBDocChoice.KeyValue);
//
//ExstWarng:= ExstWarng + 1;
end;

//----------------------------------------------------------------------------

(*****************************************************************************)
(***                    Блок вызова форм с блобами                         ***)
(*****************************************************************************)

//----------------------------------------------------------------------------
//загрузка изображений общего статуса
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
//загрузка изображений локального статуса
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
//загрузка изображений УЗИ почек
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
//создаем форму, если прошли все проверки
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
//создаем форму, если прошли все проверки
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
//создаем форму, если прошли все проверки
with TFrmImgRWFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnFotoIFAClick(Sender: TObject);
begin
//создаем форму, если прошли все проверки
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
//создаем форму, если прошли все проверки
with TFrmImgPCRFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//предварительная проверка "уникальности" записи для данного пациента
function TFrmStatusPat.ChkExistsDateVisit(ADateTime: TDateTime; PatIDparam, DocIDparam: Variant): Boolean;
var TmpStr: AnsiString;
begin
//проверяем, не было ли визитов у этого пациента в этот день
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

      //позиционируем курсор в справочнике докторов
      if not DSetDoctor.IsEmpty then
        begin
          if not DSetDoctor.Active then DSetDoctor.Open;
          if not DSetDoctor.IsEmpty then
                            DSetDoctor.Locate('ID_DOCTOR',DocIDparam,[]);
        end;


      //получаем должность и фамилию врача для склонения по падежам
//      GApp:= DSetDoctor.FN('DOC_PROFIL').AsString;
//      GLastNm:= Trim(DSetDoctor.FN('DOC_LASTNAME').AsString);
//      GThrdNm:= Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString);
//      ShtGFirstNm:= AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.';
//      shtGThrdNm:= AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.';

      if DSetAnketa.FN('SEX').AsInteger = 1
        then
          TmpStr:= 'Внимание! Пациент '
        else
          TmpStr:= 'Внимание! Пациентка ';

      TmpStr:= TmpStr + Trim(LblStatusPatName.Caption) + ', уже ';

      if DSetAnketa.FN('SEX').AsInteger = 1
         then
           TmpStr:= TmpStr + 'был'
         else
           TmpStr:= TmpStr + 'была';

      TmpStr:= TmpStr + ' ' + FormatDateTime('DD.MM.YYYY',ADateTime) + ' г. на приеме у врача '
      + GetAppointmentPadeg(DSetDoctor.FN('DOC_PROFIL').AsString,2) + ' '
      + GetFIOPadeg(Trim(DSetDoctor.FN('DOC_LASTNAME').AsString),
      AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_FIRSTNAME').AsString),1)) + '.',
      AnsiUpperCase(LeftStr(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString),1)) + '.',
      (GetSex(Trim(DSetDoctor.FN('DOC_THIRDNAME').AsString)) = 1), 2)
      + ' Пожалуйста, укажите корректную дату, чтобы добавить новый '
      + 'визит к этому врачу, либо отредактируйте уже имеющуюся запись за '
      + FormatDateTime('DD.MM.YYYY',ADateTime) + ' г.';


      if Result then
          Application.MessageBox(PChar(TmpStr),'Некорректные данные!', MB_ICONINFORMATION);
      if Active then Close;
    end;
end;

//----------------------------------------------------------------------------
//проверяем аллергологический анамнез
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
//проверяем вредные привычки
procedure TFrmStatusPat.ChkBoxBadHabitClick(Sender: TObject);
begin
ChkBoxAnamSmoke.Enabled:= ChkBoxBadHabit.Checked;
SpnEdtSigarCount.Enabled:= ChkBoxBadHabit.Checked;
LblSmoke1.Enabled:= ChkBoxBadHabit.Checked;
LblSmoke2.Enabled:= ChkBoxBadHabit.Checked;
SpnEdtSmokeAge.Enabled:= ChkBoxBadHabit.Checked;
CbBoxSmokePeriod.Enabled:= ChkBoxBadHabit.Checked;
ChkBoxAmanAlkohol.Enabled:= ChkBoxBadHabit.Checked;
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
//проверяем курение
procedure TFrmStatusPat.ChkBoxAnamSmokeClick(Sender: TObject);
begin
SpnEdtSigarCount.Enabled:= ChkBoxAnamSmoke.Checked;
LblSmoke1.Enabled:= ChkBoxAnamSmoke.Checked;
LblSmoke2.Enabled:= ChkBoxAnamSmoke.Checked;
SpnEdtSmokeAge.Enabled:= ChkBoxAnamSmoke.Checked;
CbBoxSmokePeriod.Enabled:= ChkBoxAnamSmoke.Checked;
end;

//----------------------------------------------------------------------------
//проверяем операции у мужчин
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
//проверяем семейный анамнез
procedure TFrmStatusPat.ChkBoxAnamnesFamilyClick(Sender: TObject);
begin
CbBoxAndrMarriage.Enabled:= ChkBoxAnamnesFamily.Checked;
ChkBoxAndrChild.Enabled:= ChkBoxAnamnesFamily.Checked;
SpnEdtAndrChildCount.Enabled:= ChkBoxAnamnesFamily.Checked;
ChkBoxAndrPregnancy.Enabled:= ChkBoxAnamnesFamily.Checked;

if ChkBoxAnamnesFamily.Checked then ChkBoxAndrChildClick(Sender);
end;

//----------------------------------------------------------------------------
//проверяем наличие возможных детей
procedure TFrmStatusPat.ChkBoxAndrChildClick(Sender: TObject);
begin
SpnEdtAndrChildCount.Enabled:= ChkBoxAndrChild.Checked;
end;

//----------------------------------------------------------------------------
//проверяем половой анамнез у мужчин
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
//уточняем половой анамнез у мужчин 
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
//проверяем акушерско-гинекологический анамнез
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
//уточняем насчет менопаузы
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
//проверяем половой анамнез у женщин
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
//уточняем половую жизнь у женщин
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

//загоняем получившийся текст в Рич-эдит
RchEdtAnamAllergy.Text:= Trim(TextAnamAllergy);

//проверим отображение элементов в соответствии с выбором
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

//загоняем получившийся текст в Рич-эдит
RchEdtAnamChldDes.Text:= Trim(TextAnamChldDes);

//проверим отображение элементов в соответствии с выбором
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

//загоняем получившийся текст в Рич-эдит
RchEdtAnamAnthrDes.Text:= Trim(TextAnamAnthrDes);

//проверим отображение элементов в соответствии с выбором
ChkBoxBadHabitClick(Sender);

if RchEdtAnamAnthrDes.CanFocus then RchEdtAnamAnthrDes.SetFocus;

end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplAndrZPPPClick(Sender: TObject);
begin
TextAndrZPPP:= Trim(RchEdtAndrZPPP.Text);
ZPPPboolFlag:= True;//флаг-сендер ----> "мужской" анамнез ЗППП

with TFrmZPPP.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//загоняем получившийся текст в Рич-эдит
RchEdtAndrZPPP.Text:= Trim(TextAndrZPPP);

//проверим отображение элементов в соответствии с выбором
ChkBoxAnamnesAndrSexClick(Sender);

if RchEdtAndrZPPP.CanFocus then RchEdtAndrZPPP.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnTemplGinZPPPClick(Sender: TObject);
begin
TextGinZPPP:= Trim(RchEdtGinZPPP.Text);
ZPPPboolFlag:= False;//флаг-сендер ----> "женский" анамнез ЗППП

with TFrmZPPP.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//загоняем получившийся текст в Рич-эдит
RchEdtGinZPPP.Text:= Trim(TextGinZPPP);

//проверим отображение элементов в соответствии с выбором
ChkBoxAnamnesGinSexClick(Sender);

if RchEdtGinZPPP.CanFocus then RchEdtGinZPPP.SetFocus;
end;

//----------------------------------------------------------------------------
//жалобы пациента
procedure TFrmStatusPat.BtnRichFmtComplaintsClick(Sender: TObject);
begin
//загоняем получившийся текст в Рич-эдит
RichEditComplaints.Text:= Trim(CallSimpleRichEditor(RichEditComplaints));

//фокус в edit-окно
if RichEditComplaints.CanFocus then RichEditComplaints.SetFocus;
end;

//----------------------------------------------------------------------------
//"секретные" сведения
procedure TFrmStatusPat.BtnRichFmtSecretStuffClick(Sender: TObject);
begin
//загоняем получившийся текст в Рич-эдит
RichEditSecretStuff.Text:= Trim(CallSimpleRichEditor(RichEditSecretStuff));

//фокус в edit-окно
if RichEditSecretStuff.CanFocus then RichEditSecretStuff.SetFocus;
end;

//----------------------------------------------------------------------------
//объективный статус
procedure TFrmStatusPat.BtnRichFmtStPraesensClick(Sender: TObject);
begin
//загоняем получившийся текст в Рич-эдит
RichEditStPraesens.Text:= Trim(CallSimpleRichEditor(RichEditStPraesens));

//фокус в edit-окно
if RichEditStPraesens.CanFocus then RichEditStPraesens.SetFocus;
end;

//----------------------------------------------------------------------------
//простата ректальный осмотр
procedure TFrmStatusPat.BtnRichFmtProstataClick(Sender: TObject);
begin
//загоняем получившийся текст в Рич-эдит
RichEditProstata.Text:= Trim(CallSimpleRichEditor(RichEditProstata));

//фокус в edit-окно
if RichEditProstata.CanFocus then RichEditProstata.SetFocus;
end;

//----------------------------------------------------------------------------
//локальный статус
procedure TFrmStatusPat.BtnRichFmtStLocalisClick(Sender: TObject);
begin
//загоняем получившийся текст в Рич-эдит
RichEditStLocalis.Text:= Trim(CallSimpleRichEditor(RichEditStLocalis));

if RichEditStLocalis.CanFocus then RichEditStLocalis.SetFocus;
end;

//----------------------------------------------------------------------------
//лист обследования на сифилис
procedure TFrmStatusPat.BtnRichFmtLuesClick(Sender: TObject);
begin
TextLues:= CallSimpleRichEditor(RichEdtLues);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtLues.CanFocus then RichEdtLues.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования крови
procedure TFrmStatusPat.BtnRichFmtBloodClick(Sender: TObject);
begin
TextBlood:= CallSimpleRichEditor(RichEdtBlood);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtBlood.CanFocus then RichEdtBlood.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования мочи
procedure TFrmStatusPat.BtnRichFmtOAMClick(Sender: TObject);
begin
TextOAM:= CallSimpleRichEditor(RichEditOAM);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditOAM.CanFocus then RichEditOAM.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования крови на RW, ВИЧ, гепатит
procedure TFrmStatusPat.BtnRichFmtAIDSClick(Sender: TObject);
begin
TextAIDS:= CallSimpleRichEditor(RichEdtAIDS);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtAIDS.CanFocus then RichEdtAIDS.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования мазка из уретры
procedure TFrmStatusPat.BtnRichFmtMazUrClick(Sender: TObject);
begin
TextMazUr:= CallSimpleRichEditor(RichEditMazUr);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditMazUr.CanFocus then RichEditMazUr.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования мозка СПЖ
procedure TFrmStatusPat.BtnRichFmtMazProstClick(Sender: TObject);
begin
TextMazProst:= CallSimpleRichEditor(RichEditMazProst);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditMazProst.CanFocus then RichEditMazProst.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования эякулята
procedure TFrmStatusPat.BtnRichFmtSpermClick(Sender: TObject);
begin
TextSperm:= CallSimpleRichEditor(RichEdtSperm);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtSperm.CanFocus then RichEdtSperm.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования методом ПЦР
procedure TFrmStatusPat.BtnRichFmtPCRClick(Sender: TObject);
begin
TextPCR:= CallSimpleRichEditor(RichEditPCR);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditPCR.CanFocus then RichEditPCR.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования методом ИФА
procedure TFrmStatusPat.BtnRichFmtIFAClick(Sender: TObject);
begin
TextIFA:= CallSimpleRichEditor(RichEditIFA);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEditIFA.CanFocus then RichEditIFA.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования бак.посева из уретры
procedure TFrmStatusPat.BtnRichFmtUrethBactInocClick(Sender: TObject);
begin
TextUrethBactInoc:= CallSimpleRichEditor(RichEdtUrethBactInoc);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtUrethBactInoc.CanFocus then RichEdtUrethBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования бак.посева СПЖ
procedure TFrmStatusPat.BtnRichFmtProstBactInocClick(Sender: TObject);
begin
TextProstBactInoc:= CallSimpleRichEditor(RichEdtProstBactInoc);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtProstBactInoc.CanFocus then RichEdtProstBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования бак.посева на уреаплазму-микоплазму
procedure TFrmStatusPat.BtnRichFmtMicUrBactInocClick(Sender: TObject);
begin
TextMicUrBactInoc:= CallSimpleRichEditor(RichEdtMicUrBactInoc);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtMicUrBactInoc.CanFocus then RichEdtMicUrBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//клинические исследования бак.посева мочи
procedure TFrmStatusPat.BtnRichFmtUrinBactInocClick(Sender: TObject);
begin
TextUrinBactInoc:= CallSimpleRichEditor(RichEdtUrinBactInoc);

//перерисовываем вкладку заново
ShowLabAnalises(Sender);

//фокус в edit-окно
if RichEdtUrinBactInoc.CanFocus then RichEdtUrinBactInoc.SetFocus;
end;

//----------------------------------------------------------------------------
//УЗИ исследование почек и мочевого пузыря 
procedure TFrmStatusPat.BtnRichFmtUZIRenClick(Sender: TObject);
begin
TextUZIRen:= CallSimpleRichEditor(RichEditUZIRen);

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUZIRen.CanFocus then RichEditUZIRen.SetFocus;
end;

//----------------------------------------------------------------------------
//УЗИ исследование гениталий
procedure TFrmStatusPat.BtnRichFmtUZIGenitClick(Sender: TObject);
begin
TextUZIGenit:= CallSimpleRichEditor(RichEditUZIGenit);

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUZIGenit.CanFocus then RichEditUZIGenit.SetFocus;
end;

//----------------------------------------------------------------------------
//протокол исследования "сухой" уретроскопии
procedure TFrmStatusPat.BtnRichFmtUrScopiaDryClick(Sender: TObject);
begin
TextUrScopiaDry:= CallSimpleRichEditor(RichEditUrScopiaDry);

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUrScopiaDry.CanFocus then RichEditUrScopiaDry.SetFocus;
end;

//----------------------------------------------------------------------------
//протокол исследования ирригационной уретроскопии
procedure TFrmStatusPat.BtnRichFmtUrScopiaIrrigClick(Sender: TObject);
begin
TextUrScopiaIrrig:= CallSimpleRichEditor(RichEditUrScopiaIrrig);

//перерисовываем вкладку заново
ShowToolResearch(Sender);

//фокус в edit-окно
if RichEditUrScopiaIrrig.CanFocus then RichEditUrScopiaIrrig.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtDrugClick(Sender: TObject);
begin
TextDrugs:= CallSimpleRichEditor(RichEditDrug);

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditDrug.CanFocus then RichEditDrug.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtDsClick(Sender: TObject);
begin
TextDs:= CallSimpleRichEditor(RichEditDs);

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditDs.CanFocus then RichEditDs.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtManipClick(Sender: TObject);
begin
TextManip:= CallSimpleRichEditor(RichEditManip);

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditManip.CanFocus then RichEditManip.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmStatusPat.BtnRichFmtRecomClick(Sender: TObject);
begin
TextRecom:= CallSimpleRichEditor(RichEditRecom);

//перерисовываем вкладку заново
ShowTreatmentDs(Sender);

//фокус в edit-окно
if RichEditRecom.CanFocus then RichEditRecom.SetFocus;
end;

//----------------------------------------------------------------------------
function TFrmStatusPat.CallSimpleRichEditor(Sender: TRichEdit) : string;
begin
//запоминаем форматируемый текст для передачи в "простой" рич-эдит
SimpleREStr:= Trim(GetRTFText(TRichEdit(Sender)));

with TFrmSimpleEditor.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

Result:= SimpleREStr;//возвращаем результат из редактора
end;

end.
