unit BloodHormUnit;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, MsgSplash, NiceSettings, AppEvnts;

type
  TFrmBloodHorm = class(TForm)
    PgCtrlBloodHorm: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BtnPrev: TButton;
    BtnNext: TButton;
    BtnSave: TButton;
    BtnCancel: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label1: TLabel;
    Label49: TLabel;
    Label40: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label4: TLabel;
    Label42: TLabel;
    Label52: TLabel;
    Label5: TLabel;
    Label43: TLabel;
    Label53: TLabel;
    Label6: TLabel;
    Label44: TLabel;
    Label54: TLabel;
    Label8: TLabel;
    Label45: TLabel;
    Label55: TLabel;
    Label9: TLabel;
    Label46: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdtLG: TEdit;
    EdtFSG: TEdit;
    EdtProlactin: TEdit;
    EdtEstradiol: TEdit;
    EdtProgest: TEdit;
    EdtTestosterTotal: TEdit;
    EdtDGEAS: TEdit;
    EdtProgest_17OH: TEdit;
    EdtTestosterFree: TEdit;
    EdtSSSG: TEdit;
    DTPickHormSter: TDateTimePicker;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label68: TLabel;
    Label71: TLabel;
    Label74: TLabel;
    Label77: TLabel;
    Label80: TLabel;
    Label83: TLabel;
    Label86: TLabel;
    Label92: TLabel;
    Label15: TLabel;
    DTPickHormTireoid: TDateTimePicker;
    Panel1: TPanel;
    EdtT4_Total: TEdit;
    EdtT4_Free: TEdit;
    EdtT3_Total: TEdit;
    EdtT3_Free: TEdit;
    EdtTTG: TEdit;
    EdtKortizol: TEdit;
    EdtTireoglob_At: TEdit;
    EdtTireoPerox_At: TEdit;
    EdtInhibin_B: TEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    Label88: TLabel;
    Label95: TLabel;
    Label98: TLabel;
    Label104: TLabel;
    Label107: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    EdtOAKBasophil: TEdit;
    EdtOAKSOE: TEdit;
    EdtOAKCoagul: TEdit;
    EdtOAKHemorrhagTime: TEdit;
    EdtOAKReticulocyte: TEdit;
    EdtOAKGlucosaCapill: TEdit;
    EdtOAKHmtc: TEdit;
    DTPickOAK: TDateTimePicker;
    Panel2: TPanel;
    EdtOAKHb: TEdit;
    EdtOAKEr: TEdit;
    EdtOAKColourIndex: TEdit;
    EdtOAKTromb: TEdit;
    EdtOAKLeu: TEdit;
    EdtOAKLeuYoung: TEdit;
    EdtOAKLeuStab: TEdit;
    EdtOAKLeuSegment: TEdit;
    EdtOAKLymph: TEdit;
    EdtOAKEosinophil: TEdit;
    Label81: TLabel;
    Label82: TLabel;
    Label85: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label93: TLabel;
    Label97: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Panel3: TPanel;
    Label94: TLabel;
    Label96: TLabel;
    EdtOAKMonocyte: TEdit;
    Label99: TLabel;
    Label100: TLabel;
    EdtBloodBioALT: TEdit;
    Label112: TLabel;
    EdtBloodBioAST: TEdit;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label119: TLabel;
    EdtBloodBioProtein: TEdit;
    Label120: TLabel;
    Label121: TLabel;
    EdtBloodBioBiTotal: TEdit;
    Label123: TLabel;
    EdtBloodBioBiDirect: TEdit;
    Label125: TLabel;
    EdtBloodBioCholest: TEdit;
    Label126: TLabel;
    EdtBloodBioSodiumFosf: TEdit;
    Label128: TLabel;
    EdtBloodBioGGT: TEdit;
    Label130: TLabel;
    EdtBloodBioLPVP: TEdit;
    Label132: TLabel;
    EdtBloodBioLPNP: TEdit;
    Label133: TLabel;
    Label134: TLabel;
    EdtBloodBioMochevina: TEdit;
    Label135: TLabel;
    Label136: TLabel;
    EdtBloodBioUricAcid: TEdit;
    Label138: TLabel;
    EdtBloodBioCreatinin: TEdit;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    EdtBloodBioAlbumin: TEdit;
    Label143: TLabel;
    Label144: TLabel;
    EdtBloodBioGlucosa: TEdit;
    Label145: TLabel;
    Label146: TLabel;
    EdtBloodBioTriglyc: TEdit;
    Label148: TLabel;
    EdtBloodBioCalcium: TEdit;
    Label150: TLabel;
    EdtBloodBioPhosphor: TEdit;
    Label151: TLabel;
    EdtBloodBioFerrum: TEdit;
    Panel5: TPanel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Panel6: TPanel;
    DTPickBloodBio: TDateTimePicker;
    Label155: TLabel;
    EdtBloodBioOZhSS: TEdit;
    Label156: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label122: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label124: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label127: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label129: TLabel;
    Label131: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label137: TLabel;
    Label147: TLabel;
    Label149: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    BtnOAKFotos: TButton;
    BtnBloodBioChemFotos: TButton;
    BtnBloodHormFotos: TButton;
    EdtOAKEosinSliz: TEdit;
    NiceSetFrmBloodHorm: TNiceSettings;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    Label182: TLabel;
    DTPickOnkomark: TDateTimePicker;
    Panel7: TPanel;
    Label183: TLabel;
    Label184: TLabel;
    EdtPSA_Total: TEdit;
    Label185: TLabel;
    Label186: TLabel;
    EdtPSA_Free: TEdit;
    Label187: TLabel;
    Label188: TLabel;
    EdtPSA_Ratio: TEdit;
    Label189: TLabel;
    BtnOnkomarkerFotos: TButton;
    TabSheet6: TTabSheet;
    GroupBox6: TGroupBox;
    Label190: TLabel;
    DTPickIones: TDateTimePicker;
    Panel8: TPanel;
    Label191: TLabel;
    EdtIonesNa: TEdit;
    Label192: TLabel;
    Label193: TLabel;
    EdtIonesK: TEdit;
    Label194: TLabel;
    Label195: TLabel;
    EdtIonesCl: TEdit;
    Label196: TLabel;
    Label197: TLabel;
    EdtIonesCa: TEdit;
    Label198: TLabel;
    Label199: TLabel;
    EdtIonesBlood_pH: TEdit;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    AppEventsBloodHorm: TApplicationEvents;
    BtnHlp: TButton;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure PgCtrlBloodHormChange(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure EdtLGKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFSGKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProlactinKeyPress(Sender: TObject; var Key: Char);
    procedure EdtEstradiolKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProgestKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTestosterTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDGEASKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProgest_17OHKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTestosterFreeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSSSGKeyPress(Sender: TObject; var Key: Char);
    procedure EdtT4_TotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtT4_FreeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtT3_TotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtT3_FreeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTTGKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKortizolKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTireoglob_AtKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTireoPerox_AtKeyPress(Sender: TObject; var Key: Char);
    procedure EdtInhibin_BKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKHbKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKErKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioProteinKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioBiTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioBiDirectKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioCholestKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioSodiumFosfKeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtBloodBioGGTKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioLPVPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioLPNPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioMochevinaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioUricAcidKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioCreatininKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioAlbuminKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioGlucosaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioTriglycKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioCalciumKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioPhosphorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioFerrumKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBloodBioOZhSSKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKColourIndexKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKTrombKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKLeuKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKLeuYoungKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKLeuStabKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKLeuSegmentKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKLymphKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKMonocyteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKEosinophilKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKBasophilKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKSOEKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKReticulocyteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOAKGlucosaCapillKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOAKFotosClick(Sender: TObject);
    procedure BtnBloodBioChemFotosClick(Sender: TObject);
    procedure BtnBloodHormFotosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOnkomarkerFotosClick(Sender: TObject);
    procedure AppEventsBloodHormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
//    function GetRichStringFromRE(ARichEdit: TRichEdit; var ACurPos: Integer; AStr: String):String;
    procedure FmtRichBox(ARichBox: TRichEdit; var AText: AnsiString; var ABegCurPos, AEndCurPos: Integer);

  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmBloodHorm: TFrmBloodHorm;

implementation

uses StatusPatUnit, VarAndrUnit, MainAndrUnit, DMFIBUnit,
     uImgOAKFotos, {uImgBloodBioFotos,} uImgHormFotos, uImgOnkomarkerFotos, uImgBloodBioChemFotos;

var FocusFlag: Boolean;     
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.FormShow(Sender: TObject);
begin
PgCtrlBloodHormChange(Sender);//��������� ������ "����-����"

//������ ���������� � ���������
//--- ��� ---
DTPickOAK.Date:= VarOAKDate;
EdtOAKHb.Text:= Trim(VarOAKHb);
EdtOAKEr.Text:= Trim(VarOAKEr);
EdtOAKColourIndex.Text:= Trim(VarOAKColourIndex);
EdtOAKTromb.Text:= Trim(VarOAKTromb);
EdtOAKLeu.Text:= Trim(VarOAKLeu);
EdtOAKLeuYoung.Text:= Trim(VarOAKLeuYoung);
EdtOAKLeuStab.Text:= Trim(VarOAKLeuStab);
EdtOAKLeuSegment.Text:= Trim(VarOAKLeuSegment);
EdtOAKLymph.Text:= Trim(VarOAKLymph);
EdtOAKMonocyte.Text:= Trim(VarOAKMonocyte);
EdtOAKEosinophil.Text:= Trim(VarOAKEosinophil);
EdtOAKBasophil.Text:= Trim(VarOAKBasophil);
EdtOAKSOE.Text:= Trim(VarOAKSOE);
EdtOAKCoagul.Text:= Trim(VarOAKCoagul);
EdtOAKHemorrhagTime.Text:= Trim(VarOAKHemorrhagTime);
EdtOAKReticulocyte.Text:= Trim(VarOAKReticulocyte);
EdtOAKGlucosaCapill.Text:= Trim(VarOAKGlucosaCapill);
EdtOAKEosinSliz.Text:= Trim(VarOAKEosinSliz);
EdtOAKHmtc.Text:= Trim(VarOAKHmtc);

//--- �������� ---
DTPickBloodBio.Date:= VarBloodBioDate;
EdtBloodBioALT.Text:= Trim(VarBloodBioALT);
EdtBloodBioAST.Text:= Trim(VarBloodBioAST);
EdtBloodBioProtein.Text:= Trim(VarBloodBioProtein);
EdtBloodBioBiTotal.Text:= Trim(VarBloodBioBiTotal);
EdtBloodBioBiDirect.Text:= Trim(VarBloodBioBiDirect);
EdtBloodBioCholest.Text:= Trim(VarBloodBioCholest);
EdtBloodBioSodiumFosf.Text:= Trim(VarBloodBioSodiumFosf);
EdtBloodBioGGT.Text:= Trim(VarBloodBioGGT);
EdtBloodBioLPVP.Text:= Trim(VarBloodBioLPVP);
EdtBloodBioLPNP.Text:= Trim(VarBloodBioLPNP);
EdtBloodBioMochevina.Text:= Trim(VarBloodBioMochevina);
EdtBloodBioUricAcid.Text:= Trim(VarBloodBioUricAcid);
EdtBloodBioCreatinin.Text:= Trim(VarBloodBioCreatinin);
EdtBloodBioAlbumin.Text:= Trim(VarBloodBioAlbumin);
EdtBloodBioGlucosa.Text:= Trim(VarBloodBioGlucosa);
EdtBloodBioTriglyc.Text:= Trim(VarBloodBioTriglyc);
EdtBloodBioCalcium.Text:= Trim(VarBloodBioCalcium);
EdtBloodBioPhosphor.Text:= Trim(VarBloodBioPhosphor);
EdtBloodBioFerrum.Text:= Trim(VarBloodBioFerrum);
EdtBloodBioOZhSS.Text:= Trim(VarBloodBioOZhSS);

//--- �������� ---
DTPickHormSter.Date:= VarHormSterDate;
EdtLG.Text:= Trim(VarHormLG);
EdtFSG.Text:= Trim(VarHormFSG);
EdtProlactin.Text:= Trim(VarHormProlactin);
EdtEstradiol.Text:= Trim(VarHormEstradiol);
EdtProgest.Text:= Trim(VarHormProgest);
EdtTestosterTotal.Text:= Trim(VarHormTestosterTotal);
EdtDGEAS.Text:= Trim(VarHormDGEAS);
EdtProgest_17OH.Text:= Trim(VarHormProgest_17OH);
EdtTestosterFree.Text:= Trim(VarHormTestosterFree);
EdtSSSG.Text:= Trim(VarHormSSSG);

//--- ������� ��������� ---
DTPickHormTireoid.Date:= VarHormTireoidDate;
EdtT4_Total.Text:= Trim(VarHormT4_Total);
EdtT4_Free.Text:= Trim(VarHormT4_Free);
EdtT3_Total.Text:= Trim(VarHormT3_Total);
EdtT3_Free.Text:= Trim(VarHormT3_Free);
EdtTTG.Text:= Trim(VarHormTTG);
EdtKortizol.Text:= Trim(VarHormKortizol);
EdtTireoglob_At.Text:= Trim(VarHormTireoglob_At);
EdtTireoPerox_At.Text:= Trim(VarHormTireoPerox_At);
EdtInhibin_B.Text:= Trim(VarHormInhibin_B);

//--- ����������� ---
DTPickOnkomark.Date:= VarOnkomarkDate;
EdtPSA_Total.Text:= Trim(VarPSA_Total);
EdtPSA_Free.Text:= Trim(VarPSA_Free);
EdtPSA_Ratio.Text:= Trim(VarPSA_Ratio);

//--- ���������� ---
DTPickIones.Date:= VarBloodIonesDate;
EdtIonesNa.Text:= Trim(VarIones_Na);
EdtIonesK.Text:= Trim(VarIones_K);
EdtIonesCl.Text:= Trim(VarIones_Cl);
EdtIonesCa.Text:= Trim(VarIones_Ca);
EdtIonesBlood_pH.Text:= Trim(VarIonesBlood_pH);

  //���������� ������
  case PgCtrlBloodHorm.ActivePageIndex of
    0 : if DTPickOAK.CanFocus then DTPickOAK.SetFocus;
    1 : if DTPickBloodBio.CanFocus then DTPickBloodBio.SetFocus;
    2 : if DTPickHormSter.CanFocus then DTPickHormSter.SetFocus;
    3 : if DTPickHormTireoid.CanFocus then DTPickHormTireoid.SetFocus;
    4 : if DTPickOnkomark.CanFocus then DTPickOnkomark.SetFocus;
    5 : if DTPickIones.CanFocus then DTPickIones.SetFocus;
  end;

//���� "�����"-����� �� ����� �������� �� ��������� TTabSheet, �� � VCL ActiveControll = TPageControl,
//���� �� ������� � ������, � ��������� ��� ����� ������, �� ActiveControll = TTabSheet.
//� ������ ������ �������-"�������" ����� �������� ����, �� ������ - �� ���������� ���� �����������
if PgCtrlBloodHorm.ActivePage.CanFocus then PgCtrlBloodHorm.ActivePage.SetFocus; //������� ����� �� �������

end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.FormCreate(Sender: TObject);
begin
NiceSetFrmBloodHorm.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmBloodHorm.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '������������ ����� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '������������ ����� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

PgCtrlBloodHorm.ActivePageIndex:= VarPgCtrlBloodHorm; //����� �� �������
FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnNextClick(Sender: TObject);
begin
if PgCtrlBloodHorm.ActivePageIndex < Pred(PgCtrlBloodHorm.PageCount)//���� �� ���������
                                                                    //��������
  then PgCtrlBloodHorm.SelectNextPage(True);//�������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnPrevClick(Sender: TObject);
begin
if PgCtrlBloodHorm.ActivePageIndex > 0//���� �� ������ ��������
  then PgCtrlBloodHorm.SelectNextPage(False);//�������� �����
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.PgCtrlBloodHormChange(Sender: TObject);
begin
if PgCtrlBloodHorm.ActivePageIndex = 0
  then BtnPrev.Enabled:= False
  else BtnPrev.Enabled:= True;

if PgCtrlBloodHorm.ActivePageIndex = Pred(PgCtrlBloodHorm.PageCount)
  then BtnNext.Enabled:= False
  else BtnNext.Enabled:= True;

  //���������� ������
  case PgCtrlBloodHorm.ActivePageIndex of
    0 : if DTPickOAK.CanFocus then DTPickOAK.SetFocus;
    1 : if DTPickBloodBio.CanFocus then DTPickBloodBio.SetFocus;
    2 : if DTPickHormSter.CanFocus then DTPickHormSter.SetFocus;
    3 : if DTPickHormTireoid.CanFocus then DTPickHormTireoid.SetFocus;
    4 : if DTPickOnkomark.CanFocus then DTPickOnkomark.SetFocus;
    5 : if DTPickIones.CanFocus then DTPickIones.SetFocus;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnSaveClick(Sender: TObject);
var BegCurPos, EndCurPos, //������ � ����� ���������
    Counter: Integer; //���������� �������
    TmpText, DestTxt: String;
    TmpRE, DestRE: TRichEdit;
begin
Counter:= 0; //�������� �������

//��������� ��������� � ����������
//--- ��� ---
VarOAKDate:= DTPickOAK.Date;
VarOAKHb:= Trim(EdtOAKHb.Text);
VarOAKEr:= Trim(EdtOAKEr.Text);
VarOAKColourIndex:= Trim(EdtOAKColourIndex.Text);
VarOAKTromb:= Trim(EdtOAKTromb.Text);
VarOAKLeu:= Trim(EdtOAKLeu.Text);
VarOAKLeuYoung:= Trim(EdtOAKLeuYoung.Text);
VarOAKLeuStab:= Trim(EdtOAKLeuStab.Text);
VarOAKLeuSegment:= Trim(EdtOAKLeuSegment.Text);
VarOAKLymph:= Trim(EdtOAKLymph.Text);
VarOAKMonocyte:= Trim(EdtOAKMonocyte.Text);
VarOAKEosinophil:= Trim(EdtOAKEosinophil.Text);
VarOAKBasophil:= Trim(EdtOAKBasophil.Text);
VarOAKSOE:= Trim(EdtOAKSOE.Text);
VarOAKCoagul:= Trim(EdtOAKCoagul.Text);
VarOAKHemorrhagTime:= Trim(EdtOAKHemorrhagTime.Text);
VarOAKReticulocyte:= Trim(EdtOAKReticulocyte.Text);
VarOAKGlucosaCapill:= Trim(EdtOAKGlucosaCapill.Text);
VarOAKEosinSliz:= Trim(EdtOAKEosinSliz.Text);
VarOAKHmtc:= Trim(EdtOAKHmtc.Text);

//--- �������� ---
VarBloodBioDate:= DTPickBloodBio.Date;
VarBloodBioALT:= Trim(EdtBloodBioALT.Text);
VarBloodBioAST:= Trim(EdtBloodBioAST.Text);
VarBloodBioProtein:= Trim(EdtBloodBioProtein.Text);
VarBloodBioBiTotal:= Trim(EdtBloodBioBiTotal.Text);
VarBloodBioBiDirect:= Trim(EdtBloodBioBiDirect.Text);
VarBloodBioCholest:= Trim(EdtBloodBioCholest.Text);
VarBloodBioSodiumFosf:= Trim(EdtBloodBioSodiumFosf.Text);
VarBloodBioGGT:= Trim(EdtBloodBioGGT.Text);
VarBloodBioLPVP:= Trim(EdtBloodBioLPVP.Text);
VarBloodBioLPNP:= Trim(EdtBloodBioLPNP.Text);
VarBloodBioMochevina:= Trim(EdtBloodBioMochevina.Text);
VarBloodBioUricAcid:= Trim(EdtBloodBioUricAcid.Text);
VarBloodBioCreatinin:= Trim(EdtBloodBioCreatinin.Text);
VarBloodBioAlbumin:= Trim(EdtBloodBioAlbumin.Text);
VarBloodBioGlucosa:= Trim(EdtBloodBioGlucosa.Text);
VarBloodBioTriglyc:= Trim(EdtBloodBioTriglyc.Text);
VarBloodBioCalcium:= Trim(EdtBloodBioCalcium.Text);
VarBloodBioPhosphor:= Trim(EdtBloodBioPhosphor.Text);
VarBloodBioFerrum:= Trim(EdtBloodBioFerrum.Text);
VarBloodBioOZhSS:= Trim(EdtBloodBioOZhSS.Text);

//--- �������� ---
VarHormSterDate:= DTPickHormSter.Date;
VarHormLG:= Trim(EdtLG.Text);
VarHormFSG:= Trim(EdtFSG.Text);
VarHormProlactin:= Trim(EdtProlactin.Text);
VarHormEstradiol:= Trim(EdtEstradiol.Text);
VarHormProgest:= Trim(EdtProgest.Text);
VarHormTestosterTotal:= Trim(EdtTestosterTotal.Text);
VarHormDGEAS:= Trim(EdtDGEAS.Text);
VarHormProgest_17OH:= Trim(EdtProgest_17OH.Text);
VarHormTestosterFree:= Trim(EdtTestosterFree.Text);
VarHormSSSG:= Trim(EdtSSSG.Text);

//--- ������� ��������� ---
VarHormTireoidDate:= DTPickHormTireoid.Date;
VarHormT4_Total:= Trim(EdtT4_Total.Text);
VarHormT4_Free:= Trim(EdtT4_Free.Text);
VarHormT3_Total:= Trim(EdtT3_Total.Text);
VarHormT3_Free:= Trim(EdtT3_Free.Text);
VarHormTTG:= Trim(EdtTTG.Text);
VarHormKortizol:= Trim(EdtKortizol.Text);
VarHormTireoglob_At:= Trim(EdtTireoglob_At.Text);
VarHormTireoPerox_At:= Trim(EdtTireoPerox_At.Text);
VarHormInhibin_B:= Trim(EdtInhibin_B.Text);

//--- ����������� ---
VarOnkomarkDate:= DTPickOnkomark.Date;
VarPSA_Total:= Trim(EdtPSA_Total.Text);
VarPSA_Free:= Trim(EdtPSA_Free.Text);
VarPSA_Ratio:= Trim(EdtPSA_Ratio.Text);

//--- ���������� ---
VarBloodIonesDate:= DTPickIones.Date;
VarIones_Na:= Trim(EdtIonesNa.Text);
VarIones_K:= Trim(EdtIonesK.Text);
VarIones_Cl:= Trim(EdtIonesCl.Text);
VarIones_Ca:= Trim(EdtIonesCa.Text);
VarIonesBlood_pH:= Trim(EdtIonesBlood_pH.Text);

//��������� � ����� RTF-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);
DestRE:= TRichEdit.CreateParented(Self.Handle);
DMFIB.DSetTmpBlobVisit.Edit;

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    with DestRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    //����� ��������� ���
    TmpText:= '��� (' + FormatDateTime('DD.MM.YY', DTPickOAK.Date) + '): ';
    BegCurPos:= 0;
    EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������

    //�������� ����� ���
    if Trim(EdtOAKHb.Text) <> '' then TmpText:= TmpText + 'Hb = ' + Trim(EdtOAKHb.Text) + ' �/�; ';
    if Trim(EdtOAKEr.Text) <> '' then TmpText:= TmpText + 'Er = ' + Trim(EdtOAKEr.Text)
                                                                                   + ' � 10^12/�; ';
    if Trim(EdtOAKColourIndex.Text) <> '' then TmpText:= TmpText + '��.���. = '
                                                              + Trim(EdtOAKColourIndex.Text) + '; ';
    if Trim(EdtOAKTromb.Text) <> '' then TmpText:= TmpText + 'Tr = ' + Trim(EdtOAKTromb.Text)
                                                                                    + ' x 10^9/�; ';
    if Trim(EdtOAKLeu.Text) <> '' then TmpText:= TmpText + 'Leu = ' + Trim(EdtOAKLeu.Text)
                                                                                    + ' � 10^9/�; ';
    if Trim(EdtOAKLeuYoung.Text) <> '' then TmpText:= TmpText + '�� = '
                                                               + Trim(EdtOAKLeuYoung.Text) + ' %; ';
    if Trim(EdtOAKLeuStab.Text) <> '' then TmpText:= TmpText + '�/� = ' + Trim(EdtOAKLeuStab.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKLeuSegment.Text) <> '' then TmpText:= TmpText + '�/� = '
                                                             + Trim(EdtOAKLeuSegment.Text) + ' %; ';
    if Trim(EdtOAKLymph.Text) <> '' then TmpText:= TmpText + '���� = ' + Trim(EdtOAKLymph.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKMonocyte.Text) <> '' then TmpText:= TmpText + '��� = ' + Trim(EdtOAKMonocyte.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKEosinophil.Text) <> '' then TmpText:= TmpText + '�� = '
                                                             + Trim(EdtOAKEosinophil.Text) + ' %; ';
    if Trim(EdtOAKBasophil.Text) <> '' then TmpText:= TmpText + '��� = '
                                                               + Trim(EdtOAKBasophil.Text) + ' %; ';
    if Trim(EdtOAKSOE.Text) <> '' then TmpText:= TmpText + '��� = ' + Trim(EdtOAKSOE.Text)
                                                                                      + ' ��/���; ';
    if Trim(EdtOAKCoagul.Text) <> '' then TmpText:= TmpText + '�����.(�� �����) = '
                                                              + Trim(EdtOAKCoagul.Text) + ' ���.; ';
    if Trim(EdtOAKHemorrhagTime.Text) <> '' then TmpText:= TmpText + '����� ����. = '
                                                       + Trim(EdtOAKHemorrhagTime.Text) + ' ���.; ';
    if Trim(EdtOAKReticulocyte.Text) <> '' then TmpText:= TmpText + '����� = '
                                                           + Trim(EdtOAKReticulocyte.Text) + ' %; ';
    if Trim(EdtOAKGlucosaCapill.Text) <> '' then TmpText:= TmpText + '�������(���) = '
                                                    + Trim(EdtOAKGlucosaCapill.Text) + ' �����/�; ';
    if Trim(EdtOAKEosinSliz.Text) <> '' then TmpText:= TmpText + '�����.���� - '
                                                                + Trim(EdtOAKEosinSliz.Text) + '; ';
    if Trim(EdtOAKHmtc.Text) <> '' then TmpText:= TmpText + 'Hmtc = ' + Trim(EdtOAKHmtc.Text) + '; ';

    //���� c����� �������� �� ������ ���������, �� ��������� ����� � ��������� � ��
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          DestRE.Clear;
          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          Counter:= Counter + 1; //����������� �������

          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_OAK')).AsString:= GetRTFText(TmpRE);//����� � ����
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_OAK')).Clear;//������ ��� ����

(**************************************************************************************)

    //����� ��������� �������� �����
    TmpText:= '�������� ����� (' + FormatDateTime('DD.MM.YY', DTPickBloodBio.Date) + '): ';

    if Counter > 0 //���� ���-������� �� ������
      then
        begin
          BegCurPos:= Length(Trim(DestRE.Text) + #13#10 + #13#10);
          DestRE.Lines.Add('');
        end
      else
        begin
          BegCurPos:= 0;
          DestRE.Clear;
        end;

    EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������

    //�������� ����� �������� �����
    if Trim(EdtBloodBioALT.Text) <> '' then TmpText:= TmpText + '��� = '
                                                            + Trim(EdtBloodBioALT.Text) + ' ��/�; ';
    if Trim(EdtBloodBioAST.Text) <> '' then TmpText:= TmpText + '��� = '
                                                            + Trim(EdtBloodBioAST.Text) + ' ��/�; ';
    if Trim(EdtBloodBioProtein.Text) <> '' then TmpText:= TmpText + '�/����� = '
                                                         + Trim(EdtBloodBioProtein.Text) + ' �/�; ';
    if Trim(EdtBloodBioBiTotal.Text) <> '' then TmpText:= TmpText + '���(���) = '
                                                   + Trim(EdtBloodBioBiTotal.Text) + ' ������/��; ';
    if Trim(EdtBloodBioBiDirect.Text) <> '' then TmpText:= TmpText + '���(��) = '
                                                  + Trim(EdtBloodBioBiDirect.Text) + ' ������/��; ';
    if Trim(EdtBloodBioCholest.Text) <> '' then TmpText:= TmpText + '������(���) = '
                                                       + Trim(EdtBloodBioCholest.Text) + ' ��/��; ';
    if Trim(EdtBloodBioSodiumFosf.Text) <> '' then TmpText:= TmpText + '���.����. = '
                                                     + Trim(EdtBloodBioSodiumFosf.Text) + ' ��/�; ';
    if Trim(EdtBloodBioGGT.Text) <> '' then TmpText:= TmpText + '��� = '
                                                            + Trim(EdtBloodBioGGT.Text) + ' ��/�; ';
    if Trim(EdtBloodBioLPVP.Text) <> '' then TmpText:= TmpText + '���� = '
                                                          + Trim(EdtBloodBioLPVP.Text) + ' ��/��; ';
    if Trim(EdtBloodBioLPNP.Text) <> '' then TmpText:= TmpText + '���� = '
                                                          + Trim(EdtBloodBioLPNP.Text) + ' ��/��; ';
    if Trim(EdtBloodBioMochevina.Text) <> '' then TmpText:= TmpText + 'Ur = '
                                                   + Trim(EdtBloodBioMochevina.Text) + ' �����/�; ';
    if Trim(EdtBloodBioUricAcid.Text) <> '' then TmpText:= TmpText + '���.�-�� = '
                                                      + Trim(EdtBloodBioUricAcid.Text) + ' ��/��; ';
    if Trim(EdtBloodBioCreatinin.Text) <> '' then TmpText:= TmpText + 'Cr = '
                                                  + Trim(EdtBloodBioCreatinin.Text) + ' ������/�; ';
    if Trim(EdtBloodBioAlbumin.Text) <> '' then TmpText:= TmpText + '����. = '
                                                         + Trim(EdtBloodBioAlbumin.Text) + ' �/�; ';
    if Trim(EdtBloodBioGlucosa.Text) <> '' then TmpText:= TmpText + '�������(���) = '
                                                     + Trim(EdtBloodBioGlucosa.Text) + ' �����/�; ';
    if Trim(EdtBloodBioTriglyc.Text) <> '' then TmpText:= TmpText + '�����. = '
                                                       + Trim(EdtBloodBioTriglyc.Text) + ' ��/��; ';
    if Trim(EdtBloodBioCalcium.Text) <> '' then TmpText:= TmpText + '�����. = '
                                                     + Trim(EdtBloodBioCalcium.Text) + ' �����/�; ';
    if Trim(EdtBloodBioPhosphor.Text) <> '' then TmpText:= TmpText + '����. = '
                                                      + Trim(EdtBloodBioPhosphor.Text) + ' ��/��; ';
    if Trim(EdtBloodBioFerrum.Text) <> '' then TmpText:= TmpText + '������(���) = '
                                                     + Trim(EdtBloodBioFerrum.Text) + ' ������/�; ';
    if Trim(EdtBloodBioOZhSS.Text) <> '' then TmpText:= TmpText + '���� = ' +
                                                        Trim(EdtBloodBioOZhSS.Text) + ' ������/�; ';
    //���� c����� �������� �� ������ ���������, �� ��������� ����� � ��������� � ��
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          DestTxt:= DestRE.Text;
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_BLOODBIO')).AsString:= GetRTFText(TmpRE);//����� � ����

          Counter:= Counter + 1;//����������� �������
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_BLOODBIO')).Clear;//������ ��� ����

(**************************************************************************************)

    //����� ��������� �������� �����
    TmpText:= '������� ����� (' + FormatDateTime('DD.MM.YY', DTPickHormSter.Date) + '): ';

    if Counter > 0 //���� ���-������� �� ������
      then
        begin
          BegCurPos:= Length(Trim(DestRE.Text) + #13#10 + #13#10);
          DestRE.Lines.Add('');
        end
      else
        begin
          BegCurPos:= 0;
          DestRE.Clear;
        end;

    EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������

    //�������� ����� ���������� ��������
    if Trim(EdtLG.Text) <> '' then TmpText:= TmpText + '�� = '
                                                                   + Trim(EdtLG.Text) + ' ���/��; ';
    if Trim(EdtFSG.Text) <> '' then TmpText:= TmpText + '��� = '
                                                                  + Trim(EdtFSG.Text) + ' ���/��; ';
    if Trim(EdtProlactin.Text) <> '' then TmpText:= TmpText + '��������� = '
                                                            + Trim(EdtProlactin.Text) + ' ���/��; ';
    if Trim(EdtEstradiol.Text) <> '' then TmpText:= TmpText + '��������� = '
                                                             + Trim(EdtEstradiol.Text) + ' ��/��; ';
    if Trim(EdtProgest.Text) <> '' then TmpText:= TmpText + '����������� = '
                                                             + Trim(EdtProgest.Text) + ' �����/�; ';
    if Trim(EdtTestosterTotal.Text) <> '' then TmpText:= TmpText + '����.(���) = '
                                                      + Trim(EdtTestosterTotal.Text) + ' �����/�; ';
    if Trim(EdtDGEAS.Text) <> '' then TmpText:= TmpText + '����� '
                                                                + Trim(EdtDGEAS.Text) + ' ���/��; ';
    if Trim(EdtProgest_17OH.Text) <> '' then TmpText:= TmpText + '17-�� �������. = '
                                                          + Trim(EdtProgest_17OH.Text) + ' ��/��; ';
    if Trim(EdtTestosterFree.Text) <> '' then TmpText:= TmpText + '����.(����) = '
                                                         + Trim(EdtTestosterFree.Text) + ' ��/��; ';
    if Trim(EdtSSSG.Text) <> '' then TmpText:= TmpText + '���� = '
                                                                  + Trim(EdtSSSG.Text) + ' �����; ';

    //���� c����� �������� ������ ��������� (���� ������ ���������), �.�. �������� �� ������������
    if Length(Trim(TmpText)) = EndCurPos
      then //�� ���� ����� ��������� �������� ��������� (��)
        begin
          TmpText:= '������� �� (' + FormatDateTime('DD.MM.YY', DTPickHormTireoid.Date) + '): ';
          EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������
        end;

    //���� �������� ������������, �� ������ ���������� ����� ����� �������� ��������� � ����������
    if Trim(EdtT4_Total.Text) <> '' then TmpText:= TmpText + 'T4(���) = '
                                                            + Trim(EdtT4_Total.Text) + ' �����/�; ';
    if Trim(EdtT4_Free.Text) <> '' then TmpText:= TmpText + '�4(����) = '
                                                             + Trim(EdtT4_Free.Text) + ' �����/�; ';
    if Trim(EdtT3_Total.Text) <> '' then TmpText:= TmpText + '�3(���) = '
                                                            + Trim(EdtT3_Total.Text) + ' �����/�; ';
    if Trim(EdtT3_Free.Text) <> '' then TmpText:= TmpText + '�3(����) = '
                                                               + Trim(EdtT3_Free.Text) + ' ��/��; ';
    if Trim(EdtTTG.Text) <> '' then TmpText:= TmpText + '��� = '
                                                                 + Trim(EdtTTG.Text) + ' ����/��; ';
    if Trim(EdtKortizol.Text) <> '' then TmpText:= TmpText + '�������� = '
                                                            + Trim(EdtKortizol.Text) + ' �����/�; ';
    if Trim(EdtTireoglob_At.Text) <> '' then TmpText:= TmpText + '�� � ���������. = '
                                                          + Trim(EdtTireoglob_At.Text) + ' ��/��; ';
    if Trim(EdtTireoPerox_At.Text) <> '' then TmpText:= TmpText + '�� � �������.������.(���) = '
                                                         + Trim(EdtTireoPerox_At.Text) + ' ��/��; ';
    if Trim(EdtInhibin_B.Text) <> '' then TmpText:= TmpText + '������� � = '
                                                                   + Trim(EdtInhibin_B.Text) + ' ��/��; ';

    //���� c����� �������� �� ������ ���������, �� ��������� ����� � ��������� � ��
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_HORM')).AsString:= GetRTFText(TmpRE);

          Counter:= Counter + 1;//����������� �������
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_HORM')).Clear;

(**************************************************************************************)

    //����� ��������� ������������ �����
    TmpText:= '����������� ������������ (' + FormatDateTime('DD.MM.YY', DTPickOnkomark.Date) + '): ';

    if Counter > 0 //���� ���-������� �� ������
      then
        begin
          BegCurPos:= Length(Trim(DestRE.Text) + #13#10 + #13#10);
          DestRE.Lines.Add('');
        end
      else
        begin
          BegCurPos:= 0;
          DestRE.Clear;
        end;

    EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������

    //�������� ����� ���������� ��������
    if Trim(EdtPSA_Total.Text) <> '' then TmpText:= TmpText + '���(�����) = '
                                                                   + Trim(EdtPSA_Total.Text) + ' ��/��; ';
    if Trim(EdtPSA_Free.Text) <> '' then TmpText:= TmpText + '���(����) = '
                                                                  + Trim(EdtPSA_Free.Text) + ' ��/��; ';
    if Trim(EdtPSA_Ratio.Text) <> '' then TmpText:= TmpText + '��� (����)/���(���) = '
                                                            + Trim(EdtPSA_Ratio.Text) + ' (N >= 0,1); ';

    //���� c����� �������� �� ������ ���������, �� ��������� ����� � ��������� � ��
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_ONKOMARKER')).AsString:= GetRTFText(TmpRE);

          Counter:= Counter + 1;//����������� �������
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_ONKOMARKER')).Clear;

(**************************************************************************************)
    //����� ��������� ������������ �����
    TmpText:= '����������� ����� (' + FormatDateTime('DD.MM.YY', DTPickIones.Date) + '): ';

    if Counter > 0 //���� ���-������� �� ������
      then
        begin
          BegCurPos:= Length(Trim(DestRE.Text) + #13#10 + #13#10);
          DestRE.Lines.Add('');
        end
      else
        begin
          BegCurPos:= 0;
          DestRE.Clear;
        end;

    EndCurPos:= Length(Trim(TmpText));//���������� ����� ���������

    //�������� ����� ������������ �����
    if Trim(EdtIonesNa.Text) <> '' then TmpText:= TmpText + 'Na(+) = '
                                                            + Trim(EdtIonesNa.Text) + ' �����/�; ';
    if Trim(EdtIonesK.Text) <> '' then TmpText:= TmpText + 'K(+) = '
                                                            + Trim(EdtIonesK.Text) + ' �����/�; ';
    if Trim(EdtIonesCl.Text) <> '' then TmpText:= TmpText + 'Cl(-) = '
                                                            + Trim(EdtIonesCl.Text) + ' �����/�; ';
    if Trim(EdtIonesCa.Text) <> '' then TmpText:= TmpText + 'iCa(2+) = '
                                                            + Trim(EdtIonesCa.Text) + ' �����/�; ';
    if Trim(EdtIonesBlood_pH.Text) <> '' then TmpText:= TmpText + 'pH ����� = '
                                                            + Trim(EdtIonesBlood_pH.Text) + ';';

    //���� c����� �������� �� ������ ���������, �� ��������� ����� � ��������� � ��
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//������� � ������������� �����
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_IONES')).AsString:= GetRTFText(TmpRE);
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_IONES')).Clear;

(**************************************************************************************)

    //�������� ����� ����� ������ ��� ����������� ��������� �� ��������� ����������
    TmpText:= Trim(GetRTFText(DestRE));

    DestRE.Clear;//������ �������� ����
    DestRE.Text:= TextBlood;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������� �����
    if Trim(DestRE.Text) = ''
      then //���� ���-���� ��� ������
        TextBlood:= TmpText//����� �������� ��� ����� ���������� TextBlood
      else//���� ���-�� ��������
        if TextBlood <> TmpText//���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ����������� �������� �����' +
            ' ������ ����� �������� �� ����� �������������� �����. ���������' +
            ' ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextBlood:= TmpText;//��������, ���� ����� "��"
  finally
    TmpRE.Free;
    DestRE.Free;
  end;

  try
    if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Post;
  finally
    if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
  end;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFrmBloodHorm.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp, HlpCtxBloodHorm);
end;

{$region ' KeyPress procedures block '}

(********************************************************************************)
(*                    ������������� ���� ������ �����                           *)
(********************************************************************************)

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtLGKeyPress(Sender: TObject; var Key: Char);
begin

if ((Key < '0') or (Key > '9')) and (Key <> '-') and (Key <> #8) and (Key <> #32)
                                                       and (Key <> ',') and (Key <> '.') and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� �����, ���������� ����� '
      + '��� �����!   ', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtFSGKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtProlactinKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtEstradiolKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtProgestKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtTestosterTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtDGEASKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtProgest_17OHKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtTestosterFreeKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtSSSGKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtT4_TotalKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtT4_FreeKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtT3_TotalKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtT3_FreeKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtTTGKeyPress(Sender: TObject; var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtKortizolKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtTireoglob_AtKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtTireoPerox_AtKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtInhibin_BKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtLGKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKHbKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� ����� �� 0 �� 9 !   ',
      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKErKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and (Key <> ',') and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� ����� ��� ���������� ' +
      '�����!   ', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioProteinKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioBiTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioBiDirectKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioCholestKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioSodiumFosfKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioGGTKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioLPVPKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioLPNPKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioMochevinaKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioUricAcidKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioCreatininKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioAlbuminKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioGlucosaKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioTriglycKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioCalciumKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioPhosphorKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioFerrumKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtBloodBioOZhSSKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKColourIndexKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKTrombKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKLeuKeyPress(Sender: TObject; var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKLeuYoungKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKLeuStabKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKLeuSegmentKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKLymphKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKMonocyteKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKEosinophilKeyPress(Sender: TObject; var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKBasophilKeyPress(Sender: TObject; var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKSOEKeyPress(Sender: TObject; var Key: Char);
begin
EdtOAKHbKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKReticulocyteKeyPress(Sender: TObject; var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtOAKGlucosaCapillKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtOAKErKeyPress(Sender,Key);
end;
{$endregion}
//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnOAKFotosClick(Sender: TObject);
begin
with TFrmImgOAKFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.AppEventsBloodHormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"

    //����������� "������" ������ "����-����"
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
      then BtnNextClick(Self);

    //���� �� ������ ���������/����� ������� ������� � ����������� �� ������� �������
    Handled:= True;//�������� ���������� ��� ���������� ������ ������ ����������
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0)
      then
        begin
          case PgCtrlBloodHorm.ActivePageIndex of
            0: BtnOAKFotosClick(Self);//����� ������ �����
            1: BtnBloodBioChemFotosClick(Self);//�������� �����
            2: BtnBloodHormFotosClick(Self);//������� �����
      //      3: ������� ��� ������
            4: BtnOnkomarkerFotosClick(Self);//����������� �����
      //      5: ������� ��� ������
          end;
        end
      else
        Handled:= False;
  end;
AppEventsBloodHorm.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnBloodBioChemFotosClick(Sender: TObject);
begin
with TFrmImgBloodBioChemFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnBloodHormFotosClick(Sender: TObject);
begin
with TFrmImgHormFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnOnkomarkerFotosClick(Sender: TObject);
begin
with TFrmImgOnkomarkerFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------
//�������� ��������������� ������
//function TFrmBloodHorm.GetRichStringFromRE(ARichEdit: TRichEdit;
//  var ACurPos: Integer; AStr: String): String;
//begin
//  with ARichEdit do
//  begin
//    Clear;
//    Text:= WriteSymbolToEndString(AStr,'.');
//    SelStart:= 0;
//    SelLength:= ACurPos;
//    SelAttributes.Style:= [fsUnderline];
//    SelStart:= ACurPos;//������ � ����� ���������
//    SelAttributes.Assign(DefAttributes);
//  end;
//Result:= GetRTFText(ARichEdit);
//end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmBloodHorm.SaveSettings;

VarPgCtrlBloodHorm:= PgCtrlBloodHorm.ActivePageIndex;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.FmtRichBox(ARichBox: TRichEdit; var AText: AnsiString;
                                                                          var ABegCurPos, AEndCurPos: Integer);
begin
with ARichBox do
  begin
    Lines.Add(Trim(AText));
    SelStart:= aBegCurPos;//������ � ������ ������
    SelLength:= AEndCurPos;//�������� "������" ����� ������
    SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
    SelStart:= Length(AText);
    SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
  end;
end;

//----------------------------------------------------------------------------

end.
