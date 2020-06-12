unit IFAUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmIFA = class(TForm)
    GroupBox1: TGroupBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Label1: TLabel;
    ChBoxChlIgA: TCheckBox;
    ChBoxChlIgG: TCheckBox;
    ChBoxChlIgGbelok: TCheckBox;
    Label2: TLabel;
    ChBoxMicIgG: TCheckBox;
    ChBoxMicIgA: TCheckBox;
    Label3: TLabel;
    ChBoxUrIgG: TCheckBox;
    ChBoxUrIgA: TCheckBox;
    Label4: TLabel;
    ChBoxTrIgG: TCheckBox;
    CbBoxChlIgA: TComboBox;
    CbBoxChlIgG: TComboBox;
    Label5: TLabel;
    CbBoxChlIgGbelok: TComboBox;
    CbBoxMicIgG: TComboBox;
    CbBoxMicIgA: TComboBox;
    CbBoxUrIgG: TComboBox;
    CbBoxUrIgA: TComboBox;
    CbBoxTrIgG: TComboBox;
    Lbl6: TLabel;
    Lbl7: TLabel;
    Lbl8: TLabel;
    Lbl9: TLabel;
    Lbl10: TLabel;
    Lbl11: TLabel;
    Lbl12: TLabel;
    Lbl13: TLabel;
    Label14: TLabel;
    ChBoxCMVIgM: TCheckBox;
    ChBoxCMVIgGtotal: TCheckBox;
    ChBoxCMVIgGAvid: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ChBoxHerpIgM: TCheckBox;
    ChBoxHerpIgGtotal: TCheckBox;
    ChBoxHerpIgGAvid: TCheckBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ChBoxCandIgG: TCheckBox;
    CbBoxCMVIgM: TComboBox;
    CbBoxCMVIgGtotal: TComboBox;
    CbBoxCMVIgGAvid: TComboBox;
    CbBoxHerpIgM: TComboBox;
    CbBoxHerpIgGtotal: TComboBox;
    CbBoxHerpIgGAvid: TComboBox;
    CbBoxCandIgG: TComboBox;
    Panel1: TPanel;
    Lbl21: TLabel;
    Lbl22: TLabel;
    Lbl23: TLabel;
    Lbl24: TLabel;
    Lbl25: TLabel;
    Lbl26: TLabel;
    Lbl27: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DTPickIFA: TDateTimePicker;
    Label13: TLabel;
    Panel11: TPanel;
    NiceSetFrmIFA: TNiceSettings;
    AppEventsFrmIFA: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure CbBoxChlIgAChange(Sender: TObject);
    procedure CbBoxChlIgGChange(Sender: TObject);
    procedure CbBoxChlIgGbelokChange(Sender: TObject);
    procedure CbBoxMicIgGChange(Sender: TObject);
    procedure CbBoxMicIgAChange(Sender: TObject);
    procedure CbBoxUrIgGChange(Sender: TObject);
    procedure CbBoxUrIgAChange(Sender: TObject);
    procedure CbBoxTrIgGChange(Sender: TObject);
    procedure CbBoxCMVIgMChange(Sender: TObject);
    procedure CbBoxCMVIgGtotalChange(Sender: TObject);
    procedure CbBoxCMVIgGAvidChange(Sender: TObject);
    procedure CbBoxHerpIgMChange(Sender: TObject);
    procedure CbBoxHerpIgGtotalChange(Sender: TObject);
    procedure CbBoxHerpIgGAvidChange(Sender: TObject);
    procedure CbBoxCandIgGChange(Sender: TObject);
    procedure ChBoxChlIgAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChBoxChlIgGClick(Sender: TObject);
    procedure ChBoxChlIgGbelokClick(Sender: TObject);
    procedure RepaintLblChlam(Sender: TObject);
    procedure RepaintLblMicoPl(Sender: TObject);
    procedure RepaintLblUreaPl(Sender: TObject);
    procedure RepaintLblTr(Sender: TObject);
    procedure RepaintLblCMV(Sender: TObject);
    procedure RepaintLblHerp(Sender: TObject);
    procedure RepaintLblCand(Sender: TObject);
    procedure ChBoxMicIgGClick(Sender: TObject);
    procedure ChBoxMicIgAClick(Sender: TObject);
    procedure ChBoxUrIgGClick(Sender: TObject);
    procedure ChBoxUrIgAClick(Sender: TObject);
    procedure ChBoxTrIgGClick(Sender: TObject);
    procedure ChBoxCMVIgMClick(Sender: TObject);
    procedure ChBoxCMVIgGtotalClick(Sender: TObject);
    procedure ChBoxCMVIgGAvidClick(Sender: TObject);
    procedure ChBoxHerpIgMClick(Sender: TObject);
    procedure ChBoxHerpIgGtotalClick(Sender: TObject);
    procedure ChBoxHerpIgGAvidClick(Sender: TObject);
    procedure ChBoxCandIgGClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmIFAShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  public
    { Public declarations }
  end;

var
  FrmIFA: TFrmIFA;

implementation

uses VarAndrUnit, MainAndrUnit, StatusPatUnit, DMFIBUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmIFA.FormShow(Sender: TObject);
begin
//������������ �������� ���������� � �����������
DTPickIFA.DateTime:= VarIFADate;

ChBoxChlIgA.Checked:= IntConvertBool(VarIFAChlIgA);
ChBoxChlIgG.Checked:= IntConvertBool(VarIFAChlIgG);
ChBoxChlIgGbelok.Checked:= IntConvertBool(VarIFAChlIgGb);

ChBoxMicIgG.Checked:= IntConvertBool(VarIFAMicIgG);
ChBoxMicIgA.Checked:= IntConvertBool(VarIFAMicIgA);

ChBoxUrIgG.Checked:= IntConvertBool(VarIFAUrIgG);
ChBoxUrIgA.Checked:= IntConvertBool(VarIFAUrIgA);

ChBoxTrIgG.Checked:= IntConvertBool(VarIFATrIgG);

ChBoxCMVIgM.Checked:= IntConvertBool(VarIFACMVIgM);
ChBoxCMVIgGtotal.Checked:= IntConvertBool(VarIFACMVIgG);
ChBoxCMVIgGAvid.Checked:= IntConvertBool(VarIFACMVIgGavid);

ChBoxHerpIgM.Checked:= IntConvertBool(VarIFAHerpIgM);
ChBoxHerpIgGtotal.Checked:= IntConvertBool(VarIFAHerpIgG);
ChBoxHerpIgGAvid.Checked:= IntConvertBool(VarIFAHerpIgGavid);

ChBoxCandIgG.Checked:= IntConvertBool(VarIFACandIgG);

//������ ItemIndex ��������������� �����������

CbBoxChlIgA.ItemIndex:= VarNumIFAChlIgA;
CbBoxChlIgG.ItemIndex:= VarNumIFAChlIgG;
CbBoxChlIgGbelok.ItemIndex:= VarNumIFAChlIgGb;

CbBoxMicIgG.ItemIndex:= VarNumIFAMicIgG;
CbBoxMicIgA.ItemIndex:= VarNumIFAMicIgA;

CbBoxUrIgG.ItemIndex:= VarNumIFAUrIgG;
CbBoxUrIgA.ItemIndex:= VarNumIFAUrIgA;

CbBoxTrIgG.ItemIndex:= VarNumIFATrIgG;

CbBoxCMVIgM.ItemIndex:= VarNumIFACMVIgM;
CbBoxCMVIgGtotal.ItemIndex:= VarNumIFACMVIgG;
CbBoxCMVIgGAvid.ItemIndex:= VarNumIFACMVIgGavid;

CbBoxHerpIgM.ItemIndex:= VarNumIFAHerpIgM;
CbBoxHerpIgGtotal.ItemIndex:= VarNumIFAHerpIgG;
CbBoxHerpIgGAvid.ItemIndex:= VarNumIFAHerpIgGavid;

CbBoxCandIgG.ItemIndex:= VarNumIFACandIgG;

//��������� �������� � ���������� ����������
ChBoxChlIgAClick(Sender);
ChBoxChlIgGClick(Sender);
ChBoxChlIgGbelokClick(Sender);

ChBoxMicIgGClick(Sender);
ChBoxMicIgAClick(Sender);

ChBoxUrIgGClick(Sender);
ChBoxUrIgAClick(Sender);

ChBoxTrIgGClick(Sender);

ChBoxCMVIgMClick(Sender);
ChBoxCMVIgGtotalClick(Sender);
ChBoxCMVIgGAvidClick(Sender);

ChBoxHerpIgMClick(Sender);
ChBoxHerpIgGtotalClick(Sender);
ChBoxHerpIgGAvidClick(Sender);

ChBoxCandIgGClick(Sender);

end;

//----------------------------------------------------------------------------

procedure TFrmIFA.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.BtnSaveClick(Sender: TObject);
var Index, //������������� ���������� ��� ����������� ����
    BegCurPos, EndCurPos: Integer;//������ � ����� ���������
    FullTxt,TmpTxt: AnsiString;
    TmpRE: TRichEdit;//����������� RichEdit
begin
FullTxt:= '';
TmpTxt:= '';
BegCurPos:= 0;
Index:= 0;

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmIFA;
        PlainText:= False;
        Visible:= False;
      end;

    //����� ���������
    FullTxt:= '���-����������� (' + FormatDateTime('DD.MM.YY', DTPickIFA.Date) + '):';
    TmpRE.Lines.Add(FullTxt);
    EndCurPos:= Length(FullTxt);
    TmpRE.Lines.Add('');

    //���� ����������� ������������ �� ��������
    if ChBoxChlIgA.Checked or ChBoxChlIgG.Checked or ChBoxChlIgGbelok.Checked then
      begin
      //��������� ������������ ���������
      AddFormatStrInRichEdit(TmpRE,'�������� (Chl.trachomatis)');

      if ChBoxChlIgA.Checked then
        begin
          case CbBoxChlIgA.ItemIndex of
            0: begin
                TmpTxt:= '<1:5 (�����.);';
                BegCurPos:= 9;
               end;
            1: begin
                TmpTxt:= ' 1:5 (������.);';
                BegCurPos:= 10;
               end;
            2: begin
                TmpTxt:= ' 1:10 (����� �����.);';
                BegCurPos:= 15;
               end;
            3: begin
                TmpTxt:= '>1:20 (�����.);';
                BegCurPos:= 9;
               end;
          end;{case..of}

          FullTxt:= 'Ig A: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,CbBoxChlIgA.ItemIndex,FullTxt);
        end;{if..then}

      if ChBoxChlIgG.Checked then
        begin
          case CbBoxChlIgG.ItemIndex of
            0: begin
                TmpTxt:= '<1:5 (�����.);';
                BegCurPos:= 9;
               end;
            1: begin
                TmpTxt:= ' 1:5 (������.);';
                BegCurPos:= 10;
               end;
            2: begin
                TmpTxt:= ' 1:10 (����� �����.);';
                BegCurPos:= 15;
               end;
            3: begin
                TmpTxt:= '>1:20 (�����.);';
                BegCurPos:= 9;
               end;
          end;{case..of}

          FullTxt:= 'Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,CbBoxChlIgG.ItemIndex,FullTxt);
        end;{if..then}

      if ChBoxChlIgGbelok.Checked then
        begin
          if CbBoxChlIgGbelok.ItemIndex = 1
            then
              begin
                TmpTxt:= '�� �� ����������;';
                Index:= 0;
              end
            else
              begin
                TmpTxt:= '�� ����������;';
                Index:= 3;
              end;

          BegCurPos:= Length(TmpTxt);
          FullTxt:= '(����� ����.����) Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

        TmpRE.Lines.Add('');
      end;{if..then checked ��������}

    //���� ����������� ������������ �� ����������
    if ChBoxMicIgG.Checked or ChBoxMicIgA.Checked then
      begin
      //��������� ������������ ���������
      AddFormatStrInRichEdit(TmpRE,'���������� (M.hominis)');

      if ChBoxMicIgG.Checked then
        begin
          case CbBoxMicIgG.ItemIndex of
            0: begin
                TmpTxt:= '<1:5 (�����.);';
                BegCurPos:= 9;
               end;
            1: begin
                TmpTxt:= ' 1:5 (������.);';
                BegCurPos:= 10;
               end;
            2: begin
                TmpTxt:= ' 1:10 (����� �����.);';
                BegCurPos:= 15;
               end;
            3: begin
                TmpTxt:= '>1:20 (�����.);';
                BegCurPos:= 9;
               end;
          end;{case..of}

          FullTxt:= 'Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,CbBoxMicIgG.ItemIndex,FullTxt);
        end;{if..then}

      if ChBoxMicIgA.Checked then
        begin
          if CbBoxMicIgA.ItemIndex = 1
            then
              begin
                TmpTxt:= '�� �� ����������;';
                Index:= 0;
              end
            else
              begin
                TmpTxt:= '�� ����������;';
                Index:= 3;
              end;

          FullTxt:= 'Ig A: ' + TmpTxt;
          BegCurPos:= Length(TmpTxt);
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}
        TmpRE.Lines.Add('');
      end;{if..then checked ���������}

    //���� ����������� ������������ �� ����������
    if ChBoxUrIgG.Checked or ChBoxUrIgA.Checked then
      begin
      //��������� ������������ ���������
      AddFormatStrInRichEdit(TmpRE,'���������� (Ur.urealyticum)');

      if ChBoxUrIgG.Checked then
        begin
          case CbBoxUrIgG.ItemIndex of
            0: begin
                TmpTxt:= '<1:5 (�����.);';
                BegCurPos:= 9;
               end;
            1: begin
                TmpTxt:= ' 1:5 (������.);';
                BegCurPos:= 10;
               end;
            2: begin
                TmpTxt:= ' 1:10 (����� �����.);';
                BegCurPos:= 15;
               end;
            3: begin
                TmpTxt:= '>1:20 (�����.);';
                BegCurPos:= 9;
               end;
          end;{case..of}

          FullTxt:= 'Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,CbBoxUrIgG.ItemIndex,FullTxt);

        end;{if..then}

      if ChBoxUrIgA.Checked then
        begin
          if CbBoxUrIgA.ItemIndex = 1
            then
              begin
                TmpTxt:= '�� �� ����������;';
                Index:= 0;
              end
            else
              begin
                TmpTxt:= '�� ����������;';
                Index:= 3;
              end;

          FullTxt:= 'Ig A: ' + TmpTxt;
          BegCurPos:= Length(TmpTxt);
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

      TmpRE.Lines.Add('');
      end;{if..then checked ����������}

    //���� ����������� ������������ �� �����������
    if ChBoxTrIgG.Checked then
      begin
      //��������� ������������ ���������
      AddFormatStrInRichEdit(TmpRE,'����������� (Tr.vaginalis)');

      if ChBoxTrIgG.Checked then
        begin
          case CbBoxTrIgG.ItemIndex of
            0: begin
                TmpTxt:= '<1:5 (�����.);';
                BegCurPos:= 9;
               end;
            1: begin
                TmpTxt:= ' 1:5 (������.);';
                BegCurPos:= 10;
               end;
            2: begin
                TmpTxt:= ' 1:10 (����� �����.);';
                BegCurPos:= 15;
               end;
            3: begin
                TmpTxt:= ' 1:20 (�����.);';
                BegCurPos:= 9;
               end;
            4: begin
                TmpTxt:= '>1:40 (������ �����.);';
                BegCurPos:= 16;
               end;
          end;{case..of}

          FullTxt:= 'Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,CbBoxTrIgG.ItemIndex,FullTxt);
        end;{if..then}
      TmpRE.Lines.Add('');
      end;{if..then checked ����������}


    //���� ����������� ������������ �� ���(���������������)
    if ChBoxCMVIgM.Checked or ChBoxCMVIgGtotal.Checked or ChBoxCMVIgGAvid.Checked then
      begin
      AddFormatStrInRichEdit(TmpRE,'��������������� (Citomegalovirus)');

      if ChBoxCMVIgM.Checked then
        begin
          if CbBoxCMVIgM.ItemIndex = 1
            then
              begin
               TmpTxt:= '�� �� ����������;';
               Index:= 0;
              end
            else
              begin
               TmpTxt:= '�� ����������;';
               Index:= 3;
              end;

          FullTxt:= 'Ig M: ' + TmpTxt;
          BegCurPos:= Length(TmpTxt);
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);

        end;{if..then}

      if ChBoxCMVIgGtotal.Checked then
        begin
          case CbBoxCMVIgGtotal.ItemIndex of
            0: begin
                TmpTxt:= '<0,5 (�����.);';
                BegCurPos:= 9;
                Index:= 0;
               end;
            1: begin
                TmpTxt:= ' 0,5-0,7 (������.);';
                BegCurPos:= 10;
                Index:= 1;
               end;
            2: begin
                TmpTxt:= '>0,7 (�����.);';
                BegCurPos:= 9;
                Index:= 3;
               end;
          end;{case..of}

          FullTxt:= '�����.(��/��) Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

      if ChBoxCMVIgGAvid.Checked then
        begin
          case CbBoxCMVIgGAvid.ItemIndex of
            0: begin
                TmpTxt:= '<40% (����.��������);';
                BegCurPos:= 16;
                Index:= 2;
               end;
            1: begin
                TmpTxt:= ' 40-60% ("�����" ����);';
                BegCurPos:= 15;
                Index:= 1;
               end;
            2: begin
                TmpTxt:= '>60% (������������);';
                BegCurPos:= 15;
                Index:= 3;
               end;
          end;{case..of}

          FullTxt:='(������ ���������) Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

        TmpRE.Lines.Add('');
      end;{if..then checked ����������������}

    //���� ����������� ������������ �� ����� �������
    if ChBoxHerpIgM.Checked or ChBoxHerpIgGtotal.Checked or ChBoxHerpIgGAvid.Checked then
      begin
      AddFormatStrInRichEdit(TmpRE,'������ 1,2 ��� (HSV 1,2)');

      if ChBoxHerpIgM.Checked then
        begin
          if CbBoxHerpIgM.ItemIndex = 1
            then
              begin
               TmpTxt:= '�� �� ����������;';
               Index:= 0;
              end
            else
              begin
               TmpTxt:= '�� ����������;';
               Index:= 3;
              end;

          FullTxt:= 'Ig M: ' + TmpTxt;
          BegCurPos:= Length(TmpTxt);
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);

        end;{if..then}

      if ChBoxHerpIgGtotal.Checked then
        begin
          case CbBoxHerpIgGtotal.ItemIndex of
            0: begin
                TmpTxt:= '<1:20 (�����.);';
                BegCurPos:= 9;
                Index:= 0;
               end;
            1: begin
                TmpTxt:= '>1:20 (�����.);';
                BegCurPos:= 9;
                Index:= 3;
               end;
          end;{case..of}

          FullTxt:= '�����.(���� �������) Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

      if ChBoxHerpIgGAvid.Checked then
        begin
          case CbBoxHerpIgGAvid.ItemIndex of
            0: begin
                TmpTxt:= '<50% (����.��������);';
                BegCurPos:= 16;
                Index:= 2;
               end;
            1: begin
                TmpTxt:= '>50% (������������);';
                BegCurPos:= 15;
                Index:= 3;
               end;
          end;{case..of}

          FullTxt:= '(������ ���������) Ig G: ' + TmpTxt;
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
        end;{if..then}

      TmpRE.Lines.Add('');
      end;{if..then checked ������ �������}

    //���� ����������� ������������ �� ��������
    if ChBoxCandIgG.Checked then
      begin
        AddFormatStrInRichEdit(TmpRE,'������� (Candida albicans)');

        if CbBoxCandIgG.ItemIndex = 1
            then
              begin
               TmpTxt:= '�� �� ����������;';
               Index:= 0;
              end
            else
              begin
               TmpTxt:= '�� ����������;';
               Index:= 3;
              end;

          FullTxt:= 'Ig G: ' + TmpTxt;
          BegCurPos:= Length(TmpTxt);
          FormatTextInTempRichEdit(TmpRE,BegCurPos,Index,FullTxt);
      end;{if..then}

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


    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextIFA;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������� ���
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextIFA:= FullTxt //����� �������� ��� ����� ���������� TextIFA
      else//���� ���-�� ��������
        if TextIFA <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ������������ �����' +
                 ' ������� ��� ������ ����� �������� �� ����� �������������� �����. ' +
                                              '��������� ������?', '��������� ������',
                                               MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextIFA:= FullTxt;//��������, ���� ����� "��"

  //��������� ����������
    VarIFADate:= DTPickIFA.Date;
    //---������
    VarIFAChlIgA:= BoolConvertInt(ChBoxChlIgA.Checked);
    VarIFAChlIgG:= BoolConvertInt(ChBoxChlIgG.Checked);
    VarIFAChlIgGb:= BoolConvertInt(ChBoxChlIgGbelok.Checked);
    VarIFAMicIgG:= BoolConvertInt(ChBoxMicIgG.Checked);
    VarIFAMicIgA:= BoolConvertInt(ChBoxMicIgA.Checked);
    VarIFAUrIgG:= BoolConvertInt(ChBoxUrIgG.Checked);
    VarIFAUrIgA:= BoolConvertInt(ChBoxUrIgA.Checked);
    VarIFATrIgG:= BoolConvertInt(ChBoxTrIgG.Checked);
    VarIFACMVIgM:= BoolConvertInt(ChBoxCMVIgM.Checked);
    VarIFACMVIgG:= BoolConvertInt(ChBoxCMVIgGtotal.Checked);
    VarIFACMVIgGavid:= BoolConvertInt(ChBoxCMVIgGAvid.Checked);
    VarIFAHerpIgM:= BoolConvertInt(ChBoxHerpIgM.Checked);
    VarIFAHerpIgG:= BoolConvertInt(ChBoxHerpIgGtotal.Checked);
    VarIFAHerpIgGavid:= BoolConvertInt(ChBoxHerpIgGAvid.Checked);
    VarIFACandIgG:= BoolConvertInt(ChBoxCandIgG.Checked);

    //---������ ItemIndex ��������������� �����������
    VarNumIFAChlIgA:= CbBoxChlIgA.ItemIndex;
    VarNumIFAChlIgG:= CbBoxChlIgG.ItemIndex;
    VarNumIFAChlIgGb:= CbBoxChlIgGbelok.ItemIndex;
    VarNumIFAMicIgG:= CbBoxMicIgG.ItemIndex;
    VarNumIFAMicIgA:= CbBoxMicIgA.ItemIndex;
    VarNumIFAUrIgG:= CbBoxUrIgG.ItemIndex;
    VarNumIFAUrIgA:= CbBoxUrIgA.ItemIndex;
    VarNumIFATrIgG:= CbBoxTrIgG.ItemIndex;
    VarNumIFACMVIgM:= CbBoxCMVIgM.ItemIndex;
    VarNumIFACMVIgG:= CbBoxCMVIgGtotal.ItemIndex;
    VarNumIFACMVIgGavid:= CbBoxCMVIgGAvid.ItemIndex;
    VarNumIFAHerpIgM:= CbBoxHerpIgM.ItemIndex;
    VarNumIFAHerpIgG:= CbBoxHerpIgGtotal.ItemIndex;
    VarNumIFAHerpIgGavid:= CbBoxHerpIgGAvid.ItemIndex;
    VarNumIFACandIgG:= CbBoxCandIgG.ItemIndex;

  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.AppEventsFrmIFAShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmIFA.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxChlIgAChange(Sender: TObject);
begin
with Lbl6 do
  begin
    case CbBoxChlIgA.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '����� �������������';
        Font.Color:= clMaroon;
       end;
    3: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxChlIgGChange(Sender: TObject);
begin
with Lbl7 do
  begin
    case CbBoxChlIgG.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '����� �������������';
        Font.Color:= clMaroon;
       end;
    3: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxChlIgGbelokChange(Sender: TObject);
begin
with Lbl8 do
  begin
    if CbBoxChlIgGbelok.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxMicIgGChange(Sender: TObject);
begin
with Lbl9 do
  begin
    case CbBoxMicIgG.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '����� �������������';
        Font.Color:= clMaroon;
       end;
    3: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxMicIgAChange(Sender: TObject);
begin
with Lbl10 do
  begin
    if CbBoxMicIgA.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxUrIgGChange(Sender: TObject);
begin
with Lbl11 do
  begin
    case CbBoxUrIgG.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '����� �������������';
        Font.Color:= clMaroon;
       end;
    3: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxUrIgAChange(Sender: TObject);
begin
with Lbl12 do
  begin
    if CbBoxUrIgA.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxTrIgGChange(Sender: TObject);
begin
with Lbl13 do
  begin
    Font.Style:= [];
    case CbBoxTrIgG.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '����� �������������';
        Font.Color:= clMaroon;
       end;
    3: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    4: begin
        Caption:= '������ �������.';
        Font.Color:= clRed;
        Font.Style:= [fsBold];
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxCMVIgMChange(Sender: TObject);
begin
with Lbl21 do
  begin
    if CbBoxCMVIgM.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxCMVIgGtotalChange(Sender: TObject);
begin
with Lbl22 do
  begin
    case CbBoxCMVIgGtotal.ItemIndex of
    0: begin
        Caption:= '�������������';
        Font.Color:= clNavy;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '�������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxCMVIgGAvidChange(Sender: TObject);
begin
with Lbl23 do
  begin
    case CbBoxCMVIgGAvid.ItemIndex of
    0: begin
        Caption:= '������.��������';
        Font.Color:= clMaroon;
       end;
    1: begin
        Caption:= '"�����" ����';
        Font.Color:= clTeal;
       end;
    2: begin
        Caption:= '������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxHerpIgMChange(Sender: TObject);
begin
with Lbl24 do
  begin
    if CbBoxHerpIgM.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxHerpIgGtotalChange(Sender: TObject);
begin
with Lbl25 do
  begin
    if CbBoxHerpIgGtotal.ItemIndex = 0
      then
        begin
          Caption:= '�������������';
          Font.Color:= clNavy;
        end
      else
        begin
          Caption:= '�������������';
          Font.Color:= clRed;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxHerpIgGAvidChange(Sender: TObject);
begin
with Lbl26 do
  begin
    case CbBoxHerpIgGAvid.ItemIndex of
    0: begin
        Caption:= '������.��������';
        Font.Color:= clMaroon;
       end;
    1: begin
        Caption:= '������������';
        Font.Color:= clRed;
       end;
    end;{case}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.CbBoxCandIgGChange(Sender: TObject);
begin
with Lbl27 do
  begin
    if CbBoxCandIgG.ItemIndex = 0
      then
        begin
          Caption:= '�� ����������';
          Font.Color:= clRed;
        end
      else
        begin
          Caption:= '�� �� ����������';
          Font.Color:= clNavy;
        end;{if..then}
  end;{with}
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxChlIgAClick(Sender: TObject);
begin
Lbl6.Visible:= ChBoxChlIgA.Checked;
CbBoxChlIgA.Enabled:= ChBoxChlIgA.Checked;
CbBoxChlIgAChange(Sender);
RepaintLblChlam(Sender);

if ChBoxChlIgA.Checked then
  if CbBoxChlIgA.CanFocus then CbBoxChlIgA.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxChlIgGClick(Sender: TObject);
begin
Lbl7.Visible:= ChBoxChlIgG.Checked;
CbBoxChlIgG.Enabled:= ChBoxChlIgG.Checked;
CbBoxChlIgGChange(Sender);
RepaintLblChlam(Sender);

if ChBoxChlIgG.Checked then
  if CbBoxChlIgG.CanFocus then CbBoxChlIgG.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxChlIgGbelokClick(Sender: TObject);
begin
Lbl8.Visible:= ChBoxChlIgGbelok.Checked;
CbBoxChlIgGbelok.Enabled:= ChBoxChlIgGbelok.Checked;
CbBoxChlIgGbelokChange(Sender);
RepaintLblChlam(Sender);

if ChBoxChlIgGbelok.Checked then
  if CbBoxChlIgGbelok.CanFocus then CbBoxChlIgGbelok.SetFocus;
end;

//----------------------------------------------------------------------------
//�������������� ������� "��������"
procedure TFrmIFA.RepaintLblChlam(Sender: TObject);
begin
Label6.Font.Color:= clPurple;
if ChBoxChlIgA.Checked or ChBoxChlIgG.Checked or ChBoxChlIgGbelok.Checked
  then
    begin
      Label1.Font.Color:= clPurple;
      Label6.Visible:= True;
    end
  else
    begin
      Label1.Font.Color:= clGray;
      Label6.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxMicIgGClick(Sender: TObject);
begin
Lbl9.Visible:= ChBoxMicIgG.Checked;
CbBoxMicIgG.Enabled:= ChBoxMicIgG.Checked;
CbBoxMicIgGChange(Sender);
RepaintLblMicoPl(Sender);

if ChBoxMicIgG.Checked then
  if CbBoxMicIgG.CanFocus then CbBoxMicIgG.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxMicIgAClick(Sender: TObject);
begin
Lbl10.Visible:= ChBoxMicIgA.Checked;
CbBoxMicIgA.Enabled:= ChBoxMicIgA.Checked;
CbBoxMicIgAChange(Sender);
RepaintLblMicoPl(Sender);

if ChBoxMicIgA.Checked then
  if CbBoxMicIgA.CanFocus then CbBoxMicIgA.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "����������"
procedure TFrmIFA.RepaintLblMicoPl(Sender: TObject);
begin
Label7.Font.Color:= clPurple;
if ChBoxMicIgA.Checked or ChBoxMicIgG.Checked
  then
    begin
      Label2.Font.Color:= clPurple;
      Label7.Visible:= True;
    end
  else
    begin
      Label2.Font.Color:= clGray;
      Label7.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxUrIgGClick(Sender: TObject);
begin
Lbl11.Visible:= ChBoxUrIgG.Checked;
CbBoxUrIgG.Enabled:= ChBoxUrIgG.Checked;
CbBoxUrIgGChange(Sender);
RepaintLblUreaPl(Sender);

if ChBoxUrIgG.Checked then
  if CbBoxUrIgG.CanFocus then CbBoxUrIgG.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxUrIgAClick(Sender: TObject);
begin
Lbl12.Visible:= ChBoxUrIgA.Checked;
CbBoxUrIgA.Enabled:= ChBoxUrIgA.Checked;
CbBoxUrIgAChange(Sender);
RepaintLblUreaPl(Sender);

if ChBoxUrIgA.Checked then
  if CbBoxUrIgA.CanFocus then CbBoxUrIgA.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "����������"
procedure TFrmIFA.RepaintLblUreaPl(Sender: TObject);
begin
Label8.Font.Color:= clPurple;
if ChBoxUrIgG.Checked or ChBoxUrIgA.Checked
  then
    begin
      Label3.Font.Color:= clPurple;
      Label8.Visible:= True;
    end
  else
    begin
      Label3.Font.Color:= clGray;
      Label8.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxTrIgGClick(Sender: TObject);
begin
Lbl13.Visible:= ChBoxTrIgG.Checked;
CbBoxTrIgG.Enabled:= ChBoxTrIgG.Checked;
CbBoxTrIgGChange(Sender);
RepaintLblTr(Sender);

if ChBoxTrIgG.Checked then
  if CbBoxTrIgG.CanFocus then CbBoxTrIgG.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "����������"
procedure TFrmIFA.RepaintLblTr(Sender: TObject);
begin
Label9.Font.Color:= clPurple;
if ChBoxTrIgG.Checked
  then
    begin
      Label4.Font.Color:= clPurple;
      Label9.Visible:= True;
    end
  else
    begin
      Label4.Font.Color:= clGray;
      Label9.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxCMVIgMClick(Sender: TObject);
begin
Lbl21.Visible:= ChBoxCMVIgM.Checked;
CbBoxCMVIgM.Enabled:= ChBoxCMVIgM.Checked;
CbBoxCMVIgMChange(Sender);
RepaintLblCMV(Sender);

if ChBoxCMVIgM.Checked then
  if CbBoxCMVIgM.CanFocus then CbBoxCMVIgM.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxCMVIgGtotalClick(Sender: TObject);
begin
Lbl22.Visible:= ChBoxCMVIgGtotal.Checked;
CbBoxCMVIgGtotal.Enabled:= ChBoxCMVIgGtotal.Checked;
CbBoxCMVIgGtotalChange(Sender);
RepaintLblCMV(Sender);

if ChBoxCMVIgGtotal.Checked then
  if CbBoxCMVIgGtotal.CanFocus then CbBoxCMVIgGtotal.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxCMVIgGAvidClick(Sender: TObject);
begin
Lbl23.Visible:= ChBoxCMVIgGAvid.Checked;
CbBoxCMVIgGAvid.Enabled:= ChBoxCMVIgGAvid.Checked;
CbBoxCMVIgGAvidChange(Sender);
RepaintLblCMV(Sender);

if ChBoxCMVIgGAvid.Checked then
  if CbBoxCMVIgGAvid.CanFocus then CbBoxCMVIgGAvid.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "���������������"
procedure TFrmIFA.RepaintLblCMV(Sender: TObject);
begin
Label10.Font.Color:= clPurple;
if ChBoxCMVIgM.Checked or ChBoxCMVIgGtotal.Checked or ChBoxCMVIgGAvid.Checked
  then
    begin
      Label14.Font.Color:= clPurple;
      Label10.Visible:= True;
    end
  else
    begin
      Label14.Font.Color:= clGray;
      Label10.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxHerpIgMClick(Sender: TObject);
begin
Lbl24.Visible:= ChBoxHerpIgM.Checked;
CbBoxHerpIgM.Enabled:= ChBoxHerpIgM.Checked;
CbBoxHerpIgMChange(Sender);
RepaintLblHerp(Sender);

if ChBoxHerpIgM.Checked then
  if CbBoxHerpIgM.CanFocus then CbBoxHerpIgM.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxHerpIgGtotalClick(Sender: TObject);
begin
Lbl25.Visible:= ChBoxHerpIgGtotal.Checked;
CbBoxHerpIgGtotal.Enabled:= ChBoxHerpIgGtotal.Checked;
CbBoxHerpIgGtotalChange(Sender);
RepaintLblHerp(Sender);

if ChBoxHerpIgGtotal.Checked then
  if CbBoxHerpIgGtotal.CanFocus then CbBoxHerpIgGtotal.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxHerpIgGAvidClick(Sender: TObject);
begin
Lbl26.Visible:= ChBoxHerpIgGAvid.Checked;
CbBoxHerpIgGAvid.Enabled:= ChBoxHerpIgGAvid.Checked;
CbBoxHerpIgGAvidChange(Sender);
RepaintLblHerp(Sender);

if ChBoxHerpIgGAvid.Checked then
  if CbBoxHerpIgGAvid.CanFocus then CbBoxHerpIgGAvid.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "����� �������"
procedure TFrmIFA.RepaintLblHerp(Sender: TObject);
begin
Label11.Font.Color:= clPurple;
if ChBoxHerpIgM.Checked or ChBoxHerpIgGtotal.Checked or ChBoxHerpIgGAvid.Checked
  then
    begin
      Label17.Font.Color:= clPurple;
      Label11.Visible:= True;
    end
  else
    begin
      Label17.Font.Color:= clGray;
      Label11.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.ChBoxCandIgGClick(Sender: TObject);
begin
Lbl27.Visible:= ChBoxCandIgG.Checked;
CbBoxCandIgG.Enabled:= ChBoxCandIgG.Checked;
CbBoxCandIgGChange(Sender);
RepaintLblCand(Sender);

if ChBoxCandIgG.Checked then
  if CbBoxCandIgG.CanFocus then CbBoxCandIgG.SetFocus;
end;

//----------------------------------------------------------------------------
// �������������� ������� "�������"
procedure TFrmIFA.RepaintLblCand(Sender: TObject);
begin
Label12.Font.Color:= clPurple;
if ChBoxCandIgG.Checked
  then
    begin
      Label20.Font.Color:= clPurple;
      Label12.Visible:= True;
    end
  else
    begin
      Label20.Font.Color:= clGray;
      Label12.Visible:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.FormCreate(Sender: TObject);
begin
NiceSetFrmIFA.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmIFA.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '������������ ����� ������� ��� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '������������ ����� ������� ��� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmIFA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmIFA.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
