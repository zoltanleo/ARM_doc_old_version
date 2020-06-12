unit TblDoctorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, Buttons, DBLookupEh,
  Menus, NiceSettings, Mask, DBCtrlsEh, FIBDataSet, ComCtrls, QStrings, AppEvnts;

type
  TFrmTblDoctor = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblDoctor: TPanel;
    PnlViewTblDoctor: TPanel;
    PnlBtnBar: TPanel;
    BtnClose: TButton;
    LblCapt: TLabel;
    DBGridTblDoc: TDBGridEh;
    SpBtnDoctAdd: TSpeedButton;
    SpBtnDoctEdit: TSpeedButton;
    SpBtnDoctDelete: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtLastName: TEdit;
    EdtFirstName: TEdit;
    EdtThirdName: TEdit;
    Label4: TLabel;
    EdtProfil: TEdit;
    CBCategory: TComboBox;
    CBStepen: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    BtnCancel: TButton;
    BtnSave: TButton;
    LblWarning: TLabel;
    PpMnuTblDoctor: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDoctor: TNiceSettings;
    Label7: TLabel;
    CbBoxDocJob: TComboBox;
    Label8: TLabel;
    EdtContactPhone: TEdit;
    ChkBoxVisiblePhone: TCheckBox;
    Label10: TLabel;
    BtnConsultEdt: TButton;
    BtnDocHlp: TButton;
    AppEventsFrmDoctor: TApplicationEvents;
    LblKeyBrdLayot: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure SpBtnDoctAddClick(Sender: TObject);
    procedure SpBtnDoctEditClick(Sender: TObject);
    procedure SpBtnDoctDeleteClick(Sender: TObject);
    procedure DBGridTblDocDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure EdtLastNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProfilKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridTblDocDblClick(Sender: TObject);
    procedure EdtLastNameChange(Sender: TObject);
    procedure EdtFirstNameChange(Sender: TObject);
    procedure EdtThirdNameChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtContactPhoneChange(Sender: TObject);
    procedure BtnConsultEdtClick(Sender: TObject);
    procedure EdtContactPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProfilExit(Sender: TObject);
    procedure AppEventsFrmDoctorShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnDocHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPnlViewDoctor(Sender: TObject);
    procedure ShowPnlEdtDoctor(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblDoctor: TFrmTblDoctor;

implementation

uses MainAndrUnit, ReseachLuesUnit,
  StatusPatUnit, StPraesensTemplUnit, TblAnketaUnit, TblClinicUnit,
  TblPriceUnit, TblTownUnit, VarAndrUnit, DMFIBUnit, uFrmConsultation;

var PhoneNumFlag, //����������� ���� �������� �������
    ReturnEdtFlag //����������� ������� � ������ �������������� (���� �� �������� ��������� ����������� ������)
              : integer;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormShow(Sender: TObject);
begin
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
//MinWidth:= 680;
//MaxWidth:= 680;
//MinHeight:= 400;
//MaxHeight:= 650;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//�������� ���������

with LblWarning do
  begin
    Parent:= DBGridTblDoc;
    Left:= (DBGridTblDoc.Width - LblWarning.Width) div 2;
    Top:= DBGridTblDoc.Height div 2;
  end;

end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.ShowPnlEdtDoctor(Sender: TObject);
begin
PnlEdtTblDoctor.Visible:= True;
PnlViewTblDoctor.Enabled:= False;
FrmMainProg.SwitchGrid(DBGridTblDoc, False);

BtnClose.Visible:= False;
SpBtnDoctAdd.Enabled:= False;
SpBtnDoctEdit.Enabled:= False;
SpBtnDoctDelete.Enabled:= False;
BtnConsultEdt.Visible:= False;
BtnDocHlp.Visible:= False;
EdtContactPhoneChange(Sender);//��������, ������ �� ����� ��������

//���������� ������ ���������
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDoctorFlag
  then
    begin
      LblCapt.Caption:= '������� ������ �����';//������ ������ "��������"
      CbBoxDocJob.ItemIndex:= 1;

      if ReturnEdtFlag = 0 then //���� ������ ������ � ������ ���, � �� ������������, ����� �� ����������
        begin
          EdtLastName.Clear;
          EdtFirstName.Clear;
          EdtThirdName.Clear;
          EdtContactPhone.Clear;
          EdtProfil.Clear;
        end;
      CBCategory.ItemIndex:= 0;
      CBStepen.ItemIndex:= 0;
      ChkBoxVisiblePhone.Checked:= False;
    end
  else
    begin
      LblCapt.Caption:= '�������������� ������ �����';//������ ������ "�������������"
    with DMFIB.DSetDoctor do
      begin
        EdtLastName.Text:= Trim(FieldByName('Doc_LastName').AsString);
        EdtFirstName.Text:= Trim(FieldByName('Doc_FirstName').AsString);
        EdtThirdName.Text:= Trim(FieldByName('Doc_ThirdName').AsString);
        EdtContactPhone.Text:= Trim(FN('DOC_CONTACTPHONE').AsString);
        EdtProfil.Text:= Trim(FieldByName('Doc_Profil').AsString);
        CBCategory.ItemIndex:= FieldByName('Doc_Category').AsInteger;
        CBStepen.ItemIndex:= FieldByName('Doc_Stepen').AsInteger;
        CbBoxDocJob.ItemIndex:= FieldByName('DOC_STUFFSTATUS').AsInteger;
        ChkBoxVisiblePhone.Checked:= IntConvertBool(FN('DOC_PHONENUMBACCESS').AsInteger);
      end;{with..do}
    end;

if EdtLastName.CanFocus then EdtLastName.SetFocus;
LblWarning.Font.Color:= clGray;
FormResize(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.ShowPnlViewDoctor(Sender: TObject);
begin
LblCapt.Caption:= '������� ������ ���';//�������� ���������

PnlEdtTblDoctor.Visible:= False;//������ ������ ��������������
PnlViewTblDoctor.Enabled:= True;//�������� ������ � ��������

//�������� ������ ��������������
BtnClose.Visible:= True;
SpBtnDoctAdd.Enabled:= True;
BtnDocHlp.Visible:= True;
BtnConsultEdt.Visible:= (SenderTag <> 668);

//������ ������ ���������
BtnSave.Visible:= False;
BtnCancel.Visible:= False;
LblWarning.Font.Color:= clRed;

FormResize(Sender);

with DMFIB, DSetDoctor do
  begin
    FullRefresh;//"��������" �����
    SpBtnDoctEdit.Enabled:= not IsEmpty;
    SpBtnDoctDelete.Enabled:= not IsEmpty;
    LblWarning.Visible:= IsEmpty;//������� ��������������, ���� ����� �� ������
    BtnConsultEdt.Enabled:= not IsEmpty;

    FrmMainProg.SwitchGrid(DBGridTblDoc, not IsEmpty);
  end;

if DBGridTblDoc.CanFocus then
  begin
    DBGridTblDoc.SetFocus;//���� �����, ����� �� ����

    //�������� �������������� �� ��������
    DBGridTblDoc.Columns[0].Title.SortMarker:= smUpEh;
    DBGridTblDoc.Columns[0].Title.SetNextSortMarkerValue(False);
    DBGridTblDoc.DefaultApplySorting;
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctAddClick(Sender: TObject);
begin
TblDoctorFlag:= True;
ShowPnlEdtDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctEditClick(Sender: TObject);
begin
TblDoctorFlag:= False;
ShowPnlEdtDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.SpBtnDoctDeleteClick(Sender: TObject);
var MesRez: Integer;
    TmpMes: String;
begin
with DMFIB.DSetDoctor do
  begin
  TmpMes:= '�� ������, ����� ���� ' + Trim(FieldByName('Doc_LastName').AsString) + ' '
           + Trim(FieldByName('Doc_FirstName').AsString) + ' '
           + Trim(FieldByName('Doc_ThirdName').AsString) + ' ��� ������?';
  end;{with}
MesRez:= Application.MessageBox(PChar(TmpMes), '��������!', MB_YESNO + MB_ICONQUESTION);
if  MesRez = IDYes then
  try
    DMFIB.DSetDoctor.Delete;
  except
    Application.MessageBox(Pchar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
    Exit;//���� ����� ��������������� ����� ������ ����������
  end;
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.DBGridTblDocDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDoc.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDoc.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTblDoc.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDoc.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTblDoc.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnSaveClick(Sender: TObject);
var res: Integer;
    TmpText, TmpStepen, TmpCateg: String;
begin
(*************      ��������� ���������� ������      ***********************)
if Trim(EdtLastName.Text) = '' then
  begin
  Application.MessageBox('�� �� ����� ������� �������!','��������!',MB_OK + MB_ICONINFORMATION);
  EdtLastName.Clear;
  if EdtLastName.CanFocus then EdtLastName.SetFocus;
  Exit;
  end;

if Trim(EdtFirstName.Text) = '' then
  begin
  Application.MessageBox('�� �� ����� ��� �������!','��������!',MB_OK + MB_ICONINFORMATION);
  EdtFirstName.Clear;
  if EdtFirstName.CanFocus then EdtFirstName.SetFocus;
  Exit;
  end;

if Trim(EdtThirdName.Text) = '' then
  begin
  Application.MessageBox('�� �� ����� �������� �������!', '��������!',MB_OK + MB_ICONINFORMATION);
  EdtThirdName.Clear;
  if EdtThirdName.CanFocus then EdtThirdName.SetFocus;
  Exit;
  end;

if PhoneNumFlag = 0 then //���� ��� �� ���������� ��� �������
  begin
    if Trim(EdtContactPhone.Text) = '' then
      begin
        if Application.MessageBox('�� �� ����� ����� �������� �������! ������ �������?', '��������!',
                                                               MB_YESNO + MB_ICONINFORMATION)= IDYes
            then
              begin
                PhoneNumFlag:= PhoneNumFlag + 1;
                EdtContactPhone.Clear;
                if EdtContactPhone.CanFocus then EdtContactPhone.SetFocus;
                Exit;
              end;
      end;
  end;

if Trim(EdtProfil.Text) = '' then
  begin
  Application.MessageBox('�� ������ ������� ������������� �����!', '��������!',
                                                                    MB_OK + MB_ICONINFORMATION);
  EdtProfil.Clear;
  if EdtProfil.CanFocus then EdtProfil.SetFocus;
  Exit;
  end;

(******************** ����������� ������ ***********************************)
case CBStepen.ItemIndex of
 0 : TmpStepen:= '';
 1 : TmpStepen:= '�.�.�., ';
 2 : TmpStepen:= '�.�.�., ';
end;{case}

case CBCategory.ItemIndex of
 0 : TmpCateg:= '';
 1 : TmpCateg:= '������ ���������, ';
 2 : TmpCateg:= '������ ���������, ';
 3 : TmpCateg:= '������ ���������, ';
end;{case}

(************ ������������ ����������� ������� *********)
with DMFIB.DSetDoctor do
  begin
    if TblDoctorFlag //������ ������ "��������"
      then Append
      else Edit;//������ ������ "�������������"

    FieldByName('Doc_LastName').AsString:= Trim(EdtLastName.Text);
    FieldByName('Doc_FirstName').AsString:= Trim(EdtFirstName.Text);
    FieldByName('Doc_ThirdName').AsString:= Trim(EdtThirdName.Text);
    FN('DOC_CONTACTPHONE').AsString:= Trim(EdtContactPhone.Text);
    FieldByName('Doc_Profil').AsString:= Trim(EdtProfil.Text);
    FieldByName('Doc_Category').AsInteger:= CBCategory.ItemIndex;
    FieldByName('Doc_Stepen').AsInteger:= CBStepen.ItemIndex;
    FieldByName('DOC_STUFFSTATUS').AsInteger:= CbBoxDocJob.ItemIndex;
    FN('DOC_PHONENUMBACCESS').AsInteger:= BoolConvertInt(ChkBoxVisiblePhone.Checked);
  end;{with}

TmpText:= '��������� ���� � ���� ������ �������� � ����� ����� ���������� ��������� '
          + '�������:' + #13#10 + #13#10 + TmpStepen + '���� ' + TmpCateg
          + Trim(EdtProfil.Text) + ' ' + Trim(EdtLastName.Text)
          + ' ' + Trim(EdtFirstName.Text) + ' ' + Trim(EdtThirdName.Text);


if Trim(EdtContactPhone.Text) <> '' then
  begin
    TmpText:= TmpText + #13#10 + '���������� �������: ' + Trim(EdtContactPhone.Text);
    if ChkBoxVisiblePhone.Checked
      then
        TmpText:=  TmpText + ' (������ ��� ���������� �����������)'
      else
        TmpText:= TmpText + ' (� ������������ ������ ���������)';
  end;

TmpText:= TmpText + #13#10 + #13#10 + '��� ���������?'; 

res:= Application.MessageBox(PChar(TmpText),'��������� �������� ������:', MB_YESNO
                                                                             + MB_ICONINFORMATION);

if res = IDYes
  then
    begin
      try
        if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Post;
      except
        if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
        Application.MessageBox(Pchar(ErrorMsg),'������ ��������� ������',MB_ICONINFORMATION);
      end;{try..except}
      ShowPnlViewDoctor(Sender);
      PhoneNumFlag:= 0;//���������� ����, ����� � ��������� ��� ����� �������� ��� �������
      ReturnEdtFlag:= 0;//���������� ����, ����� �� �������� �������� ������ � ������
    end{then}
  else
    begin
      if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
      ReturnEdtFlag:= ReturnEdtFlag + 1;
      ShowPnlEdtDoctor(Sender);
    end;{else}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormCreate(Sender: TObject);
begin
NiceSetFrmTblDoctor.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblDoctor.LoadSettings;

//��������������� ��������� ���������������� ���������
if PrmIsDigit(LblKeyBrdLayot.Caption) //���� ��� �����
  then // �� ����������� � ���������� ���������
    begin
      {"���������" ����� 68748313(��� ������� �����) � 67699721(��� ��������) �������� ����� }
      {������� GetKeyboardLayout - ��. ����� OnClose ���� �����}
      case StrToInt(LblKeyBrdLayot.Caption) of
        68748313: LoadKeyboardLayout('00000419',KLF_ACTIVATE); //������������� �� ���������
        else// � ��������� ������ ����� ��������
          LoadKeyboardLayout('00000409',KLF_ACTIVATE);//������������� �� ��������
      end;
    end
  else //����� �������� �� ������� �������, � ������� �������� ��, ������� ����� �� ������ �������� ����
    LoadKeyboardLayout('00000419',KLF_ACTIVATE);//������������� �� ������� ��������� ����������

BtnCancel.Left:= BtnClose.Left;
BtnCancel.Visible:= False;
BtnSave.Visible:= False;
PnlViewTblDoctor.Align:= alClient;
FrmTblDoctor.Caption:= '���������� ������';

//�������������� �����
PhoneNumFlag:= 0;
ReturnEdtFlag:= 0;
FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.AppEventsFrmDoctorShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblDoctor.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//��������� ������� ������� "�������"

          //��������� ������� ������ �������������� �����
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnDoctAdd.Enabled then SpBtnDoctAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnDoctEdit.Enabled then SpBtnDoctEditClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnDoctDelete.Enabled then SpBtnDoctDeleteClick(Self);

          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0)) and BtnConsultEdt.Enabled and BtnConsultEdt.Visible
            then BtnConsultEdtClick(Self);
        end;
  end;
//"�������" ������� �������� �� ������ ����
AppEventsFrmDoctor.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDoctor.Modified then DMFIB.DSetDoctor.Cancel;
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtLastNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> '-') and (Key <> #8)
//  and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
//    and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� �������� '
//      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;

//��������� �� �������� �� ������� ������� ���, ������� �� ��������� ���� �������
if (Key <> '-') and (Key <> #8) and (Key <> #13) and (not(GetKeyState(VK_CONTROL) < 0)) and FocusFlag  and (Key <> #27)
    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
  then //��������� �� ���������� �������� �������� � ���������
    if (not PrmIsLatinSymb(Key)) and (not PrmIsCyrillicSymb(Key)) then
      begin
        Beep;
        Application.MessageBox('�� ������ ������� ������ ��������� ������� '
        + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
        Key:= #0;
      end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtFirstNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> #8) and (not(GetKeyState(VK_CONTROL) < 0))
//  and (Key <> #27) and (Key <> #13) and FocusFlag
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� �������� !',
//      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtThirdNameKeyPress(Sender: TObject;
  var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> '-') and (Key <> #8) and (not(GetKeyState(VK_CONTROL) < 0))
//    and (Key <> #13) and (Key <> #27) and FocusFlag
//      and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� �������� '
//      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtProfilKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> '-') and (Key <> #8) and (Key <> #32)
//  and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
//    and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� ��������, ������ '
//      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtContactPhoneKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> '-') and (Key <> #8) and (Key <> #32) and
      (Key <> '+') and (Key <> '(') and (Key <> ')') and (not(GetKeyState(VK_CONTROL) < 0)) and (Key <> #13)
        and (Key <> #27) and FocusFlag and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ �����, ������� ������, ������ '
      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.DBGridTblDocDblClick(Sender: TObject);
begin
if DMFIB.DSetDoctor.IsEmpty then Exit;
SpBtnDoctEditClick(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtLastNameChange(Sender: TObject);
begin
UpFirstChar(EdtLastName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtFirstNameChange(Sender: TObject);
begin
UpFirstChar(EdtFirstName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtThirdNameChange(Sender: TObject);
begin
UpFirstChar(EdtThirdName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//�������� ���������
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

//��������� ��������� �����
NiceSetFrmTblDoctor.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.EdtContactPhoneChange(Sender: TObject);
begin
ChkBoxVisiblePhone.Enabled:= (Trim(EdtContactPhone.Text) <> '');
end;

//----------------------------------------------------------------------------------
//����� ����� � ����������� ������
procedure TFrmTblDoctor.BtnConsultEdtClick(Sender: TObject);
begin
TblConsultFlag:= True;

  with TFrmConsultation.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;

//������������� ������ � ������ ��������
ShowPnlViewDoctor(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblDoctor.BtnDocHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnDocHlp,HlpCtxDoctor);
end;

//----------------------------------------------------------------------------------
//������� ����� "����", ���� ��� ��� ����
procedure TFrmTblDoctor.EdtProfilExit(Sender: TObject);
begin
  if Pos('����',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0 then
    begin
      if Pos('���� ',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0
        then EdtProfil.Text:= Q_ReplaceText(Trim(EdtProfil.Text),'���� ','');
      if Pos('����-',AnsiLowerCase(Trim(EdtProfil.Text))) <> 0
        then EdtProfil.Text:= Q_ReplaceText(Trim(EdtProfil.Text),'����-','');
      Application.MessageBox('����� "����" ������� �� �����','�������������� ��������� ������',
                                                                                MB_ICONINFORMATION);
    end;
end;

//----------------------------------------------------------------------------------

end.
