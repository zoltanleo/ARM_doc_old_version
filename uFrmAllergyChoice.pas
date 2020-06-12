unit uFrmAllergyChoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, ExtCtrls, AppEvnts;

type
  TFrmAllergyChoice = class(TForm)
    NiceSetFrmAllergyChoice: TNiceSettings;
    BtnCancel: TButton;
    BtnSave: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ChkBoxClinicHives: TCheckBox;
    ChkBoxClinicOedema: TCheckBox;
    ChkBoxClinicDermatit: TCheckBox;
    ChkBoxClinicRhinit: TCheckBox;
    ChkBoxClinicAsthna: TCheckBox;
    ChkBoxClinicAnafShok: TCheckBox;
    ChkBoxClinicConjuntiv: TCheckBox;
    ChkBoxClinicAnother: TCheckBox;
    ChkBoxAllergPenic: TCheckBox;
    ChkBoxAllergCefalos: TCheckBox;
    ChkBoxAllergAminoglyc: TCheckBox;
    ChkBoxAllergMacrolid: TCheckBox;
    ChkBoxAllergFtorchinol: TCheckBox;
    ChkBoxAllergNitrofur: TCheckBox;
    ChkBoxAllergTetracycl: TCheckBox;
    ChkBoxAllergImidaz: TCheckBox;
    ChkBoxAllergNovocain: TCheckBox;
    ChkBoxAllergNPVP: TCheckBox;
    ChkBoxAllergFoodBorne: TCheckBox;
    ChkBoxAllergHousehold: TCheckBox;
    ChkBoxAllergPollen: TCheckBox;
    ChkBoxAllergAnother: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    AppEventsFrmAllergyChoice: TApplicationEvents;
    ChkBoxAllergSalicil: TCheckBox;
    ChkBoxAllergSulfanilam: TCheckBox;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmAllergyChoiceShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmAllergyChoice: TFrmAllergyChoice;

implementation

uses StatusPatUnit, VarAndrUnit, StrUtils, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if not ChkBoxAllergPenic.Checked and
   not ChkBoxAllergCefalos.Checked and
   not ChkBoxAllergAminoglyc.Checked and
   not ChkBoxAllergMacrolid.Checked and
   not ChkBoxAllergFtorchinol.Checked and
   not ChkBoxAllergSalicil.Checked and
   not ChkBoxAllergNitrofur.Checked and
   not ChkBoxAllergTetracycl.Checked and
   not ChkBoxAllergImidaz.Checked and
   not ChkBoxAllergNovocain.Checked and
   not ChkBoxAllergNPVP.Checked and
   not ChkBoxAllergSulfanilam.Checked and
   not ChkBoxAllergFoodBorne.Checked and
   not ChkBoxAllergHousehold.Checked and
   not ChkBoxAllergPollen.Checked and
   not ChkBoxAllergAnother.Checked
    then
      begin
        Application.MessageBox('�� ������ �������� ���� �� ���� �������� !', '������������ ������',
                                                                                MB_ICONINFORMATION);
        if ChkBoxAllergPenic.CanFocus then ChkBoxAllergPenic.SetFocus;
        Exit;
      end;

if  not ChkBoxClinicHives.Checked and
    not ChkBoxClinicOedema.Checked and
    not ChkBoxClinicDermatit.Checked and
    not ChkBoxClinicRhinit.Checked and
    not ChkBoxClinicAsthna.Checked and
    not ChkBoxClinicAnafShok.Checked and
    not ChkBoxClinicConjuntiv.Checked and
    not ChkBoxClinicAnother.Checked
      then
        begin
        Application.MessageBox('�� ������ �������� ���� �� ���� ����� ������������� ������� '
                       + '�� ��������� ���� ������� !', '������������ ������', MB_ICONINFORMATION);
        if ChkBoxClinicHives.CanFocus then ChkBoxClinicHives.SetFocus;
        Exit;
        end;

//��������� �����
TmpStr:= '�������� ������������� ������� �� ';

if ChkBoxAllergPenic.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxAllergCefalos.Checked then TmpStr:= TmpStr + '�������������, ';
if ChkBoxAllergAminoglyc.Checked then TmpStr:= TmpStr + '��������������, ';
if ChkBoxAllergMacrolid.Checked then TmpStr:= TmpStr + '���������, ';
if ChkBoxAllergFtorchinol.Checked then TmpStr:= TmpStr + '������������, ';
if ChkBoxAllergSalicil.Checked then TmpStr:= TmpStr + '����������, ';
if ChkBoxAllergNitrofur.Checked then TmpStr:= TmpStr + '�����������, ';
if ChkBoxAllergTetracycl.Checked then TmpStr:= TmpStr + '������������, ';
if ChkBoxAllergImidaz.Checked then TmpStr:= TmpStr + '���������, ';
if ChkBoxAllergNovocain.Checked then TmpStr:= TmpStr + '��������� ������������ ������, ';
if ChkBoxAllergNPVP.Checked then TmpStr:= TmpStr + '������������ ��������������������� ��������� ('
                                                                                        + '����), ';
if ChkBoxAllergSulfanilam.Checked then TmpStr:= TmpStr + '��������������, ';                                                                                        
if ChkBoxAllergFoodBorne.Checked then TmpStr:= TmpStr + '������� �������� (!!!_��������_!!!), ';
if ChkBoxAllergHousehold.Checked then TmpStr:= TmpStr + '�������� ����, ';
if ChkBoxAllergPollen.Checked then TmpStr:= TmpStr + '������ ��������, ';
if ChkBoxAllergAnother.Checked then TmpStr:= TmpStr + '(!!!_��������_!!!),';

//�������� ������� � ������ ������
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + ' � ���� ';


if ChkBoxClinicHives.Checked then TmpStr:= TmpStr + '����������, ';
if ChkBoxClinicOedema.Checked then TmpStr:= TmpStr + '����� ������; ';
if ChkBoxClinicDermatit.Checked then TmpStr:= TmpStr + '������������ ���������, ';
if ChkBoxClinicRhinit.Checked then TmpStr:= TmpStr + '�������������� ������, ';
if ChkBoxClinicAsthna.Checked then TmpStr:= TmpStr + '�������� ������������ �����, ';
if ChkBoxClinicAnafShok.Checked then TmpStr:= TmpStr + '����������������� ����, ';
if ChkBoxClinicConjuntiv.Checked then TmpStr:= TmpStr + '�������������� �������������, ';
if ChkBoxClinicAnother.Checked then TmpStr:= TmpStr + '(!!!_��������_!!!),';

//�������� ������� � ������ �����
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//����������� ��������� ����� ������������������ �������� 
if Trim(TextAnamAllergy) = ''
  then //���� ���-���� ��� ������
    TextAnamAllergy:= TmpStr //����� �������� ��� ����� ���������� TmpStr
  else//���� ���-�� ��������
    if TextAnamAllergy <> TmpStr //���� ����� ����� ���������� �� �������
      then
        if Application.MessageBox('����� ��������� ������ ������������������ ��������' +
             ' ������ ����� �������� �� ����� �������������� �����. ��������� ������?',
             '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamAllergy:= TmpStr;//��������, ���� ����� "��"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.AppEventsFrmAllergyChoiceShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;

//"�������" ������� �������� �� ������ ����
AppEventsFrmAllergyChoice.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.FormCreate(Sender: TObject);
begin
NiceSetFrmAllergyChoice.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmAllergyChoice.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '����������������� ������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '����������������� ������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmAllergyChoice.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
