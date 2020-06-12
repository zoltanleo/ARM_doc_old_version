unit uFrmZPPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StrUtils, StdCtrls, AppEvnts, ExtCtrls;

type
  TFrmZPPP = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmZPPP: TNiceSettings;
    GroupBox1: TGroupBox;
    ChkBoxZPPPChl: TCheckBox;
    ChkBoxZPPPMic: TCheckBox;
    ChkBoxZPPPUreap: TCheckBox;
    ChkBoxZPPPGard: TCheckBox;
    ChkBoxZPPPTrich: TCheckBox;
    ChkBoxZPPPGn: TCheckBox;
    ChkBoxZPPPLues: TCheckBox;
    ChkBoxZPPPCand: TCheckBox;
    ChkBoxZPPPpvi: TCheckBox;
    ChkBoxZPPPHerp: TCheckBox;
    ChkBoxZPPPCMV: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmZPPP: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmZPPPShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmZPPP: TFrmZPPP;

implementation

uses StatusPatUnit, VarAndrUnit, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmZPPP.FormCreate(Sender: TObject);
begin
NiceSetFrmZPPP.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmZPPP.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '������������ ���� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '������������ ���� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmZPPP.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxZPPPChl.Checked and
    not ChkBoxZPPPMic.Checked and
    not ChkBoxZPPPUreap.Checked and
    not ChkBoxZPPPGard.Checked and
    not ChkBoxZPPPTrich.Checked and
    not ChkBoxZPPPGn.Checked and
    not ChkBoxZPPPLues.Checked and
    not ChkBoxZPPPCand.Checked and
    not ChkBoxZPPPpvi.Checked and
    not ChkBoxZPPPHerp.Checked and
    not ChkBoxZPPPCMV.Checked
      then
        begin
          Application.MessageBox('�� ������ �������� ���� �� ���� ������������ ������� �������� !',
                                                         '������������ ������', MB_ICONINFORMATION);
          if ChkBoxZPPPChl.CanFocus then ChkBoxZPPPChl.SetFocus;
          Exit;
        end;

TmpStr:= '������������ ����: ';
if ChkBoxZPPPChl.Checked then TmpStr:= TmpStr + '���������, ';
if ChkBoxZPPPMic.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxZPPPUreap.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxZPPPGard.Checked then TmpStr:= TmpStr + '������������, ';
if ChkBoxZPPPTrich.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxZPPPGn.Checked then TmpStr:= TmpStr + '�������, ';
if ChkBoxZPPPLues.Checked then TmpStr:= TmpStr + '�������, ';
if ChkBoxZPPPCand.Checked then TmpStr:= TmpStr + '�������� ���������, ';
if ChkBoxZPPPpvi.Checked then TmpStr:= TmpStr + '����������������� �������� ���������, ';
if ChkBoxZPPPHerp.Checked then TmpStr:= TmpStr + '����������� ������, ';
if ChkBoxZPPPCMV.Checked then TmpStr:= TmpStr + '������������������ ��������, ';

//�������� ������� � ������ ����� � �����
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//������������ �������� � ����������� �� ��������� �����-�������(�.�. ���� ������-������ ���� ������)
if ZPPPboolFlag
  then//������� ���� � �������
    begin
      //����������� ��������� ����� �������� ����
      if Trim(TextAndrZPPP) = ''
        then //���� ���-���� ��� ������
          TextAndrZPPP:= TmpStr //����� �������� ��� ����� ���������� TmpStr
        else//���� ���-�� ��������
          if TextAndrZPPP <> TmpStr //���� ����� ����� ���������� �� �������
            then
              if Application.MessageBox('����� ��������� ������ � ������������ ������� ���������' +
                   ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
                   '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                then TextAndrZPPP:= TmpStr;//��������, ���� ����� "��"
    end
  else //������� ���� � ������
    begin
      //����������� ��������� ����� �������� ��������
      if Trim(TextGinZPPP) = ''
        then //���� ���-���� ��� ������
          TextGinZPPP:= TmpStr //����� �������� ��� ����� ���������� TmpStr
        else//���� ���-�� ��������
          if TextGinZPPP <> TmpStr //���� ����� ����� ���������� �� �������
            then
              if Application.MessageBox('����� ��������� ������ � ������������ ������� ���������' +
                   ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
                   '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                then TextGinZPPP:= TmpStr;//��������, ���� ����� "��"
    end;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.AppEventsFrmZPPPShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;

//"�������" ������� �������� �� ������ ����
AppEventsFrmZPPP.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

end.
