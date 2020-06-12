unit MazUrethraUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmMazUrethra = class(TForm)
    NiceSetFrmMazUrethra: TNiceSettings;
    PnlBtnBar: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel2: TPanel;
    GrBoxMain: TGroupBox;
    PnlDateTool: TPanel;
    label1: TLabel;
    DTPickMazUr: TDateTimePicker;
    Panel11: TPanel;
    PnlFigGeneral: TPanel;
    Label2: TLabel;
    EdtLeu: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    EdtEr: TEdit;
    Label11: TLabel;
    Label4: TLabel;
    CbBoxGn: TComboBox;
    Label5: TLabel;
    CbBoxTr: TComboBox;
    Label6: TLabel;
    CbBoxFlora: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    CbBoxKeyCell: TComboBox;
    Label10: TLabel;
    CbBoxCand: TComboBox;
    PnlFigWoman: TPanel;
    CbBoxCvxFlora: TComboBox;
    EdtEpit: TEdit;
    Label12: TLabel;
    EdtMucos: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdtCvxLeu: TEdit;
    EdtCvxEr: TEdit;
    EdtCvxEpit: TEdit;
    CbBoxCvxGn: TComboBox;
    EdtCvxMucos: TEdit;
    CbBoxCvxTr: TComboBox;
    CbBoxCvxKeyCell: TComboBox;
    CbBoxCvxCand: TComboBox;
    EdtVgnLeu: TEdit;
    EdtVgnEr: TEdit;
    EdtVgnEpit: TEdit;
    CbBoxVgnFlora: TComboBox;
    EdtVgnMucos: TEdit;
    CbBoxVgnGn: TComboBox;
    CbBoxVgnTr: TComboBox;
    CbBoxVgnKeyCell: TComboBox;
    CbBoxVgnCand: TComboBox;
    EdtRectLeu: TEdit;
    EdtRectEr: TEdit;
    EdtRectEpit: TEdit;
    CbBoxRectFlora: TComboBox;
    EdtRectMucos: TEdit;
    CbBoxRectGn: TComboBox;
    CbBoxRectTr: TComboBox;
    CbBoxRectKeyCell: TComboBox;
    CbBoxRectCand: TComboBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    AppEventsFrmMazUr: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AppEventsFrmMazUrShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmMazUrethra: TFrmMazUrethra;

implementation

uses StatusPatUnit, VarAndrUnit, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//������ � ����� ���������
    IntTxt: array [0..3] of AnsiString;
    FullTxt, TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmMazUrethra;
        PlainText:= False;
        Visible:= False;
      end;

    //����� ���������
    IntTxt[0]:= '����� �� ������ (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
    EndCurPos:= Length(Trim(IntTxt[0]));

    if Trim(EdtLeu.Text) <> '' then
      IntTxt[0]:= IntTxt[0] + 'Leu = ' + WriteSymbolToEndString(EdtLeu.Text,'') + ' � �/��; ';

    if Trim(EdtEr.Text) <> '' then
        IntTxt[0]:= IntTxt[0] + 'Er = ' + WriteSymbolToEndString(EdtEr.Text,'') + ' � �/��; ';

    if Trim(EdtEpit.Text) <> '' then
        IntTxt[0]:= IntTxt[0] + '����. ' + WriteSymbolToEndString(EdtEpit.Text,'') + ' � �/��; ';

    IntTxt[0]:= IntTxt[0] + '����� - ' + Trim(CbBoxFlora.Text) + '; ';

    if Trim(EdtMucos.Text) <> '' then
        IntTxt[0]:= IntTxt[0] + '����� ' + WriteSymbolToEndString(EdtMucos.Text,'') + ' � �/��; ';

    case CbBoxGn.ItemIndex of
    0: TmpTxt:= Trim(CbBoxGn.Text);
    1: TmpTxt:= '���������� ��������������';
    2: TmpTxt:= '���������� �����������';
    3: TmpTxt:= '���������� ������ - � �����������';
    end;{case..of}

    IntTxt[0]:= IntTxt[0] + 'Gn - ' + TmpTxt + '; ';

    case CbBoxTr.ItemIndex of
    0: TmpTxt:= Trim(CbBoxTr.Text);
    1: TmpTxt:= Trim(CbBoxTr.Text);
    2: TmpTxt:= '���������� ������������ ������';
    3: TmpTxt:= '���������� �������������� ������';
    4: TmpTxt:= '���������� �������������� ���������� �����';
    5: TmpTxt:= '���������� ����������� �����';
    end;{case..of}


    IntTxt[0]:= IntTxt[0] + 'Tr - ' + TmpTxt + '; ';

    if CbBoxKeyCell.ItemIndex = 0
      then IntTxt[0]:= IntTxt[0] + '"��������" ������ - �� �����; '
      else IntTxt[0]:= IntTxt[0] + '"��������" ������ - �����; ';


    if CbBoxCand.ItemIndex <> 0
      then IntTxt[0]:= IntTxt[0] + 'candida ' + Trim(CbBoxCand.Text)+ '.';

    IntTxt[0]:= WriteSymbolToEndString(Trim(IntTxt[0]),'.');

    //��������� ����� � ���-����
    TmpRE.Lines.Add(IntTxt[0]);

    //����������� ���������
    with TmpRE do
      begin
        SelStart:= 0;
        SelLength:= EndCurPos;
        SelAttributes.Style:= [fsUnderline];
        SelStart:= EndCurPos;
        SelAttributes.Assign(DefAttributes);
      end;

    //���� ��� �������, �� ������� ����� �������� ������������
    if DMFIB.DSetAnketa.FN('SEX').AsInteger <> 1 then
      begin

        //----- ����� �� ������������� ������ -------
        TmpRE.Lines.Add('');
        IntTxt[1]:= '����� �� ����.������ (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
        EndCurPos:= Length(Trim(IntTxt[1]));

        if Trim(EdtCvxLeu.Text) <> '' then
          IntTxt[1]:= IntTxt[1] + 'Leu = ' + WriteSymbolToEndString(EdtCvxLeu.Text,'') + ' � �/��; ';

        if Trim(EdtCvxEr.Text) <> '' then
            IntTxt[1]:= IntTxt[1] + 'Er = ' + WriteSymbolToEndString(EdtCvxEr.Text,'') + ' � �/��; ';

        if Trim(EdtCvxEpit.Text) <> '' then
            IntTxt[1]:= IntTxt[1] + '����. ' + WriteSymbolToEndString(EdtCvxEpit.Text,'') + ' � �/��; ';

        IntTxt[1]:= IntTxt[1] + '����� - ' + Trim(CbBoxCvxFlora.Text) + '; ';

        if Trim(EdtCvxMucos.Text) <> '' then
            IntTxt[1]:= IntTxt[1] + '����� ' + WriteSymbolToEndString(EdtCvxMucos.Text,'') + ' � �/��; ';

        case CbBoxCvxGn.ItemIndex of
        0: TmpTxt:= Trim(CbBoxCvxGn.Text);
        1: TmpTxt:= '���������� ��������������';
        2: TmpTxt:= '���������� �����������';
        3: TmpTxt:= '���������� ������ - � �����������';
        end;{case..of}

        IntTxt[1]:= IntTxt[1] + 'Gn - ' + TmpTxt + '; ';

        case CbBoxCvxTr.ItemIndex of
        0: TmpTxt:= Trim(CbBoxCvxTr.Text);
        1: TmpTxt:= Trim(CbBoxCvxTr.Text);
        2: TmpTxt:= '���������� ������������ ������';
        3: TmpTxt:= '���������� �������������� ������';
        4: TmpTxt:= '���������� �������������� ���������� �����';
        5: TmpTxt:= '���������� ����������� �����';
        end;{case..of}


        IntTxt[1]:= IntTxt[1] + 'Tr - ' + TmpTxt + '; ';

        if CbBoxCvxKeyCell.ItemIndex = 0
          then IntTxt[1]:= IntTxt[1] + '"��������" ������ - �� �����; '
          else IntTxt[1]:= IntTxt[1] + '"��������" ������ - �����; ';


        if CbBoxCvxCand.ItemIndex <> 0
          then IntTxt[1]:= IntTxt[1] + 'candida ' + Trim(CbBoxCvxCand.Text)+ '.';

        IntTxt[1]:= WriteSymbolToEndString(Trim(IntTxt[1]),'.');

        //��������� ����� � ���-����
        TmpRE.Lines.Add(IntTxt[1]);

        //����������� ���������
        with TmpRE do
          begin
            SelStart:= Length(IntTxt[0] + #13#10 + #13#10);
            SelLength:= EndCurPos;
            SelAttributes.Style:= [fsUnderline];
            SelStart:= EndCurPos;
            SelAttributes.Assign(DefAttributes);
          end;

        //----- ����� �� ��������� -------
        TmpRE.Lines.Add('');
        IntTxt[2]:= '����� �� vagina (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
        EndCurPos:= Length(Trim(IntTxt[2]));

        if Trim(EdtVgnLeu.Text) <> '' then
          IntTxt[2]:= IntTxt[2] + 'Leu = ' + WriteSymbolToEndString(EdtVgnLeu.Text,'') + ' � �/��; ';

        if Trim(EdtVgnEr.Text) <> '' then
            IntTxt[2]:= IntTxt[2] + 'Er = ' + WriteSymbolToEndString(EdtVgnEr.Text,'') + ' � �/��; ';

        if Trim(EdtVgnEpit.Text) <> '' then
            IntTxt[2]:= IntTxt[2] + '����. ' + WriteSymbolToEndString(EdtVgnEpit.Text,'') + ' � �/��; ';

        IntTxt[2]:= IntTxt[2] + '����� - ' + Trim(CbBoxVgnFlora.Text) + '; ';

        if Trim(EdtVgnMucos.Text) <> '' then
            IntTxt[2]:= IntTxt[2] + '����� ' + WriteSymbolToEndString(EdtVgnMucos.Text,'') + ' � �/��; ';

        case CbBoxVgnGn.ItemIndex of
        0: TmpTxt:= Trim(CbBoxVgnGn.Text);
        1: TmpTxt:= '���������� ��������������';
        2: TmpTxt:= '���������� �����������';
        3: TmpTxt:= '���������� ������ - � �����������';
        end;{case..of}

        IntTxt[2]:= IntTxt[2] + 'Gn - ' + TmpTxt + '; ';

        case CbBoxVgnTr.ItemIndex of
        0: TmpTxt:= Trim(CbBoxVgnTr.Text);
        1: TmpTxt:= Trim(CbBoxVgnTr.Text);
        2: TmpTxt:= '���������� ������������ ������';
        3: TmpTxt:= '���������� �������������� ������';
        4: TmpTxt:= '���������� �������������� ���������� �����';
        5: TmpTxt:= '���������� ����������� �����';
        end;{case..of}


        IntTxt[2]:= IntTxt[2] + 'Tr - ' + TmpTxt + '; ';

        if CbBoxVgnKeyCell.ItemIndex = 0
          then IntTxt[2]:= IntTxt[2] + '"��������" ������ - �� �����; '
          else IntTxt[2]:= IntTxt[2] + '"��������" ������ - �����; ';


        if CbBoxVgnCand.ItemIndex <> 0
          then IntTxt[2]:= IntTxt[2] + 'candida ' + Trim(CbBoxVgnCand.Text)+ '.';

        IntTxt[2]:= WriteSymbolToEndString(Trim(IntTxt[2]),'.');

        //��������� ����� � ���-����
        TmpRE.Lines.Add(IntTxt[2]);

        //����������� ���������
        with TmpRE do
          begin
            SelStart:= Length(IntTxt[0] + #13#10 + #13#10) + Length(IntTxt[1] + #13#10 + #13#10);
            SelLength:= EndCurPos;
            SelAttributes.Style:= [fsUnderline];
            SelStart:= EndCurPos;
            SelAttributes.Assign(DefAttributes);
          end;

        //----- ����� �� ������ ����� -------
        TmpRE.Lines.Add('');
        IntTxt[3]:= '����� �� rectum (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
        EndCurPos:= Length(Trim(IntTxt[3]));

        if Trim(EdtRectLeu.Text) <> '' then
          IntTxt[3]:= IntTxt[3] + 'Leu = ' + WriteSymbolToEndString(EdtRectLeu.Text,'') + ' � �/��; ';

        if Trim(EdtRectEr.Text) <> '' then
            IntTxt[3]:= IntTxt[3] + 'Er = ' + WriteSymbolToEndString(EdtRectEr.Text,'') + ' � �/��; ';

        if Trim(EdtRectEpit.Text) <> '' then
            IntTxt[3]:= IntTxt[3] + '����. ' + WriteSymbolToEndString(EdtRectEpit.Text,'') + ' � �/��; ';

        IntTxt[3]:= IntTxt[3] + '����� - ' + Trim(CbBoxRectFlora.Text) + '; ';

        if Trim(EdtRectMucos.Text) <> '' then
            IntTxt[3]:= IntTxt[3] + '����� ' + WriteSymbolToEndString(EdtRectMucos.Text,'') + ' � �/��; ';

        case CbBoxRectGn.ItemIndex of
        0: TmpTxt:= Trim(CbBoxRectGn.Text);
        1: TmpTxt:= '���������� ��������������';
        2: TmpTxt:= '���������� �����������';
        3: TmpTxt:= '���������� ������ - � �����������';
        end;{case..of}

        IntTxt[3]:= IntTxt[3] + 'Gn - ' + TmpTxt + '; ';

        case CbBoxRectTr.ItemIndex of
        0: TmpTxt:= Trim(CbBoxRectTr.Text);
        1: TmpTxt:= Trim(CbBoxRectTr.Text);
        2: TmpTxt:= '���������� ������������ ������';
        3: TmpTxt:= '���������� �������������� ������';
        4: TmpTxt:= '���������� �������������� ���������� �����';
        5: TmpTxt:= '���������� ����������� �����';
        end;{case..of}


        IntTxt[3]:= IntTxt[3] + 'Tr - ' + TmpTxt + '; ';

        if CbBoxRectKeyCell.ItemIndex = 0
          then IntTxt[3]:= IntTxt[3] + '"��������" ������ - �� �����; '
          else IntTxt[3]:= IntTxt[3] + '"��������" ������ - �����; ';


        if CbBoxRectCand.ItemIndex <> 0
          then IntTxt[3]:= IntTxt[3] + 'candida ' + Trim(CbBoxRectCand.Text)+ '.';

        IntTxt[3]:= WriteSymbolToEndString(Trim(IntTxt[3]),'.');

        //��������� ����� � ���-����
        TmpRE.Lines.Add(IntTxt[3]);

        //����������� ���������
        with TmpRE do
          begin
            SelStart:= Length(IntTxt[0] + #13#10 + #13#10) + Length(IntTxt[1] + #13#10 + #13#10)
                                                                          + Length(IntTxt[2] + #13#10 + #13#10);
            SelLength:= EndCurPos;
            SelAttributes.Style:= [fsUnderline];
            SelStart:= EndCurPos;
            SelAttributes.Assign(DefAttributes);
          end;

      end;{if DMFIB.DSetAnketa.FN('SEX').AsInteger <> 1 then}

    //��������� � ���������� ��� "���������������" �����
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextMazUr;//������������� ��������� ��� ���������

    //����������� ��������� ����� ����� �� ������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextMazUr:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextMazUr <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ����� �� ������' +
            ' ������ ����� �������� �� ����� �������������� �����. ���������' +
            ' ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMazUr:= FullTxt;//��������, ���� ����� "��"

    //��������� ����������

    //---- ������ -----
    VarMazUrethraDate:= DTPickMazUr.Date;
    VarMazUrLeu:= Trim(EdtLeu.Text);
    VarMazUrEr:= Trim(EdtEr.Text);
    VarMazUrGn:= CbBoxGn.ItemIndex;
    VarMazUrTr:= CbBoxTr.ItemIndex;
    VarMazUrFlora:= CbBoxFlora.ItemIndex;
    VarMazUrEpit:= Trim(EdtEpit.Text);
    VarMazUrKeyCell:= CbBoxKeyCell.ItemIndex;
    VarMazUrCand:= CbBoxCand.ItemIndex;
    VarMazUrMucos:= Trim(EdtMucos.Text);

    //---- ������������ ����� -----
    VarMazCvxLeu:= Trim(EdtCvxLeu.Text);
    VarMazCvxEr:= Trim(EdtCvxEr.Text);
    VarMazCvxGn:= CbBoxCvxGn.ItemIndex;
    VarMazCvxTr:= CbBoxCvxTr.ItemIndex;
    VarMazCvxFlora:= CbBoxCvxFlora.ItemIndex;
    VarMazCvxEpit:= Trim(EdtCvxEpit.Text);
    VarMazCvxKeyCell:= CbBoxCvxKeyCell.ItemIndex;
    VarMazCvxCand:= CbBoxCvxCand.ItemIndex;
    VarMazCvxMucos:= Trim(EdtCvxMucos.Text);

    //---- ��������� -----
    VarMazVgnLeu:= Trim(EdtVgnLeu.Text);
    VarMazVgnEr:= Trim(EdtVgnEr.Text);
    VarMazVgnGn:= CbBoxVgnGn.ItemIndex;
    VarMazVgnTr:= CbBoxVgnTr.ItemIndex;
    VarMazVgnFlora:= CbBoxVgnFlora.ItemIndex;
    VarMazVgnEpit:= Trim(EdtVgnEpit.Text);
    VarMazVgnKeyCell:= CbBoxVgnKeyCell.ItemIndex;
    VarMazVgnCand:= CbBoxVgnCand.ItemIndex;
    VarMazVgnMucos:= Trim(EdtVgnMucos.Text);

    //---- rectum -----
    VarMazRectLeu:= Trim(EdtRectLeu.Text);
    VarMazRectEr:= Trim(EdtRectEr.Text);
    VarMazRectGn:= CbBoxRectGn.ItemIndex;
    VarMazRectTr:= CbBoxRectTr.ItemIndex;
    VarMazRectFlora:= CbBoxRectFlora.ItemIndex;
    VarMazRectEpit:= Trim(EdtRectEpit.Text);
    VarMazRectKeyCell:= CbBoxRectKeyCell.ItemIndex;
    VarMazRectCand:= CbBoxRectCand.ItemIndex;
    VarMazRectMucos:= Trim(EdtRectMucos.Text);

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.AppEventsFrmMazUrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmMazUr.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.FormCreate(Sender: TObject);
begin
//������ ��������� �����
NiceSetFrmMazUrethra.RegKey:= NiceSetRegKeyPath;
//NiceSetFrmMazUrethra.LoadSettings;

//������ ��������� � ���������� ������ � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
    begin
      //������ ��������� ����� �� �������
      NiceSetFrmMazUrethra.LoadSettings;

      GrBoxMain.Caption:= '   ����� �� ������   ';
      PnlFigGeneral.Width:= 375;
      Self.ClientWidth:= PnlFigGeneral.Width + 18;
      Self.Caption:= '����� �� ������ (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end
  else //���� ��� �������
    begin
      PnlFigGeneral.Width:= 315;
      GrBoxMain.Caption:= '   ����� �� ������� �������   ';
      Self.ClientWidth:= PnlFigGeneral.Width + PnlFigWoman.Width + 18;
      //����� ���� ���������� ������
      Self.Position:= poDesktopCenter;
      Self.Caption:= '����� �� ��������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;



PnlFigWoman.Visible:= not(DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

//---- ������ ----

DTPickMazUr.DateTime:= VarMazUrethraDate;
EdtLeu.Text:= Trim(VarMazUrLeu);
EdtEr.Text:= Trim(VarMazUrEr);
CbBoxGn.ItemIndex:= VarMazUrGn;
CbBoxTr.ItemIndex:= VarMazUrTr;
CbBoxFlora.ItemIndex:= VarMazUrFlora;
EdtEpit.Text:= Trim(VarMazUrEpit);
CbBoxKeyCell.ItemIndex:= VarMazUrKeyCell;
CbBoxCand.ItemIndex:= VarMazUrCand;
EdtMucos.Text:= Trim(VarMazUrMucos);

//---- ������������ ����� ----

EdtCvxLeu.Text:= Trim(VarMazCvxLeu);
EdtCvxEr.Text:= Trim(VarMazCvxEr);
CbBoxCvxGn.ItemIndex:= VarMazCvxGn;
CbBoxCvxTr.ItemIndex:= VarMazcvxTr;
CbBoxCvxFlora.ItemIndex:= VarMazCvxFlora;
EdtCvxEpit.Text:= Trim(VarMazCvxEpit);
CbBoxCvxKeyCell.ItemIndex:= VarMazCvxKeyCell;
CbBoxCvxCand.ItemIndex:= VarMazCvxCand;
EdtCvxMucos.Text:= Trim(VarMazCvxMucos);

//---- ��������� ----

EdtVgnLeu.Text:= Trim(VarMazVgnLeu);
EdtVgnEr.Text:= Trim(VarMazVgnEr);
CbBoxVgnGn.ItemIndex:= VarMazVgnGn;
CbBoxVgnTr.ItemIndex:= VarMazVgnTr;
CbBoxVgnFlora.ItemIndex:= VarMazVgnFlora;
EdtVgnEpit.Text:= Trim(VarMazVgnEpit);
CbBoxVgnKeyCell.ItemIndex:= VarMazVgnKeyCell;
CbBoxVgnCand.ItemIndex:= VarMazVgnCand;
EdtVgnMucos.Text:= Trim(VarMazVgnMucos);

//---- rectum ----

EdtRectLeu.Text:= Trim(VarMazRectLeu);
EdtRectEr.Text:= Trim(VarMazRectEr);
CbBoxRectGn.ItemIndex:= VarMazRectGn;
CbBoxRectTr.ItemIndex:= VarMazRectTr;
CbBoxRectFlora.ItemIndex:= VarMazRectFlora;
EdtRectEpit.Text:= Trim(VarMazRectEpit);
CbBoxRectKeyCell.ItemIndex:= VarMazRectKeyCell;
CbBoxRectCand.ItemIndex:= VarMazRectCand;
EdtRectMucos.Text:= Trim(VarMazRectMucos);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//���� ��� �����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    //��������� ��������� �����
    NiceSetFrmMazUrethra.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.FormShow(Sender: TObject);
begin
  if DTPickMazUr.CanFocus then DTPickMazUr.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethra.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

end.
