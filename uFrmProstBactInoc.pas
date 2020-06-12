unit uFrmProstBactInoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, ExtCtrls, ComCtrls, NiceSettings, Mask, DBCtrlsEh, AppEvnts;

type
  TFrmProstBactInoc = class(TForm)
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    DTPickProstBactInocDate: TDateTimePicker;
    Panel17: TPanel;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel4: TPanel;
    RdBtn_R1_01: TRadioButton;
    RdBtn_I1_01: TRadioButton;
    RdBtn_S1_01: TRadioButton;
    Panel5: TPanel;
    RdBtn_R1_02: TRadioButton;
    RdBtn_I1_02: TRadioButton;
    RdBtn_S1_02: TRadioButton;
    Panel6: TPanel;
    RdBtn_R1_03: TRadioButton;
    RdBtn_I1_03: TRadioButton;
    RdBtn_S1_03: TRadioButton;
    Panel7: TPanel;
    RdBtn_R1_04: TRadioButton;
    RdBtn_I1_04: TRadioButton;
    RdBtn_S1_04: TRadioButton;
    Panel8: TPanel;
    RdBtn_R1_05: TRadioButton;
    RdBtn_I1_05: TRadioButton;
    RdBtn_S1_05: TRadioButton;
    Panel9: TPanel;
    RdBtn_R1_06: TRadioButton;
    RdBtn_I1_06: TRadioButton;
    RdBtn_S1_06: TRadioButton;
    Panel10: TPanel;
    RdBtn_R1_07: TRadioButton;
    RdBtn_I1_07: TRadioButton;
    RdBtn_S1_07: TRadioButton;
    Panel11: TPanel;
    RdBtn_R1_08: TRadioButton;
    RdBtn_I1_08: TRadioButton;
    RdBtn_S1_08: TRadioButton;
    Panel12: TPanel;
    RdBtn_R1_09: TRadioButton;
    RdBtn_I1_09: TRadioButton;
    RdBtn_S1_09: TRadioButton;
    Panel13: TPanel;
    RdBtn_R1_10: TRadioButton;
    RdBtn_I1_10: TRadioButton;
    RdBtn_S1_10: TRadioButton;
    Panel14: TPanel;
    RdBtn_R1_11: TRadioButton;
    RdBtn_I1_11: TRadioButton;
    RdBtn_S1_11: TRadioButton;
    Panel15: TPanel;
    RdBtn_R1_12: TRadioButton;
    RdBtn_I1_12: TRadioButton;
    RdBtn_S1_12: TRadioButton;
    Panel16: TPanel;
    RdBtn_R1_13: TRadioButton;
    RdBtn_I1_13: TRadioButton;
    RdBtn_S1_13: TRadioButton;
    Panel18: TPanel;
    RdBtn_R1_14: TRadioButton;
    RdBtn_I1_14: TRadioButton;
    RdBtn_S1_14: TRadioButton;
    Panel19: TPanel;
    RdBtn_R1_15: TRadioButton;
    RdBtn_I1_15: TRadioButton;
    RdBtn_S1_15: TRadioButton;
    Panel20: TPanel;
    RdBtn_R1_16: TRadioButton;
    RdBtn_I1_16: TRadioButton;
    RdBtn_S1_16: TRadioButton;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Panel21: TPanel;
    RdBtn_R2_01: TRadioButton;
    RdBtn_I2_01: TRadioButton;
    RdBtn_S2_01: TRadioButton;
    Panel22: TPanel;
    RdBtn_R2_02: TRadioButton;
    RdBtn_I2_02: TRadioButton;
    RdBtn_S2_02: TRadioButton;
    Panel23: TPanel;
    RdBtn_R2_03: TRadioButton;
    RdBtn_I2_03: TRadioButton;
    RdBtn_S2_03: TRadioButton;
    Panel24: TPanel;
    RdBtn_R2_04: TRadioButton;
    RdBtn_I2_04: TRadioButton;
    RdBtn_S2_04: TRadioButton;
    Panel25: TPanel;
    RdBtn_R2_05: TRadioButton;
    RdBtn_I2_05: TRadioButton;
    RdBtn_S2_05: TRadioButton;
    Panel26: TPanel;
    RdBtn_R2_06: TRadioButton;
    RdBtn_I2_06: TRadioButton;
    RdBtn_S2_06: TRadioButton;
    Panel27: TPanel;
    RdBtn_R2_07: TRadioButton;
    RdBtn_I2_07: TRadioButton;
    RdBtn_S2_07: TRadioButton;
    Panel28: TPanel;
    RdBtn_R2_08: TRadioButton;
    RdBtn_I2_08: TRadioButton;
    RdBtn_S2_08: TRadioButton;
    Panel29: TPanel;
    RdBtn_R2_09: TRadioButton;
    RdBtn_I2_09: TRadioButton;
    RdBtn_S2_09: TRadioButton;
    Panel30: TPanel;
    RdBtn_R2_10: TRadioButton;
    RdBtn_I2_10: TRadioButton;
    RdBtn_S2_10: TRadioButton;
    Panel31: TPanel;
    RdBtn_R2_11: TRadioButton;
    RdBtn_I2_11: TRadioButton;
    RdBtn_S2_11: TRadioButton;
    Panel32: TPanel;
    RdBtn_R2_12: TRadioButton;
    RdBtn_I2_12: TRadioButton;
    RdBtn_S2_12: TRadioButton;
    Panel33: TPanel;
    RdBtn_R2_13: TRadioButton;
    RdBtn_I2_13: TRadioButton;
    RdBtn_S2_13: TRadioButton;
    Panel34: TPanel;
    RdBtn_R2_14: TRadioButton;
    RdBtn_I2_14: TRadioButton;
    RdBtn_S2_14: TRadioButton;
    Panel35: TPanel;
    RdBtn_R2_15: TRadioButton;
    RdBtn_I2_15: TRadioButton;
    RdBtn_S2_15: TRadioButton;
    Panel36: TPanel;
    RdBtn_R2_16: TRadioButton;
    RdBtn_I2_16: TRadioButton;
    RdBtn_S2_16: TRadioButton;
    Panel37: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    ChkBoxPathogen1: TCheckBox;
    EdtPathogen1: TEdit;
    ChkBoxPathogen2: TCheckBox;
    EdtPathogen2: TEdit;
    Panel38: TPanel;
    RdBtn_R1_17: TRadioButton;
    RdBtn_I1_17: TRadioButton;
    RdBtn_S1_17: TRadioButton;
    Panel39: TPanel;
    RdBtn_R2_17: TRadioButton;
    RdBtn_I2_17: TRadioButton;
    RdBtn_S2_17: TRadioButton;
    NiceSetFrmProstBactInoc: TNiceSettings;
    Panel40: TPanel;
    EdtExtra1: TEdit;
    EdtExtra2: TEdit;
    ChkBoxDrug_01: TCheckBox;
    ChkBoxDrug_02: TCheckBox;
    ChkBoxDrug_03: TCheckBox;
    ChkBoxDrug_04: TCheckBox;
    ChkBoxDrug_05: TCheckBox;
    ChkBoxDrug_06: TCheckBox;
    ChkBoxDrug_07: TCheckBox;
    ChkBoxDrug_08: TCheckBox;
    ChkBoxDrug_09: TCheckBox;
    ChkBoxDrug_10: TCheckBox;
    ChkBoxDrug_11: TCheckBox;
    ChkBoxDrug_12: TCheckBox;
    ChkBoxDrug_13: TCheckBox;
    ChkBoxDrug_14: TCheckBox;
    ChkBoxDrug_15: TCheckBox;
    ChkBoxDrug_16: TCheckBox;
    ChkBoxDrug_17: TCheckBox;
    Label2: TLabel;
    NumEdtProst1: TDBNumberEditEh;
    Label25: TLabel;
    Label3: TLabel;
    NumEdtProst2: TDBNumberEditEh;
    Label4: TLabel;
    Panel1: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    AppEventsFrmProstBactInoc: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChkBoxPathogen1Click(Sender: TObject);
    procedure ChkBoxPathogen2Click(Sender: TObject);
    procedure ChkBoxDrug_01Click(Sender: TObject);
    procedure ChkBoxDrug_02Click(Sender: TObject);
    procedure ChkBoxDrug_03Click(Sender: TObject);
    procedure ChkBoxDrug_04Click(Sender: TObject);
    procedure ChkBoxDrug_05Click(Sender: TObject);
    procedure ChkBoxDrug_06Click(Sender: TObject);
    procedure ChkBoxDrug_07Click(Sender: TObject);
    procedure ChkBoxDrug_08Click(Sender: TObject);
    procedure ChkBoxDrug_09Click(Sender: TObject);
    procedure ChkBoxDrug_10Click(Sender: TObject);
    procedure ChkBoxDrug_11Click(Sender: TObject);
    procedure ChkBoxDrug_12Click(Sender: TObject);
    procedure ChkBoxDrug_13Click(Sender: TObject);
    procedure ChkBoxDrug_14Click(Sender: TObject);
    procedure ChkBoxDrug_15Click(Sender: TObject);
    procedure ChkBoxDrug_16Click(Sender: TObject);
    procedure ChkBoxDrug_17Click(Sender: TObject);
    procedure NumEdtProst1Change(Sender: TObject);
    procedure NumEdtProst2Change(Sender: TObject);
    procedure AppEventsFrmProstBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function CheckActiveRdBtn(ChkRdBtn1,ChkRdBtn2,ChkRdBtn3: TRadioButton): Integer;
    function GetSusceptStr(out L, Index: Integer; ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton): String;
    function CheckItRdBtn_and_ChkBox(ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton;ChkBox: TCheckBox): Integer;
    procedure CheckItRdBtn(const AInt: Integer; ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton);
    procedure TestingAllChecks(Sender: TObject);
    procedure FmtTxtInTmpRichEdit(ARichEdit: TRichEdit; const CurStart, SelEnd, Index: Integer; TxtStr: String);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmProstBactInoc: TFrmProstBactInoc;

implementation

uses
  VarAndrUnit, MainAndrUnit;
var
  FocusFlag: Boolean;  

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmProstBactInoc.SaveSettings;  
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.FormCreate(Sender: TObject);
begin
NiceSetFrmProstBactInoc.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmProstBactInoc.LoadSettings;

Self.Caption:= '���.����� ���� �������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//����������� ���������� ��������
DTPickProstBactInocDate.Date:= VarProstBactInocDate;

ChkBoxPathogen1.Checked:= IntConvertBool(VarChkProstPathogen1);
CheckItRdBtn(VarProst_Pathogen1_01,RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
CheckItRdBtn(VarProst_Pathogen1_02,RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
CheckItRdBtn(VarProst_Pathogen1_03,RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
CheckItRdBtn(VarProst_Pathogen1_04,RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
CheckItRdBtn(VarProst_Pathogen1_05,RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
CheckItRdBtn(VarProst_Pathogen1_06,RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
CheckItRdBtn(VarProst_Pathogen1_07,RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
CheckItRdBtn(VarProst_Pathogen1_08,RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
CheckItRdBtn(VarProst_Pathogen1_09,RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
CheckItRdBtn(VarProst_Pathogen1_10,RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
CheckItRdBtn(VarProst_Pathogen1_11,RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
CheckItRdBtn(VarProst_Pathogen1_12,RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
CheckItRdBtn(VarProst_Pathogen1_13,RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
CheckItRdBtn(VarProst_Pathogen1_14,RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
CheckItRdBtn(VarProst_Pathogen1_15,RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
CheckItRdBtn(VarProst_Pathogen1_16,RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);
CheckItRdBtn(VarProst_Pathogen1_17,RdBtn_R1_17,RdBtn_I1_17,RdBtn_S1_17);

ChkBoxPathogen2.Checked:= IntConvertBool(VarChkProstPathogen1);
CheckItRdBtn(VarProst_Pathogen2_01,RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
CheckItRdBtn(VarProst_Pathogen2_02,RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
CheckItRdBtn(VarProst_Pathogen2_03,RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
CheckItRdBtn(VarProst_Pathogen2_04,RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
CheckItRdBtn(VarProst_Pathogen2_05,RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
CheckItRdBtn(VarProst_Pathogen2_06,RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
CheckItRdBtn(VarProst_Pathogen2_07,RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
CheckItRdBtn(VarProst_Pathogen2_08,RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
CheckItRdBtn(VarProst_Pathogen2_09,RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
CheckItRdBtn(VarProst_Pathogen2_10,RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
CheckItRdBtn(VarProst_Pathogen2_11,RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
CheckItRdBtn(VarProst_Pathogen2_12,RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
CheckItRdBtn(VarProst_Pathogen2_13,RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
CheckItRdBtn(VarProst_Pathogen2_14,RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
CheckItRdBtn(VarProst_Pathogen2_15,RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
CheckItRdBtn(VarProst_Pathogen2_16,RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);
CheckItRdBtn(VarProst_Pathogen2_17,RdBtn_R2_17,RdBtn_I2_17,RdBtn_S2_17);

ChkBoxDrug_01.Checked:= IntConvertBool(VarChkProstDrug_01);
ChkBoxDrug_02.Checked:= IntConvertBool(VarChkProstDrug_02);
ChkBoxDrug_03.Checked:= IntConvertBool(VarChkProstDrug_03);
ChkBoxDrug_04.Checked:= IntConvertBool(VarChkProstDrug_04);
ChkBoxDrug_05.Checked:= IntConvertBool(VarChkProstDrug_05);
ChkBoxDrug_06.Checked:= IntConvertBool(VarChkProstDrug_06);
ChkBoxDrug_07.Checked:= IntConvertBool(VarChkProstDrug_07);
ChkBoxDrug_08.Checked:= IntConvertBool(VarChkProstDrug_08);
ChkBoxDrug_09.Checked:= IntConvertBool(VarChkProstDrug_09);
ChkBoxDrug_10.Checked:= IntConvertBool(VarChkProstDrug_10);
ChkBoxDrug_11.Checked:= IntConvertBool(VarChkProstDrug_11);
ChkBoxDrug_12.Checked:= IntConvertBool(VarChkProstDrug_12);
ChkBoxDrug_13.Checked:= IntConvertBool(VarChkProstDrug_13);
ChkBoxDrug_14.Checked:= IntConvertBool(VarChkProstDrug_14);
ChkBoxDrug_15.Checked:= IntConvertBool(VarChkProstDrug_15);
ChkBoxDrug_16.Checked:= IntConvertBool(VarChkProstDrug_16);
ChkBoxDrug_17.Checked:= IntConvertBool(VarChkProstDrug_17);

NumEdtProst1.Value:= VarNumEdtProstBact1;
NumEdtProst2.Value:= VarNumEdtProstBact2;

if Trim(VarStrProstPathogen1) = ''
  then EdtPathogen1.Text:= '�������� �������'
  else EdtPathogen1.Text:= Trim(VarStrProstPathogen1);

if Trim(VarStrProstPathogen2) = ''
  then EdtPathogen2.Text:= '�������� �������'
  else EdtPathogen2.Text:= Trim(VarStrProstPathogen2);

if Trim(VarStrProstExtra1) = ''
  then EdtExtra1.Text:= '�������� ���������'
  else EdtExtra1.Text:= Trim(VarStrProstExtra1);

if Trim(VarStrProstExtra2) = ''
  then EdtExtra2.Text:= '�������� ���������'
  else EdtExtra2.Text:= Trim(VarStrProstExtra2);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.FormResize(Sender: TObject);
begin
{}
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.FormShow(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.BtnSaveClick(Sender: TObject);
var BegCurPos, EndCurPos, //������ � ����� ���������
    Index, //�������� ����� ���������� �����������
    counter: Integer;//������� ��� ���������� ����
    TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TmpRE:= TRichEdit.CreateParented(Self.Handle);

//�������� ���.���� ��� ����������,���� ��� ��������, �� �� ������������
if ChkBoxDrug_16.Checked then
  ChkBoxDrug_16.Checked:= not ((AnsiLowerCase(Trim(EdtExtra1.Text)) = '�������� ���������') or
                                                                                     (Trim(EdtExtra1.Text) = ''));
if ChkBoxDrug_17.Checked then
  ChkBoxDrug_17.Checked:= not ((AnsiLowerCase(Trim(EdtExtra2.Text)) = '�������� ���������') or
                                                                                     (Trim(EdtExtra2.Text) = ''));

  try

    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    TmpTxt:= '���.����� ���� �������� ('+ FormatDateTime('DD.MM.YY', DTPickProstBactInocDate.DateTime) + '): ';
    with TmpRE do
      begin
        Lines.Add(TmpTxt);
        SelStart:= 0;
        SelLength:= Length(Trim(TmpTxt));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= Length(Trim(TmpTxt));
        SelAttributes.Assign(DefAttributes);
      end;


    if ChkBoxPathogen1.Checked then
      begin
        if (Trim(EdtPathogen1.Text) = '') or (Trim(EdtPathogen1.Text) = '�������� �������')  then
          begin
            Application.MessageBox('�� �� ����� �������� ������������� �����������!','�������� ������',
                                                                                              MB_ICONINFORMATION);
            if EdtPathogen1.CanFocus then EdtPathogen1.SetFocus;
            Exit;
          end;

        //���� �� ���� �� ���������� �� ������� ��� �������� ������� ������������ �������, �� ����������� �� ����
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked or ChkBoxDrug_11.Checked or ChkBoxDrug_12.Checked or
                        ChkBoxDrug_13.Checked or ChkBoxDrug_14.Checked or ChkBoxDrug_15.Checked or
                          ChkBoxDrug_16.Checked or ChkBoxDrug_17.Checked)) and NumEdtProst1.Value > 3 then
          begin
            Application.MessageBox('�� �� �������� ���������������� ������� �� � ������ �� ����������!',
                                                                            '�������� ������', MB_ICONINFORMATION);
            Exit;
          end;

        counter:= 0;
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01,ChkBoxDrug_01);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02,ChkBoxDrug_02);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03,ChkBoxDrug_03);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04,ChkBoxDrug_04);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05,ChkBoxDrug_05);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06,ChkBoxDrug_06);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07,ChkBoxDrug_07);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08,ChkBoxDrug_08);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09,ChkBoxDrug_09);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10,ChkBoxDrug_10);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11,ChkBoxDrug_11);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12,ChkBoxDrug_12);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13,ChkBoxDrug_13);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14,ChkBoxDrug_14);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15,ChkBoxDrug_15);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16,ChkBoxDrug_16);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_17,RdBtn_I1_17,RdBtn_S1_17,ChkBoxDrug_17);



        TmpTxt:= '1. ������� ����������� ' + Trim(EdtPathogen1.Text) + ' � ����. 10^'
        + VarToStr(NumEdtProst1.Value) + ' ���/��.';

        BegCurPos:= Length(TmpRE.Text) + Length('1. ������� ����������� ');
        EndCurPos:= Length(Trim(EdtPathogen1.Text));

        if NumEdtProst1.Value > 3 then
          begin
            //���� ������ � ������������� �������� � ������� ���� ���� ����������, �� ��������� �����
            if counter > 0 then
              TmpTxt:= LeftStr(TmpTxt,Length(TmpTxt) -1) + ' � ����������������� � ��������� ����������:';

            //��������� ����� � ���������� �������� ����������� ������ �������
            with TmpRE do
              begin
                Lines.Add(TmpTxt);
                SelStart:= BegCurPos;
                SelLength:= EndCurPos;
                SelAttributes.Style:= [fsBold];
                SelStart:= Length(Trim(TmpTxt));
                SelAttributes.Assign(DefAttributes);
                Lines.Add('');
              end;

            //���� �������� ������� � ������� ���� ���� �������� �����������, �� ������ ��� � ������
            if (ChkBoxDrug_01.Checked) and (RdBtn_R1_01.Checked or RdBtn_I1_01.Checked or RdBtn_S1_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_R1_02.Checked or RdBtn_I1_02.Checked or RdBtn_S1_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ��������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
                BegCurPos:= BegCurPos + Length('* ��������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_R1_03.Checked or RdBtn_I1_03.Checked or RdBtn_S1_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_R1_04.Checked or RdBtn_I1_04.Checked or RdBtn_S1_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ��������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
                BegCurPos:= BegCurPos + Length('* ��������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_R1_05.Checked or RdBtn_I1_05.Checked or RdBtn_S1_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_R1_06.Checked or RdBtn_I1_06.Checked or RdBtn_S1_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_R1_07.Checked or RdBtn_I1_07.Checked or RdBtn_S1_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_R1_08.Checked or RdBtn_I1_08.Checked or RdBtn_S1_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_R1_09.Checked or RdBtn_I1_09.Checked or RdBtn_S1_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
                BegCurPos:= BegCurPos + Length('* �������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_R1_10.Checked or RdBtn_I1_10.Checked or RdBtn_S1_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_11.Checked) and (RdBtn_R1_11.Checked or RdBtn_I1_11.Checked or RdBtn_S1_11.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_12.Checked) and (RdBtn_R1_12.Checked or RdBtn_I1_12.Checked or RdBtn_S1_12.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_13.Checked) and (RdBtn_R1_13.Checked or RdBtn_I1_13.Checked or RdBtn_S1_13.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
                BegCurPos:= BegCurPos + Length('* �������������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_14.Checked) and (RdBtn_R1_14.Checked or RdBtn_I1_14.Checked or RdBtn_S1_14.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
                BegCurPos:= BegCurPos + Length('* �������������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_15.Checked) and (RdBtn_R1_15.Checked or RdBtn_I1_15.Checked or RdBtn_S1_15.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �-� ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
                BegCurPos:= BegCurPos + Length('* �-� ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_16.Checked) and (RdBtn_R1_16.Checked or RdBtn_I1_16.Checked or RdBtn_S1_16.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra1.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_17.Checked) and (RdBtn_R1_17.Checked or RdBtn_I1_17.Checked or RdBtn_S1_17.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra2.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_17,RdBtn_I1_17,RdBtn_S1_17);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;
          end
        else //������������ ����������� 1000 ���/�� � ����
          //��������� ����� � ���������� �������� ����������� ������ �������
          with TmpRE do
            begin
              Lines.Add(TmpTxt);
              SelStart:= BegCurPos;
              SelLength:= EndCurPos;
              SelAttributes.Style:= [fsBold];
              SelStart:= Length(Trim(TmpTxt));
              SelAttributes.Assign(DefAttributes);
            end;
    end;{if ChkBoxPathogen1.Checked...then}

    if ChkBoxPathogen2.Checked then
      begin
        if (Trim(EdtPathogen2.Text) = '') or (Trim(EdtPathogen2.Text) = '�������� �������')  then
          begin
            Application.MessageBox('�� �� ����� �������� ������������� �����������!','�������� ������',
                                                                                              MB_ICONINFORMATION);
            if EdtPathogen2.CanFocus then EdtPathogen2.SetFocus;
            Exit;
          end;

        //���� �� ���� �� ���������� �� ������� ��� �������� ������� ������������ �������, �� ����������� �� ����
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked or ChkBoxDrug_11.Checked or ChkBoxDrug_12.Checked or
                        ChkBoxDrug_13.Checked or ChkBoxDrug_14.Checked or ChkBoxDrug_15.Checked or
                          ChkBoxDrug_16.Checked or ChkBoxDrug_17.Checked)) and NumEdtProst2.Value > 3 then
          begin
            Application.MessageBox('�� �� �������� ���������������� ������� �� � ������ �� ����������!',
                                                                            '�������� ������', MB_ICONINFORMATION);
            Exit;
          end;

        counter:= 0;
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01,ChkBoxDrug_01);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02,ChkBoxDrug_02);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03,ChkBoxDrug_03);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04,ChkBoxDrug_04);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05,ChkBoxDrug_05);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06,ChkBoxDrug_06);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07,ChkBoxDrug_07);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08,ChkBoxDrug_08);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09,ChkBoxDrug_09);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10,ChkBoxDrug_10);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11,ChkBoxDrug_11);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12,ChkBoxDrug_12);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13,ChkBoxDrug_13);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14,ChkBoxDrug_14);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15,ChkBoxDrug_15);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16,ChkBoxDrug_16);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_17,RdBtn_I1_17,RdBtn_S1_17,ChkBoxDrug_17);

        if ChkBoxPathogen1.Checked then TmpRE.Lines.Add('');//������� ������ ������, ���� ��� ���� ���� �����������

        TmpTxt:= '2. ������� ����������� ' + Trim(EdtPathogen2.Text) + ' � ����. 10^'
        + VarToStr(NumEdtProst2.Value) + ' ���/��.';

        BegCurPos:= Length(TmpRE.Text) + Length('2. ������� ����������� ');
        EndCurPos:= Length(Trim(EdtPathogen2.Text));

        if NumEdtProst2.Value > 3 then
          begin
            //���� ������ � ������������� �������� � ������� ���� ���� ����������, �� ��������� �����
            if counter > 0 then
              TmpTxt:= LeftStr(TmpTxt,Length(TmpTxt) -1) + ' � ����������������� � ��������� ����������:';

            //��������� ����� � ���������� �������� ����������� ������ �������
            with TmpRE do
              begin
                Lines.Add(TmpTxt);
                SelStart:= BegCurPos;
                SelLength:= EndCurPos;
                SelAttributes.Style:= [fsBold];
                SelStart:= Length(Trim(TmpTxt));
                SelAttributes.Assign(DefAttributes);
                Lines.Add('');
              end;

            //���� �������� ������� � ������� ���� ���� �������� �����������, �� ������ ��� � ������
            if (ChkBoxDrug_01.Checked) and (RdBtn_R2_01.Checked or RdBtn_I2_01.Checked or RdBtn_S2_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_R2_02.Checked or RdBtn_I2_02.Checked or RdBtn_S2_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ��������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
                BegCurPos:= BegCurPos + Length('* ��������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_R2_03.Checked or RdBtn_I2_03.Checked or RdBtn_S2_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_R2_04.Checked or RdBtn_I2_04.Checked or RdBtn_S2_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ��������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
                BegCurPos:= BegCurPos + Length('* ��������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_R2_05.Checked or RdBtn_I2_05.Checked or RdBtn_S2_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_R2_06.Checked or RdBtn_I2_06.Checked or RdBtn_S2_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_R2_07.Checked or RdBtn_I2_07.Checked or RdBtn_S2_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_R2_08.Checked or RdBtn_I2_08.Checked or RdBtn_S2_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
                BegCurPos:= BegCurPos + Length('* ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_R2_09.Checked or RdBtn_I2_09.Checked or RdBtn_S2_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
                BegCurPos:= BegCurPos + Length('* �������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_R2_10.Checked or RdBtn_I2_10.Checked or RdBtn_S2_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_11.Checked) and (RdBtn_R2_11.Checked or RdBtn_I2_11.Checked or RdBtn_S2_11.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_12.Checked) and (RdBtn_R2_12.Checked or RdBtn_I2_12.Checked or RdBtn_S2_12.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ����������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
                BegCurPos:= BegCurPos + Length('* ����������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_13.Checked) and (RdBtn_R2_13.Checked or RdBtn_I2_13.Checked or RdBtn_S2_13.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
                BegCurPos:= BegCurPos + Length('* �������������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_14.Checked) and (RdBtn_R2_14.Checked or RdBtn_I2_14.Checked or RdBtn_S2_14.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �������������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
                BegCurPos:= BegCurPos + Length('* �������������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_15.Checked) and (RdBtn_R2_15.Checked or RdBtn_I2_15.Checked or RdBtn_S2_15.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* �-� ���������� - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
                BegCurPos:= BegCurPos + Length('* �-� ���������� - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_16.Checked) and (RdBtn_R2_16.Checked or RdBtn_I2_16.Checked or RdBtn_S2_16.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra1.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;

            if (ChkBoxDrug_17.Checked) and (RdBtn_R2_17.Checked or RdBtn_I2_17.Checked or RdBtn_S2_17.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//���������� ������� ������ ������
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra2.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_17,RdBtn_I2_17,RdBtn_S2_17);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' - ');//������ ���������
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//��������� ��������������� ������
              end;
          end
        else //������������ ����������� 1000 ���/�� � ����
          //��������� ����� � ���������� �������� ����������� ������ �������
          with TmpRE do
            begin
              Lines.Add(TmpTxt);
              SelStart:= BegCurPos;
              SelLength:= EndCurPos;
              SelAttributes.Style:= [fsBold];
              SelStart:= Length(Trim(TmpTxt));
              SelAttributes.Assign(DefAttributes);
            end;          
      end;{if ChkBoxPathogen2.Checked...then}

      if ((not ChkBoxPathogen1.Checked) and (not ChkBoxPathogen2.Checked))
        then
          TmpRE.Lines.Add('- ���.����� ��������.');
          
  //==================================================================================
    //�������� ��������������� ����� � ������
    TmpTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextProstBactInoc;//������������� ��������� ��� ���������

    //����������� ��������� ����� ���.������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextProstBactInoc:= TmpTxt //����� �������� ��� ����� ���������� TextProstBactInoc
      else//���� ���-�� ��������
        if TextProstBactInoc <> TmpTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ��������� ������������ �������������� ������' +
                         ' ���� �������� �� ���������� ������ ����� ������� �� ����� ��������������' +
                          ' �����. ��������� ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextProstBactInoc:= TmpTxt;//��������, ���� ����� "��"
                //��������� ����������


    VarProstBactInocDate:= DTPickProstBactInocDate.Date;

    VarChkProstPathogen1:= BoolConvertInt(ChkBoxPathogen1.Checked);

    VarProst_Pathogen1_01:= CheckActiveRdBtn(RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
    VarProst_Pathogen1_02:= CheckActiveRdBtn(RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
    VarProst_Pathogen1_03:= CheckActiveRdBtn(RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
    VarProst_Pathogen1_04:= CheckActiveRdBtn(RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
    VarProst_Pathogen1_05:= CheckActiveRdBtn(RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
    VarProst_Pathogen1_06:= CheckActiveRdBtn(RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
    VarProst_Pathogen1_07:= CheckActiveRdBtn(RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
    VarProst_Pathogen1_08:= CheckActiveRdBtn(RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
    VarProst_Pathogen1_09:= CheckActiveRdBtn(RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
    VarProst_Pathogen1_10:= CheckActiveRdBtn(RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
    VarProst_Pathogen1_11:= CheckActiveRdBtn(RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
    VarProst_Pathogen1_12:= CheckActiveRdBtn(RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
    VarProst_Pathogen1_13:= CheckActiveRdBtn(RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
    VarProst_Pathogen1_14:= CheckActiveRdBtn(RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
    VarProst_Pathogen1_15:= CheckActiveRdBtn(RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
    VarProst_Pathogen1_16:= CheckActiveRdBtn(RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);
    VarProst_Pathogen1_17:= CheckActiveRdBtn(RdBtn_R1_17,RdBtn_I1_17,RdBtn_S1_17);

    VarChkProstPathogen2:= BoolConvertInt(ChkBoxPathogen2.Checked);
    VarProst_Pathogen2_01:= CheckActiveRdBtn(RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
    VarProst_Pathogen2_02:= CheckActiveRdBtn(RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
    VarProst_Pathogen2_03:= CheckActiveRdBtn(RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
    VarProst_Pathogen2_04:= CheckActiveRdBtn(RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
    VarProst_Pathogen2_05:= CheckActiveRdBtn(RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
    VarProst_Pathogen2_06:= CheckActiveRdBtn(RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
    VarProst_Pathogen2_07:= CheckActiveRdBtn(RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
    VarProst_Pathogen2_08:= CheckActiveRdBtn(RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
    VarProst_Pathogen2_09:= CheckActiveRdBtn(RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
    VarProst_Pathogen2_10:= CheckActiveRdBtn(RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
    VarProst_Pathogen2_11:= CheckActiveRdBtn(RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
    VarProst_Pathogen2_12:= CheckActiveRdBtn(RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
    VarProst_Pathogen2_13:= CheckActiveRdBtn(RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
    VarProst_Pathogen2_14:= CheckActiveRdBtn(RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
    VarProst_Pathogen2_15:= CheckActiveRdBtn(RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
    VarProst_Pathogen2_16:= CheckActiveRdBtn(RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);
    VarProst_Pathogen2_17:= CheckActiveRdBtn(RdBtn_R2_17,RdBtn_I2_17,RdBtn_S2_17);

    VarChkProstDrug_01:= BoolConvertInt(ChkBoxDrug_01.Checked);
    VarChkProstDrug_02:= BoolConvertInt(ChkBoxDrug_02.Checked);
    VarChkProstDrug_03:= BoolConvertInt(ChkBoxDrug_03.Checked);
    VarChkProstDrug_04:= BoolConvertInt(ChkBoxDrug_04.Checked);
    VarChkProstDrug_05:= BoolConvertInt(ChkBoxDrug_05.Checked);
    VarChkProstDrug_06:= BoolConvertInt(ChkBoxDrug_06.Checked);
    VarChkProstDrug_07:= BoolConvertInt(ChkBoxDrug_07.Checked);
    VarChkProstDrug_08:= BoolConvertInt(ChkBoxDrug_08.Checked);
    VarChkProstDrug_09:= BoolConvertInt(ChkBoxDrug_09.Checked);
    VarChkProstDrug_10:= BoolConvertInt(ChkBoxDrug_10.Checked);
    VarChkProstDrug_11:= BoolConvertInt(ChkBoxDrug_11.Checked);
    VarChkProstDrug_12:= BoolConvertInt(ChkBoxDrug_12.Checked);
    VarChkProstDrug_13:= BoolConvertInt(ChkBoxDrug_13.Checked);
    VarChkProstDrug_14:= BoolConvertInt(ChkBoxDrug_14.Checked);
    VarChkProstDrug_15:= BoolConvertInt(ChkBoxDrug_15.Checked);
    VarChkProstDrug_16:= BoolConvertInt(ChkBoxDrug_16.Checked);
    VarChkProstDrug_17:= BoolConvertInt(ChkBoxDrug_17.Checked);

    VarStrProstPathogen1:= Trim(EdtPathogen1.Text);
    VarStrProstPathogen2:= Trim(EdtPathogen2.Text);
    VarStrProstExtra1:= Trim(EdtExtra1.Text);
    VarStrProstExtra2:= Trim(EdtExtra2.Text);

    VarNumEdtProstBact1:= NumEdtProst1.Value;
    VarNumEdtProstBact2:= NumEdtProst2.Value;


  finally
    TmpRE.Free;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.AppEventsFrmProstBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmProstBactInoc.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//���������� ����� �������� � ����������� �� ������������ �����������
function TFrmProstBactInoc.CheckActiveRdBtn(ChkRdBtn1, ChkRdBtn2,
  ChkRdBtn3: TRadioButton): Integer;
begin
if ChkRdBtn1.Checked
  then Result:= 1
  else
    begin
      if ChkRdBtn2.Checked
        then Result:= 2
        else
          begin
            if ChkRdBtn3.Checked
              then Result:= 3
              else Result:= 0;
          end;
    end;
end;

//----------------------------------------------------------------------------
//�������� ���������� � ����������� �� ���������
procedure TFrmProstBactInoc.CheckItRdBtn(const AInt: Integer; ChkRdBtn1,
  ChkRdBtn2, ChkRdBtn3: TRadioButton);
begin
  case AInt of
    1: begin
         ChkRdBtn1.Checked:= True;
         ChkRdBtn2.Checked:= False;
         ChkRdBtn3.Checked:= False;
       end;
    2: begin
         ChkRdBtn1.Checked:= False;
         ChkRdBtn2.Checked:= True;
         ChkRdBtn3.Checked:= False;
       end;
    3: begin
         ChkRdBtn1.Checked:= False;
         ChkRdBtn2.Checked:= False;
         ChkRdBtn3.Checked:= True;
       end;
  else
    begin;
      ChkRdBtn1.Checked:= False;
      ChkRdBtn2.Checked:= False;
      ChkRdBtn3.Checked:= False;
    end;
  end;
end;

//----------------------------------------------------------------------------
//������� ���������, ������� �� ������� � ����� �� ������������ �� ��������������� ������
function TFrmProstBactInoc.CheckItRdBtn_and_ChkBox(ChkRdBtn1, ChkRdBtn2,
  ChkRdBtn3: TRadioButton; ChkBox: TCheckBox): Integer;
begin
Result:= 0;
if ChkBox.Checked and (ChkRdBtn1.Checked or ChkRdBtn2.Checked or ChkRdBtn2.Checked) then Result:= 1;
end;

//----------------------------------------------------------------------------
//��������� � ����������� ����� � ���-�����, ���
//CurStart - ������ ���������
//SelEnd - ����� ���������
//Index - �������� ������, �������� �� ��������� ���������
//TxtStr - ����������� ������
procedure TFrmProstBactInoc.FmtTxtInTmpRichEdit(ARichEdit: TRichEdit;
  const CurStart, SelEnd, Index: Integer; TxtStr: String);
begin
with ARichEdit do
      begin
        PlainText:= False;
        Lines.Add(TxtStr + ';');//��������� ������
        SelStart:= CurStart;
        SelLength:= SelEnd;
        with SelAttributes do //������ ���������� ������
          begin
            case Index of
              1: Color:= clWindowText;
              2: Color:= clMaroon;
              3: begin
                  Color:= clRed;
                  Style:= [fsBold];
                 end;
            end;{case}
          end;{with SelAttributes do}
        SelStart:= Length(Text);//������ � ����� ������
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
      end;{with TRichEdit(Sender) do}
end;

//----------------------------------------------------------------------------
//���������� ��������� �������� ���������� ����������� (Result), ���
//L - ����� ������
//Index - �������� ����� ���������� �����������
function TFrmProstBactInoc.GetSusceptStr(out L, Index: Integer; ChkRdBtn1,
  ChkRdBtn2, ChkRdBtn3: TRadioButton): String;
begin
if ChkRdBtn1.Checked
  then
    begin
      Result:= '����������';
      Index:= 0;
    end
  else
    begin
      if ChkRdBtn2.Checked
        then
          begin
            Result:= '�������� ����������';
            Index:= 2;
          end
        else
          begin
            Result:= '��������������';
            Index:= 3;
          end;
    end;
  L:= Length(Result);
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//��������� ��������� ��� ���� ���������� � ���������� �� ����������� ��������������
procedure TFrmProstBactInoc.TestingAllChecks(Sender: TObject);
begin
//�������� ����������
ChkBoxDrug_01.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_02.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_03.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_04.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_05.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_06.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_07.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_08.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_09.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_10.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_11.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_12.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_13.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_14.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_15.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_16.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_17.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
EdtExtra1.Enabled:= ((ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked) and ChkBoxDrug_16.Checked);
EdtExtra2.Enabled:= ((ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked) and ChkBoxDrug_17.Checked);

//�������� ������������
EdtPathogen1.Enabled:= ChkBoxPathogen1.Checked;
Label2.Enabled:= ChkBoxPathogen1.Checked;
NumEdtProst1.Enabled:= ChkBoxPathogen1.Checked;
Label25.Enabled:= ChkBoxPathogen1.Checked;

EdtPathogen2.Enabled:= ChkBoxPathogen2.Checked;
Label3.Enabled:= ChkBoxPathogen2.Checked;
NumEdtProst2.Enabled:= ChkBoxPathogen2.Checked;
Label4.Enabled:= ChkBoxPathogen2.Checked;

//������ � ����������� �����
Label18.Enabled:= ChkBoxPathogen1.Checked;
Label19.Enabled:= ChkBoxPathogen1.Checked;
Label20.Enabled:= ChkBoxPathogen1.Checked;

RdBtn_R1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtProst1.Value > 3));

RdBtn_R1_17.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_17.Checked and (NumEdtProst1.Value > 3));
RdBtn_I1_17.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_17.Checked and (NumEdtProst1.Value > 3));
RdBtn_S1_17.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_17.Checked and (NumEdtProst1.Value > 3));

//������ � ����������� ������
Label21.Enabled:= ChkBoxPathogen2.Checked;
Label22.Enabled:= ChkBoxPathogen2.Checked;
Label23.Enabled:= ChkBoxPathogen2.Checked;

RdBtn_R2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtProst2.Value > 3));

RdBtn_R2_17.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_17.Checked and (NumEdtProst2.Value > 3));
RdBtn_I2_17.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_17.Checked and (NumEdtProst2.Value > 3));
RdBtn_S2_17.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_17.Checked and (NumEdtProst2.Value > 3));
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxPathogen1Click(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxPathogen2Click(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_01Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_01.Checked then
  begin
    RdBtn_R1_01.Checked:= False;
    RdBtn_I1_01.Checked:= False;
    RdBtn_S1_01.Checked:= False;

    RdBtn_R2_01.Checked:= False;
    RdBtn_I2_01.Checked:= False;
    RdBtn_S2_01.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_02Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_02.Checked then
  begin
    RdBtn_R1_02.Checked:= False;
    RdBtn_I1_02.Checked:= False;
    RdBtn_S1_02.Checked:= False;

    RdBtn_R2_02.Checked:= False;
    RdBtn_I2_02.Checked:= False;
    RdBtn_S2_02.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_03Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_03.Checked then
  begin
    RdBtn_R1_03.Checked:= False;
    RdBtn_I1_03.Checked:= False;
    RdBtn_S1_03.Checked:= False;

    RdBtn_R2_03.Checked:= False;
    RdBtn_I2_03.Checked:= False;
    RdBtn_S2_03.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_04Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_04.Checked then
  begin
    RdBtn_R1_04.Checked:= False;
    RdBtn_I1_04.Checked:= False;
    RdBtn_S1_04.Checked:= False;

    RdBtn_R2_04.Checked:= False;
    RdBtn_I2_04.Checked:= False;
    RdBtn_S2_04.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_05Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_05.Checked then
  begin
    RdBtn_R1_05.Checked:= False;
    RdBtn_I1_05.Checked:= False;
    RdBtn_S1_05.Checked:= False;

    RdBtn_R2_05.Checked:= False;
    RdBtn_I2_05.Checked:= False;
    RdBtn_S2_05.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_06Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_06.Checked then
  begin
    RdBtn_R1_06.Checked:= False;
    RdBtn_I1_06.Checked:= False;
    RdBtn_S1_06.Checked:= False;

    RdBtn_R2_06.Checked:= False;
    RdBtn_I2_06.Checked:= False;
    RdBtn_S2_06.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_07Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_07.Checked then
  begin
    RdBtn_R1_07.Checked:= False;
    RdBtn_I1_07.Checked:= False;
    RdBtn_S1_07.Checked:= False;

    RdBtn_R2_07.Checked:= False;
    RdBtn_I2_07.Checked:= False;
    RdBtn_S2_07.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_08Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_08.Checked then
  begin
    RdBtn_R1_08.Checked:= False;
    RdBtn_I1_08.Checked:= False;
    RdBtn_S1_08.Checked:= False;

    RdBtn_R2_08.Checked:= False;
    RdBtn_I2_08.Checked:= False;
    RdBtn_S2_08.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_09Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_09.Checked then
  begin
    RdBtn_R1_09.Checked:= False;
    RdBtn_I1_09.Checked:= False;
    RdBtn_S1_09.Checked:= False;

    RdBtn_R2_09.Checked:= False;
    RdBtn_I2_09.Checked:= False;
    RdBtn_S2_09.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_10Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_10.Checked then
  begin
    RdBtn_R1_10.Checked:= False;
    RdBtn_I1_10.Checked:= False;
    RdBtn_S1_10.Checked:= False;

    RdBtn_R2_10.Checked:= False;
    RdBtn_I2_10.Checked:= False;
    RdBtn_S2_10.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_11Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_11.Checked then
  begin
    RdBtn_R1_11.Checked:= False;
    RdBtn_I1_11.Checked:= False;
    RdBtn_S1_11.Checked:= False;

    RdBtn_R2_11.Checked:= False;
    RdBtn_I2_11.Checked:= False;
    RdBtn_S2_11.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_12Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_12.Checked then
  begin
    RdBtn_R1_12.Checked:= False;
    RdBtn_I1_12.Checked:= False;
    RdBtn_S1_12.Checked:= False;

    RdBtn_R2_12.Checked:= False;
    RdBtn_I2_12.Checked:= False;
    RdBtn_S2_12.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_13Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_13.Checked then
  begin
    RdBtn_R1_13.Checked:= False;
    RdBtn_I1_13.Checked:= False;
    RdBtn_S1_13.Checked:= False;

    RdBtn_R2_13.Checked:= False;
    RdBtn_I2_13.Checked:= False;
    RdBtn_S2_13.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_14Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_14.Checked then
  begin
    RdBtn_R1_14.Checked:= False;
    RdBtn_I1_14.Checked:= False;
    RdBtn_S1_14.Checked:= False;

    RdBtn_R2_14.Checked:= False;
    RdBtn_I2_14.Checked:= False;
    RdBtn_S2_14.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_15Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_15.Checked then
  begin
    RdBtn_R1_15.Checked:= False;
    RdBtn_I1_15.Checked:= False;
    RdBtn_S1_15.Checked:= False;

    RdBtn_R2_15.Checked:= False;
    RdBtn_I2_15.Checked:= False;
    RdBtn_S2_15.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_16Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_16.Checked then
  begin
    RdBtn_R1_16.Checked:= False;
    RdBtn_I1_16.Checked:= False;
    RdBtn_S1_16.Checked:= False;

    RdBtn_R2_16.Checked:= False;
    RdBtn_I2_16.Checked:= False;
    RdBtn_S2_16.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.ChkBoxDrug_17Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_17.Checked then
  begin
    RdBtn_R1_17.Checked:= False;
    RdBtn_I1_17.Checked:= False;
    RdBtn_S1_17.Checked:= False;

    RdBtn_R2_17.Checked:= False;
    RdBtn_I2_17.Checked:= False;
    RdBtn_S2_17.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.NumEdtProst1Change(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmProstBactInoc.NumEdtProst2Change(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

end.
