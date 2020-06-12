unit StPraesensTemplUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmStPraesensTemplate = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    NiceSetFrmStPraesensTemplate: TNiceSettings;
    GroupBox2: TGroupBox;
    CbBoxCorTone: TComboBox;
    CbBoxCorBlood: TComboBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    CbBoxFeelState: TComboBox;
    Label3: TLabel;
    CbBoxSkin: TComboBox;
    Label5: TLabel;
    CbBoxBlubber: TComboBox;
    Label4: TLabel;
    CbBoxLdi: TComboBox;
    BtnEdtLdi: TButton;
    CbBoxPulmBreathe: TComboBox;
    CbBoxWheeze: TComboBox;
    GroupBox5: TGroupBox;
    CbBoxAbdomDolor: TComboBox;
    CbBoxAbdomLevel: TComboBox;
    CbBoxAbdomSide: TComboBox;
    CbBoxAbdomDegree: TComboBox;
    GroupBox6: TGroupBox;
    CbBoxRenLocal: TComboBox;
    CbBoxRenDolor: TComboBox;
    CbBoxRenSide: TComboBox;
    GroupBox7: TGroupBox;
    CbBoxPasternFact: TComboBox;
    CbBoxPasternSide: TComboBox;
    GroupBox8: TGroupBox;
    CbBoxMicciaDolor: TComboBox;
    CbBoxMicciaCount: TComboBox;
    CbBoxMicciaNicturia: TComboBox;
    GroupBox9: TGroupBox;
    CbBoxStoolFunc: TComboBox;
    CbBoxStoolConsistence: TComboBox;
    CbBoxStool: TComboBox;
    AppEventsStPraesens: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbBoxLdiChange(Sender: TObject);
    procedure BtnEdtLdiClick(Sender: TObject);
    procedure CheckPaintCbboxLdi(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbBoxAbdomDolorChange(Sender: TObject);
    procedure CbBoxAbdomLevelChange(Sender: TObject);
    procedure CbBoxRenDolorChange(Sender: TObject);
    procedure CbBoxPasternFactChange(Sender: TObject);
    procedure CbBoxStoolFuncChange(Sender: TObject);
    procedure AppEventsStPraesensShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmStPraesensTemplate: TFrmStPraesensTemplate;

implementation

uses MainAndrUnit, ReseachLuesUnit, StatusPatUnit, VarAndrUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.BtnSaveClick(Sender: TObject);
var FullTxt, TmpStr: AnsiString;
    TmpRE: TRichEdit;
begin
//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        Parent:= FrmStPraesensTemplate;
        PlainText:= False;
        Visible:= False;
      end;

    //�������� ������ ������ �� �����������
    FullTxt:= '��-��: ��������� ' + Trim(CbBoxFeelState.Text) + '.';

    case CbBoxSkin.ItemIndex of
     0 : TmpStr:= '�������';
     1 : TmpStr:= '���������������';
     2 : TmpStr:= '������-�������';
     3 : TmpStr:= '�������';
     4 : TmpStr:= '������-�����������';
     5 : TmpStr:= '���������';
    end;

    FullTxt:= FullTxt + ' ' + '���� � ��������� ' + TmpStr + ' �������.';
    FullTxt:= FullTxt + ' ' + '��������� ��������� ' + Trim(CbBoxBlubber.Text) + '.';

    //����������� ��������� ���������
    if CbBoxLdi.ItemIndex = 0
      then //������ ����� "�� ���������"
        begin
        //"�����������" ��� �������� ��� ������������������ ������
        VarLdiCervix:= 0;
        VarLdiSubLing:= 0;
        VarLdiAxillar:= 0;
        VarLdiUlnar:= 0;
        VarLdiInguinal:= 0;

        FullTxt:= FullTxt + ' ' + '�������������� l-di �� ���������.';
        end{CbBoxLdi.ItemIndex=0..then}

      else //������ ����� "��������"
        if (VarLdiCervix = 1) or (VarLdiSubLing = 1) or
            (VarLdiAxillar = 1) or (VarLdiUlnar = 1) or (VarLdiInguinal = 1)
          then //���� �� ��������� ������� � ����� �� ������� ����������
            begin
              TmpStr:= '';
              if VarLdiCervix = 1 then TmpStr:= '������, ';
              if VarLdiSubLing = 1 then TmpStr:= TmpStr + '������������, ';
              if VarLdiAxillar = 1 then TmpStr:= TmpStr + '�����������, ';
              if VarLdiUlnar = 1 then TmpStr:= TmpStr + '��������, ';
              if VarLdiInguinal = 1 then TmpStr:= TmpStr + '�������, ';

              //�������� �������
              TmpStr:= WriteSymbolToEndString(Trim(TmpStr),' ');
              FullTxt:= FullTxt + ' ' + '���������� ���������� ' + TmpStr +
                                                           '�������������� ���������.';
            end {if VarLdi = 1 ..then}
          else //�� ���� �� ��������� �� ������� � ����� �� ������� ����������
            begin
            //�������������� �����
            Application.MessageBox('�� ������� ����� "�������������� �������� ��������", ' +
            '�� �� ��������, ����� �� ������������� ����� ����� ���������. ����������, ' +
            '������� ��������������� �������� ��� ���������� ���������������� ������.',
            '������������ ���� ������', MB_OK + MB_ICONINFORMATION);

            BtnEdtLdiClick(Sender);
            Abort;
            end;{if VarLdi..else}

    FullTxt:= FullTxt + ' ' + 'Cor - ' + Trim(CbBoxCorTone.Text) + ', ' +
                                                          Trim(CbBoxCorBlood.Text) + '.';
    //����������� �����
    case CbBoxWheeze.ItemIndex of
     0 : TmpStr:= '����� �� �������������';
     1 : TmpStr:= '������������� ����� �����';
     2 : TmpStr:= '������������� ��������������� �����';
     3 : TmpStr:= '������������� ���������������� �����';
     4 : TmpStr:= '������������� ������������� �����';
    end;

    FullTxt:= FullTxt + ' ' + 'Pulm - ' + Trim(CbBoxPulmBreathe.Text) + ', ' + TmpStr + '.';


    if CbBoxAbdomDolor.ItemIndex = 0
      then
        TmpStr:= Trim(CbBoxAbdomDolor.Text)
      else
        TmpStr:= Trim(CbBoxAbdomDegree.Text) + ' ' + Trim(CbBoxAbdomDolor.Text) + ' '
         + Trim(CbBoxAbdomLevel.Text);

    if CbBoxAbdomSide.Enabled
      then
        begin
          case CbBoxAbdomSide.ItemIndex of
           3: TmpStr:= TmpStr + ', ' + Trim(CbBoxAbdomSide.Text);
           4: TmpStr:= TmpStr + ', ' + Trim(CbBoxAbdomSide.Text);
          else TmpStr:= TmpStr + ' ' + Trim(CbBoxAbdomSide.Text);
          end;

        end;

    FullTxt:= FullTxt + ' ' + '����� ��� ��������� ' + TmpStr + '. ��������� ������� ����� ';

    if CbBoxRenDolor.ItemIndex = 0
      then
        FullTxt:= FullTxt + '�������������� � ����� ������. '
      else
        FullTxt:= FullTxt + Trim(CbBoxRenLocal.Text) + ' ����������� '
                                                                + Trim(CbBoxRenSide.Text) + '. ';


    case CbBoxPasternFact.ItemIndex of
      0: TmpStr:= '������������� � ����� ������';
      1: begin //������� �������������
           case CbBoxPasternSide.ItemIndex of
             0: TmpStr:= '����� - �������������, ������ - �������������';
             1: TmpStr:= '������ - �������������, ����� - �������������';
           else
                TmpStr:= '������������� � ����� ������';
           end;
         end;
      2: begin  //������� ������������
           case CbBoxPasternSide.ItemIndex of
             0: TmpStr:= '����� - ������������, ������ - �������������';
             1: TmpStr:= '������ - ������������, ����� - �������������';
           else
                TmpStr:= '������������ � ����� ������';
           end;
         end;
    end;

    FullTxt:= FullTxt + '������� ������������� ' + TmpStr + '.';

    //����������� ��������
    case CbBoxMicciaNicturia.ItemIndex of
     0 : TmpStr:= '�������� ���';
     1 : TmpStr:= '�������� ��������';
    end;

    FullTxt:= FullTxt + ' �������������� ' + Trim(CbBoxMicciaDolor.Text) + ', ' +
                                        Trim(CbBoxMicciaCount.Text) + ', ' + TmpStr + '. ';

    if CbBoxStoolFunc.ItemIndex = 0
      then
        FullTxt:= FullTxt + '���� �� �������.'
      else
        begin
          if CbBoxStool.ItemIndex = 1
            then
              TmpStr:= '�������� ������'
            else
              TmpStr:= Trim(CbBoxStool.Text);
          FullTxt:= FullTxt + '���� ' + Trim(CbBoxStoolConsistence.Text) + ', ' + TmpStr + '.';
        end;

(*
    FullTxt:= FullTxt + ' ' + '����� ��� ��������� ' + Trim(CbBoxAbdomDolor.Text) + '.';

    //����������� ��������
    case CbBoxMicciaNicturia.ItemIndex of
     0 : TmpStr:= '�������� ���';
     1 : TmpStr:= '�������� ��������';
    end;

    FullTxt:= FullTxt + ' �������������� ' + Trim(CbBoxMicciaDolor.Text) + ', ' +
                                        Trim(CbBoxMicciaCount.Text) + ', ' + TmpStr + '.';
*)
    //��������� ���������� ����� � "�����������" ���-����
    with TmpRE do
      begin
      PlainText:= False;
      Lines.Add(FullTxt);//������� �����
      SelStart:= 0;//������ � ������
      SelLength:= Length('��-��:');
      SelAttributes.Style:= [fsUnderline];//������������ ���������� �����
      SelStart:= Length(Text);
      SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
      end;{with TmpRE do}

    //����������� ������ "���������������" �����
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextStPraesens;//������������� ��������� ��� ���������


    //����������� ��������� ����� �������
    if Trim(TmpRE.Text) = ''//���� �� ������
      then TextStPraesens:= FullTxt//����� �������� ����������
      else//���� ���-���� ���-�� ��������
        if TextStPraesens <> FullTxt //���������� ���������� � ������ ��������������
          then
            if Application.MessageBox('����� ��������� �������� ������������ �������' +
            ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
            '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextStPraesens:= Trim(FullTxt);//��������, ���� ����� "��"
  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.AppEventsStPraesensShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
    begin
      //��������� �� "������"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
        begin
          if BtnEdtLdi.Focused then Self.SetFocus;//������ ����� � ������, ���� �� ��� ����
          BtnSaveClick(Self);
        end;

      if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
    end;

AppEventsStPraesens.CancelDispatch;
end;

procedure TFrmStPraesensTemplate.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.FormShow(Sender: TObject);
begin
//��������� ��������� ���������
CheckPaintCbboxLdi(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//��������� ��������� CbboxLdi
procedure TFrmStPraesensTemplate.CheckPaintCbboxLdi(Sender: TObject);
begin
//��������� ��������� ���������
//���� ��������
if (VarLdiCervix = 1) or (VarLdiSubLing =1)
                    or (VarLdiAxillar = 1) or (VarLdiUlnar = 1) or (VarLdiInguinal = 1)
  then CbBoxLdi.ItemIndex:= 1//������ ����� �� "��������"
  else CbBoxLdi.ItemIndex:= 0;//������ ����� "�� ���������"

CbBoxLdiChange(Sender);
CbBoxLdi.SelLength:= 0;//������ ���������
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxLdiChange(Sender: TObject);
begin
if CbBoxLdi.ItemIndex = 0
  then
    begin
    CbBoxLdi.Width:= 185;
    BtnEdtLdi.Visible:= False;
    end
  else
    begin
    CbBoxLdi.Width:= 164;
    BtnEdtLdi.Visible:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.BtnEdtLdiClick(Sender: TObject);
begin
with TFrmResearchLues.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//��������� ��������� ���������
CheckPaintCbboxLdi(Sender);
end;

//----------------------------------------------------------------------------


procedure TFrmStPraesensTemplate.FormCreate(Sender: TObject);
begin
NiceSetFrmStPraesensTemplate.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmStPraesensTemplate.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '�������� ������ ������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '�������� ������ ������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//��������� �����
CbBoxAbdomDolorChange(Sender);
CbBoxRenDolorChange(Sender);
CbBoxPasternFactChange(Sender);
CbBoxStoolFuncChange(Sender);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmStPraesensTemplate.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxAbdomDolorChange(Sender: TObject);
begin
CbBoxAbdomDegree.Enabled:= not (CbBoxAbdomDolor.ItemIndex = 0);
CbBoxAbdomLevel.Enabled:= not (CbBoxAbdomDolor.ItemIndex = 0);
CbBoxAbdomLevelChange(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxAbdomLevelChange(Sender: TObject);
begin
CbBoxAbdomSide.Enabled:= not((CbBoxAbdomLevel.ItemIndex = 0) or (CbBoxAbdomLevel.ItemIndex = 3))
                                                           and not (CbBoxAbdomDolor.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxRenDolorChange(Sender: TObject);
begin
CbBoxRenLocal.Enabled:= not (CbBoxRenDolor.ItemIndex = 0);
CbBoxRenSide.Enabled:= not (CbBoxRenDolor.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxPasternFactChange(Sender: TObject);
begin
CbBoxPasternSide.Enabled:= not(CbBoxPasternFact.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxStoolFuncChange(Sender: TObject);
begin
CbBoxStoolConsistence.Enabled:= not (CbBoxStoolFunc.ItemIndex = 0);
CbBoxStool.Enabled:= not (CbBoxStoolFunc.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

end.
