unit uFrmAnthrDes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, NiceSettings, ExtCtrls, AppEvnts;

type
  TFrmAnthrDes = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmAnthrDes: TNiceSettings;
    GroupBox1: TGroupBox;
    ChkBoxAnthrIBS: TCheckBox;
    ChkBoxAnthrGastricUlcer: TCheckBox;
    ChkBoxAnthrDuodenUlcer: TCheckBox;
    ChkBoxAnthrCholecyst: TCheckBox;
    ChkBoxAnthrPyelonephr: TCheckBox;
    ChkBoxAnthrCystitis: TCheckBox;
    ChkBoxAnthrProstatit: TCheckBox;
    ChkBoxAnthrAdnexitis: TCheckBox;
    ChkBoxAnthrEndometrit: TCheckBox;
    ChkBoxAnthrGastritis: TCheckBox;
    ChkBoxAnthrHypertension: TCheckBox;
    ChkBoxAnthrPancreat: TCheckBox;
    ChkBoxAnthrOther: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmAnthrDes: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmAnthrDesShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmAnthrDes: TFrmAnthrDes;

implementation

uses StatusPatUnit, VarAndrUnit, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.FormCreate(Sender: TObject);
begin
NiceSetFrmAnthrDes.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmAnthrDes.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '�������� � �������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '�������� � �������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

ChkBoxAnthrProstatit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
ChkBoxAnthrAdnexitis.Enabled:= not(DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
ChkBoxAnthrEndometrit.Enabled:= not(DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmAnthrDes.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxAnthrIBS.Checked and
    not ChkBoxAnthrGastricUlcer.Checked and
    not ChkBoxAnthrDuodenUlcer.Checked and
    not ChkBoxAnthrCholecyst.Checked and
    not ChkBoxAnthrPyelonephr.Checked and
    not ChkBoxAnthrCystitis.Checked and
    not ChkBoxAnthrProstatit.Checked and
    not ChkBoxAnthrAdnexitis.Checked and
    not ChkBoxAnthrEndometrit.Checked and
    not ChkBoxAnthrGastritis.Checked and
    not ChkBoxAnthrHypertension.Checked and
    not ChkBoxAnthrPancreat.Checked and
    not ChkBoxAnthrOther.Checked
      then
        begin
          Application.MessageBox('�� ������ �������� ���� �� ���� ������������� ����������� !',
                                                         '������������ ������', MB_ICONINFORMATION);
          if ChkBoxAnthrIBS.CanFocus then ChkBoxAnthrIBS.SetFocus;

          Exit;
        end;

TmpStr:= '� ��������: ';

if ChkBoxAnthrIBS.Checked then TmpStr:= TmpStr + '���, ';
if ChkBoxAnthrGastricUlcer.Checked then TmpStr:= TmpStr + '�������� ������� �������, ';
if ChkBoxAnthrDuodenUlcer.Checked then TmpStr:= TmpStr + '�������� ������� 12 �.�., ';
if ChkBoxAnthrCholecyst.Checked then TmpStr:= TmpStr + '����.����������, ';
if ChkBoxAnthrPyelonephr.Checked then TmpStr:= TmpStr + '����.�����������, ';
if ChkBoxAnthrCystitis.Checked then TmpStr:= TmpStr + '����.������, ';
if ChkBoxAnthrProstatit.Checked then TmpStr:= TmpStr + '����.���������, ';
if ChkBoxAnthrAdnexitis.Checked then TmpStr:= TmpStr + '����.��������, ';
if ChkBoxAnthrEndometrit.Checked then TmpStr:= TmpStr + '����.���������������, ';
if ChkBoxAnthrHypertension.Checked then TmpStr:= TmpStr + '������.�������, ';
if ChkBoxAnthrGastritis.Checked then TmpStr:= TmpStr + '����.�������, ';
if ChkBoxAnthrPancreat.Checked then TmpStr:= TmpStr + '����.����������, ';
if ChkBoxAnthrOther.Checked then TmpStr:= TmpStr + '(!!!_�������_!!!), ';

//�������� ������� � ������ ����� � �����
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//����������� ��������� ����� �������� ��������
if Trim(TextAnamAnthrDes) = ''
  then //���� ���-���� ��� ������
    TextAnamAnthrDes:= TmpStr //����� �������� ��� ����� ���������� TmpStr
  else//���� ���-�� ��������
    if TextAnamAnthrDes <> TmpStr //���� ����� ����� ���������� �� �������
      then
        if Application.MessageBox('����� ��������� ������ � ������������� ������������' +
             ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
             '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamAnthrDes:= TmpStr;//��������, ���� ����� "��"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.AppEventsFrmAnthrDesShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if FocusFlag then
    begin
      if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
    end;
//"�������" ������� �������� �� ������ ����
AppEventsFrmAnthrDes.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

end.
