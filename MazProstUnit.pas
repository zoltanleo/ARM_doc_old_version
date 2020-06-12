unit MazProstUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmMazProst = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    DTPickMazProst: TDateTimePicker;
    EdtLeu: TEdit;
    CbBoxLZ: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel11: TPanel;
    Label9: TLabel;
    EdtEr: TEdit;
    Label11: TLabel;
    Label10: TLabel;
    CbBoxGn: TComboBox;
    Label12: TLabel;
    CbBoxTr: TComboBox;
    Label5: TLabel;
    CbBoxBekht: TComboBox;
    Label6: TLabel;
    CbBoxFlora: TComboBox;
    CbBoxSperm: TComboBox;
    NiceSetFrmMazProst: TNiceSettings;
    Label8: TLabel;
    EdtEpit: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdtMFag: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    EdtAmil: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edt_pH: TEdit;
    Label19: TLabel;
    Panel2: TPanel;
    Label20: TLabel;
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
    AppEventsFrmMazPr: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
    
  end;

var
  FrmMazProst: TFrmMazProst;

implementation

uses StatusPatUnit, VarAndrUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMazProst.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//������ � ����� ���������
    FullTxt, TmpTxt: String;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmMazProst;
        PlainText:= False;
        Visible:= False;
      end;

    //����� ���������
    FullTxt:= '����� ��� (' + FormatDateTime('DD.MM.YY', DTPickMazProst.Date) + '): ';
    EndCurPos:= Length(Trim(FullTxt));

    if Trim(EdtLeu.Text) <> '' then
      FullTxt:= FullTxt + 'Leu = ' + WriteSymbolToEndString(EdtLeu.Text,'') + ' � �/��; ';

    if Trim(EdtEr.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + 'Er = ' + WriteSymbolToEndString(EdtEr.Text,'') + ' � �/��; ';

    if Trim(EdtEpit.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + '����. ' + WriteSymbolToEndString(EdtEpit.Text,'') + ' � �/��; ';

    FullTxt:= FullTxt + '�����.����� ' + Trim(CbBoxLZ.Text) + '; ';

    if Trim(EdtMFag.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + '��������� ' + WriteSymbolToEndString(EdtMFag.Text,'') + ' � �/��; ';

    FullTxt:= FullTxt + '��������� ������� ' + TmpTxt + Trim(CbBoxBekht.Text) + '; ';

    if Trim(EdtAmil.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + '����.�����. ' + WriteSymbolToEndString(EdtAmil.Text,'') + ' � �/��; ';

    case CbBoxTr.ItemIndex of
    0: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    1: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    2: TmpTxt:= '���������� ������������ ������';
    3: TmpTxt:= '���������� �������������� ������';
    4: TmpTxt:= '���������� �������������� ���������� �����';
    5: TmpTxt:= '���������� ����������� �����';
    end;{case..of}

    FullTxt:= FullTxt + 'Tr - ' + TmpTxt + '; ';

    case CbBoxGn.ItemIndex of
    0: TmpTxt:= Trim(CbBoxGn.Items[CbBoxGn.ItemIndex]);
    1: TmpTxt:= '���������� ��������������';
    2: TmpTxt:= '���������� �����������';
    3: TmpTxt:= '���������� ������ - � �����������';
    end;{case..of}

    FullTxt:= FullTxt + 'Gn - ' + TmpTxt + '; ';
    FullTxt:= FullTxt + '����� - ' + Trim(CbBoxFlora.Text) + '; ';

    if Trim(Edt_pH.Text) <> '' then
      FullTxt:= FullTxt + 'pH = ' + Trim(Edt_pH.Text) + '; ';

    if CbBoxSperm.ItemIndex > 0
      then FullTxt:= FullTxt + 'sperm ' + Trim(CbBoxSperm.Text) + '; ';

    FullTxt:= WriteSymbolToEndString(Trim(FullTxt),'.');

    //��������� ����� � ���-����
    TmpRE.Lines.Add(FullTxt);

    //����������� ���������
    with TmpRE do
      begin
        SelStart:= 0;
        SelLength:= EndCurPos;
        SelAttributes.Style:= [fsUnderline];
        SelStart:= EndCurPos;
        SelAttributes.Assign(DefAttributes);
      end;

    //��������� � ���������� ��� "���������������" �����
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextMazProst;//������������� ��������� ��� ���������

    //����������� ��������� ����� ����� �� ������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextMazProst:= FullTxt ////����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextMazProst <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ����� ���� ��������' +
            ' ������ ����� �������� �� ����� �������������� �����. ���������' +
            ' ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMazProst:= FullTxt;//��������, ���� ����� "��"

    //��������� ����������
    VarMazProstDate:= DTPickMazProst.Date;
    VarMazProstLeu:= Trim(EdtLeu.Text);
    VarMazProstEr:= Trim(EdtEr.Text);
    VarMazProstGn:= CbBoxGn.ItemIndex;
    VarMazProstTr:= CbBoxTr.ItemIndex;
    VarMazProstFlora:= CbBoxFlora.ItemIndex;
    VarMazProstLZ:= CbBoxLZ.ItemIndex;
    VarMazProstBekht:= CbBoxBekht.ItemIndex;
    VarMazProstSperm:= CbBoxSperm.ItemIndex;
    VarMazProstEpit:= Trim(EdtEpit.Text);
    VarMazProstMFag:= Trim(EdtMFag.Text);
    VarMazProstAmil:= Trim(EdtAmil.Text);
    VarMazProst_pH:= Trim(Edt_pH.Text);
  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.AppEventsFrmMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmMazPr.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormShow(Sender: TObject);
begin
//������������ �������� ���������� � ����������

DTPickMazProst.DateTime:= VarMazProstDate;
EdtLeu.Text:= Trim(VarMazProstLeu);
EdtEr.Text:= Trim(VarMazProstEr);
CbBoxGn.ItemIndex:= VarMazProstGn;
CbBoxTr.ItemIndex:= VarMazProstTr;
CbBoxFlora.ItemIndex:= VarMazProstFlora;
CbBoxLZ.ItemIndex:= VarMazProstLZ;
CbBoxBekht.ItemIndex:= VarMazProstBekht;
CbBoxSperm.ItemIndex:= VarMazProstSperm;
EdtEpit.Text:= Trim(VarMazProstEpit);
EdtMFag.Text:= Trim(VarMazProstMFag);
EdtAmil.Text:= Trim(VarMazProstAmil);
Edt_pH.Text:= Trim(VarMazProst_pH);
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormCreate(Sender: TObject);
begin
NiceSetFrmMazProst.RegKey:= NiceSetRegKeyPath;
//��������� ��������� �����
NiceSetFrmMazProst.LoadSettings;
Self.Caption:= '����� ��� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmMazProst.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
