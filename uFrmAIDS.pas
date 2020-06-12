unit uFrmAIDS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, ExtCtrls, ComCtrls, AppEvnts;

type
  TFrmAIDS = class(TForm)
    NiceSetFrmAIDS: TNiceSettings;
    GroupBox1: TGroupBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel1: TPanel;
    ChkBoxHBsAg: TCheckBox;
    RdBtnHBsAgYes: TRadioButton;
    RdBtnHBsAgNo: TRadioButton;
    Label17: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    ChkBoxHBeAg: TCheckBox;
    RdBtnHBeAgYes: TRadioButton;
    RdBtnHBeAgNo: TRadioButton;
    Panel3: TPanel;
    Label2: TLabel;
    ChkBoxAntiHBcSum: TCheckBox;
    RdBtnAntiHBcSumYes: TRadioButton;
    RdBtnAntiHBcSumNo: TRadioButton;
    Panel4: TPanel;
    Label3: TLabel;
    ChkBoxAntiHBc_IgM: TCheckBox;
    RdBtnAntiHBc_IgMYes: TRadioButton;
    RdBtnAntiHBc_IgMNo: TRadioButton;
    Panel5: TPanel;
    Label4: TLabel;
    ChkBoxAntiHBe_IgG: TCheckBox;
    RdBtnAntiHBe_IgGYes: TRadioButton;
    RdBtnAntiHBe_IgGNo: TRadioButton;
    Panel6: TPanel;
    ChkBoxAntiHBsNumer: TCheckBox;
    Panel7: TPanel;
    Label6: TLabel;
    ChkBoxAntiHCVSum: TCheckBox;
    RdBtnAntiHCVSumYes: TRadioButton;
    RdBtnAntiHCVSumNo: TRadioButton;
    Panel8: TPanel;
    Label7: TLabel;
    ChkBoxAntiHCV_Core_IgM: TCheckBox;
    RdBtnAntiHCV_Core_IgMYes: TRadioButton;
    RdBtnAntiHCV_Core_IgMNo: TRadioButton;
    Panel9: TPanel;
    Label8: TLabel;
    ChkBoxAntiHCVSumNS5: TCheckBox;
    RdBtnAntiHCVSumNS5Yes: TRadioButton;
    RdBtnAntiHCVSumNS5No: TRadioButton;
    Panel10: TPanel;
    Label9: TLabel;
    ChkBoxSumAtLues: TCheckBox;
    RdBtnSumAtLuesYes: TRadioButton;
    RdBtnSumAtLuesNo: TRadioButton;
    Panel11: TPanel;
    Label10: TLabel;
    ChkBoxRW: TCheckBox;
    RdBtnRWYes: TRadioButton;
    RdBtnRWNo: TRadioButton;
    Panel12: TPanel;
    Label11: TLabel;
    ChkBoxAIDS: TCheckBox;
    RdBtnAIDSYes: TRadioButton;
    RdBtnAIDSNo: TRadioButton;
    Panel13: TPanel;
    Label12: TLabel;
    ChkBoxAntiHDVSum: TCheckBox;
    RdBtnAntiHDVSumYes: TRadioButton;
    RdBtnAntiHDVSumNo: TRadioButton;
    Panel14: TPanel;
    Label13: TLabel;
    ChkBoxAntiHCVSumCore: TCheckBox;
    RdBtnAntiHCVSumCoreYes: TRadioButton;
    RdBtnAntiHCVSumCoreNo: TRadioButton;
    Panel15: TPanel;
    Label14: TLabel;
    ChkBoxAntiHCVSumNS3: TCheckBox;
    RdBtnAntiHCVSumNS3Yes: TRadioButton;
    RdBtnAntiHCVSumNS3No: TRadioButton;
    Panel16: TPanel;
    Label15: TLabel;
    ChkBoxAntiHCVSumNS4: TCheckBox;
    RdBtnAntiHCVSumNS4Yes: TRadioButton;
    RdBtnAntiHCVSumNS4No: TRadioButton;
    EdtAntiHBsNumer: TEdit;
    Label5: TLabel;
    Label16: TLabel;
    DTPickAIDSDate: TDateTimePicker;
    Panel17: TPanel;
    AppEventsFrmAIDS: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChkBoxHBsAgClick(Sender: TObject);
    procedure ChkBoxHBeAgClick(Sender: TObject);
    procedure ChkBoxAntiHBcSumClick(Sender: TObject);
    procedure ChkBoxAntiHBc_IgMClick(Sender: TObject);
    procedure ChkBoxAntiHBe_IgGClick(Sender: TObject);
    procedure ChkBoxAntiHBsNumerClick(Sender: TObject);
    procedure ChkBoxAntiHCVSumClick(Sender: TObject);
    procedure ChkBoxAntiHCV_Core_IgMClick(Sender: TObject);
    procedure ChkBoxAntiHDVSumClick(Sender: TObject);
    procedure ChkBoxAntiHCVSumCoreClick(Sender: TObject);
    procedure ChkBoxAntiHCVSumNS3Click(Sender: TObject);
    procedure ChkBoxAntiHCVSumNS4Click(Sender: TObject);
    procedure ChkBoxAntiHCVSumNS5Click(Sender: TObject);
    procedure ChkBoxSumAtLuesClick(Sender: TObject);
    procedure ChkBoxRWClick(Sender: TObject);
    procedure ChkBoxAIDSClick(Sender: TObject);
    procedure AppEventsFrmAIDSShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function DefParamString(Sender: TRadioButton; TmpStr: String; out BegCurPos, Index: Integer): String;
    procedure RdBtnDefineState(Sender: TRadioButton; const VarIntRez: Integer);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmAIDS: TFrmAIDS;

implementation

uses
  DMFIBUnit, StatusPatUnit, MainAndrUnit, VarAndrUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmAIDS.FormCreate(Sender: TObject);
begin
NiceSetFrmAIDS.RegKey:= NiceSetRegKeyPath;
//��������� ��������� �����
NiceSetFrmAIDS.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '��������������� ��������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '��������������� ��������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmAIDS.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.FormShow(Sender: TObject);
begin
//��������� �������� ���������� � ���������
DTPickAIDSDate.Date:= VarDateAIDS;

ChkBoxHBsAg.Checked:= IntConvertBool(VarChkHBsAg);
ChkBoxHBsAgClick(Sender);

ChkBoxHBeAg.Checked:= IntConvertBool(VarChkHBeAg);
ChkBoxHBeAgClick(Sender);

ChkBoxAntiHBcSum.Checked:= IntConvertBool(VarChkAntiHBcSum);
ChkBoxAntiHBcSumClick(Sender);

ChkBoxAntiHBc_IgM.Checked:= IntConvertBool(VarChkAntiHBc_IgM);
ChkBoxAntiHBc_IgMClick(Sender);

ChkBoxAntiHBe_IgG.Checked:= IntConvertBool(VarChkAntiHBe_IgG);
ChkBoxAntiHBe_IgGClick(Sender);

ChkBoxAntiHBsNumer.Checked:= IntConvertBool(VarChkAntiHBsNumer);
ChkBoxAntiHBsNumerClick(Sender);

ChkBoxAntiHCVSum.Checked:= IntConvertBool(VarChkAntiHCVSum);
ChkBoxAntiHCVSumClick(Sender);

ChkBoxAntiHCV_Core_IgM.Checked:= IntConvertBool(VarChkAntiHCV_Core_IgM);
ChkBoxAntiHCV_Core_IgMClick(Sender);

ChkBoxAntiHDVSum.Checked:= IntConvertBool(VarChkAntiHDVSum);
ChkBoxAntiHDVSumClick(Sender);

ChkBoxAntiHCVSumCore.Checked:= IntConvertBool(VarChkAntiHCVSumCore);
ChkBoxAntiHCVSumCoreClick(Sender);

ChkBoxAntiHCVSumNS3.Checked:= IntConvertBool(VarChkAntiHCVSumNS3);
ChkBoxAntiHCVSumNS3Click(Sender);

ChkBoxAntiHCVSumNS4.Checked:= IntConvertBool(VarChkAntiHCVSumNS4);
ChkBoxAntiHCVSumNS4Click(Sender);

ChkBoxAntiHCVSumNS5.Checked:= IntConvertBool(VarChkAntiHCVSumNS5);
ChkBoxAntiHCVSumNS5Click(Sender);

ChkBoxSumAtLues.Checked:= IntConvertBool(VarChkSumAtLues);
ChkBoxSumAtLuesClick(Sender);

ChkBoxRW.Checked:= IntConvertBool(VarChkRW);
ChkBoxRWClick(Sender);

ChkBoxAIDS.Checked:= IntConvertBool(VarChkAIDS);
ChkBoxAIDSClick(Sender);


RdBtnDefineState(RdBtnRWYes,VarRW);
RdBtnDefineState(RdBtnHBeAgYes,VarHBeAg);
RdBtnDefineState(RdBtnAntiHBcSumYes,VarAntiHBcSum);
RdBtnDefineState(RdBtnAntiHBc_IgMYes,VarAntiHBc_IgM);
RdBtnDefineState(RdBtnAntiHBe_IgGYes,VarAntiHBe_IgG);
EdtAntiHBsNumer.Text:= Trim(VarAntiHBsNumerStr);
RdBtnDefineState(RdBtnAntiHCVSumYes,VarAntiHCVSum);
RdBtnDefineState(RdBtnAntiHCV_Core_IgMYes,VarAntiHCV_Core_IgM);
RdBtnDefineState(RdBtnAntiHDVSumYes,VarAntiHDVSum);
RdBtnDefineState(RdBtnAntiHCVSumCoreYes,VarAntiHCVSumCore);
RdBtnDefineState(RdBtnAntiHCVSumNS3Yes,VarAntiHCVSumNS3);
RdBtnDefineState(RdBtnAntiHCVSumNS4Yes,VarAntiHCVSumNS4);
RdBtnDefineState(RdBtnAntiHCVSumNS5Yes,VarAntiHCVSumNS5);
RdBtnDefineState(RdBtnSumAtLuesYes,VarSumAtLues);
RdBtnDefineState(RdBtnAIDSYes,VarAIDS);
RdBtnDefineState(RdBtnHBsAgYes,VarHBsAg);
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.BtnSaveClick(Sender: TObject);
var Index, //������������� ���������� ��� ����������� ����
    BegCurPos, EndCurPos : Integer;//������ � ����� ���������
    FullTxt: AnsiString;
    TmpRE: TRichEdit;//����������� RichEdit
begin
//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);//���� �������� ����� ����� �����
  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    //����� ���������
    FullTxt:= '��������������� ���������, �������� � ���-�������� ('
                                                          + FormatDateTime('DD.MM.YY', DTPickAIDSDate.Date) + '):';
    TmpRE.Lines.Add(FullTxt);
    EndCurPos:= Length(FullTxt);
    TmpRE.Lines.Add('');

    //--- HBsAg ---
    VarChkHBsAg:= BoolConvertInt(ChkBoxHBsAg.Checked);
    if VarChkHBsAg = 1
      then
        begin
          VarHBsAg:= BoolConvertInt(RdBtnHBsAgYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnHBsAgYes, 'HBsAg', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarHBsAg:= VarChkHBsAg;

    //--- HBeAg ---
    VarChkHBeAg:= BoolConvertInt(ChkBoxHBeAg.Checked);
    if VarChkHBeAg = 1
      then
        begin
          VarHBeAg:= BoolConvertInt(RdBtnHBeAgYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnHBeAgYes, 'HBeAg', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarHBeAg:= VarChkHBeAg;

    //--- Anti-HBc ���. ---
    VarChkAntiHBcSum:= BoolConvertInt(ChkBoxAntiHBcSum.Checked);
    if VarChkAntiHBcSum = 1
      then
        begin
          VarAntiHBcSum:= BoolConvertInt(RdBtnAntiHBcSumYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHBcSumYes, 'Anti-HBc ���.', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHBcSum:= VarChkAntiHBcSum;

    //--- Anti-HBc IgM ---
    VarChkAntiHBc_IgM:= BoolConvertInt(ChkBoxAntiHBc_IgM.Checked);
    if VarChkAntiHBc_IgM = 1
      then
        begin
          VarAntiHBc_IgM:= BoolConvertInt(RdBtnAntiHBc_IgMYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHBc_IgMYes, 'Anti-HBc IgM', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHBc_IgM:= VarChkAntiHBc_IgM;

    //--- Anti-HBe IgG ---
    VarChkAntiHBe_IgG:= BoolConvertInt(ChkBoxAntiHBe_IgG.Checked);
    if VarChkAntiHBe_IgG = 1
      then
        begin
          VarAntiHBe_IgG:= BoolConvertInt(RdBtnAntiHBe_IgGYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHBe_IgGYes, 'Anti-HBe IgG', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHBe_IgG:= VarChkAntiHBe_IgG;

    //--- Anti-HBs �����. ---
    VarChkAntiHBsNumer:= BoolConvertInt(ChkBoxAntiHBsNumer.Checked);
    if VarChkAntiHBsNumer = 1 then
      if Trim(EdtAntiHBsNumer.Text) <> '' then
        begin
          VarAntiHBsNumerStr:= Trim(EdtAntiHBsNumer.Text);
          TmpRE.Lines.Add('Anti-HBs �����. = ' + VarAntiHBsNumerStr + ' ���/�� (N < 10)');
        end;

    //--- Anti-HCV ���. �.�. � >= 1 ---
    VarChkAntiHCVSum:= BoolConvertInt(ChkBoxAntiHCVSum.Checked);
    if VarChkAntiHCVSum = 1
      then
        begin
          VarAntiHCVSum:= BoolConvertInt(RdBtnAntiHCVSumYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCVSumYes, 'Anti-HCV ���. �.�. � >= 1 ', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCVSum:= VarChkAntiHCVSum;

    //--- Anti-HCV Core IgM ---
    VarChkAntiHCV_Core_IgM:= BoolConvertInt(ChkBoxAntiHCV_Core_IgM.Checked);
    if VarChkAntiHCV_Core_IgM = 1
      then
        begin
          VarAntiHCV_Core_IgM:= BoolConvertInt(RdBtnAntiHCV_Core_IgMYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCV_Core_IgMYes, 'Anti-HCV Core IgM', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCV_Core_IgM:= VarChkAntiHCV_Core_IgM;

    //--- Anti-HDV ���. ---
    VarChkAntiHDVSum:= BoolConvertInt(ChkBoxAntiHDVSum.Checked);
    if VarChkAntiHDVSum = 1
      then
        begin
          VarAntiHDVSum:= BoolConvertInt(RdBtnAntiHDVSumYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHDVSumYes, 'Anti-HDV ���.', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHDVSum:= VarChkAntiHDVSum;

    //--- Anti-HCV ��� (������ ��) Core ---
    VarChkAntiHCVSumCore:= BoolConvertInt(ChkBoxAntiHCVSumCore.Checked);
    if VarChkAntiHCVSumCore = 1
      then
        begin
          VarAntiHCVSumCore:= BoolConvertInt(RdBtnAntiHCVSumCoreYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCVSumCoreYes, 'Anti-HCV ��� (������ ��) Core ', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCVSumCore:= VarChkAntiHCVSumCore;

    //--- Anti-HCV ��� (������ ��) NS3 ---
    VarChkAntiHCVSumNS3:= BoolConvertInt(ChkBoxAntiHCVSumNS3.Checked);
    if VarChkAntiHCVSumNS3 = 1
      then
        begin
          VarAntiHCVSumNS3:= BoolConvertInt(RdBtnAntiHCVSumNS3Yes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCVSumNS3Yes, 'Anti-HCV ��� (������ ��) NS3', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCVSumNS3:= VarChkAntiHCVSumNS3;

    //--- Anti-HCV ��� (������ ��) NS4 ---
    VarChkAntiHCVSumNS4:= BoolConvertInt(ChkBoxAntiHCVSumNS4.Checked);
    if VarChkAntiHCVSumNS4 = 1
      then
        begin
          VarAntiHCVSumNS4:= BoolConvertInt(RdBtnAntiHCVSumNS4Yes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCVSumNS4Yes, 'Anti-HCV ��� (������ ��) NS4', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCVSumNS4:= VarChkAntiHCVSumNS4;

    //--- Anti-HCV ��� (������ ��) NS5 ---
    VarChkAntiHCVSumNS5:= BoolConvertInt(ChkBoxAntiHCVSumNS5.Checked);
    if VarChkAntiHCVSumNS5 = 1
      then
        begin
          VarAntiHCVSumNS5:= BoolConvertInt(RdBtnAntiHCVSumNS5Yes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAntiHCVSumNS5Yes, 'Anti-HCV ��� (������ ��) NS5', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAntiHCVSumNS5:= VarChkAntiHCVSumNS5;

    //--- ���. �� � Treponema Pallidum ---
    VarChkSumAtLues:= BoolConvertInt(ChkBoxSumAtLues.Checked);
    if VarChkSumAtLues = 1
      then
        begin
          VarSumAtLues:= BoolConvertInt(RdBtnSumAtLuesYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnSumAtLuesYes, '���. �� � Treponema Pallidum', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarSumAtLues:= VarChkSumAtLues;

    //--- ��� �� ������� ---
    VarChkRW:= BoolConvertInt(ChkBoxRW.Checked);
    if VarChkRW = 1
      then
        begin
          VarRW:= BoolConvertInt(RdBtnRWYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnRWYes, '��� �� �������', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarRW:= VarChkRW;

    //--- �������� � ���-1,2 ��/�� ---
    VarChkAIDS:= BoolConvertInt(ChkBoxAIDS.Checked);
    if VarChkAIDS = 1
      then
        begin
          VarAIDS:= BoolConvertInt(RdBtnAIDSYes.Checked);
          //�������������� ���������
          FullTxt:= DefParamString(RdBtnAIDSYes, '�������� � ���-1,2 ��/��', BegCurPos, Index);

          //����������� ����� � ���-�����
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarAIDS:= VarChkAIDS;

    //����������, �������� �� ���-���� ��� ���-������, ����� ���������
    FullTxt:= Trim(TmpRE.Text);
    if Length(FullTxt) > EndCurPos //���� ��������, �� �����������
      then
        with TmpRE do
          begin
            SelStart:= 0;
            SelLength:= EndCurPos;
            SelAttributes.Style:= [fsUnderline];
            SelStart:= EndCurPos;
            SelAttributes.Assign(DefAttributes);
          end
      else //����� ������
        TmpRE.Clear;

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextAIDS;//������������� ��������� ��� ���������

    //����������� ��������� ����� �������� ���������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextAIDS:= FullTxt //����� �������� ��� ����� ���������� TextAIDS
      else//���� ���-�� ��������
        if TextAIDS <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ������������ �����' +
                 ' �� ������� ���������, �������� � ��� ������ ����� �������� �� ����� ��������������' +
                 ' �����. ��������� ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextAIDS:= FullTxt;//��������, ���� ����� "��"

    VarDateAIDS:= DTPickAIDSDate.Date;

  finally
    TmpRE.Free;
  end;

//VarDateAIDS:= DTPickAIDSDate.Date;
//VarChkHBsAg:= BoolConvertInt(ChkBoxHBsAg.Checked);
//VarChkHBeAg:= BoolConvertInt(ChkBoxHBeAg.Checked);
//VarChkAntiHBcSum:= BoolConvertInt(ChkBoxAntiHBcSum.Checked);
//VarChkAntiHBc_IgM:= BoolConvertInt(ChkBoxAntiHBc_IgM.Checked);
//VarChkAntiHBe_IgG:= BoolConvertInt(ChkBoxAntiHBe_IgG.Checked);
//VarChkAntiHBsNumer:= BoolConvertInt(ChkBoxAntiHBsNumer.Checked);
//VarChkAntiHCVSum:= BoolConvertInt(ChkBoxAntiHCVSum.Checked);
//VarChkAntiHCV_Core_IgM:= BoolConvertInt(ChkBoxAntiHCV_Core_IgM.Checked);
//VarChkAntiHDVSum:= BoolConvertInt(ChkBoxAntiHDVSum.Checked);
//VarChkAntiHCVSumCore:= BoolConvertInt(ChkBoxAntiHCVSumCore.Checked);
//VarChkAntiHCVSumNS3:= BoolConvertInt(ChkBoxAntiHCVSumNS3.Checked);
//VarChkAntiHCVSumNS4:= BoolConvertInt(ChkBoxAntiHCVSumNS4.Checked);
//VarChkAntiHCVSumNS5:= BoolConvertInt(ChkBoxAntiHCVSumNS5.Checked);
//VarChkSumAtLues:= BoolConvertInt(ChkBoxSumAtLues.Checked);
//VarChkRW:= BoolConvertInt(ChkBoxRW.Checked);
//VarChkAIDS:= BoolConvertInt(ChkBoxAIDS.Checked);
//
//VarHBsAg:= BoolConvertInt(ChkBoxHBsAg.Checked);
//VarHBeAg:= BoolConvertInt(ChkBoxHBeAg.Checked);
//VarAntiHBcSum:= BoolConvertInt(ChkBoxAntiHBcSum.Checked);
//VarAntiHBc_IgM:= BoolConvertInt(ChkBoxAntiHBc_IgM.Checked);
//VarAntiHBe_IgG:= BoolConvertInt(ChkBoxAntiHBe_IgG.Checked);
//VarAntiHBsNumerStr:= Trim(EdtAntiHBsNumer.Text);
//VarAntiHCVSum:= BoolConvertInt(ChkBoxAntiHCVSum.Checked);
//VarAntiHCV_Core_IgM:= BoolConvertInt(ChkBoxAntiHCV_Core_IgM.Checked);
//VarAntiHDVSum:= BoolConvertInt(ChkBoxAntiHDVSum.Checked);
//VarAntiHCVSumCore:= BoolConvertInt(ChkBoxAntiHCVSumCore.Checked);
//VarAntiHCVSumNS3:= BoolConvertInt(ChkBoxAntiHCVSumNS3.Checked);
//VarAntiHCVSumNS4:= BoolConvertInt(ChkBoxAntiHCVSumNS4.Checked);
//VarAntiHCVSumNS5:= BoolConvertInt(ChkBoxAntiHCVSumNS5.Checked);
//VarSumAtLues:= BoolConvertInt(ChkBoxSumAtLues.Checked);
//VarRW:= BoolConvertInt(ChkBoxHBsAg.Checked);
//VarAIDS:= BoolConvertInt(ChkBoxAIDS.Checked);

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.AppEventsFrmAIDSShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmAIDS.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//��������� �������������/�������� ������� ����������� � ����������� ��
//�������� ��������� VarIntRez
procedure TFrmAIDS.RdBtnDefineState(Sender: TRadioButton;
  const VarIntRez: Integer);
begin
TRadioButton(Sender).Checked:= (VarIntRez = 1);
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxHBsAgClick(Sender: TObject);
begin
RdBtnHBsAgYes.Enabled:= ChkBoxHBsAg.Checked;
RdBtnHBsAgNo.Enabled:= ChkBoxHBsAg.Checked;
Label17.Enabled:= ChkBoxHBsAg.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxHBeAgClick(Sender: TObject);
begin
RdBtnHBeAgYes.Enabled:= ChkBoxHBeAg.Checked;
RdBtnHBeAgNo.Enabled:= ChkBoxHBeAg.Checked;
Label1.Enabled:= ChkBoxHBeAg.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHBcSumClick(Sender: TObject);
begin
RdBtnAntiHBcSumYes.Enabled:= ChkBoxAntiHBcSum.Checked;
RdBtnAntiHBcSumNo.Enabled:= ChkBoxAntiHBcSum.Checked;
Label2.Enabled:= ChkBoxAntiHBcSum.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHBc_IgMClick(Sender: TObject);
begin
RdBtnAntiHBc_IgMYes.Enabled:= ChkBoxAntiHBc_IgM.Checked;
RdBtnAntiHBc_IgMNo.Enabled:= ChkBoxAntiHBc_IgM.Checked;
Label3.Enabled:= ChkBoxAntiHBc_IgM.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHBe_IgGClick(Sender: TObject);
begin
RdBtnAntiHBe_IgGYes.Enabled:= ChkBoxAntiHBe_IgG.Checked;
RdBtnAntiHBe_IgGNo.Enabled:= ChkBoxAntiHBe_IgG.Checked;
Label4.Enabled:= ChkBoxAntiHBe_IgG.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHBsNumerClick(Sender: TObject);
begin
EdtAntiHBsNumer.Enabled:= ChkBoxAntiHBsNumer.Checked;
if EdtAntiHBsNumer.CanFocus then EdtAntiHBsNumer.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCVSumClick(Sender: TObject);
begin
RdBtnAntiHCVSumYes.Enabled:= ChkBoxAntiHCVSum.Checked;
RdBtnAntiHCVSumNo.Enabled:= ChkBoxAntiHCVSum.Checked;
Label6.Enabled:= ChkBoxAntiHCVSum.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCV_Core_IgMClick(Sender: TObject);
begin
RdBtnAntiHCV_Core_IgMYes.Enabled:= ChkBoxAntiHCV_Core_IgM.Checked;
RdBtnAntiHCV_Core_IgMNo.Enabled:= ChkBoxAntiHCV_Core_IgM.Checked;
Label7.Enabled:= ChkBoxAntiHCV_Core_IgM.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHDVSumClick(Sender: TObject);
begin
RdBtnAntiHDVSumYes.Enabled:= ChkBoxAntiHDVSum.Checked;
RdBtnAntiHDVSumNo.Enabled:= ChkBoxAntiHDVSum.Checked;
Label12.Enabled:= ChkBoxAntiHDVSum.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCVSumCoreClick(Sender: TObject);
begin
RdBtnAntiHCVSumCoreYes.Enabled:= ChkBoxAntiHCVSumCore.Checked;
RdBtnAntiHCVSumCoreNo.Enabled:= ChkBoxAntiHCVSumCore.Checked;
Label13.Enabled:= ChkBoxAntiHCVSumCore.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCVSumNS3Click(Sender: TObject);
begin
RdBtnAntiHCVSumNS3Yes.Enabled:= ChkBoxAntiHCVSumNS3.Checked;
RdBtnAntiHCVSumNS3No.Enabled:= ChkBoxAntiHCVSumNS3.Checked;
Label14.Enabled:= ChkBoxAntiHCVSumNS3.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCVSumNS4Click(Sender: TObject);
begin
RdBtnAntiHCVSumNS4Yes.Enabled:= ChkBoxAntiHCVSumNS4.Checked;
RdBtnAntiHCVSumNS4No.Enabled:= ChkBoxAntiHCVSumNS4.Checked;
Label15.Enabled:= ChkBoxAntiHCVSumNS4.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAntiHCVSumNS5Click(Sender: TObject);
begin
RdBtnAntiHCVSumNS5Yes.Enabled:= ChkBoxAntiHCVSumNS5.Checked;
RdBtnAntiHCVSumNS5No.Enabled:= ChkBoxAntiHCVSumNS5.Checked;
Label8.Enabled:= ChkBoxAntiHCVSumNS5.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxSumAtLuesClick(Sender: TObject);
begin
RdBtnSumAtLuesYes.Enabled:= ChkBoxSumAtLues.Checked;
RdBtnSumAtLuesNo.Enabled:= ChkBoxSumAtLues.Checked;
Label9.Enabled:= ChkBoxSumAtLues.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxRWClick(Sender: TObject);
begin
RdBtnRWYes.Enabled:= ChkBoxRW.Checked;
RdBtnRWNo.Enabled:= ChkBoxRW.Checked;
Label10.Enabled:= ChkBoxRW.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmAIDS.ChkBoxAIDSClick(Sender: TObject);
begin
RdBtnAIDSYes.Enabled:= ChkBoxAIDS.Checked;
RdBtnAIDSNo.Enabled:= ChkBoxAIDS.Checked;
Label11.Enabled:= ChkBoxAIDS.Checked;
end;

//----------------------------------------------------------------------------

(*****************************************************************************)
(*   ������� ������ "��������" ��������� ������������ � ��� ������, ���      *)
(* BegCurPos - ����� ������� ������� ���������� ������                       *)
(* Index - ����� �����, � ������� ����� ����� ���������� ����������  �����   *)
(* ������                                                                    *)
(* TmpStr - �������������� � ����������� �� �������� Checked Sender'a ������ *)
(*                                                                           *)
(* ��������� ��������� ����� �������� ����� ��� ����������� ���������        *)
(* � ������ ���������                                                        *)
(*****************************************************************************)

function TFrmAIDS.DefParamString(Sender: TRadioButton; TmpStr: String;
  out BegCurPos, Index: Integer): String;
begin
Result:= Trim(TmpStr + ' - �� �� ����������;');
BegCurPos:= 18;
Index:= 0;//������ ����� ����� clNavy

if Sender.Checked
  then
    begin
      Result:= Trim(TmpStr + ' - �� ����������;');
      BegCurPos:= 15;
      Index:= 3;//������ ����� ������� clRed
    end;
end;

//----------------------------------------------------------------------------

end.

