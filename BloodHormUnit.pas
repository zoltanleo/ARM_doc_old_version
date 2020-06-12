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
PgCtrlBloodHormChange(Sender);//проверяем кнопки "туда-сюда"

//грузим переменные в контроллы
//--- ОАК ---
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

//--- биохимия ---
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

//--- стероиды ---
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

//--- гормоны щитовидки ---
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

//--- онкомаркеры ---
DTPickOnkomark.Date:= VarOnkomarkDate;
EdtPSA_Total.Text:= Trim(VarPSA_Total);
EdtPSA_Free.Text:= Trim(VarPSA_Free);
EdtPSA_Ratio.Text:= Trim(VarPSA_Ratio);

//--- элетролиты ---
DTPickIones.Date:= VarBloodIonesDate;
EdtIonesNa.Text:= Trim(VarIones_Na);
EdtIonesK.Text:= Trim(VarIones_K);
EdtIonesCl.Text:= Trim(VarIones_Cl);
EdtIonesCa.Text:= Trim(VarIones_Ca);
EdtIonesBlood_pH.Text:= Trim(VarIonesBlood_pH);

  //фокусируем курсор
  case PgCtrlBloodHorm.ActivePageIndex of
    0 : if DTPickOAK.CanFocus then DTPickOAK.SetFocus;
    1 : if DTPickBloodBio.CanFocus then DTPickBloodBio.SetFocus;
    2 : if DTPickHormSter.CanFocus then DTPickHormSter.SetFocus;
    3 : if DTPickHormTireoid.CanFocus then DTPickHormTireoid.SetFocus;
    4 : if DTPickOnkomark.CanFocus then DTPickOnkomark.SetFocus;
    5 : if DTPickIones.CanFocus then DTPickIones.SetFocus;
  end;

//если "рамка"-фокус на форме попадает на заголовок TTabSheet, то в VCL ActiveControll = TPageControl,
//если же вкладка в фокусе, а заголовок без рамки фокуса, то ActiveControll = TTabSheet.
//в первом случае клавиши-"стрелки" будут работать сами, во втором - их программно надо эмулировать
if PgCtrlBloodHorm.ActivePage.CanFocus then PgCtrlBloodHorm.ActivePage.SetFocus; //убираем фокус на вкладки

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
//грузим параметры формы
NiceSetFrmBloodHorm.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Исследования крови (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Исследования крови (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

PgCtrlBloodHorm.ActivePageIndex:= VarPgCtrlBloodHorm; //фокус на вкладку
FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnNextClick(Sender: TObject);
begin
if PgCtrlBloodHorm.ActivePageIndex < Pred(PgCtrlBloodHorm.PageCount)//если не последняя
                                                                    //страница
  then PgCtrlBloodHorm.SelectNextPage(True);//движемся вперед
end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.BtnPrevClick(Sender: TObject);
begin
if PgCtrlBloodHorm.ActivePageIndex > 0//если не первая страница
  then PgCtrlBloodHorm.SelectNextPage(False);//движемся назад
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

  //фокусируем курсор
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
var BegCurPos, EndCurPos, //начало и конец выделения
    Counter: Integer; //внутренний счетчик
    TmpText, DestTxt: String;
    TmpRE, DestRE: TRichEdit;
begin
Counter:= 0; //обнуляем счетчик

//сохраняем изменения в переменные
//--- ОАК ---
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

//--- биохимия ---
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

//--- стероиды ---
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

//--- гормоны щитовидки ---
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

//--- онкомаркеры ---
VarOnkomarkDate:= DTPickOnkomark.Date;
VarPSA_Total:= Trim(EdtPSA_Total.Text);
VarPSA_Free:= Trim(EdtPSA_Free.Text);
VarPSA_Ratio:= Trim(EdtPSA_Ratio.Text);

//--- элетролиты ---
VarBloodIonesDate:= DTPickIones.Date;
VarIones_Na:= Trim(EdtIonesNa.Text);
VarIones_K:= Trim(EdtIonesK.Text);
VarIones_Cl:= Trim(EdtIonesCl.Text);
VarIones_Ca:= Trim(EdtIonesCa.Text);
VarIonesBlood_pH:= Trim(EdtIonesBlood_pH.Text);

//формируем и пишем RTF-поля
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

    //пишем заголовок ОАК
    TmpText:= 'ОАК (' + FormatDateTime('DD.MM.YY', DTPickOAK.Date) + '): ';
    BegCurPos:= 0;
    EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка

    //собираем текст ОАК
    if Trim(EdtOAKHb.Text) <> '' then TmpText:= TmpText + 'Hb = ' + Trim(EdtOAKHb.Text) + ' г/л; ';
    if Trim(EdtOAKEr.Text) <> '' then TmpText:= TmpText + 'Er = ' + Trim(EdtOAKEr.Text)
                                                                                   + ' х 10^12/л; ';
    if Trim(EdtOAKColourIndex.Text) <> '' then TmpText:= TmpText + 'Цв.пок. = '
                                                              + Trim(EdtOAKColourIndex.Text) + '; ';
    if Trim(EdtOAKTromb.Text) <> '' then TmpText:= TmpText + 'Tr = ' + Trim(EdtOAKTromb.Text)
                                                                                    + ' x 10^9/л; ';
    if Trim(EdtOAKLeu.Text) <> '' then TmpText:= TmpText + 'Leu = ' + Trim(EdtOAKLeu.Text)
                                                                                    + ' х 10^9/л; ';
    if Trim(EdtOAKLeuYoung.Text) <> '' then TmpText:= TmpText + 'юн = '
                                                               + Trim(EdtOAKLeuYoung.Text) + ' %; ';
    if Trim(EdtOAKLeuStab.Text) <> '' then TmpText:= TmpText + 'п/я = ' + Trim(EdtOAKLeuStab.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKLeuSegment.Text) <> '' then TmpText:= TmpText + 'с/я = '
                                                             + Trim(EdtOAKLeuSegment.Text) + ' %; ';
    if Trim(EdtOAKLymph.Text) <> '' then TmpText:= TmpText + 'Лимф = ' + Trim(EdtOAKLymph.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKMonocyte.Text) <> '' then TmpText:= TmpText + 'Мон = ' + Trim(EdtOAKMonocyte.Text)
                                                                                           + ' %; ';
    if Trim(EdtOAKEosinophil.Text) <> '' then TmpText:= TmpText + 'Эо = '
                                                             + Trim(EdtOAKEosinophil.Text) + ' %; ';
    if Trim(EdtOAKBasophil.Text) <> '' then TmpText:= TmpText + 'Баз = '
                                                               + Trim(EdtOAKBasophil.Text) + ' %; ';
    if Trim(EdtOAKSOE.Text) <> '' then TmpText:= TmpText + 'СОЭ = ' + Trim(EdtOAKSOE.Text)
                                                                                      + ' мм/час; ';
    if Trim(EdtOAKCoagul.Text) <> '' then TmpText:= TmpText + 'сверт.(по Сухар) = '
                                                              + Trim(EdtOAKCoagul.Text) + ' мин.; ';
    if Trim(EdtOAKHemorrhagTime.Text) <> '' then TmpText:= TmpText + 'время кров. = '
                                                       + Trim(EdtOAKHemorrhagTime.Text) + ' мин.; ';
    if Trim(EdtOAKReticulocyte.Text) <> '' then TmpText:= TmpText + 'ретик = '
                                                           + Trim(EdtOAKReticulocyte.Text) + ' %; ';
    if Trim(EdtOAKGlucosaCapill.Text) <> '' then TmpText:= TmpText + 'глюкоза(кап) = '
                                                    + Trim(EdtOAKGlucosaCapill.Text) + ' ммоль/л; ';
    if Trim(EdtOAKEosinSliz.Text) <> '' then TmpText:= TmpText + 'Эозин.слиз - '
                                                                + Trim(EdtOAKEosinSliz.Text) + '; ';
    if Trim(EdtOAKHmtc.Text) <> '' then TmpText:= TmpText + 'Hmtc = ' + Trim(EdtOAKHmtc.Text) + '; ';

    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          DestRE.Clear;
          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          Counter:= Counter + 1; //увеличиваем счетчик

          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_OAK')).AsString:= GetRTFText(TmpRE);//текст в поле
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_OAK')).Clear;//чистим это поле

(**************************************************************************************)

    //пишем заголовок биохимии крови
    TmpText:= 'Биохимия крови (' + FormatDateTime('DD.MM.YY', DTPickBloodBio.Date) + '): ';

    if Counter > 0 //если рич-сборник не пустой
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

    EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка

    //собираем текст биохимии крови
    if Trim(EdtBloodBioALT.Text) <> '' then TmpText:= TmpText + 'АЛТ = '
                                                            + Trim(EdtBloodBioALT.Text) + ' ед/л; ';
    if Trim(EdtBloodBioAST.Text) <> '' then TmpText:= TmpText + 'АСТ = '
                                                            + Trim(EdtBloodBioAST.Text) + ' ед/л; ';
    if Trim(EdtBloodBioProtein.Text) <> '' then TmpText:= TmpText + 'о/белок = '
                                                         + Trim(EdtBloodBioProtein.Text) + ' г/л; ';
    if Trim(EdtBloodBioBiTotal.Text) <> '' then TmpText:= TmpText + 'Бил(общ) = '
                                                   + Trim(EdtBloodBioBiTotal.Text) + ' мкмоль/мл; ';
    if Trim(EdtBloodBioBiDirect.Text) <> '' then TmpText:= TmpText + 'Бил(пр) = '
                                                  + Trim(EdtBloodBioBiDirect.Text) + ' мкмоль/мл; ';
    if Trim(EdtBloodBioCholest.Text) <> '' then TmpText:= TmpText + 'холест(общ) = '
                                                       + Trim(EdtBloodBioCholest.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioSodiumFosf.Text) <> '' then TmpText:= TmpText + 'щел.фосф. = '
                                                     + Trim(EdtBloodBioSodiumFosf.Text) + ' ед/л; ';
    if Trim(EdtBloodBioGGT.Text) <> '' then TmpText:= TmpText + 'ГГТ = '
                                                            + Trim(EdtBloodBioGGT.Text) + ' ед/л; ';
    if Trim(EdtBloodBioLPVP.Text) <> '' then TmpText:= TmpText + 'ЛПВП = '
                                                          + Trim(EdtBloodBioLPVP.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioLPNP.Text) <> '' then TmpText:= TmpText + 'ЛПНП = '
                                                          + Trim(EdtBloodBioLPNP.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioMochevina.Text) <> '' then TmpText:= TmpText + 'Ur = '
                                                   + Trim(EdtBloodBioMochevina.Text) + ' ммоль/л; ';
    if Trim(EdtBloodBioUricAcid.Text) <> '' then TmpText:= TmpText + 'моч.к-та = '
                                                      + Trim(EdtBloodBioUricAcid.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioCreatinin.Text) <> '' then TmpText:= TmpText + 'Cr = '
                                                  + Trim(EdtBloodBioCreatinin.Text) + ' мкмоль/л; ';
    if Trim(EdtBloodBioAlbumin.Text) <> '' then TmpText:= TmpText + 'альб. = '
                                                         + Trim(EdtBloodBioAlbumin.Text) + ' г/л; ';
    if Trim(EdtBloodBioGlucosa.Text) <> '' then TmpText:= TmpText + 'глюкоза(сыв) = '
                                                     + Trim(EdtBloodBioGlucosa.Text) + ' ммоль/л; ';
    if Trim(EdtBloodBioTriglyc.Text) <> '' then TmpText:= TmpText + 'тригл. = '
                                                       + Trim(EdtBloodBioTriglyc.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioCalcium.Text) <> '' then TmpText:= TmpText + 'кальц. = '
                                                     + Trim(EdtBloodBioCalcium.Text) + ' ммоль/л; ';
    if Trim(EdtBloodBioPhosphor.Text) <> '' then TmpText:= TmpText + 'фосф. = '
                                                      + Trim(EdtBloodBioPhosphor.Text) + ' мг/дл; ';
    if Trim(EdtBloodBioFerrum.Text) <> '' then TmpText:= TmpText + 'железо(сыв) = '
                                                     + Trim(EdtBloodBioFerrum.Text) + ' мкмоль/л; ';
    if Trim(EdtBloodBioOZhSS.Text) <> '' then TmpText:= TmpText + 'ОЖСС = ' +
                                                        Trim(EdtBloodBioOZhSS.Text) + ' мкмоль/л; ';
    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          DestTxt:= DestRE.Text;
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_BLOODBIO')).AsString:= GetRTFText(TmpRE);//текст в поле

          Counter:= Counter + 1;//увеличиваем счетчик
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_BLOODBIO')).Clear;//чистим это поле

(**************************************************************************************)

    //пишем заголовок гормонов крови
    TmpText:= 'Гормоны крови (' + FormatDateTime('DD.MM.YY', DTPickHormSter.Date) + '): ';

    if Counter > 0 //если рич-сборник не пустой
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

    EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка

    //собираем текст стероидных гормонов
    if Trim(EdtLG.Text) <> '' then TmpText:= TmpText + 'ЛГ = '
                                                                   + Trim(EdtLG.Text) + ' мМЕ/мл; ';
    if Trim(EdtFSG.Text) <> '' then TmpText:= TmpText + 'ФСГ = '
                                                                  + Trim(EdtFSG.Text) + ' мМе/мл; ';
    if Trim(EdtProlactin.Text) <> '' then TmpText:= TmpText + 'пролактин = '
                                                            + Trim(EdtProlactin.Text) + ' мМе/мл; ';
    if Trim(EdtEstradiol.Text) <> '' then TmpText:= TmpText + 'эстрадиол = '
                                                             + Trim(EdtEstradiol.Text) + ' пг/мл; ';
    if Trim(EdtProgest.Text) <> '' then TmpText:= TmpText + 'прогестерон = '
                                                             + Trim(EdtProgest.Text) + ' нмоль/л; ';
    if Trim(EdtTestosterTotal.Text) <> '' then TmpText:= TmpText + 'тест.(общ) = '
                                                      + Trim(EdtTestosterTotal.Text) + ' нмоль/л; ';
    if Trim(EdtDGEAS.Text) <> '' then TmpText:= TmpText + 'ДГЭАС '
                                                                + Trim(EdtDGEAS.Text) + ' мкг/мл; ';
    if Trim(EdtProgest_17OH.Text) <> '' then TmpText:= TmpText + '17-ОН прогест. = '
                                                          + Trim(EdtProgest_17OH.Text) + ' нг/мл; ';
    if Trim(EdtTestosterFree.Text) <> '' then TmpText:= TmpText + 'тест.(своб) = '
                                                         + Trim(EdtTestosterFree.Text) + ' пг/мл; ';
    if Trim(EdtSSSG.Text) <> '' then TmpText:= TmpText + 'СССГ = '
                                                                  + Trim(EdtSSSG.Text) + ' нмоль; ';

    //если cтрока содержит только заголовок (дата взятия стероидов), т.е. стероиды на определялись
    if Length(Trim(TmpText)) = EndCurPos
      then //то пока пишем заголовок гормонов щитовидки (ЩЖ)
        begin
          TmpText:= 'Гормоны ЩЖ (' + FormatDateTime('DD.MM.YY', DTPickHormTireoid.Date) + '): ';
          EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка
        end;

    //если стероиды определялись, то просто дописываем текст текст гормонов щитовидки у имеющемуся
    if Trim(EdtT4_Total.Text) <> '' then TmpText:= TmpText + 'T4(общ) = '
                                                            + Trim(EdtT4_Total.Text) + ' нмоль/л; ';
    if Trim(EdtT4_Free.Text) <> '' then TmpText:= TmpText + 'Т4(своб) = '
                                                             + Trim(EdtT4_Free.Text) + ' пмоль/л; ';
    if Trim(EdtT3_Total.Text) <> '' then TmpText:= TmpText + 'Т3(общ) = '
                                                            + Trim(EdtT3_Total.Text) + ' нмоль/л; ';
    if Trim(EdtT3_Free.Text) <> '' then TmpText:= TmpText + 'Т3(своб) = '
                                                               + Trim(EdtT3_Free.Text) + ' пг/мл; ';
    if Trim(EdtTTG.Text) <> '' then TmpText:= TmpText + 'ТТГ = '
                                                                 + Trim(EdtTTG.Text) + ' мкМЕ/мл; ';
    if Trim(EdtKortizol.Text) <> '' then TmpText:= TmpText + 'кортизол = '
                                                            + Trim(EdtKortizol.Text) + ' нмоль/л; ';
    if Trim(EdtTireoglob_At.Text) <> '' then TmpText:= TmpText + 'Ат к тиреоглоб. = '
                                                          + Trim(EdtTireoglob_At.Text) + ' ед/мл; ';
    if Trim(EdtTireoPerox_At.Text) <> '' then TmpText:= TmpText + 'Ат к тиреоид.перокс.(ТПО) = '
                                                         + Trim(EdtTireoPerox_At.Text) + ' ед/мл; ';
    if Trim(EdtInhibin_B.Text) <> '' then TmpText:= TmpText + 'ингибин В = '
                                                                   + Trim(EdtInhibin_B.Text) + ' пг/мл; ';

    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_HORM')).AsString:= GetRTFText(TmpRE);

          Counter:= Counter + 1;//увеличиваем счетчик
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_HORM')).Clear;

(**************************************************************************************)

    //пишем заголовок онкомаркеров крови
    TmpText:= 'Диагностика онкомаркеров (' + FormatDateTime('DD.MM.YY', DTPickOnkomark.Date) + '): ';

    if Counter > 0 //если рич-сборник не пустой
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

    EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка

    //собираем текст стероидных гормонов
    if Trim(EdtPSA_Total.Text) <> '' then TmpText:= TmpText + 'ПСА(общий) = '
                                                                   + Trim(EdtPSA_Total.Text) + ' нг/мл; ';
    if Trim(EdtPSA_Free.Text) <> '' then TmpText:= TmpText + 'ПСА(своб) = '
                                                                  + Trim(EdtPSA_Free.Text) + ' нг/мл; ';
    if Trim(EdtPSA_Ratio.Text) <> '' then TmpText:= TmpText + 'ПСА (своб)/ПСА(общ) = '
                                                            + Trim(EdtPSA_Ratio.Text) + ' (N >= 0,1); ';

    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_ONKOMARKER')).AsString:= GetRTFText(TmpRE);

          Counter:= Counter + 1;//увеличиваем счетчик
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_ONKOMARKER')).Clear;

(**************************************************************************************)
    //пишем заголовок электролитов крови
    TmpText:= 'Электролиты крови (' + FormatDateTime('DD.MM.YY', DTPickIones.Date) + '): ';

    if Counter > 0 //если рич-сборник не пустой
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

    EndCurPos:= Length(Trim(TmpText));//запоминаем длину заголовка

    //собираем текст электролитов крови
    if Trim(EdtIonesNa.Text) <> '' then TmpText:= TmpText + 'Na(+) = '
                                                            + Trim(EdtIonesNa.Text) + ' ммоль/л; ';
    if Trim(EdtIonesK.Text) <> '' then TmpText:= TmpText + 'K(+) = '
                                                            + Trim(EdtIonesK.Text) + ' ммоль/л; ';
    if Trim(EdtIonesCl.Text) <> '' then TmpText:= TmpText + 'Cl(-) = '
                                                            + Trim(EdtIonesCl.Text) + ' ммоль/л; ';
    if Trim(EdtIonesCa.Text) <> '' then TmpText:= TmpText + 'iCa(2+) = '
                                                            + Trim(EdtIonesCa.Text) + ' ммоль/л; ';
    if Trim(EdtIonesBlood_pH.Text) <> '' then TmpText:= TmpText + 'pH крови = '
                                                            + Trim(EdtIonesBlood_pH.Text) + ';';

    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpText)) <> EndCurPos
      then
        begin
          TmpRE.Clear;
          FmtRichBox(TmpRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст

          FmtRichBox(DestRE,TmpText,BegCurPos,EndCurPos);//добавим и отформатируем текст
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_IONES')).AsString:= GetRTFText(TmpRE);
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_IONES')).Clear;

(**************************************************************************************)

    //присвоим текст эдита строке для корректного сравнения со строковой переменной
    TmpText:= Trim(GetRTFText(DestRE));

    DestRE.Clear;//чистим ненужный эдит
    DestRE.Text:= TextBlood;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст анализа крови
    if Trim(DestRE.Text) = ''
      then //если рич-эдит был пустой
        TextBlood:= TmpText//смело изменяем его через переменную TextBlood
      else//если что-то содержит
        if TextBlood <> TmpText//если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенные результаты клинических анализов крови' +
            ' сейчас будет заменены на вновь сформированный текст. Разрешить' +
            ' замену?', 'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextBlood:= TmpText;//заменяем, если ответ "Да"
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
(*                    контроллируем ввод только чисел                           *)
(********************************************************************************)

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.EdtLGKeyPress(Sender: TObject; var Key: Char);
begin

if ((Key < '0') or (Key > '9')) and (Key <> '-') and (Key <> #8) and (Key <> #32)
                                                       and (Key <> ',') and (Key <> '.') and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только целые числа, десятичные дроби '
      + 'или дефис!   ', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
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
      Application.MessageBox('Вы можете вводить только целые числа от 0 до 9 !   ',
      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
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
      Application.MessageBox('Вы можете вводить только целые числа или десятичные ' +
      'дроби!   ', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
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
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"

    //отслеживаем "хоткеи" клавиш "туда-сюда"
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
      then BtnNextClick(Self);

    //жмем на кнопку просмотра/ввода снимков бланков в зависимости от текущей вкладки
    Handled:= True;//запретим передавать эту комбинацию клавиш другим контроллам
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0)
      then
        begin
          case PgCtrlBloodHorm.ActivePageIndex of
            0: BtnOAKFotosClick(Self);//общий анализ крови
            1: BtnBloodBioChemFotosClick(Self);//биохимия крови
            2: BtnBloodHormFotosClick(Self);//гормоны крови
      //      3: вкладка без кнопки
            4: BtnOnkomarkerFotosClick(Self);//онкомаркеры крови
      //      5: вкладка без кнопки
          end;
        end
      else
        Handled:= False;
  end;
AppEventsBloodHorm.CancelDispatch;//чтобы другие формы не реагировали по этому событию
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
//получаем форматированную строку
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
//    SelStart:= ACurPos;//курсор в конец выделения
//    SelAttributes.Assign(DefAttributes);
//  end;
//Result:= GetRTFText(ARichEdit);
//end;

//----------------------------------------------------------------------------

procedure TFrmBloodHorm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
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
    SelStart:= aBegCurPos;//курсор в начало строки
    SelLength:= AEndCurPos;//выделяем "нужную" часть строки
    SelAttributes.Style:= [fsUnderline];//подчеркиваем выделенный текст
    SelStart:= Length(AText);
    SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
  end;
end;

//----------------------------------------------------------------------------

end.
