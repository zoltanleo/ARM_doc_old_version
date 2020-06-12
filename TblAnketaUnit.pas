unit TblAnketaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Spin, DB, DBTables, StrUtils, ExtCtrls, DateUtils,
  DBGridEh, DBCtrlsEh, DBLookupEh, NiceSettings, AppEvnts, FIBDataSet, pFIBDataSet;

type
  TFrmTblAnketa = class(TForm)
    BtnCancel: TButton;
    BtnOK: TButton;
    NiceSetFrmTblAnketa: TNiceSettings;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    DTPickDateBorn: TDateTimePicker;
    Label37: TLabel;
    PnlSex: TPanel;
    Label36: TLabel;
    RdBtnMale: TRadioButton;
    RdBtnFemale: TRadioButton;
    Label5: TLabel;
    DBLookupCBViewTown: TDBLookupComboboxEh;
    LblWarnTblTown: TLabel;
    Label30: TLabel;
    Label6: TLabel;
    EdtAdress: TEdit;
    Label16: TLabel;
    EdtPhone: TEdit;
    Label10: TLabel;
    CBSocial: TComboBox;
    Label38: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    AppEventsFrmAnketa: TApplicationEvents;
    EdtLastName: TDBEditEh;
    EdtFirstName: TDBEditEh;
    EdtThirdName: TDBEditEh;
    DSetMRUAnketa: TpFIBDataSet;
    BtnHlp: TButton;
    LblKeyBrdLayot: TLabel;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure DBLookupCBViewTownEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdtAdressKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmAnketaShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure EdtLastNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLastNameChange(Sender: TObject);
    procedure EdtFirstNameChange(Sender: TObject);
    procedure EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtThirdNameChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckValidTables(Sender: TObject);
    procedure AddEdtAnketaControl(Sender: TObject);
    procedure CheckSymbolEdtEhStr(Sender: TDBEditEh);
    procedure CheckEdtEhEmpty(Sender: TDBEditEh; const MesStr: String);//��������� "�������" Eh-������
    procedure FillEdtEhMRULst(Sender: TDBEditEh);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblAnketa: TFrmTblAnketa;

implementation

uses
  MainAndrUnit, VarAndrUnit, TblPriceUnit,
  TblClinicUnit, TblDoctorUnit, TblTownUnit, StatusPatUnit,
  ReseachLuesUnit, StLocalisTemplUnit, StPraesensTemplUnit, DMFIBUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormShow(Sender: TObject);
begin
AddEdtAnketaControl(Sender);//���������, ��� ��������� ��������� (��������-�������������)
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnOKClick(Sender: TObject);
begin
(***** ��������� ���������� ������������ ����� *****)
//��������� �����
if Trim(EdtLastName.Text) = ''
  then CheckEdtEhEmpty(EdtLastName, '�� �� ������� ������� ��������!');

if Trim(EdtFirstName.Text) = ''
  then CheckEdtEhEmpty(EdtFirstName, '�� �� ������� ��� ��������!');

if Trim(EdtThirdName.Text) = ''
  then CheckEdtEhEmpty(EdtThirdName, '�� �� ������� �������� ��������!');

//��������� �������� DBLookUpCB ��� ������� �������
if Trim(DBLookupCBViewTown.Text) = '' then
  begin
  Application.MessageBox('�� �� ������� ���������� �����!', '��������!',
                                 MB_OK + MB_ICONINFORMATION);
  if DBLookupCBViewTown.CanFocus then DBLookupCBViewTown.SetFocus;//����� �� LookUp
  Abort;
  end;


(***** �������� ��������� �������� � ������� *****)

with DMFIB,DSetAnketa do
  begin
   if TblAnketaFlag//���� �������
    then
      Append//������� ������
    else
      Edit;//����������� ������

    FieldByName('Ank_LinkTown').Value:= DBLookupCBViewTown.KeyValue;
    FieldByName('AnkLastName').AsString:= Trim(EdtLastName.Text);
    FieldByName('AnkFirstName').AsString:= Trim(EdtFirstName.Text);
    FieldByName('AnkThirdName').AsString:= Trim(EdtThirdName.Text);
    FieldByName('Sex').AsInteger:= BoolConvertInt(RdBtnMale.Checked);
    FieldByName('AnkDateBorn').AsDateTime:= DTPickDateBorn.Date;
    FieldByName('AnkAdress').AsString:= Trim(EdtAdress.Text);
    FieldByName('AnkPhone').AsString:= Trim(EdtPhone.Text);
    FieldByName('Social').AsInteger:= CBSocial.ItemIndex;
  end;{with}

  try
    if DMFIB.DSetAnketa.CanModify then DMFIB.DSetAnketa.Post;//��������� ���������
    VarID_Tbl_Anketa:= DMFIB.DSetAnketa.FN('ID_ANKETA').AsInteger;//���������� ��� ������
  except
    if DMFIB.DSetAnketa.CanModify then DMFIB.DSetAnketa.Cancel;//���������� ���������
  end;{try..except}

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.AppEventsFrmAnketaShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) then
      begin
        if DBLookupCBViewTown.Focused then DBLookupCBViewTownEditButtons0Click(Self,Handled)
      end;

    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnOKClick(Self);//��������� ������� ������� "���������"
  end;
//"�������" ������� �������� �� ������ ����
AppEventsFrmAnketa.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnCancelClick(Sender: TObject);
begin
//���� ����� ���� �� ����� ����� �� ������
if (Length(Trim(EdtLastName.Text)) <> 0) or
      (Length(Trim(EdtFirstName.Text)) <> 0) or
          (Length(Trim(EdtThirdName.Text)) <> 0) or
              (Length(Trim(EdtAdress.Text)) <> 0) or
                  (Length(Trim(EdtPhone.Text)) <> 0) then
  begin
    if Application.MessageBox('����� ��������� ���� ������ ��� ����������� ����� ��������. �� �������, ��� ������ '
                         + '������� ����?','������ ��������� ������',MB_ICONINFORMATION + MB_YESNO) = IDNo
      then
        Exit; //���� ������������ ��������� ����, �� ������ �� ���������
  end;

Close;//����� � ����� ������ ������� ����
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxAnketa);
end;

//----------------------------------------------------------------------------------
//��������� �����������
procedure TFrmTblAnketa.CheckValidTables(Sender: TObject);
begin
//������� LookUpCBoxViewTown
DMFIB.DSetTown.FullRefresh;//������� �������

if not DMFIB.DSetTown.IsEmpty//���� ��� �� ������
  then
    begin
    LblWarnTblTown.Visible:= False;//������� ��������������
    if TblAnketaFlag
      //����������� ������
      then DBLookupCBViewTown.KeyValue:=
                        DMFIB.DSetTown.FN('ID_TOWN').Value
      //������������� ������
      else DBLookupCBViewTown.KeyValue:=
                        DMFIB.DSetAnketa.FN('ANK_LINKTOWN').Value;
    end {if..then}
  else //���� ������� ������� ������
    begin
    LblWarnTblTown.Visible:= True;//������� ��������������
    DBLookupCBViewTown.Text:= '';//LookUp'� ������ ������
    end;{if..else}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.AddEdtAnketaControl(Sender: TObject);
begin

//��������� �����������, ��������������� ������� � �������� DBLookUpCB
CheckValidTables(Sender);

if TblAnketaFlag
  then //������ ����� �����������
    begin
      //������� �����
      EdtLastName.Clear;
      EdtFirstName.Clear;
      EdtThirdName.Clear;
      EdtAdress.Clear;
      EdtPhone.Clear;
      RdBtnMale.Checked:= True;//�� ��������� ��� �����
      DTPickDateBorn.Date:= Today;//������ ������� ����
      CBSocial.ItemIndex:= 0;

      if EdtLastName.CanFocus then EdtLastName.SetFocus;//����� � ������ ����
    end {if..then}
  else //������ ����� ���������������
    with DMFIB, DSetAnketa do
      begin
        EdtLastName.Text:= Trim(FieldByName('AnkLastName').AsString);
        EdtFirstName.Text:= Trim(FieldByName('AnkFirstName').AsString);
        EdtThirdName.Text:= Trim(FieldByName('AnkThirdName').AsString);
        RdBtnMale.Checked:= IntConvertBool(FieldByName('Sex').AsInteger);
        RdBtnFemale.Checked:= not IntConvertBool(FieldByName('Sex').AsInteger);
        DTPickDateBorn.Date:= FieldByName('AnkDateBorn').AsDateTime;
        EdtAdress.Text:= Trim(FieldByName('AnkAdress').AsString);
        CBSocial.ItemIndex:= FieldByName('Social').AsInteger;
        EdtPhone.Text:= Trim(FieldByName('AnkPhone').AsString);
      end;{with}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.DBLookupCBViewTownEditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
FrmMainProg.ActTblTownExecute(Sender);//������� ������� �������
//������� DBLookUp  �������
if not DMFIB.DSetTown.IsEmpty//���� ��� �� ������
        then
          begin
          LblWarnTblTown.Visible:= False;//������� ��������������
          DBLookupCBViewTown.KeyValue:= DMFIB.DSetTown.FieldByName('ID_TOWN').Value;
          end {if..then}
        else //����
          begin
          LblWarnTblTown.Visible:= True;//������� ��������������
          DBLookupCBViewTown.Text:= '';//LookUp'� ������ ������
          end;{if..else}
//������� DBLookUp
DBLookupCBViewTown.ListSource:= nil;
DBLookupCBViewTown.ListSource:= DMFIB.DSTown;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtLastNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtLastName);
UpFirstCharEhEdt(EdtLastName);
FillEdtEhMRULst(EdtLastName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtLastNameKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> '-') and (Key <> #8) and (Key <> #13)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//  then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� �������� '
//      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtFirstNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtFirstName);
UpFirstCharEhEdt(EdtFirstName);
FillEdtEhMRULst(EdtFirstName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtFirstNameKeyPress(Sender: TObject; var Key: Char);
begin
//��������� �� ��������
if (Key <> '-') and (Key <> #8) and (Key <> #13{Esc}) and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl}
  and (Key <> #27) and (Key <> #32{������}) and (Key <> #40) and (Key <> #41){������� ������}
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

procedure TFrmTblAnketa.EdtThirdNameChange(Sender: TObject);
begin
CheckSymbolEdtEhStr(EdtThirdName);
UpFirstCharEhEdt(EdtThirdName);
FillEdtEhMRULst(EdtThirdName);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtThirdNameKeyPress(Sender: TObject; var Key: Char);
begin
//if ((Key < '�') or (Key > '�')) and (Key <> '-') and (Key <> #8) and (Key <> #13) and (Key <> #32)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//  then
//    begin
//      Beep;
//      Application.MessageBox('�� ������ ������� ������ ������� �������� ��������, ������ '
//      + '� �����!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtAdressKeyPress(Sender: TObject; var Key: Char);
begin
//if not((Key < #60) or (Key > #126))
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� �� ������ ������� ������� ���������� ��������!',
//       '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
//��������� �� ��������
if (Key <> '-') and (Key <> #8{backspace}) and (Key <> #13{Enter}) and (Key <> '#') and (Key <> '�')
    and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl} and (Key <> '.') and (Key <> ',') and (Key <> '/')
      and (Key <> #27{Esc}) and (Key <> #32{������}) and (Key <> '(') and (Key <> ')')
        and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
    then //��������� �� ���������� �������� �������� � ��������� � ����
      if (not PrmIsLatinSymb(Key)) and (not PrmIsCyrillicSymb(Key) and (not PrmIsDigitSymb(Key))) then
        begin
          Beep;
          Application.MessageBox('�� ����� ������������ ������!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
          Key:= #0;
        end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.EdtPhoneKeyPress(Sender: TObject; var Key: Char);
begin
//if not (((Key < #60) or (Key > #90)) and ((Key < #96) or (Key > #122))) and (Key <> #8)
//    and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
//   then
//    begin
//      Beep;
//      Application.MessageBox('�� �� ������ ������� ������� ���������� ��������!',
//      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
//      Key:= #0;
//    end;
if (Key <> '-') and (Key <> #8{backspace}) and (Key <> #13{Enter}) and (not(GetKeyState(VK_CONTROL) < 0)){Ctrl}
    and (not PrmIsDigitSymb(Key)) and (Key <> #27{Esc}) and (Key <> #32{������}) and (Key <> '(') and (Key <> ')')
        and (Key <> ^C) and (Key <> ^V) and (Key <> ^X) {�������� �������������� Ctrl+C [��� #3], Ctrl+V [��� #22] � Ctrl+X [��� #24]}
         then
          begin
            Beep;
            Application.MessageBox('�� ����� ������������ ������!', '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
            Key:= #0;
          end;
end;

//----------------------------------------------------------------------------------
//���������� � ����������� ������ ������ Eh-�����
procedure TFrmTblAnketa.CheckEdtEhEmpty(Sender: TDBEditEh; const MesStr: String);
begin
Application.MessageBox(PChar(MesStr), '��������!', MB_OK + MB_ICONINFORMATION);
TDBEditEh(Sender).Clear;
if TDBEditEh(Sender).CanFocus then TDBEditEh(Sender).SetFocus;
Abort;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.CheckSymbolEdtEhStr(Sender: TDBEditEh);
var FirstChar: String;
begin
FirstChar:= AnsiUpperCase(LeftStr(Trim(TDBEditEh(Sender).Text),1));
if (FirstChar = '-') or (FirstChar = '�') or (FirstChar = '�') or (FirstChar = '�')
    or (FirstChar = '�')
  then
    begin
      Application.MessageBox(PChar('� ������ ����������� ������ ������ �� ������ ���� '''
      + FirstChar + ''' !'), '������������ ������', MB_ICONINFORMATION);
      TDBEditEh(Sender).Clear;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormCreate(Sender: TObject);
begin
NiceSetFrmTblAnketa.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblAnketa.LoadSettings;

//��������������� ��������� ���������������� ���������
if PrmIsDigit(LblKeyBrdLayot.Caption) //���� ��� �����
  then // �� ����������� � ���������� ���������
    begin
      {"���������" ����� 68748313(��� ������� �����) � 67699721(��� ��������) �������� ����� }
      {������� GetKeyboardLayout - ��. ����� OnClose ���� �����}
      //67568647 german 407
      //4035316746 spain ?
      //68158480 italian 410
      //67696332 france ?
      
      case StrToInt(LblKeyBrdLayot.Caption) of
        68748313: LoadKeyboardLayout('00000419',KLF_ACTIVATE); //������������� �� ���������
        else// � ��������� ������ ����� ��������
          LoadKeyboardLayout('00000409',KLF_ACTIVATE);//������������� �� ��������
      end;
    end
  else //����� �������� �� ������� �������, � ������� �������� ��, ������� ����� �� ������ �������� ����
    LoadKeyboardLayout('00000419',KLF_ACTIVATE);//������������� �� ������� ��������� ����������

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------
//��������� MRU-���� ������� 20 ����������� ���������� �� ���� ������
procedure TFrmTblAnketa.FillEdtEhMRULst(Sender: TDBEditEh);
var FldName: string;
begin
if (DMFIB.DSetAnketa.IsEmpty) or (Length(Trim(TDBEditEh(Sender).Text)) < 3) then
  begin
    TDBEditEh(Sender).MRUList.CloseUp(True);//���������� MRU-����
    TDBEditEh(Sender).MRUList.Active:= False;//��������� MRU-����
    Exit;//������, �.�. �� �� ���� �������� ��� ������������ ������� ������� �����
  end;

  //�������� ����, ������� ����� ����������� � MRU-����
  case TDBEditEh(Sender).Tag of
    1: FldName:= 'ANKLASTNAME';
    2: FldName:= 'ANKFIRSTNAME';
    3: FldName:= 'ANKTHIRDNAME';
  end;

with DSetMRUAnketa do
 begin
   if Active then Close;
   SQLs.SelectSQL.Text:= //�������� 10 ������ �������� ���������� �������
        'SELECT FIRST 10 DISTINCT ' + FldName + ' ' +
        'FROM TBL_ANKETA ' +
        'WHERE LOWER(' + FldName + ') STARTING WITH :prmStr ' +
        'ORDER BY 1';
   Prepare;
   ParamByName('prmStr').Value:= AnsiLowerCase(Trim(TDBEditEh(Sender).Text));
   Open;
 end;

//���� ������� ����, �� ����� ��������� �� ���������
if DSetMRUAnketa.IsEmpty then Exit;

//������������� ����� � ��������� MRU-���� ����������
with TDBEditEh(Sender).MRUList do
  begin
    Active:= True;//�������� MRU-����
    Items.Clear;//������ MRU-����
    Rows:= 10;//���������� ������ 10 �����
  end;


DSetMRUAnketa.First;//������ � ������ ������

while not DSetMRUAnketa.Eof do
  begin
    TDBEditEh(Sender).MRUList.Add(Trim(DSetMRUAnketa.FN(FldName).AsString));
    DSetMRUAnketa.Next;
  end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblAnketa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
LblKeyBrdLayot.Caption:= IntToStr(GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow,nil)));

//��������� ��������� �����
NiceSetFrmTblAnketa.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
