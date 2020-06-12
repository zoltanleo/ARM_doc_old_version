unit UrScopiaDryUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, NiceSettings, AppEvnts;

type
  TFrmUrScopiaDry = class(TForm)
    Label13: TLabel;
    DTPickUrScopiaDry: TDateTimePicker;
    Panel11: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    CbBoxDryUrScOstium_01: TComboBox;
    CbBoxDryUrScOstium_02: TComboBox;
    CbBoxDryUrScOstium_03: TComboBox;
    GroupBox3: TGroupBox;
    CbBoxDryUrScFigure_01: TComboBox;
    CbBoxDryUrScFigure_02: TComboBox;
    CbBoxDryUrScFigure_03: TComboBox;
    GroupBox4: TGroupBox;
    CbBoxDryUrScTubus_01: TComboBox;
    CbBoxDryUrScTubus_02: TComboBox;
    CbBoxDryUrScTubus_03: TComboBox;
    CbBoxDryUrScTubus_04: TComboBox;
    CbBoxDryUrScTubus_05: TComboBox;
    GroupBox5: TGroupBox;
    CbBoxDryUrScPattern_01: TComboBox;
    CbBoxDryUrScPattern_02: TComboBox;
    CbBoxDryUrScPattern_03: TComboBox;
    GroupBox6: TGroupBox;
    CbBoxDryUrScGland_01: TComboBox;
    CbBoxDryUrScGland_02: TComboBox;
    CbBoxDryUrScGland_03: TComboBox;
    CbBoxDryUrScGland_04: TComboBox;
    CbBoxDryUrScGland_05: TComboBox;
    GroupBox7: TGroupBox;
    CbBoxDryUrScSurface_01: TComboBox;
    CbBoxDryUrScSurface_02: TComboBox;
    CbBoxDryUrScSurface_03: TComboBox;
    CbBoxDryUrScSurface_04: TComboBox;
    CbBoxDryUrScSurface_05: TComboBox;
    CbBoxDryUrScSurface_06: TComboBox;
    NiceSetFrmUrScopiaDry: TNiceSettings;
    AppEventsFrmUrScopiaDry: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure CbBoxDryUrScOstium_01Change(Sender: TObject);
    procedure CbBoxDryUrScTubus_03Change(Sender: TObject);
    procedure CbBoxDryUrScFigure_01Change(Sender: TObject);
    procedure CbBoxDryUrScFigure_02Change(Sender: TObject);
    procedure CbBoxDryUrScPattern_02Change(Sender: TObject);
    procedure CbBoxDryUrScSurface_03Change(Sender: TObject);
    procedure CbBoxDryUrScGland_01Change(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmUrScopiaDryShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmUrScopiaDry: TFrmUrScopiaDry;

implementation

uses StatusPatUnit, MainAndrUnit, VarAndrUnit, StrUtils;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.FormShow(Sender: TObject);
begin
//����������� ������ ��������� ��������
DTPickUrScopiaDry.DateTime:= VarUrScopiaDryDate;

CbBoxDryUrScOstium_01.ItemIndex:= VarUrScopiaDryOstium_01;
CbBoxDryUrScOstium_02.ItemIndex:= VarUrScopiaDryOstium_02;
CbBoxDryUrScOstium_03.ItemIndex:= VarUrScopiaDryOstium_03;

CbBoxDryUrScTubus_01.ItemIndex:= VarUrScopiaDryTubus_01;
CbBoxDryUrScTubus_02.ItemIndex:= VarUrScopiaDryTubus_02;
CbBoxDryUrScTubus_03.ItemIndex:= VarUrScopiaDryTubus_03;
CbBoxDryUrScTubus_04.ItemIndex:= VarUrScopiaDryTubus_04;
CbBoxDryUrScTubus_05.ItemIndex:= VarUrScopiaDryTubus_05;

CbBoxDryUrScGland_01.ItemIndex:= VarUrScopiaDryGland_01;
CbBoxDryUrScGland_02.ItemIndex:= VarUrScopiaDryGland_02;
CbBoxDryUrScGland_03.ItemIndex:= VarUrScopiaDryGland_03;
CbBoxDryUrScGland_04.ItemIndex:= VarUrScopiaDryGland_04;
CbBoxDryUrScGland_05.ItemIndex:= VarUrScopiaDryGland_05;

CbBoxDryUrScFigure_01.ItemIndex:= VarUrScopiaDryFigure_01;
CbBoxDryUrScFigure_02.ItemIndex:= VarUrScopiaDryFigure_02;
CbBoxDryUrScFigure_03.ItemIndex:= VarUrScopiaDryFigure_03;

CbBoxDryUrScPattern_01.ItemIndex:= VarUrScopiaDryPattern_01;
CbBoxDryUrScPattern_02.ItemIndex:= VarUrScopiaDryPattern_02;
CbBoxDryUrScPattern_03.ItemIndex:= VarUrScopiaDryPattern_03;

CbBoxDryUrScSurface_01.ItemIndex:= VarUrScopiaDrySurface_01;
CbBoxDryUrScSurface_02.ItemIndex:= VarUrScopiaDrySurface_02;
CbBoxDryUrScSurface_03.ItemIndex:= VarUrScopiaDrySurface_03;
CbBoxDryUrScSurface_04.ItemIndex:= VarUrScopiaDrySurface_04;
CbBoxDryUrScSurface_05.ItemIndex:= VarUrScopiaDrySurface_05;
CbBoxDryUrScSurface_06.ItemIndex:= VarUrScopiaDrySurface_06;

CbBoxDryUrScOstium_01Change(Sender);
CbBoxDryUrScTubus_03Change(Sender);
CbBoxDryUrScFigure_01Change(Sender);
CbBoxDryUrScPattern_02Change(Sender);
CbBoxDryUrScSurface_03Change(Sender);
CbBoxDryUrScGland_01Change(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScOstium_01Change(Sender: TObject);
begin
if CbBoxDryUrScOstium_01.ItemIndex <> 0
  then
    begin
      CbBoxDryUrScOstium_02.Enabled:= True;
      CbBoxDryUrScOstium_03.Enabled:= True;
    end
  else
    begin
      CbBoxDryUrScOstium_02.Enabled:= False;
      CbBoxDryUrScOstium_03.Enabled:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScTubus_03Change(Sender: TObject);
begin
if CbBoxDryUrScTubus_03.ItemIndex = 2
  then
    begin
      CbBoxDryUrScTubus_04.Enabled:= True;
      CbBoxDryUrScTubus_05.Enabled:= True;
    end
  else
    begin
      CbBoxDryUrScTubus_04.Enabled:= False;
      CbBoxDryUrScTubus_05.Enabled:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScFigure_01Change(Sender: TObject);
begin
if CbBoxDryUrScFigure_01.ItemIndex = 0
  then CbBoxDryUrScFigure_02.ItemIndex:= 0
  else CbBoxDryUrScFigure_02.ItemIndex:= 1;

CbBoxDryUrScFigure_02Change(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScFigure_02Change(Sender: TObject);
begin
if CbBoxDryUrScFigure_02.ItemIndex = 0
  then
    begin
     CbBoxDryUrScFigure_01.ItemIndex:= 0;
     CbBoxDryUrScFigure_03.Enabled:= False;
    end
  else
    begin
     CbBoxDryUrScFigure_01.ItemIndex:= 1;
     CbBoxDryUrScFigure_03.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScPattern_02Change(Sender: TObject);
begin
if CbBoxDryUrScPattern_02.ItemIndex <> 0
  then CbBoxDryUrScPattern_03.Enabled:= True
  else CbBoxDryUrScPattern_03.Enabled:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScSurface_03Change(Sender: TObject);
begin
if CbBoxDryUrScSurface_03.ItemIndex <> 0
  then CbBoxDryUrScSurface_04.Enabled:= True
  else CbBoxDryUrScSurface_04.Enabled:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.CbBoxDryUrScGland_01Change(Sender: TObject);
begin
if CbBoxDryUrScGland_01.ItemIndex <> 0
  then
    begin
      CbBoxDryUrScGland_02.Enabled:= True;
      CbBoxDryUrScGland_03.Enabled:= True;
      CbBoxDryUrScGland_04.Enabled:= True;
      CbBoxDryUrScGland_05.Enabled:= True;
    end
  else
    begin
      CbBoxDryUrScGland_02.Enabled:= False;
      CbBoxDryUrScGland_03.Enabled:= False;
      CbBoxDryUrScGland_04.Enabled:= False;
      CbBoxDryUrScGland_05.Enabled:= False;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.BtnSaveClick(Sender: TObject);
var SelLen, TmpLen: Integer;
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
        Parent:= FrmUrScopiaDry;
        PlainText:= False;
        Visible:= False;
      end;

    //��������� ���������
    FullTxt:= '�������� "�����" ������������' + FormatDateTime(' (' + 'DD.MM.YY' + '):',
                                                              DTPickUrScopiaDry.DateTime);
    SelLen:= Length(FullTxt);
(****************************************************************************)
    FullTxt:= FullTxt + ' �������� ����� ������';
    
    if CbBoxDryUrScOstium_01.ItemIndex = 0
      then FullTxt:= FullTxt + ' �� ��������.'
      else FullTxt:= FullTxt + ' '
          + CbBoxDryUrScOstium_02.Items[CbBoxDryUrScOstium_02.ItemIndex] + ', '
          + CbBoxDryUrScOstium_03.Items[CbBoxDryUrScOstium_03.ItemIndex] + '.';

    FullTxt:= FullTxt + ' ����� � ����������� ����������� ��������� ' +
              CbBoxDryUrScTubus_01.Items[CbBoxDryUrScTubus_01.ItemIndex];

    TmpTxt:= ' ' + CbBoxDryUrScTubus_03.Items[CbBoxDryUrScTubus_03.ItemIndex];

    if CbBoxDryUrScTubus_03.ItemIndex <> 2
      then TmpTxt:= TmpTxt + ' �� ������������� ����.'
      else TmpTxt:= TmpTxt + ' ' +
                    CbBoxDryUrScTubus_04.Items[CbBoxDryUrScTubus_04.ItemIndex] + ' ' +
                    CbBoxDryUrScTubus_05.Items[CbBoxDryUrScTubus_05.ItemIndex] + '.';

    FullTxt:= FullTxt + TmpTxt;

    case CbBoxDryUrScTubus_02.ItemIndex of
      0: TmpTxt:= '��������������.';
      1: TmpTxt:= '�����������.';
    end;

    FullTxt:= FullTxt + ' ����������� �� �������� ������ ' + TmpTxt;

    case CbBoxDryUrScGland_05.ItemIndex of
      0: TmpTxt:= '� ��������� ������ ������ ';
      1: TmpTxt:= '� ���������� ������ ������ ';
      2: TmpTxt:= '�� ���� ����������� ���������� ������ ';
    end;

    if CbBoxDryUrScFigure_01.ItemIndex = 0
      then TmpTxt:= ' � ' + CbBoxDryUrScFigure_02.Items[CbBoxDryUrScFigure_02.ItemIndex]
      else TmpTxt:= ' ' + CbBoxDryUrScFigure_03.Items[CbBoxDryUrScFigure_03.ItemIndex];

    FullTxt:= FullTxt + ' ����������� ������ ' +
              CbBoxDryUrScFigure_01.Items[CbBoxDryUrScFigure_01.ItemIndex] + TmpTxt + '.';

    FullTxt:= FullTxt + ' ��������� ������ ' +
              CbBoxDryUrScSurface_01.Items[CbBoxDryUrScSurface_01.ItemIndex] + ', ' +
              CbBoxDryUrScSurface_02.Items[CbBoxDryUrScSurface_02.ItemIndex] + ', ' +
              CbBoxDryUrScSurface_03.Items[CbBoxDryUrScSurface_03.ItemIndex];

    if CbBoxDryUrScSurface_03.ItemIndex <> 0
      then FullTxt:= FullTxt + ' '
                        + CbBoxDryUrScSurface_04.Items[CbBoxDryUrScSurface_04.ItemIndex];

    FullTxt:= FullTxt + ', '
                        + CbBoxDryUrScSurface_05.Items[CbBoxDryUrScSurface_05.ItemIndex];

    case CbBoxDryUrScSurface_06.ItemIndex of
      0: FullTxt:= FullTxt + ', ��� �������� � ������������ �� ����������.' ;
      1: FullTxt:= FullTxt + ', ��� �������� � ������������ ����������.' ;
    end;

    //"��������������" ������ �����
    TmpTxt:= AnsiUpperCase(LeftStr((CbBoxDryUrScGland_04.
                                              Items[CbBoxDryUrScGland_04.ItemIndex]),1));
    TmpLen:= Length(CbBoxDryUrScGland_04.
                                    Items[CbBoxDryUrScGland_04.ItemIndex]);//����� ������
    TmpTxt:= TmpTxt
     //���������� ������ ����� ������ ��� ������ �����
     + RightStr((CbBoxDryUrScGland_04.Items[CbBoxDryUrScGland_04.ItemIndex]), TmpLen - 1);

    if CbBoxDryUrScGland_01.ItemIndex = 0
      then FullTxt:= FullTxt +
                      ' ���������� ������� �������� ������ ��� ��������� ����������.'
      else FullTxt:= FullTxt + ' ' + TmpTxt +
                    ' ��������������� ����� ����������� ��������������� ����� ' +
                    CbBoxDryUrScGland_02.Items[CbBoxDryUrScGland_02.ItemIndex] + ' ' +
                    CbBoxDryUrScGland_03.Items[CbBoxDryUrScGland_03.ItemIndex] + '.';

    if CbBoxDryUrScPattern_02.ItemIndex = 0
      then TmpTxt:= '.'
      else TmpTxt:= ' ' +
            CbBoxDryUrScPattern_03.Items[CbBoxDryUrScPattern_03.ItemIndex] + '.';


    FullTxt:= FullTxt + ' ���������� ������� ' +
                CbBoxDryUrScPattern_01.Items[CbBoxDryUrScPattern_01.ItemIndex] + ', ' +
                CbBoxDryUrScPattern_02.Items[CbBoxDryUrScPattern_02.ItemIndex] + TmpTxt;

    with TmpRE do
      begin
        Lines.Add(FullTxt);
        SelStart:= 0;
        SelLength:= SelLen;//�������� "������" ����� ������
        SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
        SelStart:= Length(Text);//������ � ����� ������
        SelLength:= 0;//������ ���������
        SelAttributes.Assign(DefAttributes);//���������� ��������
      end;{with TmpRE}

(****************************************************************************)

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextUrScopiaDry;//������������� ��������� ��� ���������

    //����������� ��������� ����� ��������� ����� ������������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextUrScopiaDry:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextUrScopiaDry <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ��������� ����� ' +
               '(��������) ������������ ������ ����� ������� �� ����� �������������� ' +
               '�����. ��������� ������?',
               '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextUrScopiaDry:= FullTxt;//��������, ���� ����� "��"


    //��������� ���������� ���������� � ����������
    VarUrScopiaDryDate:= DTPickUrScopiaDry.Date;

    VarUrScopiaDryOstium_01:= CbBoxDryUrScOstium_01.ItemIndex;
    VarUrScopiaDryOstium_02:= CbBoxDryUrScOstium_02.ItemIndex;
    VarUrScopiaDryOstium_03:= CbBoxDryUrScOstium_03.ItemIndex;

    VarUrScopiaDryTubus_01:= CbBoxDryUrScTubus_01.ItemIndex;
    VarUrScopiaDryTubus_02:= CbBoxDryUrScTubus_02.ItemIndex;
    VarUrScopiaDryTubus_03:= CbBoxDryUrScTubus_03.ItemIndex;
    VarUrScopiaDryTubus_04:= CbBoxDryUrScTubus_04.ItemIndex;
    VarUrScopiaDryTubus_05:= CbBoxDryUrScTubus_05.ItemIndex;

    VarUrScopiaDryGland_01:= CbBoxDryUrScGland_01.ItemIndex;
    VarUrScopiaDryGland_02:= CbBoxDryUrScGland_02.ItemIndex;
    VarUrScopiaDryGland_03:= CbBoxDryUrScGland_03.ItemIndex;
    VarUrScopiaDryGland_04:= CbBoxDryUrScGland_04.ItemIndex;
    VarUrScopiaDryGland_05:= CbBoxDryUrScGland_05.ItemIndex;

    VarUrScopiaDryFigure_01:= CbBoxDryUrScFigure_01.ItemIndex;
    VarUrScopiaDryFigure_02:= CbBoxDryUrScFigure_02.ItemIndex;
    VarUrScopiaDryFigure_03:= CbBoxDryUrScFigure_03.ItemIndex;

    VarUrScopiaDryPattern_01:= CbBoxDryUrScPattern_01.ItemIndex;
    VarUrScopiaDryPattern_02:= CbBoxDryUrScPattern_02.ItemIndex;
    VarUrScopiaDryPattern_03:= CbBoxDryUrScPattern_03.ItemIndex;

    VarUrScopiaDrySurface_01:= CbBoxDryUrScSurface_01.ItemIndex;
    VarUrScopiaDrySurface_02:= CbBoxDryUrScSurface_02.ItemIndex;
    VarUrScopiaDrySurface_03:= CbBoxDryUrScSurface_03.ItemIndex;
    VarUrScopiaDrySurface_04:= CbBoxDryUrScSurface_04.ItemIndex;
    VarUrScopiaDrySurface_05:= CbBoxDryUrScSurface_05.ItemIndex;
    VarUrScopiaDrySurface_06:= CbBoxDryUrScSurface_06.ItemIndex;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.AppEventsFrmUrScopiaDryShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmUrScopiaDry.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaDry.FormCreate(Sender: TObject);
begin
NiceSetFrmUrScopiaDry.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmUrScopiaDry.LoadSettings;

Self.Caption:= '�������� "�����" �������� ������������ (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmUrScopiaDry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmUrScopiaDry.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
