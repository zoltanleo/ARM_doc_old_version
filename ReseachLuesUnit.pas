unit ReseachLuesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, padegFIO, AppEvnts;

{$REGION '"TYPE" BLOCK HEADING }
type
  TFrmResearchLues = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label36: TLabel;
    Label45: TLabel;
    Label58: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    RdBtnLVisusYes: TRadioButton;
    RdBtnLVisusNo: TRadioButton;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    RdBtnLOtisYes: TRadioButton;
    RdBtnLOtisNo: TRadioButton;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    RdBtnLMemorYes: TRadioButton;
    RdBtnLMemorNo: TRadioButton;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    RdBtnLTaxisYes: TRadioButton;
    RdBtnLTaxisNo: TRadioButton;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    RdBtnHAllopeciaYes: TRadioButton;
    RdBtnHAllopeciaNo: TRadioButton;
    Panel6: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    RdBtnHPapulaYes: TRadioButton;
    RdBtnHPapulaNo: TRadioButton;
    Panel7: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    RdBtnHPustulaYes: TRadioButton;
    RdBtnHPustulaNo: TRadioButton;
    Panel8: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    RdBtnHKorochkaYes: TRadioButton;
    RdBtnHKorochkaNo: TRadioButton;
    Panel9: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    RdBtnTMakulaYes: TRadioButton;
    RdBtnTMakulaNo: TRadioButton;
    Panel10: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    RdBtnTPapulaYes: TRadioButton;
    RdBtnTPapulaNo: TRadioButton;
    Panel11: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    RdBtnTEroziaYes: TRadioButton;
    RdBtnTEroziaNo: TRadioButton;
    Panel12: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    RdBtnTUlcerYes: TRadioButton;
    RdBtnTUlcerNo: TRadioButton;
    Panel13: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    RdBtnTAnginaYes: TRadioButton;
    RdBtnTAnginaNo: TRadioButton;
    Panel14: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    RdBtnTMindalYes: TRadioButton;
    RdBtnTMindalNo: TRadioButton;
    Panel15: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    RdBtnLipPapulaYes: TRadioButton;
    RdBtnLipPapulaNo: TRadioButton;
    Panel16: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    RdBtnLipZaedaYes: TRadioButton;
    RdBtnLipZaedaNo: TRadioButton;
    Panel17: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    RdBtnLipEroziaYes: TRadioButton;
    RdBtnLipEroziaNo: TRadioButton;
    Panel18: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    RdBtnLipUlcerYes: TRadioButton;
    RdBtnLipUlcerNo: TRadioButton;
    Panel19: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    RdBtnPhonemaSoundYes: TRadioButton;
    RdBtnPhonemaSoundNo: TRadioButton;
    Panel20: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    RdBtnLdiCervixYes: TRadioButton;
    RdBtnLdiCervixNo: TRadioButton;
    Panel21: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    RdBtnLdiSubLingYes: TRadioButton;
    RdBtnLdiSubLingNo: TRadioButton;
    Panel22: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    RdBtnLdiAxillarYes: TRadioButton;
    RdBtnLdiAxillarNo: TRadioButton;
    Panel23: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    RdBtnLdiUlnarYes: TRadioButton;
    RdBtnLdiUlnarNo: TRadioButton;
    Panel24: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    RdBtnLdiInguinalYes: TRadioButton;
    RdBtnLdiInguinalNo: TRadioButton;
    Panel25: TPanel;
    Label59: TLabel;
    Label60: TLabel;
    RdBtnSellaNosYes: TRadioButton;
    RdBtnSellaNosNo: TRadioButton;
    Panel26: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    RdBtnPalatumGoticaYes: TRadioButton;
    RdBtnPalatumGoticaNo: TRadioButton;
    Panel27: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    RdBtnGetchinsonZubYes: TRadioButton;
    RdBtnGetchinsonZubNo: TRadioButton;
    Panel28: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    RdBtnProcessusMetchYes: TRadioButton;
    RdBtnProcessusMetchNo: TRadioButton;
    Panel29: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    RdBtnSableGolenYes: TRadioButton;
    RdBtnSableGolenNo: TRadioButton;
    NiceSetFrmResearchLues: TNiceSettings;
    LblLuesIdent: TLabel;
    LblLuesPatientName: TLabel;
    AppEventsResearchLues: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AppEventsResearchLuesShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function YesNoReturnValue(var AInt: Integer): String;
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
  end;
{$ENDREGION}
var
  FrmResearchLues: TFrmResearchLues;

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, DMFIBUnit, FIBDataSet, Math;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------
//��������� ���������
procedure TFrmResearchLues.BtnSaveClick(Sender: TObject);
var TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
//����������� ���������� �������� �����������
VarLVisus:= BoolConvertInt(RdBtnLVisusYes.Checked);
VarLOtis:= BoolConvertInt(RdBtnLOtisYes.Checked);
VarLMemor:= BoolConvertInt(RdBtnLOtisYes.Checked);
VarLTaxis:= BoolConvertInt(RdBtnLTaxisYes.Checked);

VarHAllopecia:= BoolConvertInt(RdBtnHAllopeciaYes.Checked);
VarHPapula:= BoolConvertInt(RdBtnHPapulaYes.Checked);
VarHPustula:= BoolConvertInt(RdBtnHPustulaYes.Checked);
VarHKorochka:= BoolConvertInt(RdBtnHKorochkaYes.Checked);

VarTMakula:= BoolConvertInt(RdBtnTMakulaYes.Checked);
VarTPapula:= BoolConvertInt(RdBtnTPapulaYes.Checked);
VarTErozia:= BoolConvertInt(RdBtnTEroziaYes.Checked);
VarTUlcer:= BoolConvertInt(RdBtnTUlcerYes.Checked);
VarTAngina:= BoolConvertInt(RdBtnTAnginaYes.Checked);
VarTMindal:= BoolConvertInt(RdBtnTMindalYes.Checked);

VarLipPapula:= BoolConvertInt(RdBtnLipPapulaYes.Checked);
VarLipZaeda:= BoolConvertInt(RdBtnLipZaedaYes.Checked);
VarLipErozia:= BoolConvertInt(RdBtnLipEroziaYes.Checked);
VarLipUlcer:= BoolConvertInt(RdBtnLipUlcerYes.Checked);
VarPhonemaSound:= BoolConvertInt(RdBtnPhonemaSoundYes.Checked);

VarLdiCervix:= BoolConvertInt(RdBtnLdiCervixYes.Checked);
VarLdiSubLing:= BoolConvertInt(RdBtnLdiSubLingYes.Checked);
VarLdiAxillar:= BoolConvertInt(RdBtnLdiAxillarYes.Checked);
VarLdiUlnar:= BoolConvertInt(RdBtnLdiUlnarYes.Checked);
VarLdiInguinal:= BoolConvertInt(RdBtnLdiInguinalYes.Checked);

VarSellaNos:= BoolConvertInt(RdBtnSellaNosYes.Checked);
VarPalatumGotica:= BoolConvertInt(RdBtnPalatumGoticaYes.Checked);
VarGetchinsonZub:= BoolConvertInt(RdBtnGetchinsonZubYes.Checked);
VarProcessusMetch:= BoolConvertInt(RdBtnProcessusMetchYes.Checked);
VarSableGolen:= BoolConvertInt(RdBtnSableGolenYes.Checked);

TmpRE:= TRichEdit.CreateParented(Self.Handle);

with DMFIB.DSetVisitMain do
  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
        Lines.Add('������������ �������� �� �������');
        SelStart:= 0;
        SelLength:= Length('������������ �������� �� �������');
        SelAttributes.Style:= [fsBold];//������������ ���������� �����
        SelStart:= Length(Text);
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
        Lines.Add('');
        TmpTxt:= Text;
        Lines.Add('I. ������ ��������:');
        SelStart:= Length(TmpTxt);
        SelLength:= Length('I. ������ ��������:');
        SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
        SelStart:= length(TmpTxt) + SelLength;
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
        Lines.Add('  - �������� ������:     ' + YesNoReturnValue(VarLVisus));
        Lines.Add('                      - �����:     ' + YesNoReturnValue(VarLOtis));
        Lines.Add('                   - ������:     ' + YesNoReturnValue(VarLMemor));
        Lines.Add('- �����.�����.����.:    ' + YesNoReturnValue(VarLTaxis));

        Lines.Add('');
        TmpTxt:= Text;
        Lines.Add('II. �������� ������:');
        SelStart:= Length(TmpTxt);
        SelLength:= Length('II. �������� ������:');
        SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
        SelStart:= length(TmpTxt) + SelLength;
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������

        Lines.Add('1. �/����� ������: �������');
        Lines.Add(PADL('- ���������:     ',30) + YesNoReturnValue(VarHAllopecia));
        Lines.Add(PADL('- ������:     ',33) + YesNoReturnValue(VarHPapula));
        Lines.Add(PADL('- �������:     ',32) + YesNoReturnValue(VarHPustula));
        Lines.Add(PADL('- �������:     ',32) + YesNoReturnValue(VarHKorochka));

        Lines.Add('');
        Lines.Add('2. ��������� ������� ���, ����:');
        Lines.Add(PADL('- �����:    ', 39) + YesNoReturnValue(VarTMakula));
        Lines.Add(PADL('- ������:    ',37) + YesNoReturnValue(VarTPapula));
        Lines.Add(PADL('- ������:    ',37) + YesNoReturnValue(VarTErozia));
        Lines.Add(PADL('- ����:    ',39) + YesNoReturnValue(VarTUlcer));
        Lines.Add(PADL('- ������:    ',38) + YesNoReturnValue(VarTAngina));
        Lines.Add(PADL('- ���������� ��������:    ',26) + YesNoReturnValue(VarTMindal));

        Lines.Add('');
        Lines.Add(PADL('��������� ���:',34));
        Lines.Add(PADL('- ������:    ',41) + YesNoReturnValue(VarLipPapula));
        Lines.Add(PADL('- �����:    ',41) + YesNoReturnValue(VarLipZaeda));
        Lines.Add(PADL('- ������:    ',41) + YesNoReturnValue(VarLipErozia));
        Lines.Add(PADL('- ����:    ',42) + YesNoReturnValue(VarLipUlcer));

        Lines.Add('');
        Lines.Add(PADL('3. ��������� ������:    ',24) + YesNoReturnValue(VarPhonemaSound));

        Lines.Add('');
        TmpTxt:= Text;
        Lines.Add('III. ��������� ������������� �����:');
        SelStart:= Length(TmpTxt);
        SelLength:= Length('III. ��������� ������������� �����:');
        SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
        SelStart:= length(TmpTxt) + SelLength;
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������

        Lines.Add('');
        Lines.Add(PADL('- ������:    ',35) + YesNoReturnValue(VarLdiCervix));
        Lines.Add(PADL('- ������������:    ',30) + YesNoReturnValue(VarLdiSubLing));
        Lines.Add(PADL('- �����������:    ',29) + YesNoReturnValue(VarLdiAxillar));
        Lines.Add(PADL('- ��������:    ',34) + YesNoReturnValue(VarLdiUlnar));
        Lines.Add(PADL('- �������:    ',35) + YesNoReturnValue(VarLdiInguinal));

        Lines.Add('');
        TmpTxt:= Text;
        Lines.Add('IV. ������� ������� ����������:');
        SelStart:= Length(TmpTxt);
        SelLength:= Length('IV. ������� ������� ����������:');
        SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
        SelStart:= length(TmpTxt) + SelLength;
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������

        Lines.Add('');
        Lines.Add(PADL('- ����������� ���:    ',36) + YesNoReturnValue(VarSellaNos));
        Lines.Add(PADL('- ������� ���������� ���:    ',30) + YesNoReturnValue(VarPalatumGotica));
        Lines.Add(PADL('- ���� ����������:    ',37) + YesNoReturnValue(VarGetchinsonZub));
        Lines.Add(PADL('- �����.�����. ��������:    ',34) + YesNoReturnValue(VarProcessusMetch));
        Lines.Add(PADL('- ����������� ������:    ',33) + YesNoReturnValue(VarSableGolen));
      end;
      TextLues:= GetRTFText(TmpRE);
  finally
    TmpRE.Free;
  end;


Close;
end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.AppEventsResearchLuesShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� �� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then  BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
  end;
AppEventsResearchLues.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.FormCreate(Sender: TObject);
begin
NiceSetFrmResearchLues.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmResearchLues.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '���� ������������ �� ������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '���� ������������ �� ������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


//��������� ����� � ����������� �� �������� ��������������� ����������
RdBtnLVisusYes.Checked:= IntConvertBool(VarLVisus);
RdBtnLOtisYes.Checked:= IntConvertBool(VarLOtis);
RdBtnLMemorYes.Checked:= IntConvertBool(VarLMemor);
RdBtnLTaxisYes.Checked:= IntConvertBool(VarLTaxis);

RdBtnHAllopeciaYes.Checked:= IntConvertBool(VarHAllopecia);
RdBtnHPapulaYes.Checked:= IntConvertBool(VarHPapula);
RdBtnHPustulaYes.Checked:= IntConvertBool(VarHPustula);
RdBtnHKorochkaYes.Checked:= IntConvertBool(VarHKorochka);

RdBtnTMakulaYes.Checked:= IntConvertBool(VarTMakula);
RdBtnTPapulaYes.Checked:= IntConvertBool(VarTPapula);
RdBtnTEroziaYes.Checked:= IntConvertBool(VarTErozia);
RdBtnTUlcerYes.Checked:= IntConvertBool(VarTUlcer);
RdBtnTAnginaYes.Checked:= IntConvertBool(VarTAngina);
RdBtnTMindalYes.Checked:= IntConvertBool(VarTMindal);

RdBtnLipPapulaYes.Checked:= IntConvertBool(VarLipPapula);
RdBtnLipZaedaYes.Checked:= IntConvertBool(VarLipZaeda);
RdBtnLipEroziaYes.Checked:= IntConvertBool(VarLipErozia);
RdBtnLipUlcerYes.Checked:= IntConvertBool(VarLipUlcer);
RdBtnPhonemaSoundYes.Checked:= IntConvertBool(VarPhonemaSound);

RdBtnLdiCervixYes.Checked:= IntConvertBool(VarLdiCervix);
RdBtnLdiSubLingYes.Checked:= IntConvertBool(VarLdiSubLing);
RdBtnLdiAxillarYes.Checked:= IntConvertBool(VarLdiAxillar);
RdBtnLdiUlnarYes.Checked:= IntConvertBool(VarLdiUlnar);
RdBtnLdiInguinalYes.Checked:= IntConvertBool(VarLdiInguinal);

RdBtnSellaNosYes.Checked:= IntConvertBool(VarSellaNos);
RdBtnPalatumGoticaYes.Checked:= IntConvertBool(VarPalatumGotica);
RdBtnGetchinsonZubYes.Checked:= IntConvertBool(VarGetchinsonZub);
RdBtnProcessusMetchYes.Checked:= IntConvertBool(VarProcessusMetch);
RdBtnSableGolenYes.Checked:= IntConvertBool(VarSableGolen);

//������� ����
with DMFIB.DSetAnketa do
  begin
    if FN('SEX').AsInteger = 1
      then LblLuesIdent.Caption:= '��������'
      else LblLuesIdent.Caption:= '���������';

    LblLuesPatientName.Caption:= GetFIOPadeg(Trim(FN('ANKLASTNAME').AsString),Trim(FN('ANKFIRSTNAME').AsString),
                                 Trim(FN('ANKTHIRDNAME').AsString),(FN('SEX').AsInteger = 1),2) + ', '
                                 + FormatDateTime('YYYY' + ' �.�.',FN('ANKDATEBORN').AsDateTime);
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmResearchLues.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.FormResize(Sender: TObject);
begin
Label1.Left:= (Self.Width - Label1.Width) div 2;
LblLuesIdent.Left:= (Self.Width - (LblLuesIdent.Width + LblLuesPatientName.Width + 7)) div 2;
LblLuesPatientName.Left:= LblLuesIdent.Left + LblLuesIdent.Width + 7;
end;

//----------------------------------------------------------------------------

procedure TFrmResearchLues.FormShow(Sender: TObject);
begin
FormResize(Sender);
FocusFlag:= True;
end;

procedure TFrmResearchLues.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

function TFrmResearchLues.YesNoReturnValue(var AInt: Integer): String;
begin
Result:= '���';
if AInt = 1 then Result:= '��';
end;

//----------------------------------------------------------------------------

end.
