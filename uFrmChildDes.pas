unit uFrmChildDes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, ExtCtrls, AppEvnts;

type
  TFrmChildDes = class(TForm)
    NiceSetFrmChildDes: TNiceSettings;
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    ChkBoxChldMeasles: TCheckBox;
    ChkBoxChldRubella: TCheckBox;
    ChkBoxChldMumps: TCheckBox;
    ChkBoxChldChickenpox: TCheckBox;
    ChkBoxChldScarlat: TCheckBox;
    ChkBoxChldErythema: TCheckBox;
    ChkBoxChldTonzil: TCheckBox;
    ChkBoxChldChoopCoach: TCheckBox;
    ChkBoxChldDipht: TCheckBox;
    ChkBoxChldHerpes: TCheckBox;
    ChkBoxChldPoliomyel: TCheckBox;
    ChkBoxChldHepatitA: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmChildDes: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmChildDesShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmChildDes: TFrmChildDes;

implementation

uses StatusPatUnit, VarAndrUnit, StrUtils, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmChildDes.FormCreate(Sender: TObject);
begin
NiceSetFrmChildDes.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmChildDes.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '������� ������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '������� ������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmChildDes.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxChldMeasles.Checked and
    not ChkBoxChldRubella.Checked and
    not ChkBoxChldMumps.Checked and
    not ChkBoxChldChickenpox.Checked and
    not ChkBoxChldScarlat.Checked and
    not ChkBoxChldErythema.Checked and
    not ChkBoxChldTonzil.Checked and
    not ChkBoxChldChoopCoach.Checked and
    not ChkBoxChldDipht.Checked and
    not ChkBoxChldHerpes.Checked and
    not ChkBoxChldPoliomyel.Checked and
    not ChkBoxChldHepatitA.Checked
      then
        begin
          Application.MessageBox('�� ������ �������� ���� �� ���� ������������ ������� �������� !',
                                                         '������������ ������', MB_ICONINFORMATION);
          if ChkBoxChldMeasles.CanFocus then ChkBoxChldMeasles.SetFocus;
          Exit;
        end;

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    TmpStr:= '�� ����, � ������� ������� '
  else
    TmpStr:= '�� ����, � ������� ��������� ';

if ChkBoxChldMeasles.Checked then TmpStr:= TmpStr + '����, ';
if ChkBoxChldRubella.Checked then TmpStr:= TmpStr + '��������, ';
if ChkBoxChldMumps.Checked then TmpStr:= TmpStr + '������, ';
if ChkBoxChldChickenpox.Checked then TmpStr:= TmpStr + '��������, ';
if ChkBoxChldScarlat.Checked then TmpStr:= TmpStr + '����������, ';
if ChkBoxChldErythema.Checked then TmpStr:= TmpStr + '������������ �������, ';
if ChkBoxChldTonzil.Checked then TmpStr:= TmpStr + '������ ������, ';
if ChkBoxChldChoopCoach.Checked then TmpStr:= TmpStr + '������, ';
if ChkBoxChldDipht.Checked then TmpStr:= TmpStr + '��������, ';
if ChkBoxChldHerpes.Checked then TmpStr:= TmpStr + '������ ������, ';
if ChkBoxChldPoliomyel.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxChldHepatitA.Checked then TmpStr:= TmpStr + '������� �, ';

//�������� ������� � ������ ����� � �����
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr)) - 1) + '.';

//����������� ��������� ����� �������� ��������
if Trim(TextAnamChldDes) = ''
  then //���� ���-���� ��� ������
    TextAnamChldDes:= TmpStr //����� �������� ��� ����� ���������� TmpStr
  else//���� ���-�� ��������
    if TextAnamChldDes <> TmpStr //���� ����� ����� ���������� �� �������
      then
        if Application.MessageBox('����� ��������� ������ � ������������ ������� ���������' +
             ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
             '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamChldDes:= TmpStr;//��������, ���� ����� "��"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.AppEventsFrmChildDesShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;

//"�������" ������� �������� �� ������ ����
AppEventsFrmChildDes.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

end.
