unit StProstataUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmStProstataTemplate = class(TForm)
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtProstataSize1: TEdit;
    EdtProstataSize2: TEdit;
    CbBoxDensity: TComboBox;
    CbBoxProstataSulcus: TComboBox;
    CbBoxProstataVesic: TComboBox;
    CbBoxProstataCoopery: TComboBox;
    CbBoxProstataSize: TComboBox;
    CbBoxProstataDolor: TComboBox;
    CbBoxProstataPath: TComboBox;
    CbBoxProstataSurface: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Label5: TLabel;
    Label6: TLabel;
    CbBoxProstataMucosa: TComboBox;
    Label7: TLabel;
    CbBoxProstataAnalSphincter: TComboBox;
    NiceSetFrmStProstataTemplate: TNiceSettings;
    AppEventsStProstata: TApplicationEvents;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure EdtProstataSize1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtProstataSize2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsStProstataShortCut(var Msg: TWMKey; var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmStProstataTemplate: TFrmStProstataTemplate;

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, StrUtils;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.AppEventsStProstataShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� �� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0)then BtnCancelClick(Self);
  end;
AppEventsStProstata.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//��������� � ��������� �����
procedure TFrmStProstataTemplate.BtnSaveClick(Sender: TObject);
var CapLength: Integer;
    TmpTxt, ReadyTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TmpTxt:= '';
ReadyTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmStProstataTemplate;
        PlainText:= False;
        Visible:= False;
      end;

    //���������, ��������� �� �����
    if (Trim(EdtProstataSize1.Text) = '') or (Trim(EdtProstataSize2.Text) = '') then
      begin
        Beep;
        Application.MessageBox('�� �� ������� ������ ��������!', '������������ ������!',
                                                             MB_OK + MB_ICONINFORMATION);
        if Trim(EdtProstataSize1.Text) = ''
          then
            begin
              if EdtProstataSize1.CanFocus then EdtProstataSize1.SetFocus;
            end
          else
           if EdtProstataSize2.CanFocus then EdtProstataSize2.SetFocus;
        Exit;
      end;

    //�������� �����
    ReadyTxt:= 'Prostata per rectum (' + FormatDateTime('DD.MM.YY', DateStatusPat) + '):';
    CapLength:= Length(ReadyTxt);

    //���� ��� �������, �� ������� �� � �����
    if StrPos(PChar(Trim(EdtProstataSize1.Text)),',') = nil
      then EdtProstataSize1.Text:= Trim(EdtProstataSize1.Text) + ',0'
      else //���� ������� ����, �� ��� �����, �� ������� ����
        if RightStr(Trim(EdtProstataSize1.Text), 1) = ','
          then EdtProstataSize1.Text:= Trim(EdtProstataSize1.Text) + '0' ;

    if StrPos(PChar(Trim(EdtProstataSize2.Text)),',') = nil
      then EdtProstataSize2.Text:= Trim(EdtProstataSize2.Text) + ',0'
      else //���� ������� ����, �� ��� �����, �� ������� ����
        if RightStr(Trim(EdtProstataSize2.Text), 1) = ','
          then EdtProstataSize2.Text:= Trim(EdtProstataSize2.Text) + '0';



    ReadyTxt:= ReadyTxt + ' ������� ' + Trim(EdtProstataSize1.Text) + ' x ' +
                                                    Trim(EdtProstataSize2.Text) + ' ��;';

    case CbBoxDensity.ItemIndex of
      0 : TmpTxt:= '����������';
      1 : TmpTxt:= '���������� ������������';
      2 : TmpTxt:= '���������';
      3 : TmpTxt:= '������������ ������������';
      4 : TmpTxt:= '�����-������������ ������������';
      5 : TmpTxt:= '����-������������ ������������';
      6 : TmpTxt:= '��������� ���������';
      7 : TmpTxt:= '���������� ���������';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ' + TmpTxt + ',';

    case CbBoxProstataSize.ItemIndex of
      0 : TmpTxt:= '�� ���������';
      1 : TmpTxt:= '���������';
      2 : TmpTxt:= '����� ���� ��������� ������������ ������ ����';
      3 : TmpTxt:= '������ ���� ��������� ������������ ����� ����';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ' + TmpTxt + ',';

    case CbBoxProstataDolor.ItemIndex of
      0 : TmpTxt:= '�������������� ��� ���������,';
      1 : TmpTxt:= '�������� ����������� �����,';
      2 : TmpTxt:= '�������� ����������� ������,';
      3 : TmpTxt:= '�������� ����������� � ����� ������,';
      4 : TmpTxt:= '�������� ����������� � ����� ������, ������ �����;';
      5 : TmpTxt:= '�������� ����������� � ����� ������, ������ ������;';
      6 : TmpTxt:= '��������� ����������� �� ��������� �������;';
      7 : TmpTxt:= '�������� ����������� �� ��������� �������;';
      8 : TmpTxt:= '�������� ����������� �� ��������� �������;';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ������ ' + TmpTxt + ' ������� ';

    if CbBoxProstataPath.ItemIndex <> 4
      then
        ReadyTxt:= ReadyTxt + CbBoxProstataPath.Items[CbBoxProstataPath.ItemIndex] + ','
      else
        ReadyTxt:= ReadyTxt + '�������,';

        ReadyTxt:= ReadyTxt + ' ����������� ' +
               CbBoxProstataSurface.Items[CbBoxProstataSurface.ItemIndex] +
               ', ���������� ������� ' +
               CbBoxProstataSulcus.Items[CbBoxProstataSulcus.ItemIndex] + ',';

    case CbBoxProstataMucosa.ItemIndex of
      0 : TmpTxt:= '���������';
      1 : TmpTxt:= '���� ��������� ��-�� ����� � ����������� �������';
      2 : TmpTxt:= '������ ������ � ����������� �������';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ��������� ����� ��� ��� ' + TmpTxt + '.';

    case CbBoxProstataVesic.ItemIndex of
      0 : TmpTxt:= '�������������� � ����� ������';
      1 : TmpTxt:= '����������� �����';
      2 : TmpTxt:= '����������� ������';
      3 : TmpTxt:= '����������� � ����� ������';
      4 : TmpTxt:= '����������� � ����� ������, ������ �����';
      5 : TmpTxt:= '����������� � ����� ������, ������ ������';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ��������� �������� ��������� ' + TmpTxt + '.';

    case CbBoxProstataCoopery.ItemIndex of
      0 : TmpTxt:= '�������������� � ����� ������';
      1 : TmpTxt:= '����������� �����';
      2 : TmpTxt:= '����������� ������';
      3 : TmpTxt:= '����������� � ����� ������';
      4 : TmpTxt:= '����������� � ����� ������, ������ �����';
      5 : TmpTxt:= '����������� � ����� ������, ������ ������';
    end;{case}

    ReadyTxt:= ReadyTxt + ' �������� ������ ����������� ' + TmpTxt + '.';

    case CbBoxProstataAnalSphincter.ItemIndex of
      0 : TmpTxt:= '����������';
      1 : TmpTxt:= '�����������';
      2 : TmpTxt:= '�����������';
    end;{case}

    ReadyTxt:= ReadyTxt + ' �������� �������� � ' + TmpTxt + '.';

    //��������� ���������� ����� � "�����������" ���-����
    with TmpRE do
      begin
      PlainText:= False;
      Lines.Add(ReadyTxt);//������� �����
      SelStart:= 0;//������ � ������
      SelLength:= CapLength;
      SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
      SelStart:= Length(Text);
      SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
      end;{with TmpRE do}

    //����������� ������ "���������������" �����
    ReadyTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextStProstata;//������������� ��������� ��� ���������

    //����������� ��������� ����� �������
    if Trim(TmpRE.Text) = ''//���� ���-���� ������
      then TextStProstata:= ReadyTxt //����� �������� ��������� ����������
      else//���� ���-���� ���-�� ��������
        if TextStProstata <> ReadyTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� �������� ����������� ������������'
              + ' �������������� ������ ������ ����� �������� �� ����� �������������� '
              + '�����. ��������� ������?',
                '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextStProstata:= ReadyTxt;//��������, ���� ����� "��"

  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.EdtProstataSize1KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> ',') and(Key <> #8)
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� � �������!',
      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.EdtProstataSize2KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> ',') and(Key <> #8)
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� � �������!',
      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.FormCreate(Sender: TObject);
begin
NiceSetFrmStProstataTemplate.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmStProstataTemplate.LoadSettings;
FocusFlag:= True;

Self.Caption:= 'Per rectum (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmStProstataTemplate.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
