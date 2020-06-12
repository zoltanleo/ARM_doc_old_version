unit UZIGenitUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmUZIGenit = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    PgCtrlUZIGenit: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BtnPrev: TButton;
    BtnNext: TButton;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    DTPickUZIProstata: TDateTimePicker;
    Panel1: TPanel;
    Label15: TLabel;
    EdtUZIProstSize_01: TEdit;
    Label22: TLabel;
    EdtUZIProstSize_02: TEdit;
    Label21: TLabel;
    EdtUZIProstSize_03: TEdit;
    Label20: TLabel;
    Label25: TLabel;
    EdtUZIProstVolume: TEdit;
    Label26: TLabel;
    Label24: TLabel;
    CbBoxUZIProstContour: TComboBox;
    Label27: TLabel;
    CbBoxUZIProstOutline: TComboBox;
    ChBoxUZIProstata: TCheckBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Panel2: TPanel;
    DTPickUZITestis: TDateTimePicker;
    GroupBox4: TGroupBox;
    CbBoxUZIProstStructure: TComboBox;
    CbBoxUZIProstDensity: TComboBox;
    CbBoxUZIProstFibrosis: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CbBoxUZIProstLytos: TComboBox;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    CbBoxUZIProstCentrFocal: TComboBox;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    CbBoxUZIProstCentrDens: TComboBox;
    Label16: TLabel;
    Label17: TLabel;
    CbBoxUZIProstPerifFocal: TComboBox;
    CbBoxUZIProstPerifDens: TComboBox;
    Panel3: TPanel;
    Label18: TLabel;
    EdtUZIProstResidUrine: TEdit;
    Label19: TLabel;
    Panel5: TPanel;
    ChBoxUZITestis: TCheckBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    EdtUZITestisDext_01: TEdit;
    EdtUZITestisDext_02: TEdit;
    EdtUZITestisDext_03: TEdit;
    EdtUZITestisDext_04: TEdit;
    CbBoxUZITestisDextPath: TComboBox;
    CbBoxUZITestisDextEdge: TComboBox;
    CbBoxUZITestisDextStruct: TComboBox;
    CbBoxUZITestisDextLiquid: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    EdtUZIEpididimDext_01: TEdit;
    Label41: TLabel;
    EdtUZIEpididimDext_02: TEdit;
    Label42: TLabel;
    EdtUZIEpididimDext_03: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    CbBoxUZIEpididimDextPath: TComboBox;
    Label46: TLabel;
    EdtUZIEpididimDext_04: TEdit;
    Label47: TLabel;
    CbBoxUZIEpididimDextEdge: TComboBox;
    Label48: TLabel;
    Label49: TLabel;
    CbBoxUZIEpididimDextStruct: TComboBox;
    CbBoxUZIEpididimDextNidus: TComboBox;
    Label50: TLabel;
    GroupBox9: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    EdtUZITestisSin_01: TEdit;
    EdtUZITestisSin_02: TEdit;
    EdtUZITestisSin_03: TEdit;
    EdtUZITestisSin_04: TEdit;
    CbBoxUZITestisSinPath: TComboBox;
    CbBoxUZITestisSinEdge: TComboBox;
    CbBoxUZITestisSinStruct: TComboBox;
    CbBoxUZITestisSinLiquid: TComboBox;
    EdtUZIEpididimSin_01: TEdit;
    EdtUZIEpididimSin_02: TEdit;
    EdtUZIEpididimSin_03: TEdit;
    CbBoxUZIEpididimSinPath: TComboBox;
    EdtUZIEpididimSin_04: TEdit;
    CbBoxUZIEpididimSinEdge: TComboBox;
    CbBoxUZIEpididimSinStruct: TComboBox;
    CbBoxUZIEpididimSinNidus: TComboBox;
    Label72: TLabel;
    DTPickUZIPenis: TDateTimePicker;
    Panel4: TPanel;
    ChBoxUZIPenis: TCheckBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    CbBoxUZIPenisCavernStruct: TComboBox;
    CbBoxUZIPenisCavernDensit: TComboBox;
    Label76: TLabel;
    CbBoxUZIPenisCavernInclus: TComboBox;
    Label79: TLabel;
    Label80: TLabel;
    CbBoxUZIPenisAlbuginStruct: TComboBox;
    CbBoxUZIPenisAlbuginThick: TComboBox;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    EdtUZIPenisArtCavDext_01: TEdit;
    EdtUZIPenisArtCavDext_02: TEdit;
    EdtUZIPenisArtCavDext_03: TEdit;
    EdtUZIPenisArtCavDext_04: TEdit;
    EdtUZIPenisArtCavDext_05: TEdit;
    EdtUZIPenisArtDorsDext_01: TEdit;
    EdtUZIPenisArtDorsDext_02: TEdit;
    EdtUZIPenisArtDorsDext_03: TEdit;
    EdtUZIPenisArtDorsDext_04: TEdit;
    EdtUZIPenisArtDorsDext_05: TEdit;
    EdtUZIPenisArtCavSin_01: TEdit;
    EdtUZIPenisArtDorsSin_01: TEdit;
    EdtUZIPenisArtCavSin_02: TEdit;
    EdtUZIPenisArtDorsSin_02: TEdit;
    EdtUZIPenisArtCavSin_03: TEdit;
    EdtUZIPenisArtDorsSin_03: TEdit;
    EdtUZIPenisArtCavSin_04: TEdit;
    EdtUZIPenisArtDorsSin_04: TEdit;
    EdtUZIPenisArtCavSin_05: TEdit;
    EdtUZIPenisArtDorsSin_05: TEdit;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    EdtUZIPenisVenaDorsDext_01: TEdit;
    EdtUZIPenisVenaDorsDext_02: TEdit;
    EdtUZIPenisVenaDorsDext_03: TEdit;
    EdtUZIPenisVenaDorsSin_01: TEdit;
    EdtUZIPenisVenaDorsSin_02: TEdit;
    EdtUZIPenisVenaDorsSin_03: TEdit;
    Label106: TLabel;
    NiceSetFrmUZIGenit: TNiceSettings;
    TabSheet4: TTabSheet;
    GroupBox10: TGroupBox;
    Label107: TLabel;
    DTPickUZIDopplerTestis: TDateTimePicker;
    ChkBoxDopplerTestis: TCheckBox;
    Panel6: TPanel;
    GroupBox11: TGroupBox;
    Label110: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label128: TLabel;
    CbBoxVasaFunicDext: TComboBox;
    EdtVasaFunic_HorzDext: TEdit;
    EdtVasaFunic_VertDext: TEdit;
    CbBoxValsalveDext: TComboBox;
    EdtVasa_LSKFunicDext: TEdit;
    CbBoxVasaFunicParenchDext: TComboBox;
    GroupBox12: TGroupBox;
    Label108: TLabel;
    Label109: TLabel;
    EdtVasa_LSKTestisDext: TEdit;
    Label112: TLabel;
    CbBoxVasaFunicSin: TComboBox;
    Label113: TLabel;
    Label114: TLabel;
    EdtVasaFunic_VertSin: TEdit;
    EdtVasaFunic_HorzSin: TEdit;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    CbBoxValsalveSin: TComboBox;
    Label118: TLabel;
    CbBoxVasaFunicParenchSin: TComboBox;
    Label126: TLabel;
    Label127: TLabel;
    Label129: TLabel;
    EdtVasa_LSKTestisSin: TEdit;
    EdtVasa_LSKFunicSin: TEdit;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    CbBoxUZIProstEchogenDext: TComboBox;
    Label133: TLabel;
    CbBoxUZIProstEchogenSin: TComboBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label23: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    CbBoxUZIVesSeminDextWall: TComboBox;
    CbBoxUZIVesSeminDextDens: TComboBox;
    EdtUZIVesSeminDext_01: TEdit;
    EdtUZIVesSeminDext_02: TEdit;
    GroupBox13: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    CbBoxUZIVesSeminSinWall: TComboBox;
    CbBoxUZIVesSeminSinDens: TComboBox;
    EdtUZIVesSeminSin_01: TEdit;
    EdtUZIVesSeminSin_02: TEdit;
    ChkBoxUZIVesicSemin: TCheckBox;
    Label111: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    AppEventsFrmUZIGenit: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure PgCtrlUZIGenitChange(Sender: TObject);
    procedure ChBoxUZIProstataClick(Sender: TObject);
    procedure ChBoxUZITestisClick(Sender: TObject);
    procedure ChBoxUZIPenisClick(Sender: TObject);
    procedure EdtUZIProstSize_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIProstSize_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIProstSize_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIProstVolumeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIProstResidUrineKeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIVesSeminDext_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIVesSeminDext_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIVesSeminSin_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIVesSeminSin_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisDext_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisDext_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisDext_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisDext_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisSin_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisSin_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisSin_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZITestisSin_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIEpididimDext_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIEpididimDext_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIEpididimDext_03KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIEpididimDext_04KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIEpididimSin_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIEpididimSin_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIEpididimSin_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIEpididimSin_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtUZIPenisArtCavDext_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavDext_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavDext_03KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavDext_04KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavDext_05KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavSin_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavSin_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavSin_03KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavSin_04KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtCavSin_05KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsDext_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsDext_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsDext_03KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsDext_04KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsDext_05KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsSin_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsSin_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsSin_03KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsSin_04KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisArtDorsSin_05KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisVenaDorsDext_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisVenaDorsDext_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisVenaDorsSin_01KeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtUZIPenisVenaDorsSin_02KeyPress(Sender: TObject;
      var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChkBoxDopplerTestisClick(Sender: TObject);
    procedure CbBoxVasaFunicDextChange(Sender: TObject);
    procedure CbBoxVasaFunicSinChange(Sender: TObject);
    procedure CbBoxUZIProstCentrFocalChange(Sender: TObject);
    procedure CbBoxUZIProstPerifFocalChange(Sender: TObject);
    procedure ChkBoxUZIVesicSeminClick(Sender: TObject);
    procedure AppEventsFrmUZIGenitShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmUZIGenit: TFrmUZIGenit;

  //��������
  prm, prn, prj, pri, vesr, vesl,
  tdj, tdi, tdn, edj, edi, edn,
  tsj, tsi, tsn, esj, esi, esn,
  acd1, acd2, acd3, acd4, acd5, //a.cavernosa dextra
  acs1, acs2, acs3, acs4, acs5, //a.cavernosa sinistra
  add1, add2, add3, add4, add5, //a.dors.dextra
  ads1, ads2, ads3, ads4, ads5,//a.dors.sinistra
  vdd1,vdd2, vdd3,             //v.dorsalis profunda dextra
  vds1, vds2, vds3,            //v.dorsalis profunda sinitra
  ddh, ddv, ddit, ddf,         //������� ������� ������� ������ (�����,����, ���������, �����������)
  dsh, dsv, dsit, dsf: Integer;//������� ������� ������� ����� (�����,����, ���������, �����������)
  Artbool, Venbool: Boolean;//������

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------
procedure TFrmUZIGenit.BtnSaveClick(Sender: TObject);
var FullTxt, TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

//************ ��������� ������� "��� ��������" **************
    if ChBoxUZIProstata.Checked then
      begin
      //��������� ���������
      TmpTxt:= Trim('��� �������������� ������ ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                             DTPickUZIProstata.DateTime));

      AddFormatStrInRichEdit(TmpRE,TmpTxt);
      TmpRE.Lines.Add(''); //�������� �� ���� ���������� ������ ������ �������

      //----- ����������� ������������� ������ � ���������
      //���� ��������� ��� �����, ���������� ��� ��� �������
      if (Trim(EdtUZIProstSize_01.Text) <> '')
          and (Trim(EdtUZIProstSize_02.Text) <> '')
            and (Trim(EdtUZIProstSize_03.Text) <> '')
        then
          begin
            FullTxt:= '������ ' + Trim(EdtUZIProstSize_01.Text) + ' x '
                               + Trim(EdtUZIProstSize_02.Text) + ' x '
                               + Trim(EdtUZIProstSize_03.Text) + ' ��;';
          end {then ... ������ ��� �������}
        else
          begin
            //���� ���� �� ���� ������ ���������, ���������� �������
            if ((Trim(EdtUZIProstSize_01.Text) <> '')
                                                and (Trim(EdtUZIProstSize_02.Text) <> ''))
              or ((Trim(EdtUZIProstSize_02.Text) <> '')
                                                and (Trim(EdtUZIProstSize_03.Text) <> ''))
                or ((Trim(EdtUZIProstSize_01.Text) <> '')
                                                and (Trim(EdtUZIProstSize_03.Text) <> ''))
              then
                begin
                  if (Trim(EdtUZIProstSize_01.Text) <> '')
                    and (Trim(EdtUZIProstSize_02.Text) <> '')

                    then FullTxt:= '������ ' + Trim(EdtUZIProstSize_01.Text) +
                                            ' x ' + Trim(EdtUZIProstSize_02.Text) + ' ��;'

                    else
                      if (Trim(EdtUZIProstSize_02.Text) <> '')
                        and (Trim(EdtUZIProstSize_03.Text) <> '')

                        then FullTxt:= '������ ' + Trim(EdtUZIProstSize_02.Text) + ' x '
                                                  + Trim(EdtUZIProstSize_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          FullTxt:= '������ ' + Trim(EdtUZIProstSize_01.Text) + ' x '
                                                 + Trim(EdtUZIProstSize_03.Text) + ' ��;';

                end {then ... ���� �� ��� �������}
              else
                begin
                  //���� ��� ����� ������ � �������� ���� � ������ ��� (prn=0)
                  if (not ((Trim(EdtUZIProstSize_01.Text) <> '')
                       or (Trim(EdtUZIProstSize_02.Text) <> '')
                         or (Trim(EdtUZIProstSize_03.Text) <> ''))) and (prn = 0)

                    then
                      begin
                        prn:= prn + 1;//����������� ��������
                        prm:= prm + 1;//����� ������ �� ������������ � ������� � ��������

                        //����������, ����� �� ������� ������� ��� ���
                        if Application.MessageBox('�� �� ������� ������� �������������� '
                             + '������. ������ �������?', '�������� ������',
                               MB_YESNO + MB_ICONINFORMATION) = IDYes

                          then
                            begin
                              //��������� "������ �������"
                              PgCtrlUZIGenit.ActivePageIndex:= 0;
                              //����������, ������ ����� �������� �����
                              if Trim(EdtUZIProstSize_01.Text) = ''
                                then
                                  begin
                                    if EdtUZIProstSize_01.CanFocus
                                                        then EdtUZIProstSize_01.SetFocus;
                                  end
                                else if Trim(EdtUZIProstSize_02.Text) = ''
                                  then
                                    begin
                                      if EdtUZIProstSize_02.CanFocus
                                                        then EdtUZIProstSize_02.SetFocus;
                                    end
                                  else if Trim(EdtUZIProstSize_03.Text) = ''
                                    then if EdtUZIProstSize_03.CanFocus
                                                        then EdtUZIProstSize_03.SetFocus;
                             
                              Exit;
                            end
                          else
                            FullTxt:= '';

                      end {then ... ��� ����� ������ � �������� � ������ ���}
                    else
                      begin
                        //����� ������� ���� �������� �������� �����������, ��� ��������
                        //������ ���� �� ������ - ����������� �����������
                        if prm = 0 //���� ���������� � ������ ���
                          then
                            begin
                            prm:= prm + 1;//����������� �������

                            if Application.MessageBox('�� �� �������, ��� �������, ���' +
                            ' ���� �� �������� �������������� ������. ������ �������?',
                            '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                              then
                                begin
                                 //��������� "������ �������"
                                 PgCtrlUZIGenit.ActivePageIndex:= 0;
                                 //����������, ������ ����� �������� �����
                                 if Trim(EdtUZIProstSize_01.Text) = ''
                                   then
                                     begin
                                       if EdtUZIProstSize_01.CanFocus
                                                        then EdtUZIProstSize_01.SetFocus;
                                     end
                                   else if Trim(EdtUZIProstSize_02.Text) = ''
                                     then
                                       begin
                                         if EdtUZIProstSize_02.CanFocus
                                                        then EdtUZIProstSize_02.SetFocus;
                                       end
                                     else if Trim(EdtUZIProstSize_03.Text) = ''
                                       then if EdtUZIProstSize_03.CanFocus
                                                        then EdtUZIProstSize_03.SetFocus;

                                 Exit;
                                end
                              else
                                FullTxt:= '';
                            end;
                      end; {else ... ��� ����� ������ � �������� � ������ ���}
                end; {else ... ���� �� ��� �������}
          end;{else ... ������ ��� �������}

      if (Trim(EdtUZIProstVolume.Text) <> '')
        then //���� ��������
          begin
            if Trim(FullTxt) <> ''
              then //���������� ����� �� ������
                FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ����� ' +
                                                 Trim(EdtUZIProstVolume.Text) + ' ���.��;'
              else
                FullTxt:= '����� ' + Trim(EdtUZIProstVolume.Text) + ' ���.��;';
          end {then..Trim(EdtUZIProstVolume.Text) <> ''}
        else //���� ������
          begin
            if prj = 0 then
              begin
                prj:= prj + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ ��������������'
                                         + ' ������. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 0;
                      //����� �� ����
                      if EdtUZIProstVolume.CanFocus then EdtUZIProstVolume.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZIProstVolume.Text) <> ''}

      if (Trim(EdtUZIProstResidUrine.Text) <> '')
        then //���� ��������
          begin
            if Trim(FullTxt) <> ''
              then //���������� ����� �� ������
                FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ����� ���������� ' +
                                  '���� ' + Trim(EdtUZIProstResidUrine.Text) + ' ���.��;'
              else
                FullTxt:= '����� ���������� ���� ' + Trim(EdtUZIProstResidUrine.Text)
                                                                            + ' ���.��;';
          end {then..Trim(EdtUZIProstResidUrine.Text) <> ''}
        else //���� ������
          begin
            if pri = 0 then
              begin
                pri:= pri + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ ����������'
                                         + ' ����. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 0;

                      //����� �� ����
                      if EdtUZIProstResidUrine.CanFocus
                                                      then EdtUZIProstResidUrine.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZIProstResidUrine.Text) <> ''}

      if Trim(FullTxt) <> ''
        then TmpTxt:= ' �������'
        else TmpTxt:= '�������';

      FullTxt:= '��������: '+ FullTxt + TmpTxt + ' ' + Trim(CbBoxUZIProstContour.Text) + ', '
        + Trim(CbBoxUZIProstOutline.Text) + '; ��������� ' + Trim(CbBoxUZIProstStructure.Text) + ', ';

        case CbBoxUZIProstDensity.ItemIndex of
          0: FullTxt:= FullTxt + ' �������������';
          1: FullTxt:= FullTxt + ' ������������';
          2: FullTxt:= FullTxt + ' �������� ��������������';
          3: FullTxt:= FullTxt + ' ��������������';
        end;{case..of}

        case CbBoxUZIProstFibrosis.ItemIndex of
          1: FullTxt:= FullTxt + ', � ��������� ��������������� ���������������� �������';
          2: FullTxt:= FullTxt + ', � ��������� ���������� ���������������� �������';
          3: FullTxt:= FullTxt + ', � ��������� ����������� ���������������� �������';
        end;

      if CbBoxUZIProstLytos.ItemIndex > 0
        then
          begin
            if CbBoxUZIProstFibrosis.ItemIndex = 0
              then FullTxt:= FullTxt + ', � ��������������� ����������� �� ���� ������'
              else FullTxt:= FullTxt + ' � ��������������� ����������� �� ���� ������'
          end;

      FullTxt:= WriteSymbolToEndString(FullTxt,'.') + #13#10 + #13#10;

        case CbBoxUZIProstCentrFocal.ItemIndex of
          0: FullTxt:= FullTxt + '����������� ���� ��� �������� ���������.';
          1: FullTxt:= FullTxt + '����������� ����: � ���������� �������� ���������';
        end;

      if CbBoxUZIProstCentrFocal.ItemIndex > 0 then
        case CbBoxUZIProstCentrDens.ItemIndex of
          0: FullTxt:= FullTxt + ' � ���� ������������ �����.';
          1: FullTxt:= FullTxt + ' � ���� ������������� �����.';
          2: FullTxt:= FullTxt + ' � ���� �������������� �����.';
          3: FullTxt:= FullTxt + ' � ���� �����������.';
        end;

        case CbBoxUZIProstEchogenDext.ItemIndex of
          0: FullTxt:= FullTxt + ' ����������� ����������� ���� �������.';
          1: FullTxt:= FullTxt + ' ����������� ����������� ���� ������������� �������.';
          2: FullTxt:= FullTxt + ' ����������� ����������� ���� �������� �������.';
          3: FullTxt:= FullTxt + ' ����������� ����������� ���� �������.';
          4: FullTxt:= FullTxt + ' ����������� ����������� ���� ��������.';
          5: FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' � ��������� ���������� � ���������� �����������.';
        end;

        case CbBoxUZIProstPerifFocal.ItemIndex of
          0: FullTxt:= FullTxt + #13#10 + #13#10 + '�������������� ���� ��� �������� ���������.';
          1: FullTxt:= FullTxt + #13#10 + #13#10 + '�������������� ����: � ���������� �������� ���������';
        end;

      if CbBoxUZIProstPerifFocal.ItemIndex > 0 then
        case CbBoxUZIProstPerifDens.ItemIndex of
          0: FullTxt:= FullTxt + ' � ���� ������������� �����.';
          1: FullTxt:= FullTxt + ' � ���� ������������ �����.';
          2: FullTxt:= FullTxt + ' � ���� �������������� �����.';
          3: FullTxt:= FullTxt + ' � ���� �����������.';
        end;

        case CbBoxUZIProstEchogenSin.ItemIndex of
          1: FullTxt:= FullTxt + ' ����������� �������������� ���� ������������� �������.';
          2: FullTxt:= FullTxt + ' ����������� �������������� ���� ��������� �������.';
          3: FullTxt:= FullTxt + ' ����������� �������������� ���� �������.';
          4: FullTxt:= FullTxt + ' ����������� �������������� ���� ��������.';
          5: FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' � ��������� ���������� � ���������� �����������.';
        end;

      if ChkBoxUZIVesicSemin.Checked then
        begin
          FullTxt:= FullTxt + #13#10 + #13#10 + '�������� ��������: ������';

          //����������� ������������� �������� �������� ��������� ������
          //���� ������� ��� �������
          if (Trim(EdtUZIVesSeminDext_01.Text) <> '')
             and (Trim(EdtUZIVesSeminDext_02.Text) <> '')
           then TmpTxt:= '- ������� ' + Trim(EdtUZIVesSeminDext_01.Text) + ' x '
                         + Trim(EdtUZIVesSeminDext_02.Text) + ' ��; '
           else
             begin
               //���� ������ ������ ������
               if (Trim(EdtUZIVesSeminDext_01.Text) <> '')
                                                  and (Trim(EdtUZIVesSeminDext_02.Text) = '')
                 then TmpTxt:= '- ������ ' + Trim(EdtUZIVesSeminDext_01.Text) + ' ��; '
                 else
                   //���� ������ ������ ������
                   if (Trim(EdtUZIVesSeminDext_01.Text) = '')
                                                  and (Trim(EdtUZIVesSeminDext_02.Text) <> '')
                     then TmpTxt:= '- ������ ' + Trim(EdtUZIVesSeminDext_02.Text) + ' ��; '
                     else //��� ����� ������ � ���������� �� ���� � ������ ���
                       if vesr = 0
                         then
                           begin
                             vesr:= vesr + 1;
                             if Application.MessageBox('�� �� ������� ������� �������� '
                                     + '��������� ������. ������ �������?', '�������� ������',
                                                       MB_YESNO + MB_ICONINFORMATION) = IDYes
                               then
                                 begin
                                   //��������� "������ �������"
                                   PgCtrlUZIGenit.ActivePageIndex:= 0;

                                   //����� � ����
                                   if EdtUZIVesSeminDext_01.CanFocus
                                     then EdtUZIVesSeminDext_01.SetFocus;
                                   Exit;//������� �� ���������
                                 end
                               else TmpTxt:= '';//��� ������� ������� ������
                             end{then..��� ������� �� ������� � ���������� � ������ ���}
                         else
                           TmpTxt:= '';//��� ������� ������� ������
             end;{else..��� ������� �� ������}

          FullTxt:= FullTxt + ' ' + TmpTxt + '������ ' + Trim(CbBoxUZIVesSeminDextWall.Text) + ', '
           + '���������� ' + Trim(CbBoxUZIVesSeminDextDens.Text) + '; �����';

          //����������� ������������� �������� �������� ��������� �����
          //���� ������� ��� �������
          if (Trim(EdtUZIVesSeminSin_01.Text) <> '')
             and (Trim(EdtUZIVesSeminSin_02.Text) <> '')
           then TmpTxt:= '- ������� ' + Trim(EdtUZIVesSeminSin_01.Text) + ' x '
                        + Trim(EdtUZIVesSeminSin_02.Text) + ' ��; '
           else
             begin
               //���� ������ ������ ������
               if (Trim(EdtUZIVesSeminSin_01.Text) <> '')
                                                  and (Trim(EdtUZIVesSeminSin_02.Text) = '')
                 then TmpTxt:= '- ������ ' + Trim(EdtUZIVesSeminSin_01.Text) + ' ��; '
                 else
                   //���� ������ ������ ������
                   if (Trim(EdtUZIVesSeminSin_01.Text) = '')
                                                  and (Trim(EdtUZIVesSeminSin_02.Text) <> '')
                     then TmpTxt:= '- ������ ' + Trim(EdtUZIVesSeminSin_02.Text) + ' ��; '
                     else //��� ����� ������ � ���������� �� ���� � ������ ���
                       if vesl = 0
                         then
                           begin
                             vesl:= vesl + 1;
                             if Application.MessageBox('�� �� ������� ������� �������� '
                                      + '��������� �����. ������ �������?', '�������� ������',
                                                       MB_YESNO + MB_ICONINFORMATION) = IDYes
                               then
                                 begin
                                   //��������� "������ �������"
                                   PgCtrlUZIGenit.ActivePageIndex:= 0;

                                   //����� � ����
                                   if EdtUZIVesSeminSin_01.CanFocus
                                     then EdtUZIVesSeminSin_01.SetFocus;
                                   Exit;//������� �� ���������
                                 end
                               else TmpTxt:= '';//��� ������� ������� ������
                             end{then..��� ������� �� ������� � ���������� � ������ ���}
                         else
                           TmpTxt:= '';//��� ������� ������� ������
             end;{else..��� ������� �� ������}

          FullTxt:= FullTxt + ' ' + TmpTxt + '������ ' + Trim(CbBoxUZIVesSeminSinWall.Text) + ', '
                                                       + '���������� ' + Trim(CbBoxUZIVesSeminSinDens.Text) + '.';
        end;{if ChkBoxUZIVesicSemin.Checked then}

      (***************  "�������������" ��������� ����� *******************)
      TmpRE.Lines.Add(FullTxt);
      end;{if ChBoxUZIProstata.Checked..then}

//************ ��������� ������� "��� �������" **************
    if ChBoxUZITestis.Checked then
      begin
      //������� ������ ������, ���� ���� ���������� ��������
      if ChBoxUZIProstata.Checked then TmpRE.Lines.Add('');

      //��������� ���������
      TmpTxt:= Trim('��� ������� ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                               DTPickUZITestis.DateTime));

      AddFormatStrInRichEdit(TmpRE, TmpTxt);
      TmpRE.Lines.Add(''); //�������� �� ���� ���������� ������ ������ �������
      TmpTxt:= '';

      //----- ����������� ������������� ������ � ���������
      //���� ��������� ��� �����, ���������� ��� ��� �������
      if (Trim(EdtUZITestisDext_01.Text) <> '')
          and (Trim(EdtUZITestisDext_02.Text) <> '')
            and (Trim(EdtUZITestisDext_03.Text) <> '')
        then
          begin
            TmpTxt:= '������ ' + Trim(EdtUZITestisDext_01.Text) + ' x '
                               + Trim(EdtUZITestisDext_02.Text) + ' x '
                               + Trim(EdtUZITestisDext_03.Text) + ' ��;';
          end {then ... ������ ��� �������}
        else
          begin
            //���� ���� �� ���� ������ ���������, ���������� �������
            if ((Trim(EdtUZITestisDext_01.Text) <> '')
                                               and (Trim(EdtUZITestisDext_02.Text) <> ''))
              or ((Trim(EdtUZITestisDext_02.Text) <> '')
                                               and (Trim(EdtUZITestisDext_03.Text) <> ''))
                or ((Trim(EdtUZITestisDext_01.Text) <> '')
                                               and (Trim(EdtUZITestisDext_03.Text) <> ''))
              then
                begin
                  if (Trim(EdtUZITestisDext_01.Text) <> '')
                    and (Trim(EdtUZITestisDext_02.Text) <> '')

                    then TmpTxt:= '������ ' + Trim(EdtUZITestisDext_01.Text) +
                                           ' x ' + Trim(EdtUZITestisDext_02.Text) + ' ��;'

                    else
                      if (Trim(EdtUZITestisDext_02.Text) <> '')
                        and (Trim(EdtUZITestisDext_03.Text) <> '')

                        then TmpTxt:= '������ ' + Trim(EdtUZITestisDext_02.Text) + ' x '
                                                 + Trim(EdtUZITestisDext_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          TmpTxt:= '������ ' + Trim(EdtUZITestisDext_01.Text) + ' x '
                                                + Trim(EdtUZITestisDext_03.Text) + ' ��;';

                end {then ... ���� �� ��� �������}
              else
                begin
                  //���� ��� ����� ������ � �������� ���� � ������ ��� (tdj=0)
                  if (not ((Trim(EdtUZITestisDext_01.Text) <> '')
                       or (Trim(EdtUZITestisDext_02.Text) <> '')
                         or (Trim(EdtUZITestisDext_03.Text) <> ''))) and (tdj = 0)

                    then
                      begin
                        tdj:= tdj + 1;//����������� ��������
                        tdi:= tdi + 1;//����� ������ �� ������������ � ������� � ��������

                        //����������, ����� �� ������� ������� ��� ���
                        if Application.MessageBox('�� �� ������� ������� ������� �����. '
                                                + '������ �������?', '�������� ������',
                                                   MB_YESNO + MB_ICONINFORMATION) = IDYes

                          then
                            begin
                              //��������� "������ �������"
                              PgCtrlUZIGenit.ActivePageIndex:= 1;

                              //����������, ������ ����� �������� �����
                              if Trim(EdtUZITestisDext_01.Text) = ''
                                then
                                  begin
                                    if EdtUZITestisDext_01.CanFocus
                                                        then EdtUZITestisDext_01.SetFocus;
                                  end
                                else if Trim(EdtUZITestisDext_02.Text) = ''
                                  then
                                    begin
                                      if EdtUZITestisDext_02.CanFocus
                                                        then EdtUZITestisDext_02.SetFocus;
                                    end
                                  else if Trim(EdtUZITestisDext_03.Text) = ''
                                    then if EdtUZITestisDext_03.CanFocus
                                                        then EdtUZITestisDext_03.SetFocus;

                              Exit;
                            end
                          else
                            TmpTxt:= '';

                        end {then ... ��� ����� ������ � �������� � ������ ���}
                    else
                      begin
                        //����� ������� ���� �������� �������� �����������, ��� ��������
                        //������ ���� �� ������ - ����������� �����������
                        if tdi = 0 //���� ���������� � ������ ���
                          then
                            begin
                            tdi:= tdi + 1;//����������� �������

                            if Application.MessageBox('�� �� �������, ��� �������, ���' +
                                ' ���� �� �������� ������� �����. ������ �������?',
                                '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                              then
                                begin
                                 //��������� "������ �������"
                                 PgCtrlUZIGenit.ActivePageIndex:= 1;

                                 //����������, ������ ����� �������� �����
                                 if Trim(EdtUZITestisDext_01.Text) = ''
                                   then
                                     begin
                                       if EdtUZITestisDext_01.CanFocus
                                                        then EdtUZITestisDext_01.SetFocus;
                                     end
                                   else if Trim(EdtUZITestisDext_02.Text) = ''
                                     then
                                       begin
                                         if EdtUZITestisDext_02.CanFocus
                                                        then EdtUZITestisDext_02.SetFocus;
                                       end
                                     else if Trim(EdtUZITestisDext_03.Text) = ''
                                       then if EdtUZITestisDext_03.CanFocus
                                                        then EdtUZITestisDext_03.SetFocus;
                                 Exit;
                                end
                              else
                                TmpTxt:= '';
                            end;
                      end; {else ... ��� ����� ������ � �������� � ������ ���}
                end; {else ... ���� �� ��� �������}
          end;{else ... ������ ��� �������}

      if (Trim(EdtUZITestisDext_04.Text) <> '')
        then //���� ��������
          begin
            if Trim(TmpTxt) <> ''
              then //���������� ����� �� ������
                TmpTxt:= WriteSymbolToEndString(TmpTxt,',') + ' ����� ' +
                                               Trim(EdtUZITestisDext_04.Text) + ' ���.��;'
              else
                TmpTxt:= '����� ' + Trim(EdtUZITestisDext_04.Text) + ' ���.��;';
          end {then..Trim(EdtUZITestisDext_04.Text) <> ''}
        else //���� ������
          begin
            if tdn = 0 then
              begin
                tdn:= tdn + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ �������'
                                         + ' �����. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 1;

                      //����� � ����
                      if EdtUZITestisDext_04.CanFocus then EdtUZITestisDext_04.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZITestisDext_04.Text) <> ''}

      if Trim(TmpTxt) <> ''then TmpTxt:= TmpTxt + ' ';

      FullTxt:= '������ �����: ' + TmpTxt + '������� '
                + CbBoxUZITestisDextPath.Items[CbBoxUZITestisDextPath.ItemIndex] + ', '
                + '���� '
                + CbBoxUZITestisDextEdge.Items[CbBoxUZITestisDextEdge.ItemIndex] + ', '
                + '������������ '
                + CbBoxUZITestisDextStruct.Items[CbBoxUZITestisDextStruct.ItemIndex];

      if CbBoxUZITestisDextLiquid.ItemIndex = 0
        then TmpTxt:= '.'
        else TmpTxt:= ', � �������������� ������������ ������������ ��������� ��������.';

      FullTxt:= FullTxt + TmpTxt + ' ������ ��������: ';
      TmpTxt:= '';

      //----- ����������� ������������� ������ � ��������� ������� ��������
      //���� ��������� ��� �����, ���������� ��� ��� �������
      if (Trim(EdtUZIEpididimDext_01.Text) <> '')
          and (Trim(EdtUZIEpididimDext_02.Text) <> '')
            and (Trim(EdtUZIEpididimDext_03.Text) <> '')
        then
          begin
            TmpTxt:= '������ ' + Trim(EdtUZIEpididimDext_01.Text) + ' x '
                                + Trim(EdtUZIEpididimDext_02.Text) + ' x '
                                + Trim(EdtUZIEpididimDext_03.Text) + ' ��;';
          end {then ... ������ ��� �������}
        else
          begin
            //���� ���� �� ���� ������ ���������, ���������� �������
            if ((Trim(EdtUZIEpididimDext_01.Text) <> '')
                                             and (Trim(EdtUZIEpididimDext_02.Text) <> ''))
              or ((Trim(EdtUZIEpididimDext_02.Text) <> '')
                                             and (Trim(EdtUZIEpididimDext_03.Text) <> ''))
                or ((Trim(EdtUZIEpididimDext_01.Text) <> '')
                                             and (Trim(EdtUZIEpididimDext_03.Text) <> ''))
              then
                begin
                  if (Trim(EdtUZIEpididimDext_01.Text) <> '')
                    and (Trim(EdtUZIEpididimDext_02.Text) <> '')

                    then TmpTxt:= '������ ' + Trim(EdtUZIEpididimDext_01.Text) +
                                         ' x ' + Trim(EdtUZIEpididimDext_02.Text) + ' ��;'

                    else
                      if (Trim(EdtUZIEpididimDext_02.Text) <> '')
                        and (Trim(EdtUZIEpididimDext_03.Text) <> '')

                        then TmpTxt:= '������ ' + Trim(EdtUZIEpididimDext_02.Text) + ' x '
                                               + Trim(EdtUZIEpididimDext_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          TmpTxt:= '������ ' + Trim(EdtUZIEpididimDext_01.Text) + ' x '
                                              + Trim(EdtUZIEpididimDext_03.Text) + ' ��;';

                end {then ... ���� �� ��� �������}
              else
                begin
                  //���� ��� ����� ������ � �������� ���� � ������ ��� (edj=0)
                  if (not ((Trim(EdtUZIEpididimDext_01.Text) <> '')
                       or (Trim(EdtUZIEpididimDext_02.Text) <> '')
                         or (Trim(EdtUZIEpididimDext_03.Text) <> ''))) and (edj = 0)

                    then
                      begin
                        edj:= edj + 1;//����������� ��������
                        edi:= edi + 1;//����� ������ �� ������������ � ������� � ��������

                        //����������, ����� �� ������� ������� ��� ���
                        if Application.MessageBox('�� �� ������� ������� �������� '
                                    + '������� �����. ������ �������?', '�������� ������',
                                       MB_YESNO + MB_ICONINFORMATION) = IDYes

                          then
                            begin
                              //��������� "������ �������"
                              PgCtrlUZIGenit.ActivePageIndex:= 1;

                              //����������, ������ ����� �������� �����
                              if Trim(EdtUZIEpididimDext_01.Text) = ''
                                then
                                  begin
                                    if EdtUZIEpididimDext_01.CanFocus
                                                      then EdtUZIEpididimDext_01.SetFocus;
                                  end
                                else if Trim(EdtUZIEpididimDext_02.Text) = ''
                                  then
                                    begin
                                      if EdtUZIEpididimDext_02.CanFocus
                                                      then EdtUZIEpididimDext_02.SetFocus;
                                    end
                                  else if Trim(EdtUZIEpididimDext_03.Text) = ''
                                    then if EdtUZIEpididimDext_03.CanFocus
                                                      then EdtUZIEpididimDext_03.SetFocus;

                              Exit;
                            end
                          else
                            TmpTxt:= '';

                      end {then ... ��� ����� ������ � �������� � ������ ���}
                    else
                      begin
                        //����� ������� ���� �������� �������� �����������, ��� ��������
                        //������ ���� �� ������ - ����������� �����������
                        if edi = 0 //���� ���������� � ������ ���
                          then
                            begin
                            edi:= edi + 1;//����������� �������

                            if Application.MessageBox('�� �� �������, ��� �������, ���' +
                              ' ���� �� �������� �������� ������� �����. ������ �������?',
                              '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                              then
                                begin
                                 //��������� "������ �������"
                                 PgCtrlUZIGenit.ActivePageIndex:= 1;

                                 //����������, ������ ����� �������� �����
                                 if Trim(EdtUZIEpididimDext_01.Text) = ''
                                   then
                                     begin
                                       if EdtUZIEpididimDext_01.CanFocus
                                                      then EdtUZIEpididimDext_01.SetFocus;
                                     end
                                   else if Trim(EdtUZIEpididimDext_02.Text) = ''
                                     then
                                       begin
                                         if EdtUZIEpididimDext_02.CanFocus
                                                      then EdtUZIEpididimDext_02.SetFocus;
                                       end
                                     else if Trim(EdtUZIEpididimDext_03.Text) = ''
                                       then if EdtUZIEpididimDext_03.CanFocus
                                                      then EdtUZIEpididimDext_03.SetFocus;

                                 Exit;
                                end
                              else
                                TmpTxt:= '';
                            end;
                      end; {else ... ��� ����� ������ � �������� � ������ ���}
                end; {else ... ���� �� ��� �������}
          end;{else ... ������ ��� �������}

      if (Trim(EdtUZIEpididimDext_04.Text) <> '')
        then //���� ��������
          begin
            if Trim(TmpTxt) <> ''
              then //���������� ����� �� ������
                TmpTxt:= WriteSymbolToEndString(TmpTxt,',') + ' ����� ' +
                                             Trim(EdtUZIEpididimDext_04.Text) + ' ���.��;'
              else
                TmpTxt:= '����� ' + Trim(EdtUZIEpididimDext_04.Text) + ' ���.��;';
          end {then..Trim(EdtUZIEpididimDext_04.Text) <> ''}
        else //���� ������
          begin
            if edn = 0 then
              begin
                edn:= edn + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ �������� �������'
                                         + ' �����. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 1;

                      //����� � ����
                      if EdtUZIEpididimDext_04.CanFocus
                        then EdtUZIEpididimDext_04.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZIEpididimDext_04.Text) <> ''}

      if Trim(TmpTxt) <> '' then TmpTxt:= TmpTxt + ' ';

      FullTxt:= FullTxt + TmpTxt + '������� '
        + CbBoxUZIEpididimDextPath.Items[CbBoxUZIEpididimDextPath.ItemIndex] + ', ���� '
        + CbBoxUZIEpididimDextEdge.Items[CbBoxUZIEpididimDextEdge.ItemIndex] + ', '
        + '������������ '
        + CbBoxUZIEpididimDextStruct.Items[CbBoxUZIEpididimDextStruct.ItemIndex] + ', '
        + '�������� ��������� '
        + CbBoxUZIEpididimDextNidus.Items[CbBoxUZIEpididimDextNidus.ItemIndex] + '.';

      TmpTxt:= '';
      //----- ����������� ������������� ������ � ��������� ������ �����
      //���� ��������� ��� �����, ���������� ��� ��� �������
      if (Trim(EdtUZITestisSin_01.Text) <> '')
          and (Trim(EdtUZITestisSin_02.Text) <> '')
            and (Trim(EdtUZITestisSin_03.Text) <> '')
        then
          begin
            TmpTxt:= '������ ' + Trim(EdtUZITestisSin_01.Text) + ' x '
                               + Trim(EdtUZITestisSin_02.Text) + ' x '
                               + Trim(EdtUZITestisSin_03.Text) + ' ��;';
          end {then ... ������ ��� �������}
        else
          begin
            //���� ���� �� ���� ������ ���������, ���������� �������
            if ((Trim(EdtUZITestisSin_01.Text) <> '')
                                               and (Trim(EdtUZITestisSin_02.Text) <> ''))
              or ((Trim(EdtUZITestisSin_02.Text) <> '')
                                               and (Trim(EdtUZITestisSin_03.Text) <> ''))
                or ((Trim(EdtUZITestisSin_01.Text) <> '')
                                               and (Trim(EdtUZITestisSin_03.Text) <> ''))
              then
                begin
                  if (Trim(EdtUZITestisSin_01.Text) <> '')
                    and (Trim(EdtUZITestisSin_02.Text) <> '')

                    then TmpTxt:= '������ ' + Trim(EdtUZITestisSin_01.Text) +
                                           ' x ' + Trim(EdtUZITestisSin_02.Text) + ' ��;'

                    else
                      if (Trim(EdtUZITestisSin_02.Text) <> '')
                        and (Trim(EdtUZITestisSin_03.Text) <> '')

                        then TmpTxt:= '������ ' + Trim(EdtUZITestisSin_02.Text) + ' x '
                                                 + Trim(EdtUZITestisSin_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          TmpTxt:= '������ ' + Trim(EdtUZITestisSin_01.Text) + ' x '
                                                + Trim(EdtUZITestisSin_03.Text) + ' ��;';

                end {then ... ���� �� ��� �������}
              else
                begin
                  //���� ��� ����� ������ � �������� ���� � ������ ��� (tsj=0)
                  if (not ((Trim(EdtUZITestisSin_01.Text) <> '')
                       or (Trim(EdtUZITestisSin_02.Text) <> '')
                         or (Trim(EdtUZITestisSin_03.Text) <> ''))) and (tsj = 0)

                    then
                      begin
                        tsj:= tsj + 1;//����������� ��������
                        tsi:= tsi + 1;//����� ������ �� ������������ � ������� � ��������

                        //����������, ����� �� ������� ������� ��� ���
                        if Application.MessageBox('�� �� ������� ������� ������ �����. '
                                                + '������ �������?', '�������� ������',
                                                   MB_YESNO + MB_ICONINFORMATION) = IDYes

                          then
                            begin
                              //��������� "������ �������"
                              PgCtrlUZIGenit.ActivePageIndex:= 1;

                              //����������, ������ ����� �������� �����
                              if Trim(EdtUZITestisSin_01.Text) = ''
                                then
                                  begin
                                    if EdtUZITestisSin_01.CanFocus
                                                        then EdtUZITestisSin_01.SetFocus;
                                  end
                                else if Trim(EdtUZITestisSin_02.Text) = ''
                                  then
                                    begin
                                      if EdtUZITestisSin_02.CanFocus
                                                        then EdtUZITestisSin_02.SetFocus;
                                    end
                                  else if Trim(EdtUZITestisSin_03.Text) = ''
                                    then if EdtUZITestisSin_03.CanFocus
                                                        then EdtUZITestisSin_03.SetFocus;

                              Exit;
                            end
                          else
                            TmpTxt:= '';

                      end {then ... ��� ����� ������ � �������� � ������ ���}
                    else
                      begin
                        //����� ������� ���� �������� �������� �����������, ��� ��������
                        //������ ���� �� ������ - ����������� �����������
                        if tsi = 0 //���� ���������� � ������ ���
                          then
                            begin
                            tsi:= tsi + 1;//����������� �������

                            if Application.MessageBox('�� �� �������, ��� �������, ���' +
                                ' ���� �� �������� ������ �����. ������ �������?',
                                '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                              then
                                begin
                                 //��������� "������ �������"
                                 PgCtrlUZIGenit.ActivePageIndex:= 1;

                                 //����������, ������ ����� �������� �����
                                 if Trim(EdtUZITestisSin_01.Text) = ''
                                   then
                                     begin
                                       if EdtUZITestisSin_01.CanFocus
                                                        then EdtUZITestisSin_01.SetFocus;
                                     end
                                   else if Trim(EdtUZITestisSin_02.Text) = ''
                                     then
                                       begin
                                         if EdtUZITestisSin_02.CanFocus
                                                        then EdtUZITestisSin_02.SetFocus;
                                       end
                                     else if Trim(EdtUZITestisSin_03.Text) = ''
                                       then if EdtUZITestisSin_03.CanFocus
                                                        then EdtUZITestisSin_03.SetFocus;

                                 Exit;
                                end
                              else
                                TmpTxt:= '';
                            end;
                      end; {else ... ��� ����� ������ � �������� � ������ ���}
                end; {else ... ���� �� ��� �������}
          end;{else ... ������ ��� �������}

      if (Trim(EdtUZITestisSin_04.Text) <> '')
        then //���� ��������
          begin
            if Trim(TmpTxt) <> ''
              then //���������� ����� �� ������
                TmpTxt:= WriteSymbolToEndString(TmpTxt,',') + ' ����� ' +
                                               Trim(EdtUZITestisSin_04.Text) + ' ���.��;'
              else
                TmpTxt:= '����� ' + Trim(EdtUZITestisSin_04.Text) + ' ���.��;';
          end {then..Trim(EdtUZITestisSin_04.Text) <> ''}
        else //���� ������
          begin
            if tsn = 0 then
              begin
                tsn:= tsn + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ ������'
                                         + ' �����. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 1;

                      //����� � ����
                      if EdtUZITestisSin_04.CanFocus then EdtUZITestisSin_04.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZITestisSin_04.Text) <> ''}

      if Trim(TmpTxt) <> ''then TmpTxt:= TmpTxt + ' ';

      FullTxt:= FullTxt + #13#10 + '����� �����: ' + TmpTxt + '������� '
                + CbBoxUZITestisSinPath.Items[CbBoxUZITestisSinPath.ItemIndex] + ', '
                + '���� '
                + CbBoxUZITestisSinEdge.Items[CbBoxUZITestisSinEdge.ItemIndex] + ', '
                + '������������ '
                + CbBoxUZITestisSinStruct.Items[CbBoxUZITestisSinStruct.ItemIndex];

      if CbBoxUZITestisSinLiquid.ItemIndex = 0
        then TmpTxt:= '.'
        else TmpTxt:= ', � �������������� ������������ ������������ ��������� ��������.';

      FullTxt:= FullTxt + TmpTxt + ' ����� ��������: ';
      TmpTxt:= '';

      //----- ����������� ������������� ������ � ��������� ������ ��������
      //���� ��������� ��� �����, ���������� ��� ��� �������
      if (Trim(EdtUZIEpididimSin_01.Text) <> '')
          and (Trim(EdtUZIEpididimSin_02.Text) <> '')
            and (Trim(EdtUZIEpididimSin_03.Text) <> '')
        then
          begin
            TmpTxt:= '������ ' + Trim(EdtUZIEpididimSin_01.Text) + ' x '
                                + Trim(EdtUZIEpididimSin_02.Text) + ' x '
                                + Trim(EdtUZIEpididimSin_03.Text) + ' ��;';
          end {then ... ������ ��� �������}
        else
          begin
            //���� ���� �� ���� ������ ���������, ���������� �������
            if ((Trim(EdtUZIEpididimSin_01.Text) <> '')
                                             and (Trim(EdtUZIEpididimSin_02.Text) <> ''))
              or ((Trim(EdtUZIEpididimSin_02.Text) <> '')
                                             and (Trim(EdtUZIEpididimSin_03.Text) <> ''))
                or ((Trim(EdtUZIEpididimSin_01.Text) <> '')
                                             and (Trim(EdtUZIEpididimSin_03.Text) <> ''))
              then
                begin
                  if (Trim(EdtUZIEpididimSin_01.Text) <> '')
                    and (Trim(EdtUZIEpididimSin_02.Text) <> '')

                    then TmpTxt:= '������ ' + Trim(EdtUZIEpididimSin_01.Text) +
                                         ' x ' + Trim(EdtUZIEpididimSin_02.Text) + ' ��;'

                    else
                      if (Trim(EdtUZIEpididimSin_02.Text) <> '')
                        and (Trim(EdtUZIEpididimSin_03.Text) <> '')

                        then TmpTxt:= '������ ' + Trim(EdtUZIEpididimSin_02.Text) + ' x '
                                               + Trim(EdtUZIEpididimSin_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          TmpTxt:= '������ ' + Trim(EdtUZIEpididimSin_01.Text) + ' x '
                                              + Trim(EdtUZIEpididimSin_03.Text) + ' ��;';

                end {then ... ���� �� ��� �������}
              else
                begin
                  //���� ��� ����� ������ � �������� ���� � ������ ��� (esj=0)
                  if (not ((Trim(EdtUZIEpididimSin_01.Text) <> '')
                       or (Trim(EdtUZIEpididimSin_02.Text) <> '')
                         or (Trim(EdtUZIEpididimSin_03.Text) <> ''))) and (esj = 0)

                    then
                      begin
                        esj:= esj + 1;//����������� ��������
                        esi:= esi + 1;//����� ������ �� ������������ � ������� � ��������

                        //����������, ����� �� ������� ������� ��� ���
                        if Application.MessageBox('�� �� ������� ������� �������� '
                                    + '������ �����. ������ �������?', '�������� ������',
                                       MB_YESNO + MB_ICONINFORMATION) = IDYes

                          then
                            begin
                              //��������� "������ �������"
                              PgCtrlUZIGenit.ActivePageIndex:= 1;

                              //����������, ������ ����� �������� �����
                              if Trim(EdtUZIEpididimSin_01.Text) = ''
                                then
                                  begin
                                    if EdtUZIEpididimSin_01.CanFocus
                                                      then EdtUZIEpididimSin_01.SetFocus;
                                  end
                                else if Trim(EdtUZIEpididimSin_02.Text) = ''
                                  then
                                    begin
                                      if EdtUZIEpididimSin_02.CanFocus
                                                      then EdtUZIEpididimSin_02.SetFocus;
                                    end
                                  else if Trim(EdtUZIEpididimSin_03.Text) = ''
                                    then if EdtUZIEpididimSin_03.CanFocus
                                                      then EdtUZIEpididimSin_03.SetFocus;

                              Exit;
                            end
                          else
                            TmpTxt:= '';

                        end {then ... ��� ����� ������ � �������� � ������ ���}
                    else
                      begin
                        //����� ������� ���� �������� �������� �����������, ��� ��������
                        //������ ���� �� ������ - ����������� �����������
                        if esi = 0 //���� ���������� � ������ ���
                          then
                            begin
                            esi:= esi + 1;//����������� �������

                            if Application.MessageBox('�� �� �������, ��� �������, ���' +
                              ' ���� �� �������� �������� ������ �����. ������ �������?',
                              '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                              then
                                begin
                                 //��������� "������ �������"
                                 PgCtrlUZIGenit.ActivePageIndex:= 1;

                                 //����������, ������ ����� �������� �����
                                 if Trim(EdtUZIEpididimSin_01.Text) = ''
                                   then
                                     begin
                                       if EdtUZIEpididimSin_01.CanFocus
                                                      then EdtUZIEpididimSin_01.SetFocus;
                                     end
                                   else if Trim(EdtUZIEpididimSin_02.Text) = ''
                                     then
                                       begin
                                         if EdtUZIEpididimSin_02.CanFocus
                                                      then EdtUZIEpididimSin_02.SetFocus;
                                       end
                                     else if Trim(EdtUZIEpididimSin_03.Text) = ''
                                       then if EdtUZIEpididimSin_03.CanFocus
                                                      then EdtUZIEpididimSin_03.SetFocus;

                                 Exit;
                                end
                              else
                                TmpTxt:= '';
                            end;
                      end; {else ... ��� ����� ������ � �������� � ������ ���}
                end; {else ... ���� �� ��� �������}
          end;{else ... ������ ��� �������}

      if (Trim(EdtUZIEpididimSin_04.Text) <> '')
        then //���� ��������
          begin
            if Trim(TmpTxt) <> ''
              then //���������� ����� �� ������
                TmpTxt:= WriteSymbolToEndString(TmpTxt,',') + ' ����� ' +
                                             Trim(EdtUZIEpididimDext_04.Text) + ' ���.��;'
              else
                TmpTxt:= '����� ' + Trim(EdtUZIEpididimSin_04.Text) + ' ���.��;';
          end {then..Trim(EdtUZIEpididimSin_04.Text) <> ''}
        else //���� ������
          begin
            if esn = 0 then
              begin
                esn:= esn + 1;//����������� �������
                if Application.MessageBox('�� �� ������� �������� ������ �������� ������'
                                         + ' �����. ������ �������?', '�������� ������',
                                         MB_YESNO + MB_ICONINFORMATION) = IDYes
                  then
                    begin
                      //��������� "������ �������"
                      PgCtrlUZIGenit.ActivePageIndex:= 1;

                      //����� � ����
                      if EdtUZIEpididimSin_04.CanFocus
                        then EdtUZIEpididimSin_04.SetFocus;
                      Exit;
                    end;
              end;
          end;{else..Trim(EdtUZIEpididimSin_04.Text) <> ''}

      if Trim(TmpTxt) <> '' then TmpTxt:= TmpTxt + ' ';

      FullTxt:= FullTxt + TmpTxt + '������� '
        + CbBoxUZIEpididimSinPath.Items[CbBoxUZIEpididimSinPath.ItemIndex] + ', ���� '
        + CbBoxUZIEpididimSinEdge.Items[CbBoxUZIEpididimSinEdge.ItemIndex] + ', '
        + '������������ '
        + CbBoxUZIEpididimSinStruct.Items[CbBoxUZIEpididimSinStruct.ItemIndex] + ', '
        + '�������� ��������� '
        + CbBoxUZIEpididimSinNidus.Items[CbBoxUZIEpididimSinNidus.ItemIndex] + '.';

      (***************  "�������������" ��������� ����� *******************)
      TmpRE.Lines.Add(FullTxt);

      end;{if ChBoxUZITestis.Checked..then}

//************ ��������� ������� "��� ������" **************
    if ChBoxUZIPenis.Checked then
      begin
      //������� ������ ������, ���� ���� ���������� ��������
      if (ChBoxUZIProstata.Checked) or (ChBoxUZITestis.Checked) then TmpRE.Lines.Add('');

      FullTxt:= '';

      //��������� ���������
      TmpTxt:= Trim('��� ������� penis ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                              DTPickUZIPenis.DateTime));

      AddFormatStrInRichEdit(TmpRE,TmpTxt);
      TmpRE.Lines.Add(''); //�������� �� ���� ���������� ������ ������ �������

        case CbBoxUZIPenisCavernInclus.ItemIndex of
          0: TmpTxt:= ', ������� ������������� ���������.';
          1: TmpTxt:= '.';
          2: TmpTxt:= ', ������� �������������� ���������.';
        end;


      FullTxt:= '����������� ����: ��������� '
        + CbBoxUZIPenisCavernStruct.Items[CbBoxUZIPenisCavernStruct.ItemIndex] + ', '
        + '����������� '
        + CbBoxUZIPenisCavernDensit.Items[CbBoxUZIPenisCavernDensit.ItemIndex] + TmpTxt
        + ' �������� ��������: ��������� '
        + CbBoxUZIPenisAlbuginStruct.Items[CbBoxUZIPenisAlbuginStruct.ItemIndex] + ', '
        + CbBoxUZIPenisAlbuginThick.Items[CbBoxUZIPenisAlbuginThick.ItemIndex]+ '.';


      //**** ��������� � ������������ "�������������" ����������� a.cavernosa dextra ****
      if (Trim(EdtUZIPenisArtCavDext_01.Text) <> '')
        and (Trim(EdtUZIPenisArtCavDext_02.Text) <> '')
          and (Trim(EdtUZIPenisArtCavDext_03.Text) <> '')
            and (Trim(EdtUZIPenisArtCavDext_04.Text) <> '')
              and (Trim(EdtUZIPenisArtCavDext_05.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'A.CAVERNOSA DEXTRA:'
              + ' D = ' + Trim(EdtUZIPenisArtCavDext_01.Text) + ' ��; Vc = '
              + Trim(EdtUZIPenisArtCavDext_02.Text) + ' ��/���; V� = '
              + Trim(EdtUZIPenisArtCavDext_03.Text) + ' ��/���; Pi = '
              + Trim(EdtUZIPenisArtCavDext_04.Text) + '; Ri = '
              + Trim(EdtUZIPenisArtCavDext_05.Text)+ '.';

            Artbool:= True;
          end {then .. ��� ���������� a.cavernosa dext. ���������}
        else
          begin
            TmpTxt:= 'A.CAVERNOSA DEXTRA:';

            if (Trim(EdtUZIPenisArtCavDext_01.Text) = '')
              then
                begin
                  if acd1 = 0 then //���� ���������� � ������ ���
                    begin
                      acd1:= acd1 + 1;
                      if (Application.MessageBox('���� �� ����������� (D) a.cavernosa '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavDext_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisArtCavDext_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisArtCavDext_02.Text) = '')
              then
                begin
                  if acd2 = 0 then //���� ���������� � ������ ���
                    begin
                      acd2:= acd2 + 1;
                      if (Application.MessageBox('���� �� ����������� (Vc) a.cavernosa '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavDext_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' Vc = ' + Trim(EdtUZIPenisArtCavDext_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtCavDext_03.Text) = '')
              then
                begin
                  if acd3 = 0 then //���� ���������� � ������ ���
                    begin
                      acd3:= acd3 + 1;
                      if (Application.MessageBox('���� �� ����������� (V�) a.cavernosa '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavDext_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                             + ' V� = ' + Trim(EdtUZIPenisArtCavDext_03.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtCavDext_04.Text) = '')
              then
                begin
                  if acd4 = 0 then //���� ���������� � ������ ���
                    begin
                      acd4:= acd4 + 1;
                      if (Application.MessageBox('���� �� ����������� (Pi) a.cavernosa '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavDext_04,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
               TmpTxt:= TmpTxt + ' Pi = ' + Trim(EdtUZIPenisArtCavDext_04.Text) + ';';

            if (Trim(EdtUZIPenisArtCavDext_05.Text) = '')
              then
                begin
                  if acd5 = 0 then //���� ���������� � ������ ���
                    begin
                      acd5:= acd5 + 1;
                      if (Application.MessageBox('���� �� ����������� (Ri) a.cavernosa '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavDext_05,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' Ri = ' + Trim(EdtUZIPenisArtCavDext_05.Text)+ '.';

            if Trim(TmpTxt) <> 'A.CAVERNOSA DEXTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                  Artbool:= True;
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� a.cavernosa sin. ���������}

      FullTxt:= FullTxt + TmpTxt;

      //**** ��������� � ������������ "�������������" ����������� a.cavernosa sinistra ****
      if (Trim(EdtUZIPenisArtCavSin_01.Text) <> '')
        and (Trim(EdtUZIPenisArtCavSin_02.Text) <> '')
          and (Trim(EdtUZIPenisArtCavSin_03.Text) <> '')
            and (Trim(EdtUZIPenisArtCavSin_04.Text) <> '')
              and (Trim(EdtUZIPenisArtCavSin_05.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'A.CAVERNOSA SINISTRA:'
              + ' D = ' + Trim(EdtUZIPenisArtCavSin_01.Text) + ' ��; Vc = '
              + Trim(EdtUZIPenisArtCavSin_02.Text) + ' ��/���; V� = '
              + Trim(EdtUZIPenisArtCavSin_03.Text) + ' ��/���; Pi = '
              + Trim(EdtUZIPenisArtCavSin_04.Text) + '; Ri = '
              + Trim(EdtUZIPenisArtCavSin_05.Text)+ '.';

            Artbool:= True;
          end {then .. ��� ���������� a.cavernosa sin. ���������}
        else
          begin
            TmpTxt:= 'A.CAVERNOSA SINISTRA:';

            if (Trim(EdtUZIPenisArtCavSin_01.Text) = '')
              then
                begin
                  if acs1 = 0 then //���� ���������� � ������ ���
                    begin
                      acs1:= acs1 + 1;
                      if (Application.MessageBox('���� �� ����������� (D) a.cavernosa '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavSin_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisArtCavSin_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisArtCavSin_02.Text) = '')
              then
                begin
                  if acs2 = 0 then //���� ���������� � ������ ���
                    begin
                      acs2:= acs2 + 1;
                      if (Application.MessageBox('���� �� ����������� (Vc) a.cavernosa '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavSin_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' Vc = ' + Trim(EdtUZIPenisArtCavSin_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtCavSin_03.Text) = '')
              then
                begin
                  if acs3 = 0 then //���� ���������� � ������ ���
                    begin
                      acs3:= acs3 + 1;
                      if (Application.MessageBox('���� �� ����������� (V�) a.cavernosa '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavSin_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                             + ' V� = ' + Trim(EdtUZIPenisArtCavSin_03.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtCavSin_04.Text) = '')
              then
                begin
                  if acs4 = 0 then //���� ���������� � ������ ���
                    begin
                      acs4:= acs4 + 1;
                      if (Application.MessageBox('���� �� ����������� (Pi) a.cavernosa '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavSin_04,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
               TmpTxt:= TmpTxt + ' Pi = ' + Trim(EdtUZIPenisArtCavSin_04.Text) + ';';

            if (Trim(EdtUZIPenisArtCavSin_05.Text) = '')
              then
                begin
                  if acs5 = 0 then //���� ���������� � ������ ���
                    begin
                      acs5:= acs5 + 1;
                      if (Application.MessageBox('���� �� ����������� (Ri) a.cavernosa '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtCavSin_05,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' Ri = ' + Trim(EdtUZIPenisArtCavSin_05.Text)+ '.';

            if Trim(TmpTxt) <> 'A.CAVERNOSA SINISTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                  Artbool:= True;
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� a.cavernosa sin. ���������}

      FullTxt:= FullTxt + TmpTxt;

      //**** ��������� � ������������ "�������������" ����������� a.dorsalis dextra ****
      if (Trim(EdtUZIPenisArtDorsDext_01.Text) <> '')
        and (Trim(EdtUZIPenisArtDorsDext_02.Text) <> '')
          and (Trim(EdtUZIPenisArtDorsDext_03.Text) <> '')
            and (Trim(EdtUZIPenisArtDorsDext_04.Text) <> '')
              and (Trim(EdtUZIPenisArtDorsDext_05.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'A.DORSALIS DEXTRA:'
              + ' D = ' + Trim(EdtUZIPenisArtDorsDext_01.Text) + ' ��; Vc = '
              + Trim(EdtUZIPenisArtDorsDext_02.Text) + ' ��/���; V� = '
              + Trim(EdtUZIPenisArtDorsDext_03.Text) + ' ��/���; Pi = '
              + Trim(EdtUZIPenisArtDorsDext_04.Text) + '; Ri = '
              + Trim(EdtUZIPenisArtDorsDext_05.Text)+ '.';

            Artbool:= True;
          end {then .. ��� ���������� a.dorsalis dext. ���������}
        else
          begin
            TmpTxt:= 'A.DORSALIS DEXTRA:';

            if (Trim(EdtUZIPenisArtDorsDext_01.Text) = '')
              then
                begin
                  if add1 = 0 then //���� ���������� � ������ ���
                    begin
                      add1:= add1 + 1;
                      if (Application.MessageBox('���� �� ����������� (D) a.dorsalis '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsDext_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisArtDorsDext_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisArtDorsDext_02.Text) = '')
              then
                begin
                  if add2 = 0 then //���� ���������� � ������ ���
                    begin
                      add2:= add2 + 1;
                      if (Application.MessageBox('���� �� ����������� (Vc) a.dorsalis '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsDext_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' Vc = ' + Trim(EdtUZIPenisArtDorsDext_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtDorsDext_03.Text) = '')
              then
                begin
                  if add3 = 0 then //���� ���������� � ������ ���
                    begin
                      add3:= add3 + 1;
                      if (Application.MessageBox('���� �� ����������� (V�) a.dorsalis '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsDext_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                             + ' V� = ' + Trim(EdtUZIPenisArtDorsDext_03.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtDorsDext_04.Text) = '')
              then
                begin
                  if add4 = 0 then //���� ���������� � ������ ���
                    begin
                      add4:= add4 + 1;
                      if (Application.MessageBox('���� �� ����������� (Pi) a.dorsalis '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsDext_04,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
               TmpTxt:= TmpTxt + ' Pi = ' + Trim(EdtUZIPenisArtDorsDext_04.Text) + ';';

            if (Trim(EdtUZIPenisArtDorsDext_05.Text) = '')
              then
                begin
                  if add5 = 0 then //���� ���������� � ������ ���
                    begin
                      add5:= add5 + 1;
                      if (Application.MessageBox('���� �� ����������� (Ri) a.dorsalis '
                        + 'dextra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsDext_05,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' Ri = ' + Trim(EdtUZIPenisArtDorsDext_05.Text)+ '.';

            if Trim(TmpTxt) <> 'A.DORSALIS DEXTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                  Artbool:= True;
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� a.dorsalis dextra ���������}

      FullTxt:= FullTxt + TmpTxt;

      //**** ��������� � ������������ "�������������" ����������� a.dorsalis sinistra ****
      if (Trim(EdtUZIPenisArtDorsSin_01.Text) <> '')
        and (Trim(EdtUZIPenisArtDorsSin_02.Text) <> '')
          and (Trim(EdtUZIPenisArtDorsSin_03.Text) <> '')
            and (Trim(EdtUZIPenisArtDorsSin_04.Text) <> '')
              and (Trim(EdtUZIPenisArtDorsSin_05.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'A.DORSALIS SINISTRA:'
              + ' D = ' + Trim(EdtUZIPenisArtDorsSin_01.Text) + ' ��; Vc = '
              + Trim(EdtUZIPenisArtDorsSin_02.Text) + ' ��/���; V� = '
              + Trim(EdtUZIPenisArtDorsSin_03.Text) + ' ��/���; Pi = '
              + Trim(EdtUZIPenisArtDorsSin_04.Text) + '; Ri = '
              + Trim(EdtUZIPenisArtDorsSin_05.Text)+ '.';

            Artbool:= True;
          end {then .. ��� ���������� a.dorsalis sin. ���������}
        else
          begin
            TmpTxt:= 'A.DORSALIS SINISTRA:';

            if (Trim(EdtUZIPenisArtDorsSin_01.Text) = '')
              then
                begin
                  if ads1 = 0 then //���� ���������� � ������ ���
                    begin
                      ads1:= ads1 + 1;
                      if (Application.MessageBox('���� �� ����������� (D) a.dorsalis '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsSin_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisArtDorsSin_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisArtDorsSin_02.Text) = '')
              then
                begin
                  if ads2 = 0 then //���� ���������� � ������ ���
                    begin
                      ads2:= ads2 + 1;
                      if (Application.MessageBox('���� �� ����������� (Vc) a.dorsalis '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsSin_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' Vc = ' + Trim(EdtUZIPenisArtDorsSin_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtDorsSin_03.Text) = '')
              then
                begin
                  if ads3 = 0 then //���� ���������� � ������ ���
                    begin
                      ads3:= ads3 + 1;
                      if (Application.MessageBox('���� �� ����������� (V�) a.dorsalis '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsSin_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                             + ' V� = ' + Trim(EdtUZIPenisArtDorsSin_03.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisArtDorsSin_04.Text) = '')
              then
                begin
                  if ads4 = 0 then //���� ���������� � ������ ���
                    begin
                      ads4:= ads4 + 1;
                      if (Application.MessageBox('���� �� ����������� (Pi) a.dorsalis '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsSin_04,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
               TmpTxt:= TmpTxt + ' Pi = ' + Trim(EdtUZIPenisArtDorsSin_04.Text) + ';';

            if (Trim(EdtUZIPenisArtDorsSin_05.Text) = '')
              then
                begin
                  if ads5 = 0 then //���� ���������� � ������ ���
                    begin
                      ads5:= ads5 + 1;
                      if (Application.MessageBox('���� �� ����������� (Ri) a.dorsalis '
                        + 'sinistra ������� �������������. ������ ���������?',
                        '�������� ������',MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisArtDorsSin_05,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' Ri = ' + Trim(EdtUZIPenisArtDorsSin_05.Text)+ '.';

            if Trim(TmpTxt) <> 'A.DORSALIS SINISTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                  Artbool:= True;
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� a.dorsalis sinistra ���������}

      FullTxt:= FullTxt + TmpTxt;

      //���� "�����������" ���������� ���� �� ����� �� �������
      if Artbool
        then FullTxt:= FullTxt + #13#10 + '(�����: a.a.cavernosae Vc > 24 ��/���; '
        + 'Pi �� 2; Ri �� 0,6)';

      //**** ��������� � ������������ "�������������" ����������� v.dorsalis dextra ****
      if (Trim(EdtUZIPenisVenaDorsDext_01.Text) <> '')
        and (Trim(EdtUZIPenisVenaDorsDext_02.Text) <> '')
          and (Trim(EdtUZIPenisVenaDorsDext_03.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'V.DORS.PROFUNDA DEXTRA:'
              + ' D = ' + Trim(EdtUZIPenisVenaDorsDext_01.Text) + ' ��; V = '
              + Trim(EdtUZIPenisVenaDorsDext_02.Text) + ' ��/���; �������� ��������� - '
              + Trim(EdtUZIPenisVenaDorsDext_03.Text) + '.';

            Venbool:= True;
          end {then .. ��� ���������� v.dors.prof.dext. ���������}
        else
          begin
            TmpTxt:= 'V.DORS.PROFUNDA DEXTRA:';

            if (Trim(EdtUZIPenisVenaDorsDext_01.Text) = '')
              then
                begin
                  if vdd1 = 0 then //���� ���������� � ������ ���
                    begin
                      vdd1:= vdd1 + 1;
                      if (Application.MessageBox('���� �� ����������� (������ D) '
                        + 'v.dorsalis profunda dextra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsDext_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisVenaDorsDext_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisVenaDorsDext_02.Text) = '')
              then
                begin
                  if vdd2 = 0 then //���� ���������� � ������ ���
                    begin
                      vdd2:= vdd2 + 1;
                      if (Application.MessageBox('���� �� ����������� (�������� ��������� '
                        + 'V) v.dorsalis profunda dextra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsDext_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' V = ' + Trim(EdtUZIPenisVenaDorsDext_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisVenaDorsDext_03.Text) = '')
              then
                begin
                  if vdd3 = 0 then //���� ���������� � ������ ���
                    begin
                      vdd3:= vdd3 + 1;
                      if (Application.MessageBox('���� �� ����������� (�������� ���������) '
                        + 'v.dorsalis profunda dextra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsDext_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' �������� ��������� - '
                             + Trim(EdtUZIPenisVenaDorsDext_03.Text) + '.';

            if Trim(TmpTxt) <> 'V.DORS.PROFUNDA DEXTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                  Venbool:= True;
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� v.dorsalis prof. dextra ���������}

      if Venbool
        then FullTxt:= FullTxt + #13#10 + TmpTxt;

      //**** ��������� � ������������ "�������������" ����������� v.dorsalis sinistra ****
      if (Trim(EdtUZIPenisVenaDorsSin_01.Text) <> '')
        and (Trim(EdtUZIPenisVenaDorsSin_02.Text) <> '')
          and (Trim(EdtUZIPenisVenaDorsSin_03.Text) <> '')
        then
          begin
            TmpTxt:= #13#10 + 'V.DORS.PROFUNDA SINISTRA:'
              + ' D = ' + Trim(EdtUZIPenisVenaDorsSin_01.Text) + ' ��; V = '
              + Trim(EdtUZIPenisVenaDorsSin_02.Text) + ' ��/���; �������� ��������� - '
              + Trim(EdtUZIPenisVenaDorsSin_03.Text) + '.';

          end {then .. ��� ���������� v.dors.prof.sin. ���������}
        else
          begin
            TmpTxt:= 'V.DORS.PROFUNDA SINISTRA:';

            if (Trim(EdtUZIPenisVenaDorsSin_01.Text) = '')
              then
                begin
                  if vds1 = 0 then //���� ���������� � ������ ���
                    begin
                      vds1:= vds1 + 1;
                      if (Application.MessageBox('���� �� ����������� (������ D) '
                        + 'v.dorsalis profunda sinistra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsSin_01,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' D = ' + Trim(EdtUZIPenisVenaDorsSin_01.Text) + ' ��;';

            if (Trim(EdtUZIPenisVenaDorsSin_02.Text) = '')
              then
                begin
                  if vds2 = 0 then //���� ���������� � ������ ���
                    begin
                      vds2:= vds2 + 1;
                      if (Application.MessageBox('���� �� ����������� (�������� ��������� '
                        + 'V) v.dorsalis profunda sinistra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsSin_02,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt
                          + ' V = ' + Trim(EdtUZIPenisVenaDorsSin_02.Text) + ' ��/���;';

            if (Trim(EdtUZIPenisVenaDorsSin_03.Text) = '')
              then
                begin
                  if vds3 = 0 then //���� ���������� � ������ ���
                    begin
                      vds3:= vds3 + 1;
                      if (Application.MessageBox('���� �� ����������� (�������� ���������) '
                        + 'v.dorsalis profunda sinistra ������� �������������. '
                        + '������ ���������?', '�������� ������',
                          MB_YESNO+MB_ICONINFORMATION) = IDYes)
                        then
                          begin
                            SetFocusToEmptyEdit(EdtUZIPenisVenaDorsSin_03,PgCtrlUZIGenit,2);
                            Exit;
                          end;
                    end;
                end {then .. Trim(Edt.text) = ''}
              else
                TmpTxt:= TmpTxt + ' �������� ���������'
                                + Trim(EdtUZIPenisVenaDorsSin_03.Text) + '.';

            if Trim(TmpTxt) <> 'V.DORS.PROFUNDA SINISTRA:'
              then
                begin
                  TmpTxt:= #13#10 + WriteSymbolToEndString(TmpTxt,'.');
                end
              else
                TmpTxt:= '';

          end;{else .. ��� ���������� v.dorsalis prof. dextra ���������}

      if not Venbool
        then FullTxt:= FullTxt + #13#10 + TmpTxt
        else FullTxt:= FullTxt + TmpTxt;


      (***************  "�������������" ��������� ����� *******************)
      TmpRE.Lines.Add(FullTxt);
      end;{if ChBoxUZIPenis.Checked then}

//************ ��������� ������� "���� ������� �������" **************
    if ChkBoxDopplerTestis.Checked then
      begin
        //�������� �� ������������� ���� ������ ������
        //���� ���� ������, �� ���� �� ���� �� ���������� (ddh = 0) � � �������� ����� �� ����� "���� �� ���������"
        if (Trim(EdtVasaFunic_HorzDext.Text) = '') and (ddh = 0) and (CbBoxVasaFunicDext.ItemIndex > 0) then
          begin
            ddh:= ddh + 1;
            if Application.MessageBox('�� �� ������� ������ ��� ��������� �������� ������ � �������������� '
              + '���������. ������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasaFunic_HorzDext.CanFocus then EdtVasaFunic_HorzDext.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasaFunic_VertDext.Text) = '') and (ddv = 0) and (CbBoxVasaFunicDext.ItemIndex > 0) then
          begin
            ddv:= ddv + 1;
            if Application.MessageBox('�� �� ������� ������ ��� ��������� �������� ������ � ������������ '
              + '���������. ������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasaFunic_VertDext.CanFocus then EdtVasaFunic_VertDext.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasa_LSKFunicDext.Text) = '') and (ddit = 0) then
          begin
            ddit:= ddit + 1;
            if Application.MessageBox('�� �� ������� �������� ��������� � ������������������ �������� ������. '
                          + '������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasa_LSKFunicDext.CanFocus then EdtVasa_LSKFunicDext.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasa_LSKTestisDext.Text) = '') and (ddf = 0) then
          begin
            ddf:= ddf + 1;
            if Application.MessageBox('�� �� ������� �������� ��������� � ������� ��������� �������� ������. '
                          + '������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasa_LSKTestisDext.CanFocus then EdtVasa_LSKTestisDext.SetFocus;
                  Exit;
                end;
          end;

        //�������� �� ������������� ���� ������ �����
        //���� ���� ������, �� ���� �� ���� �� ���������� (dsh = 0) � � �������� ����� �� ����� "���� �� ���������"
        if (Trim(EdtVasaFunic_HorzSin.Text) = '') and (dsh = 0) and (CbBoxVasaFunicSin.ItemIndex > 0) then
          begin
            dsh:= dsh + 1;
            if Application.MessageBox('�� �� ������� ������ ��� ��������� �������� ����� � �������������� '
              + '���������. ������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasaFunic_HorzSin.CanFocus then EdtVasaFunic_HorzSin.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasaFunic_VertSin.Text) = '') and (dsv = 0) and (CbBoxVasaFunicSin.ItemIndex > 0) then
          begin
            dsv:= dsv + 1;
            if Application.MessageBox('�� �� ������� ������ ��� ��������� �������� ����� � ������������ '
              + '���������. ������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasaFunic_VertSin.CanFocus then EdtVasaFunic_VertSin.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasa_LSKFunicSin.Text) = '') and (dsit = 0) then
          begin
            dsit:= dsit + 1;
            if Application.MessageBox('�� �� ������� �������� ��������� � ������������������ �������� �����. '
                          + '������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasa_LSKFunicSin.CanFocus then EdtVasa_LSKFunicSin.SetFocus;
                  Exit;
                end;
          end;

        if (Trim(EdtVasa_LSKTestisSin.Text) = '') and (dsf = 0) then
          begin
            dsf:= dsf + 1;
            if Application.MessageBox('�� �� ������� �������� ��������� � ������� ��������� �������� �����. '
                          + '������ ���������?', '�������� ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  PgCtrlUZIGenit.ActivePageIndex:= 3;
                  if EdtVasa_LSKTestisSin.CanFocus then EdtVasa_LSKTestisSin.SetFocus;
                  Exit;
                end;
          end;

        //������� ������ ������, ���� ���� ���������� ��������
        if ChBoxUZIProstata.Checked or ChBoxUZITestis.Checked or ChBoxUZIPenis.Checked
          then TmpRE.Lines.Add('');

        FullTxt:= '';

        //��������� ���������
        TmpTxt:= Trim('���� ������� ������� ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                                DTPickUZIDopplerTestis.DateTime));

        AddFormatStrInRichEdit(TmpRE,TmpTxt);
        TmpRE.Lines.Add(''); //�������� �� ���� ���������� ������ ������ �������

        FullTxt:= '������: ���� ��������� �������� � �������� ���������';

        case CbBoxVasaFunicDext.ItemIndex of
          0: FullTxt:= FullTxt + ' � �������������� � ������������ ��������� �� ���������.';
        else
          begin
            //���� ��� ������� ���������
            if (Trim(EdtVasaFunic_HorzDext.Text) <> '') and (Trim(EdtVasaFunic_VertDext.Text) <> '')
              then
                FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicDext.Text) + ' � �������������� ��������� �� '
                              + Trim(EdtVasaFunic_HorzDext.Text) + ' ��, � ������������ ��������� �� '
                              + Trim(EdtVasaFunic_VertDext.Text) + ' ��.'
              else
                begin
                  if (Trim(EdtVasaFunic_HorzDext.Text) <> '')
                    then
                      FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicDext.Text)
                                    + ' � �������������� ��������� �� ' + Trim(EdtVasaFunic_HorzDext.Text) + ' ��.'
                    else
                      begin
                        if (Trim(EdtVasaFunic_VertDext.Text) <> '')
                          then
                            FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicDext.Text)
                                      + ' � ������������ ��������� �� ' + Trim(EdtVasaFunic_VertDext.Text) + ' ��.'
                          else
                            FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicDext.Text) + '.';
                      end;
                end;
          end;
        end;{case CbBoxVasaFunicDext.ItemIndex of}

        if CbBoxValsalveDext.ItemIndex = 0
          then
            FullTxt:= FullTxt + ' �� ����� ���������� ������������ �������� �� ��������������.'
          else
            FullTxt:= FullTxt + ' �� ����� ���������� �������������� ' + Trim(CbBoxValsalveDext.Text)
             + ' ������������ �����.';

        FullTxt:= FullTxt + ' ���� ��������� ������� ����� ' + Trim(CbBoxVasaFunicParenchDext.Text) + '.';

        if (Trim(EdtVasa_LSKFunicDext.Text) <> '') or (Trim(EdtVasa_LSKTestisDext.Text) <> '') then
          begin
            FullTxt:= FullTxt + #13#10 + #13#10 + '�������� �������� ��������� (���) ������:' + #13#10;
            if (Trim(EdtVasa_LSKFunicDext.Text) <> '') then
                FullTxt:= FullTxt + '  - ������������������ ������� ��� = '
                                    + Trim(EdtVasa_LSKFunicDext.Text) + ' ��/��� (����� �� 8-26 ��/���);' + #13#10;

            if (Trim(EdtVasa_LSKTestisDext.Text) <> '') then
                FullTxt:= FullTxt + '  - ������� ��������� �������� ��� = '
                        + Trim(EdtVasa_LSKTestisDext.Text) + ' ��/��� (����� �� 14,7 ��/���);';
          end;

        TmpRE.Lines.Add(FullTxt);
        TmpRE.Lines.Add('');

        FullTxt:= '�����: ���� ��������� �������� � �������� ���������';

        case CbBoxVasaFunicSin.ItemIndex of
          0: FullTxt:= FullTxt + ' � �������������� � ������������ ��������� �� ���������.';
        else
          begin
            //���� ��� ������� ���������
            if (Trim(EdtVasaFunic_HorzSin.Text) <> '') and (Trim(EdtVasaFunic_VertSin.Text) <> '')
              then
                FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicSin.Text) + ' � �������������� ��������� �� '
                              + Trim(EdtVasaFunic_HorzSin.Text) + ' ��, � ������������ ��������� �� '
                              + Trim(EdtVasaFunic_VertSin.Text) + ' ��.'
              else
                begin
                  if (Trim(EdtVasaFunic_HorzSin.Text) <> '')
                    then
                      FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicSin.Text)
                                    + ' � �������������� ��������� �� ' + Trim(EdtVasaFunic_HorzSin.Text) + ' ��.'
                    else
                      begin
                        if (Trim(EdtVasaFunic_VertSin.Text) <> '')
                          then
                            FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicSin.Text)
                                      + ' � ������������ ��������� �� ' + Trim(EdtVasaFunic_VertSin.Text) + ' ��.'
                          else
                            FullTxt:= FullTxt + ' ' + Trim(CbBoxVasaFunicSin.Text) + '.';
                      end;
                end;
          end;
        end;{case CbBoxVasaFunicSin.ItemIndex of}

        if CbBoxValsalveSin.ItemIndex = 0
          then
            FullTxt:= FullTxt + ' �� ����� ���������� ������������ �������� �� ��������������.'
          else
            FullTxt:= FullTxt + ' �� ����� ���������� �������������� ' + Trim(CbBoxValsalveSin.Text)
             + ' ������������ �����.';

        FullTxt:= FullTxt + ' ���� ��������� ������ ����� ' + Trim(CbBoxVasaFunicParenchSin.Text) + '.';

        if (Trim(EdtVasa_LSKFunicSin.Text) <> '') or (Trim(EdtVasa_LSKTestisSin.Text) <> '') then
          begin
            FullTxt:= FullTxt + #13#10 + #13#10 + '�������� �������� ��������� (���) �����:' + #13#10;
            if (Trim(EdtVasa_LSKFunicSin.Text) <> '') then
                FullTxt:= FullTxt + '  - ������������������ ������� ��� = '
                                    + Trim(EdtVasa_LSKFunicSin.Text) + ' ��/��� (����� �� 8-26 ��/���);' + #13#10;

            if (Trim(EdtVasa_LSKTestisSin.Text) <> '') then
                FullTxt:= FullTxt + '  - ������� ��������� �������� ��� = '
                        + Trim(EdtVasa_LSKTestisSin.Text) + ' ��/��� (����� �� 14,7 ��/���);';
          end;


      (***************  "�������������" ��������� ����� *******************)
      TmpRE.Lines.Add(FullTxt);

      end;{if ChkBoxDopperTestis.Checked then}

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));
    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextUZIGenit;//������������� ��������� ��� ���������

    //����������� ��������� ����� ���
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextUZIGenit:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextUZIGenit <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ��������� ��� ��������� ' +
            '������ ����� ������� �� ����� �������������� �����. ��������� ������?',
            '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextUZIGenit:= FullTxt;//��������, ���� ����� "��"



  //��������� ���������� ���������� � ����������

    //---������� "��� ��������"
    VarUZIProstataDate:= DTPickUZIProstata.Date;
    VarBoolUZIProstata:= BoolConvertInt(ChBoxUZIProstata.Checked);

    VarUZIProstContour:= CbBoxUZIProstContour.ItemIndex;
    VarUZIProstOutline:= CbBoxUZIProstOutline.ItemIndex;
    VarUZIProstStructure:= CbBoxUZIProstStructure.ItemIndex;
    VarUZIProstDensity:= CbBoxUZIProstDensity.ItemIndex;
    VarUZIProstFibrosis:= CbBoxUZIProstFibrosis.ItemIndex;
    VarUZIProstLytos:= CbBoxUZIProstLytos.ItemIndex;
    VarUZIProstCentrFocal:= CbBoxUZIProstCentrFocal.ItemIndex;
    VarUZIProstCentrDens:= CbBoxUZIProstCentrDens.ItemIndex;
    VarUZIProstPerifFocal:= CbBoxUZIProstPerifFocal.ItemIndex;
    VarUZIProstPerifDens:= CbBoxUZIProstPerifDens.ItemIndex;
    VarUZIVesSeminDextWall:= CbBoxUZIVesSeminDextWall.ItemIndex;
    VarUZIVesSeminDextDens:= CbBoxUZIVesSeminDextDens.ItemIndex;
    VarUZIVesSeminSinWall:= CbBoxUZIVesSeminSinWall.ItemIndex;
    VarUZIVesSeminSinDens:= CbBoxUZIVesSeminSinDens.ItemIndex;

    VarUZIProstSize_01:= Trim(EdtUZIProstSize_01.Text);
    VarUZIProstSize_02:= Trim(EdtUZIProstSize_02.Text);
    VarUZIProstSize_03:= Trim(EdtUZIProstSize_03.Text);
    VarUZIProstVolume:= Trim(EdtUZIProstVolume.Text);
    VarUZIProstResidUrine:= Trim(EdtUZIProstResidUrine.Text);
    VarUZIVesSeminDext_01:= Trim(EdtUZIVesSeminDext_01.Text);
    VarUZIVesSeminDext_02:= Trim(EdtUZIVesSeminDext_02.Text);
    VarUZIVesSeminSin_01:= Trim(EdtUZIVesSeminSin_01.Text);
    VarUZIVesSeminSin_02:= Trim(EdtUZIVesSeminSin_02.Text);


    //--- ������� "��� �������"
    VarUZITestisDate:= DTPickUZITestis.Date;
    VarBoolUZITestis:= BoolConvertInt(ChBoxUZITestis.Checked);

    VarUZITestisDextPath:= CbBoxUZITestisDextPath.ItemIndex;
    VarUZITestisDextEdge:= CbBoxUZITestisDextEdge.ItemIndex;
    VarUZITestisDextStruct:= CbBoxUZITestisDextStruct.ItemIndex;
    VarUZITestisDextLiquid:= CbBoxUZITestisDextLiquid.ItemIndex;
    VarUZIEpididimDextPath:= CbBoxUZIEpididimDextPath.ItemIndex;
    VarUZIEpididimDextEdge:= CbBoxUZIEpididimDextEdge.ItemIndex;
    VarUZIEpididimDextStruct:= CbBoxUZIEpididimDextStruct.ItemIndex;
    VarUZIEpididimDextNidus:= CbBoxUZIEpididimDextNidus.ItemIndex;

    VarUZITestisSinPath:= CbBoxUZITestisSinPath.ItemIndex;
    VarUZITestisSinEdge:= CbBoxUZITestisSinEdge.ItemIndex;
    VarUZITestisSinStruct:= CbBoxUZITestisSinStruct.ItemIndex;
    VarUZITestisSinLiquid:= CbBoxUZITestisSinLiquid.ItemIndex;
    VarUZIEpididimSinPath:= CbBoxUZIEpididimSinPath.ItemIndex;
    VarUZIEpididimSinEdge:= CbBoxUZIEpididimSinEdge.ItemIndex;
    VarUZIEpididimSinStruct:= CbBoxUZIEpididimSinStruct.ItemIndex;
    VarUZIEpididimSinNidus:= CbBoxUZIEpididimSinNidus.ItemIndex;

    VarUZITestisDext_01:= Trim(EdtUZITestisDext_01.Text);
    VarUZITestisDext_02:= Trim(EdtUZITestisDext_02.Text);
    VarUZITestisDext_03:= Trim(EdtUZITestisDext_03.Text);
    VarUZITestisDext_04:= Trim(EdtUZITestisDext_04.Text);
    VarUZIEpididimDext_01:= Trim(EdtUZIEpididimDext_01.Text);
    VarUZIEpididimDext_02:= Trim(EdtUZIEpididimDext_02.Text);
    VarUZIEpididimDext_03:= Trim(EdtUZIEpididimDext_03.Text);
    VarUZIEpididimDext_04:= Trim(EdtUZIEpididimDext_04.Text);
    VarUZIProstEchogenDext:= CbBoxUZIProstEchogenDext.ItemIndex;
    VarUZIProstEchogenSin:= CbBoxUZIProstEchogenSin.ItemIndex;

    VarUZITestisSin_01:= Trim(EdtUZITestisSin_01.Text);
    VarUZITestisSin_02:= Trim(EdtUZITestisSin_02.Text);
    VarUZITestisSin_03:= Trim(EdtUZITestisSin_03.Text);
    VarUZITestisSin_04:= Trim(EdtUZITestisSin_04.Text);
    VarUZIEpididimSin_01:= Trim(EdtUZIEpididimSin_01.Text);
    VarUZIEpididimSin_02:= Trim(EdtUZIEpididimSin_02.Text);
    VarUZIEpididimSin_03:= Trim(EdtUZIEpididimSin_03.Text);
    VarUZIEpididimSin_04:= Trim(EdtUZIEpididimSin_04.Text);

    //--- ������� "��� ������"
    VarUZIPenisDate:= DTPickUZIPenis.Date;
    VarBoolUZIPenis:= BoolConvertInt(ChBoxUZIPenis.Checked);
    VarChkUZIVesicSemin:= BoolConvertInt(ChkBoxUZIVesicSemin.Checked);

    VarUZIPenisCavernStruct:= CbBoxUZIPenisCavernStruct.ItemIndex;
    VarUZIPenisCavernDensit:= CbBoxUZIPenisCavernDensit.ItemIndex;
    VarUZIPenisCavernInclus:= CbBoxUZIPenisCavernInclus.ItemIndex;
    VarUZIPenisAlbuginStruct:= CbBoxUZIPenisAlbuginStruct.ItemIndex;
    VarUZIPenisAlbuginThick:= CbBoxUZIPenisAlbuginThick.ItemIndex;

    VarUZIPenisArtCavDext_01:= Trim(EdtUZIPenisArtCavDext_01.Text);
    VarUZIPenisArtCavDext_02:= Trim(EdtUZIPenisArtCavDext_02.Text);
    VarUZIPenisArtCavDext_03:= Trim(EdtUZIPenisArtCavDext_03.Text);
    VarUZIPenisArtCavDext_04:= Trim(EdtUZIPenisArtCavDext_04.Text);
    VarUZIPenisArtCavDext_05:= Trim(EdtUZIPenisArtCavDext_05.Text);
    VarUZIPenisArtCavSin_01:= Trim(EdtUZIPenisArtCavSin_01.Text);
    VarUZIPenisArtCavSin_02:= Trim(EdtUZIPenisArtCavSin_02.Text);
    VarUZIPenisArtCavSin_03:= Trim(EdtUZIPenisArtCavSin_03.Text);
    VarUZIPenisArtCavSin_04:= Trim(EdtUZIPenisArtCavSin_04.Text);
    VarUZIPenisArtCavSin_05:= Trim(EdtUZIPenisArtCavSin_05.Text);

    VarUZIPenisArtDorsDext_01:= Trim(EdtUZIPenisArtDorsDext_01.Text);
    VarUZIPenisArtDorsDext_02:= Trim(EdtUZIPenisArtDorsDext_02.Text);
    VarUZIPenisArtDorsDext_03:= Trim(EdtUZIPenisArtDorsDext_03.Text);
    VarUZIPenisArtDorsDext_04:= Trim(EdtUZIPenisArtDorsDext_04.Text);
    VarUZIPenisArtDorsDext_05:= Trim(EdtUZIPenisArtDorsDext_05.Text);
    VarUZIPenisArtDorsSin_01:= Trim(EdtUZIPenisArtDorsSin_01.Text);
    VarUZIPenisArtDorsSin_02:= Trim(EdtUZIPenisArtDorsSin_02.Text);
    VarUZIPenisArtDorsSin_03:= Trim(EdtUZIPenisArtDorsSin_03.Text);
    VarUZIPenisArtDorsSin_04:= Trim(EdtUZIPenisArtDorsSin_04.Text);
    VarUZIPenisArtDorsSin_05:= Trim(EdtUZIPenisArtDorsSin_05.Text);

    VarUZIPenisVenaDorsDext_01:= Trim(EdtUZIPenisVenaDorsDext_01.Text);
    VarUZIPenisVenaDorsDext_02:= Trim(EdtUZIPenisVenaDorsDext_02.Text);
    VarUZIPenisVenaDorsDext_03:= Trim(EdtUZIPenisVenaDorsDext_03.Text);
    VarUZIPenisVenaDorsSin_01:= Trim(EdtUZIPenisVenaDorsSin_01.Text);
    VarUZIPenisVenaDorsSin_02:= Trim(EdtUZIPenisVenaDorsSin_02.Text);
    VarUZIPenisVenaDorsSin_03:= Trim(EdtUZIPenisVenaDorsSin_03.Text);

    VarUZIDopplerTestisDate:= DTPickUZIDopplerTestis.Date;
    VarChkDopplerTestis:= BoolConvertInt(ChkBoxDopplerTestis.Checked);

    VarVasaFunicDext:= CbBoxVasaFunicDext.ItemIndex;
    VarValsalveDext:= CbBoxValsalveDext.ItemIndex;
    VarVasaFunicParenchDext:= CbBoxVasaFunicParenchDext.ItemIndex;

    VarVasaFunicSin:= CbBoxVasaFunicSin.ItemIndex;
    VarValsalveSin:= CbBoxValsalveSin.ItemIndex;
    VarVasaFunicParenchSin:= CbBoxVasaFunicParenchSin.ItemIndex;

    VarStrVasaFunic_HorzDext:= Trim(EdtVasaFunic_HorzDext.Text);
    VarStrVasaFunic_VertDext:= Trim(EdtVasaFunic_VertDext.Text);
    VarStrVasa_LSKFunicDext:= Trim(EdtVasa_LSKFunicDext.Text);
    VarStrVasa_LSKTestisDext:= Trim(EdtVasa_LSKTestisDext.Text);

    VarStrVasaFunic_HorzSin:= Trim(EdtVasaFunic_HorzSin.Text);
    VarStrVasaFunic_VertSin:= Trim(EdtVasaFunic_VertSin.Text);
    VarStrVasa_LSKFunicSin:= Trim(EdtVasa_LSKFunicSin.Text);
    VarStrVasa_LSKTestisSin:= Trim(EdtVasa_LSKTestisSin.Text);

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.AppEventsFrmUZIGenitShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"

    //����������� "������" ������ "����-����", �������� "�����������" ��������� ������ ��� ���������� �� �����
    Handled:= True;
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self)
      else
        if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
          then BtnNextClick(Self)
          else Handled:= False;
  end;
AppEventsFrmUZIGenit.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.FormCreate(Sender: TObject);
begin
NiceSetFrmUZIGenit.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmUZIGenit.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '��� ��������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '��� ��������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

prm:= 0;
prn:= 0;
prj:= 0;
pri:= 0;
vesr:= 0;
vesl:= 0;
tdj:= 0;
tdi:= 0;
tdn:= 0;
edj:= 0;
edi:= 0;
edn:= 0;
tsj:= 0;
tsi:= 0;
tsn:= 0;
esj:= 0;
esi:= 0;
esn:= 0;
acd1:= 0;
acd2:= 0;
acd3:= 0;
acd4:= 0;
acd5:= 0;
acs1:= 0;
acs2:= 0;
acs3:= 0;
acs4:= 0;
acs5:= 0;
add1:= 0;
add2:= 0;
add3:= 0;
add4:= 0;
add5:= 0;
ads1:= 0;
ads2:= 0;
ads3:= 0;
ads4:= 0;
ads5:= 0;
vdd1:= 0;
vdd2:= 0;
vdd3:= 0;
vds1:= 0;
vds2:= 0;
vds3:= 0;
ddh:= 0;
ddv:= 0;
ddit:= 0;
ddf:= 0;
dsh:= 0;
dsv:= 0;
dsit:= 0;
dsf:= 0;

Artbool:= False;
Venbool:= False;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.FormShow(Sender: TObject);
begin
//��������� ���������� � ���������� ����������

  //---������� "��� ��������"
DTPickUZIProstata.DateTime:= VarUZIProstataDate;
ChBoxUZIProstata.Checked:= IntConvertBool(VarBoolUZIProstata);
ChkBoxUZIVesicSemin.Checked:= IntConvertBool(VarChkUZIVesicSemin);

CbBoxUZIProstContour.ItemIndex:= VarUZIProstContour;
CbBoxUZIProstOutline.ItemIndex:= VarUZIProstOutline;
CbBoxUZIProstStructure.ItemIndex:= VarUZIProstStructure;
CbBoxUZIProstDensity.ItemIndex:= VarUZIProstDensity;
CbBoxUZIProstFibrosis.ItemIndex:= VarUZIProstFibrosis;
CbBoxUZIProstLytos.ItemIndex:= VarUZIProstLytos;
CbBoxUZIProstCentrFocal.ItemIndex:= VarUZIProstCentrFocal;
CbBoxUZIProstCentrDens.ItemIndex:= VarUZIProstCentrDens;
CbBoxUZIProstPerifFocal.ItemIndex:= VarUZIProstPerifFocal;
CbBoxUZIProstPerifDens.ItemIndex:= VarUZIProstPerifDens;
CbBoxUZIVesSeminDextWall.ItemIndex:= VarUZIVesSeminDextWall;
CbBoxUZIVesSeminDextDens.ItemIndex:= VarUZIVesSeminDextDens;
CbBoxUZIVesSeminSinWall.ItemIndex:= VarUZIVesSeminSinWall;
CbBoxUZIVesSeminSinDens.ItemIndex:= VarUZIVesSeminSinDens;
CbBoxUZIProstEchogenDext.ItemIndex:= VarUZIProstEchogenDext;
CbBoxUZIProstEchogenSin.ItemIndex:= VarUZIProstEchogenSin;


EdtUZIProstSize_01.Text:= Trim(VarUZIProstSize_01);
EdtUZIProstSize_02.Text:= Trim(VarUZIProstSize_02);
EdtUZIProstSize_03.Text:= Trim(VarUZIProstSize_03);
EdtUZIProstVolume.Text:= Trim(VarUZIProstVolume);
EdtUZIProstResidUrine.Text:= Trim(VarUZIProstResidUrine);
EdtUZIVesSeminDext_01.Text:= Trim(VarUZIVesSeminDext_01);
EdtUZIVesSeminDext_02.Text:= Trim(VarUZIVesSeminDext_02);
EdtUZIVesSeminSin_01.Text:= Trim(VarUZIVesSeminSin_01);
EdtUZIVesSeminSin_02.Text:= Trim(VarUZIVesSeminSin_02);


  //--- ������� "��� �������"
DTPickUZITestis.DateTime:= VarUZITestisDate;
ChBoxUZITestis.Checked:= IntConvertBool(VarBoolUZITestis);

CbBoxUZITestisDextPath.ItemIndex:= VarUZITestisDextPath;
CbBoxUZITestisDextEdge.ItemIndex:= VarUZITestisDextEdge;
CbBoxUZITestisDextStruct.ItemIndex:= VarUZITestisDextStruct;
CbBoxUZITestisDextLiquid.ItemIndex:= VarUZITestisDextLiquid;
CbBoxUZIEpididimDextPath.ItemIndex:= VarUZIEpididimDextPath;
CbBoxUZIEpididimDextEdge.ItemIndex:= VarUZIEpididimDextEdge;
CbBoxUZIEpididimDextStruct.ItemIndex:= VarUZIEpididimDextStruct;
CbBoxUZIEpididimDextNidus.ItemIndex:= VarUZIEpididimDextNidus;

CbBoxUZITestisSinPath.ItemIndex:= VarUZITestisSinPath;
CbBoxUZITestisSinEdge.ItemIndex:= VarUZITestisSinEdge;
CbBoxUZITestisSinStruct.ItemIndex:= VarUZITestisSinStruct;
CbBoxUZITestisSinLiquid.ItemIndex:= VarUZITestisSinLiquid;
CbBoxUZIEpididimSinPath.ItemIndex:= VarUZIEpididimSinPath;
CbBoxUZIEpididimSinEdge.ItemIndex:= VarUZIEpididimSinEdge;
CbBoxUZIEpididimSinStruct.ItemIndex:= VarUZIEpididimSinStruct;
CbBoxUZIEpididimSinNidus.ItemIndex:= VarUZIEpididimSinNidus;

EdtUZITestisDext_01.Text:= Trim(VarUZITestisDext_01);
EdtUZITestisDext_02.Text:= Trim(VarUZITestisDext_02);
EdtUZITestisDext_03.Text:= Trim(VarUZITestisDext_03);
EdtUZITestisDext_04.Text:= Trim(VarUZITestisDext_04);
EdtUZIEpididimDext_01.Text:= Trim(VarUZIEpididimDext_01);
EdtUZIEpididimDext_02.Text:= Trim(VarUZIEpididimDext_02);
EdtUZIEpididimDext_03.Text:= Trim(VarUZIEpididimDext_03);
EdtUZIEpididimDext_04.Text:= Trim(VarUZIEpididimDext_04);

EdtUZITestisSin_01.Text:= Trim(VarUZITestisSin_01);
EdtUZITestisSin_02.Text:= Trim(VarUZITestisSin_02);
EdtUZITestisSin_03.Text:= Trim(VarUZITestisSin_03);
EdtUZITestisSin_04.Text:= Trim(VarUZITestisSin_04);
EdtUZIEpididimSin_01.Text:= Trim(VarUZIEpididimSin_01);
EdtUZIEpididimSin_02.Text:= Trim(VarUZIEpididimSin_02);
EdtUZIEpididimSin_03.Text:= Trim(VarUZIEpididimSin_03);
EdtUZIEpididimSin_04.Text:= Trim(VarUZIEpididimSin_04);

//--- ������� "��� ������"
DTPickUZIPenis.DateTime:= VarUZIPenisDate;
ChBoxUZIPenis.Checked:= IntConvertBool(VarBoolUZIPenis);

CbBoxUZIPenisCavernStruct.ItemIndex:= VarUZIPenisCavernStruct;
CbBoxUZIPenisCavernDensit.ItemIndex:= VarUZIPenisCavernDensit;
CbBoxUZIPenisCavernInclus.ItemIndex:= VarUZIPenisCavernInclus;
CbBoxUZIPenisAlbuginStruct.ItemIndex:= VarUZIPenisAlbuginStruct;
CbBoxUZIPenisAlbuginThick.ItemIndex:= VarUZIPenisAlbuginThick;

EdtUZIPenisArtCavDext_01.Text:= Trim(VarUZIPenisArtCavDext_01);
EdtUZIPenisArtCavDext_02.Text:= Trim(VarUZIPenisArtCavDext_02);
EdtUZIPenisArtCavDext_03.Text:= Trim(VarUZIPenisArtCavDext_03);
EdtUZIPenisArtCavDext_04.Text:= Trim(VarUZIPenisArtCavDext_04);
EdtUZIPenisArtCavDext_05.Text:= Trim(VarUZIPenisArtCavDext_05);
EdtUZIPenisArtCavSin_01.Text:= Trim(VarUZIPenisArtCavSin_01);
EdtUZIPenisArtCavSin_02.Text:= Trim(VarUZIPenisArtCavSin_02);
EdtUZIPenisArtCavSin_03.Text:= Trim(VarUZIPenisArtCavSin_03);
EdtUZIPenisArtCavSin_04.Text:= Trim(VarUZIPenisArtCavSin_04);
EdtUZIPenisArtCavSin_05.Text:= Trim(VarUZIPenisArtCavSin_05);

EdtUZIPenisArtDorsDext_01.Text:= Trim(VarUZIPenisArtDorsDext_01);
EdtUZIPenisArtDorsDext_02.Text:= Trim(VarUZIPenisArtDorsDext_02);
EdtUZIPenisArtDorsDext_03.Text:= Trim(VarUZIPenisArtDorsDext_03);
EdtUZIPenisArtDorsDext_04.Text:= Trim(VarUZIPenisArtDorsDext_04);
EdtUZIPenisArtDorsDext_05.Text:= Trim(VarUZIPenisArtDorsDext_05);
EdtUZIPenisArtDorsSin_01.Text:= Trim(VarUZIPenisArtDorsSin_01);
EdtUZIPenisArtDorsSin_02.Text:= Trim(VarUZIPenisArtDorsSin_02);
EdtUZIPenisArtDorsSin_03.Text:= Trim(VarUZIPenisArtDorsSin_03);
EdtUZIPenisArtDorsSin_04.Text:= Trim(VarUZIPenisArtDorsSin_04);
EdtUZIPenisArtDorsSin_05.Text:= Trim(VarUZIPenisArtDorsSin_05);

EdtUZIPenisVenaDorsDext_01.Text:= Trim(VarUZIPenisVenaDorsDext_01);
EdtUZIPenisVenaDorsDext_02.Text:= Trim(VarUZIPenisVenaDorsDext_02);
EdtUZIPenisVenaDorsDext_03.Text:= Trim(VarUZIPenisVenaDorsDext_03);
EdtUZIPenisVenaDorsSin_01.Text:= Trim(VarUZIPenisVenaDorsSin_01);
EdtUZIPenisVenaDorsSin_02.Text:= Trim(VarUZIPenisVenaDorsSin_02);
EdtUZIPenisVenaDorsSin_03.Text:= Trim(VarUZIPenisVenaDorsSin_03);

//--- ������� "���� ������� �������"
DTPickUZIDopplerTestis.Date:= VarUZIDopplerTestisDate;
ChkBoxDopplerTestis.Checked:= IntConvertBool(VarChkDopplerTestis);

CbBoxVasaFunicDext.ItemIndex:= VarVasaFunicDext;
CbBoxValsalveDext.ItemIndex:= VarValsalveDext;
CbBoxVasaFunicParenchDext.ItemIndex:= VarVasaFunicParenchDext;

CbBoxVasaFunicSin.ItemIndex:= VarVasaFunicSin;
CbBoxValsalveSin.ItemIndex:= VarValsalveSin;
CbBoxVasaFunicParenchSin.ItemIndex:= VarVasaFunicParenchSin;

EdtVasaFunic_HorzDext.Text:= Trim(VarStrVasaFunic_HorzDext);
EdtVasaFunic_VertDext.Text:= Trim(VarStrVasaFunic_VertDext);
EdtVasa_LSKFunicDext.Text:= Trim(VarStrVasa_LSKFunicDext);
EdtVasa_LSKTestisDext.Text:= Trim(VarStrVasa_LSKTestisDext);

EdtVasaFunic_HorzSin.Text:= Trim(VarStrVasaFunic_HorzSin);
EdtVasaFunic_VertSin.Text:= Trim(VarStrVasaFunic_VertSin);
EdtVasa_LSKFunicSin.Text:= Trim(VarStrVasa_LSKFunicSin);
EdtVasa_LSKTestisSin.Text:= Trim(VarStrVasa_LSKTestisSin);

ChBoxUZIProstataClick(Sender);
ChBoxUZITestisClick(Sender);
ChBoxUZIPenisClick(Sender);
ChkBoxDopplerTestisClick(Sender);

PgCtrlUZIGenit.ActivePageIndex:= VarPgCtrlUZIGenit;//������ ����� ��������� �������� �������

PgCtrlUZIGenitChange(Sender);//��������� ������ "����-����"

//���� "�����"-����� �� ����� �������� �� ��������� TTabSheet, �� � VCL ActiveControll = TPageControl,
//���� �� ������� � ������, � ��������� ��� ����� ������, �� ActiveControll = TTabSheet.
//� ������ ������ �������-"�������" ����� �������� ����, �� ������ - �� ���������� ���� �����������
if PgCtrlUZIGenit.ActivePage.CanFocus then PgCtrlUZIGenit.ActivePage.SetFocus; //������� ����� �� �������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.BtnPrevClick(Sender: TObject);
begin
if PgCtrlUZIGenit.ActivePageIndex > 0//���� �� ������ ��������
  then PgCtrlUZIGenit.SelectNextPage(False);//�������� �����
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.BtnNextClick(Sender: TObject);
begin
if PgCtrlUZIGenit.ActivePageIndex < Pred(PgCtrlUZIGenit.PageCount)//���� �� ���������
                                                                  //��������
  then PgCtrlUZIGenit.SelectNextPage(True);//�������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.PgCtrlUZIGenitChange(Sender: TObject);
begin
if PgCtrlUZIGenit.ActivePageIndex = 0
  then BtnPrev.Enabled:= False
  else BtnPrev.Enabled:= True;

if PgCtrlUZIGenit.ActivePageIndex = Pred(PgCtrlUZIGenit.PageCount)
  then BtnNext.Enabled:= False
  else BtnNext.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.ChBoxUZIProstataClick(Sender: TObject);
begin
  DTPickUZIProstata.Enabled:= ChBoxUZIProstata.Checked;
  ChkBoxUZIVesicSemin.Enabled:= ChBoxUZIProstata.Checked;

  Label13.Enabled:= ChBoxUZIProstata.Checked;
  Label15.Enabled:= ChBoxUZIProstata.Checked;
  Label22.Enabled:= ChBoxUZIProstata.Checked;
  Label21.Enabled:= ChBoxUZIProstata.Checked;
  Label20.Enabled:= ChBoxUZIProstata.Checked;  
  Label25.Enabled:= ChBoxUZIProstata.Checked;
  Label26.Enabled:= ChBoxUZIProstata.Checked;
  Label18.Enabled:= ChBoxUZIProstata.Checked;
  Label19.Enabled:= ChBoxUZIProstata.Checked;
  Label24.Enabled:= ChBoxUZIProstata.Checked;
  Label27.Enabled:= ChBoxUZIProstata.Checked;
  Label5.Enabled:= ChBoxUZIProstata.Checked;
  Label6.Enabled:= ChBoxUZIProstata.Checked;
  Label7.Enabled:= ChBoxUZIProstata.Checked;
  Label8.Enabled:= ChBoxUZIProstata.Checked;
  Label14.Enabled:= ChBoxUZIProstata.Checked;
  Label16.Enabled:= ChBoxUZIProstata.Checked;
  Label17.Enabled:= ChBoxUZIProstata.Checked;
  Label132.Enabled:= ChBoxUZIProstata.Checked;
  Label133.Enabled:= ChBoxUZIProstata.Checked;

  EdtUZIProstSize_01.Enabled:= ChBoxUZIProstata.Checked;
  EdtUZIProstSize_02.Enabled:= ChBoxUZIProstata.Checked;
  EdtUZIProstSize_03.Enabled:= ChBoxUZIProstata.Checked;
  EdtUZIProstVolume.Enabled:= ChBoxUZIProstata.Checked;
  EdtUZIProstResidUrine.Enabled:= ChBoxUZIProstata.Checked;

  CbBoxUZIProstContour.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstOutline.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstStructure.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstDensity.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstFibrosis.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstLytos.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstCentrFocal.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstCentrDens.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstPerifFocal.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstPerifDens.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstEchogenDext.Enabled:= ChBoxUZIProstata.Checked;
  CbBoxUZIProstEchogenSin.Enabled:= ChBoxUZIProstata.Checked;

  CbBoxUZIProstCentrFocalChange(Sender);
  CbBoxUZIProstPerifFocalChange(Sender);
  ChkBoxUZIVesicSeminClick(Sender);

  if DTPickUZIProstata.CanFocus then DTPickUZIProstata.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.ChBoxUZITestisClick(Sender: TObject);
begin
  DTPickUZITestis.Enabled:= ChBoxUZITestis.Checked;
  Label4.Enabled:= ChBoxUZITestis.Checked;
  Label1.Enabled:= ChBoxUZITestis.Checked;
  Label10.Enabled:= ChBoxUZITestis.Checked;
  Label11.Enabled:= ChBoxUZITestis.Checked;
  Label12.Enabled:= ChBoxUZITestis.Checked;
  Label2.Enabled:= ChBoxUZITestis.Checked;
  Label9.Enabled:= ChBoxUZITestis.Checked;
  Label3.Enabled:= ChBoxUZITestis.Checked;
  Label33.Enabled:= ChBoxUZITestis.Checked;
  Label34.Enabled:= ChBoxUZITestis.Checked;
  Label35.Enabled:= ChBoxUZITestis.Checked;
  Label51.Enabled:= ChBoxUZITestis.Checked;
  Label54.Enabled:= ChBoxUZITestis.Checked;
  Label55.Enabled:= ChBoxUZITestis.Checked;
  Label57.Enabled:= ChBoxUZITestis.Checked;
  Label52.Enabled:= ChBoxUZITestis.Checked;
  Label56.Enabled:= ChBoxUZITestis.Checked;
  Label53.Enabled:= ChBoxUZITestis.Checked;
  Label58.Enabled:= ChBoxUZITestis.Checked;
  Label59.Enabled:= ChBoxUZITestis.Checked;
  Label60.Enabled:= ChBoxUZITestis.Checked;
  Label61.Enabled:= ChBoxUZITestis.Checked;
  Label40.Enabled:= ChBoxUZITestis.Checked;

  Label44.Enabled:= ChBoxUZITestis.Checked;
  Label41.Enabled:= ChBoxUZITestis.Checked;
  Label42.Enabled:= ChBoxUZITestis.Checked;
  Label43.Enabled:= ChBoxUZITestis.Checked;
  Label46.Enabled:= ChBoxUZITestis.Checked;
  Label47.Enabled:= ChBoxUZITestis.Checked;
  Label45.Enabled:= ChBoxUZITestis.Checked;
  Label50.Enabled:= ChBoxUZITestis.Checked;
  Label48.Enabled:= ChBoxUZITestis.Checked;
  Label49.Enabled:= ChBoxUZITestis.Checked;
  Label65.Enabled:= ChBoxUZITestis.Checked;
  Label62.Enabled:= ChBoxUZITestis.Checked;
  Label63.Enabled:= ChBoxUZITestis.Checked;
  Label64.Enabled:= ChBoxUZITestis.Checked;
  Label67.Enabled:= ChBoxUZITestis.Checked;
  Label68.Enabled:= ChBoxUZITestis.Checked;
  Label66.Enabled:= ChBoxUZITestis.Checked;
  Label71.Enabled:= ChBoxUZITestis.Checked;
  Label69.Enabled:= ChBoxUZITestis.Checked;
  Label70.Enabled:= ChBoxUZITestis.Checked;

  CbBoxUZITestisDextPath.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisDextEdge.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisDextStruct.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisDextLiquid.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisSinPath.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisSinEdge.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisSinStruct.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZITestisSinLiquid.Enabled:= ChBoxUZITestis.Checked;

  CbBoxUZIEpididimDextPath.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimDextEdge.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimDextStruct.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimDextNidus.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimSinPath.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimSinEdge.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimSinStruct.Enabled:= ChBoxUZITestis.Checked;
  CbBoxUZIEpididimSinNidus.Enabled:= ChBoxUZITestis.Checked;

  EdtUZITestisDext_01.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisDext_02.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisDext_03.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisDext_04.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisSin_01.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisSin_02.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisSin_03.Enabled:= ChBoxUZITestis.Checked;
  EdtUZITestisSin_04.Enabled:= ChBoxUZITestis.Checked;

  EdtUZIEpididimDext_01.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimDext_02.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimDext_03.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimDext_04.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimSin_01.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimSin_02.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimSin_03.Enabled:= ChBoxUZITestis.Checked;
  EdtUZIEpididimSin_04.Enabled:= ChBoxUZITestis.Checked;

  if DTPickUZITestis.CanFocus then DTPickUZITestis.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.ChBoxUZIPenisClick(Sender: TObject);
begin
  DTPickUZIPenis.Enabled:= ChBoxUZIPenis.Checked;
  Label72.Enabled:= ChBoxUZIPenis.Checked;
  Label73.Enabled:= ChBoxUZIPenis.Checked;
  Label74.Enabled:= ChBoxUZIPenis.Checked;
  Label75.Enabled:= ChBoxUZIPenis.Checked;
  Label76.Enabled:= ChBoxUZIPenis.Checked;
  Label79.Enabled:= ChBoxUZIPenis.Checked;
  Label80.Enabled:= ChBoxUZIPenis.Checked;

  Label81.Enabled:= ChBoxUZIPenis.Checked;
  Label82.Enabled:= ChBoxUZIPenis.Checked;
  Label83.Enabled:= ChBoxUZIPenis.Checked;
  Label84.Enabled:= ChBoxUZIPenis.Checked;
  Label85.Enabled:= ChBoxUZIPenis.Checked;
  Label86.Enabled:= ChBoxUZIPenis.Checked;
  Label87.Enabled:= ChBoxUZIPenis.Checked;
  Label88.Enabled:= ChBoxUZIPenis.Checked;
  Label89.Enabled:= ChBoxUZIPenis.Checked;
  Label90.Enabled:= ChBoxUZIPenis.Checked;
  Label91.Enabled:= ChBoxUZIPenis.Checked;
  Label92.Enabled:= ChBoxUZIPenis.Checked;
  Label93.Enabled:= ChBoxUZIPenis.Checked;
  Label94.Enabled:= ChBoxUZIPenis.Checked;
  Label95.Enabled:= ChBoxUZIPenis.Checked;
  Label96.Enabled:= ChBoxUZIPenis.Checked;

  Label97.Enabled:= ChBoxUZIPenis.Checked;
  Label98.Enabled:= ChBoxUZIPenis.Checked;
  Label99.Enabled:= ChBoxUZIPenis.Checked;
  Label100.Enabled:= ChBoxUZIPenis.Checked;
  Label101.Enabled:= ChBoxUZIPenis.Checked;
  Label102.Enabled:= ChBoxUZIPenis.Checked;
  Label103.Enabled:= ChBoxUZIPenis.Checked;
  Label104.Enabled:= ChBoxUZIPenis.Checked;
  Label105.Enabled:= ChBoxUZIPenis.Checked;
  Label106.Enabled:= ChBoxUZIPenis.Checked;

  CbBoxUZIPenisCavernStruct.Enabled:= ChBoxUZIPenis.Checked;
  CbBoxUZIPenisCavernDensit.Enabled:= ChBoxUZIPenis.Checked;
  CbBoxUZIPenisCavernInclus.Enabled:= ChBoxUZIPenis.Checked;
  CbBoxUZIPenisAlbuginStruct.Enabled:= ChBoxUZIPenis.Checked;
  CbBoxUZIPenisAlbuginThick.Enabled:= ChBoxUZIPenis.Checked;

  if DTPickUZIPenis.CanFocus then DTPickUZIPenis.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.ChkBoxDopplerTestisClick(Sender: TObject);
begin
DTPickUZIDopplerTestis.Enabled:= ChkBoxDopplerTestis.Checked;

Label107.Enabled:= ChkBoxDopplerTestis.Checked;
Label110.Enabled:= ChkBoxDopplerTestis.Checked;
Label122.Enabled:= ChkBoxDopplerTestis.Checked;
Label120.Enabled:= ChkBoxDopplerTestis.Checked;
Label119.Enabled:= ChkBoxDopplerTestis.Checked;
Label121.Enabled:= ChkBoxDopplerTestis.Checked;
Label125.Enabled:= ChkBoxDopplerTestis.Checked;
Label128.Enabled:= ChkBoxDopplerTestis.Checked;
Label124.Enabled:= ChkBoxDopplerTestis.Checked;
Label123.Enabled:= ChkBoxDopplerTestis.Checked;
Label109.Enabled:= ChkBoxDopplerTestis.Checked;
Label108.Enabled:= ChkBoxDopplerTestis.Checked;
Label111.Enabled:= ChkBoxDopplerTestis.Checked;

CbBoxVasaFunicDext.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasaFunic_HorzDext.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasaFunic_VertDext.Enabled:= ChkBoxDopplerTestis.Checked;
CbBoxValsalveDext.Enabled:= ChkBoxDopplerTestis.Checked;
CbBoxVasaFunicParenchDext.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasa_LSKFunicDext.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasa_LSKTestisDext.Enabled:= ChkBoxDopplerTestis.Checked;

Label112.Enabled:= ChkBoxDopplerTestis.Checked;
Label113.Enabled:= ChkBoxDopplerTestis.Checked;
Label114.Enabled:= ChkBoxDopplerTestis.Checked;
Label115.Enabled:= ChkBoxDopplerTestis.Checked;
Label116.Enabled:= ChkBoxDopplerTestis.Checked;
Label117.Enabled:= ChkBoxDopplerTestis.Checked;
Label118.Enabled:= ChkBoxDopplerTestis.Checked;
Label126.Enabled:= ChkBoxDopplerTestis.Checked;
Label127.Enabled:= ChkBoxDopplerTestis.Checked;
Label129.Enabled:= ChkBoxDopplerTestis.Checked;
Label130.Enabled:= ChkBoxDopplerTestis.Checked;
Label131.Enabled:= ChkBoxDopplerTestis.Checked;

CbBoxVasaFunicsin.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasaFunic_Horzsin.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasaFunic_Vertsin.Enabled:= ChkBoxDopplerTestis.Checked;
CbBoxValsalvesin.Enabled:= ChkBoxDopplerTestis.Checked;
CbBoxVasaFunicParenchsin.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasa_LSKFunicsin.Enabled:= ChkBoxDopplerTestis.Checked;
EdtVasa_LSKTestissin.Enabled:= ChkBoxDopplerTestis.Checked;

CbBoxVasaFunicDextChange(Sender);
CbBoxVasaFunicSinChange(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIProstSize_01KeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and (Key <> ',') and FocusFlag
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� ����� ��� ���������� '
       + '����� !   ', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIProstSize_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIProstSize_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIProstVolumeKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIProstResidUrineKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIVesSeminDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIVesSeminDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIVesSeminSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIVesSeminSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisDext_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisDext_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisSin_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZITestisSin_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimDext_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimDext_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimSin_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIEpididimSin_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavDext_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavDext_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavDext_05KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavSin_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavSin_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtCavSin_05KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsDext_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsDext_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsDext_05KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsSin_03KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsSin_04KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisArtDorsSin_05KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisVenaDorsDext_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisVenaDorsDext_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisVenaDorsSin_01KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.EdtUZIPenisVenaDorsSin_02KeyPress(Sender: TObject;
  var Key: Char);
begin
EdtUZIProstSize_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIGenit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmUZIGenit.SaveSettings;

VarPgCtrlUZIGenit:= PgCtrlUZIGenit.ActivePageIndex;//��������� ����� ��������� �������� �������
end;

//----------------------------------------------------------------------------------

procedure TFrmUZIGenit.CbBoxVasaFunicDextChange(Sender: TObject);
begin
//�������-�������� ��������� ���������, � ����������� �� ������ �����
Label122.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);
Label120.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);
Label119.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);
Label121.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);

EdtVasaFunic_HorzDext.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);
EdtVasaFunic_VertDext.Enabled:= not (CbBoxVasaFunicDext.ItemIndex = 0);
end;

//----------------------------------------------------------------------------------

procedure TFrmUZIGenit.CbBoxVasaFunicSinChange(Sender: TObject);
begin
//�������-�������� ��������� ���������, � ����������� �� ������ �����
Label113.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);
Label114.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);
Label115.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);
Label116.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);

EdtVasaFunic_HorzSin.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);
EdtVasaFunic_VertSin.Enabled:= not (CbBoxVasaFunicSin.ItemIndex = 0);
end;

//----------------------------------------------------------------------------------

procedure TFrmUZIGenit.CbBoxUZIProstCentrFocalChange(Sender: TObject);
begin
Label14.Enabled:= ((CbBoxUZIProstCentrFocal.ItemIndex > 0) and (ChBoxUZIProstata.Checked));
CbBoxUZIProstCentrDens.Enabled:= ((CbBoxUZIProstCentrFocal.ItemIndex > 0) and (ChBoxUZIProstata.Checked));
end;

//----------------------------------------------------------------------------------

procedure TFrmUZIGenit.CbBoxUZIProstPerifFocalChange(Sender: TObject);
begin
Label17.Enabled:= ((CbBoxUZIProstPerifFocal.ItemIndex > 0) and (ChBoxUZIProstata.Checked));
CbBoxUZIProstPerifDens.Enabled:= ((CbBoxUZIProstPerifFocal.ItemIndex > 0) and (ChBoxUZIProstata.Checked));
end;

//----------------------------------------------------------------------------------

procedure TFrmUZIGenit.ChkBoxUZIVesicSeminClick(Sender: TObject);
begin
Label23.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label36.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label37.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label28.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label29.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label30.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label38.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label39.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label31.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
Label32.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);

EdtUZIVesSeminDext_01.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
EdtUZIVesSeminDext_02.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
EdtUZIVesSeminSin_01.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
EdtUZIVesSeminSin_02.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);

CbBoxUZIVesSeminDextWall.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
CbBoxUZIVesSeminDextDens.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
CbBoxUZIVesSeminSinWall.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
CbBoxUZIVesSeminSinDens.Enabled:= (ChBoxUZIProstata.Checked and ChkBoxUZIVesicSemin.Checked);
end;

//----------------------------------------------------------------------------------

end.
