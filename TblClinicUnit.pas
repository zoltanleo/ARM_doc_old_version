unit TblClinicUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, Buttons, jpeg, ExtDlgs, DBTables,
  ComCtrls, DB, ImgList, Menus, NiceSettings, AppEvnts;

type
  TFrmTblClinic = class(TForm)
    PnlCaption: TPanel;
    PnlBtnBar: TPanel;
    BtnClose: TButton;
    LblCapt: TLabel;
    PnlEdtTblClinic: TPanel;
    PnlViewTblClinic: TPanel;
    EdtName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtPhone: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ImageLogos: TImage;
    SpBtnClinAdd: TSpeedButton;
    SpBtnClinEdit: TSpeedButton;
    SpBtnClinDelete: TSpeedButton;
    SpBtnPictLoad: TSpeedButton;
    SpBtnPictErase: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label7: TLabel;
    Label8: TLabel;
    BtnSave: TButton;
    BtnCancel: TButton;
    DBGridClinic: TDBGridEh;
    REAdress: TRichEdit;
    RERekvizit: TRichEdit;
    REInternet: TRichEdit;
    RENalog: TRichEdit;
    RELicense: TRichEdit;
    LblWarning: TLabel;
    Label9: TLabel;
    PpMnuTblClinic: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblClinic: TNiceSettings;
    AppEventsFrmClinic: TApplicationEvents;
    BtnHlp: TButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnClinAddClick(Sender: TObject);
    procedure SpBtnClinEditClick(Sender: TObject);
    procedure SpBtnClinDeleteClick(Sender: TObject);
    procedure SpBtnPictLoadClick(Sender: TObject);
    procedure SpBtnPictEraseClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridClinicDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmClinicShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);//���������� ����� � ����� ������
  private
    { Private declarations }
    procedure BtnEditRecOff(Sender: TObject);
    procedure BtnEditRecOn(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblClinic: TFrmTblClinic;

implementation

uses MainAndrUnit, TblAnketaUnit, TblPriceUnit, VarAndrUnit,
  TblDoctorUnit, TblTownUnit, StatusPatUnit, DMFIBUnit, FIBDataSet;

var ClinFPath, TmpFExt:String;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.BtnEditRecOff(Sender: TObject);
begin
//������ �������� ��������� �������������� �������
if TblClinicFlag
  then LblCapt.Caption:= '������� ������ ������ ���'
  else LblCapt.Caption:= '�������������� ������ ���';


PnlViewTblClinic.Enabled:= False;//������ ������ � ��������
PnlEdtTblClinic.Visible:= True;//���������� ������ ��������������

//����������-������ ������ PnlBtnBar
BtnClose.Visible:= False;//������ ������ �������� �����
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

LblWarning.Font.Color:= clGray;

SpBtnClinAdd.Enabled:= False;
SpBtnClinEdit.Enabled:= False;
SpBtnClinDelete.Enabled:= False;

FrmMainProg.SwitchGrid(DBGridClinic, False);

FormResize(Sender);  
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.BtnEditRecOn(Sender: TObject);
begin
PnlEdtTblClinic.Visible:= False;//������ ������ ��������������
PnlViewTblClinic.Enabled:= True;//���������� ������ � ��������

//����������-������ ������ PnlBtnBar
BtnClose.Visible:= True;//������� ������ �������� �����
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

SpBtnClinAdd.Enabled:= True;

LblCapt.Caption:= '������� �������� ����������';
LblWarning.Font.Color:= clRed;

FormResize(Sender);

with DMFIB, DSetClinic do
  begin
    FullRefresh;
    SpBtnClinEdit.Enabled:= not IsEmpty;
    SpBtnClinDelete.Enabled:= not IsEmpty;
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridClinic, not IsEmpty);
  end;

if DBGridClinic.CanFocus then DBGridClinic.SetFocus;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxClinic);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.FormShow(Sender: TObject);
begin
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

//��������� ������ ������ ���
procedure TFrmTblClinic.SpBtnClinAddClick(Sender: TObject);
begin
TblClinicFlag:= True;
BtnEditRecOff(Sender);

//������� ����������
EdtName.Clear;
EdtPhone.Clear;
REAdress.Clear;
RERekvizit.Clear;
REInternet.Clear;
RELicense.Clear;
RENalog.Clear;
ImageLogos.Picture.Graphic:= nil;
if EdtName.CanFocus then EdtName.SetFocus;//����� � ����
end;

//----------------------------------------------------------------------------------

//����������� ������ ���
procedure TFrmTblClinic.SpBtnClinEditClick(Sender: TObject);
var msA, msR, msI, msN, msL: TMemoryStream;
    TmpFPath: String;
begin
TmpFPath:= '';
TblClinicFlag:= False;
BtnEditRecOff(Sender);

//������� ����-�������
msA:= TMemoryStream.Create;
msR:= TMemoryStream.Create;
msI:= TMemoryStream.Create;
msN:= TMemoryStream.Create;
msL:= TMemoryStream.Create;
  try
    //���������� � ���������� ������ �� �������
    with DMFIB.DSetClinic do
      begin
        EdtName.Text:= Trim(FieldByName('Clin_Name').AsString);
        EdtPhone.Text:= Trim(FieldByName('Clin_Phone').AsString);

        TBlobField(FieldByName('Clin_Adress')).SaveToStream(msA);
        msA.Position:= 0;
        REAdress.Lines.LoadFromStream(msA);

        TBlobField(FieldByName('Clin_Rekvizit')).SaveToStream(msR);
        msR.Position:= 0;
        RERekvizit.Lines.LoadFromStream(msR);

        TBlobField(FieldByName('Clin_Internet')).SaveToStream(msI);
        msI.Position:= 0;
        REInternet.Lines.LoadFromStream(msI);

        TBlobField(FieldByName('Clin_License')).SaveToStream(msL);
        msL.Position:= 0;
        RELicense.Lines.LoadFromStream(msL);

        TBlobField(FieldByName('Clin_Nalog')).SaveToStream(msN);
        msN.Position:= 0;
        RENalog.Lines.LoadFromStream(msN);

        //���� ���� �� ������, �� �������� ��������
        if not FN('Clin_Logos').IsNull then
          begin
            TmpFPath:= ClinFPath + '\ClinLogosTmpImg' + FN('CLIN_LOGOS_EXT').AsString;
            TBlobField(FN('CLIN_LOGOS')).SaveToFile(TmpFPath);
              try
                ImageLogos.Picture.LoadFromFile(TmpFPath);
              except
                Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
              end;
          end;
      end;{with}
  finally
    //���������� ����-�������
    msA.Free;
    msR.Free;
    msI.Free;
    msN.Free;
    msL.Free;
  end;{try..finally}
if EdtName.CanFocus then EdtName.SetFocus;//����� � ����
end;

//----------------------------------------------------------------------------------

//������� ������ ���
procedure TFrmTblClinic.SpBtnClinDeleteClick(Sender: TObject);
begin
with DMFIB, DSetClinic do
  begin
    if IsEmpty then Exit;//���� ������� ������, �� ������ �� ���
    try
      Delete;//������� ������
    except
      Application.MessageBox(PChar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
      Exit;
    end;{try..except}
  end;{with}
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------
//��������� �������� � �����
procedure TFrmTblClinic.SpBtnPictLoadClick(Sender: TObject);
begin
  TmpFExt:= '';
  if OpenPictureDialog1.Execute then
    begin
      //�������� ������� ����� � ������ (��� ������� ������ ��������� �������������)
      if GetFileSize(OpenPictureDialog1.FileName) > 500000 then
        begin
          Application.MessageBox('������ ������������ � �� ����� �� ������ ��������� 500 Kb!'
                             + #13#10 + '���������� ��������� ��� �������� � �����-������ '
                             + '����������� ���������.', '������ ������� � ������,',
                             MB_ICONINFORMATION);
          Exit;
        end;
      try
        ImageLogos.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        TmpFExt:= Trim(ExtractFileExt(OpenPictureDialog1.FileName));
      except
        Application.MessageBox('�� ������� ��������� �����������! �������� ���� ��������� '
                   + '��� ��� ���������� �� �������� ��������.','������ ������� � ������');
        TmpFExt:= '';
      end;  
    end;
end;

//----------------------------------------------------------------------------------
//������� �������� � �����
procedure TFrmTblClinic.SpBtnPictEraseClick(Sender: TObject);
begin
ImageLogos.Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------------

//������� ���������� ������
procedure TFrmTblClinic.BtnSaveClick(Sender: TObject);
var msA, msR, msI, msN, msL: TMemoryStream;
begin
if Trim(EdtName.Text) = '' then
  begin
    FrmMainProg.CheckEdtEmpty(EdtName,'�� �� ����� �������� ��������� ����������!');
    EdtName.Clear;//������� ������ �� ������ ��������� ��������
    EdtName.SetFocus;//����� ����� �� ������ �����
    Exit;//��������� ���������
  end;

  with DMFIB, DSetClinic do
    begin
      try{1}
        if TblClinicFlag//���� ������ ������ "��������"
          then Insert//��������� ����� ������
          else Edit;//����������� ��������� ������

        msA:= TMemoryStream.Create;
        msR:= TMemoryStream.Create;
        msI:= TMemoryStream.Create;
        msN:= TMemoryStream.Create;
        msL:= TMemoryStream.Create;
        try{2}
          FieldByName('Clin_Name').AsString:= Trim(EdtName.Text);
          FieldByName('Clin_Phone').AsString:= Trim(EdtPhone.Text);

          REAdress.Lines.SaveToStream(msA);
          msA.Position:= 0;
          TBlobField(FN('Clin_Adress')).LoadFromStream(msA);

          RERekvizit.Lines.SaveToStream(msR);
          msR.Position:= 0;
          TBlobField(FN('Clin_Rekvizit')).LoadFromStream(msR);

          REInternet.Lines.SaveToStream(msI);
          msI.Position:= 0;
          TBlobField(FN('Clin_Internet')).LoadFromStream(msI);

          RELicense.Lines.SaveToStream(msL);
          msL.Position:= 0;
          TBlobField(FN('Clin_License')).LoadFromStream(msL);

          RENalog.Lines.SaveToStream(msN);
          msN.Position:= 0;
          TBlobField(FN('Clin_Nalog')).LoadFromStream(msN);

          if ImageLogos.Picture.Graphic <> nil//���� ����� �� ������
            then
              begin
               ImageLogos.Picture.SaveToFile(ClinFPath + '\ClinLogosTmpImg.tmp');//��������� �� ��������� ����
               TBlobField(FN('Clin_Logos')).LoadFromFile(ClinFPath + '\ClinLogosTmpImg.tmp');
               FN('Clin_Logos_EXT').AsString:= TmpFExt;
              end
            else //����� ����� ������ - "�������" ����
              begin
                TBlobField(FieldByName('Clin_Logos')).Clear;
                FN('CLIN_LOGOS_EXT').AsString:= '';
              end;
        finally
          msA.Free;
          msR.Free;
          msI.Free;
          msN.Free;
          msL.Free;
        end;{try..finally}{2}

        if DSetClinic.Modified then DSetClinic.Post;//��������� ��������� � �������
      except
        if DSetClinic.Modified then DSetClinic.Cancel;//�������� ��������� � �������
        Application.MessageBox(PChar(ErrorMsg),'������ ��������� ������',MB_ICONINFORMATION);
        Exit;//��������
      end;{try..except}{1}
    end;{with}
  BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.AppEventsFrmClinicShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtTblClinic.Visible
      then
        begin
          if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnPictLoad.Enabled then SpBtnPictLoadClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnPictErase.Enabled then SpBtnPictEraseClick(Self);

          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//��������� ������� ������� "�������"

          //��������� ������� ������ �������������� �����
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnClinAdd.Enabled then SpBtnClinAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0)) and SpBtnClinEdit.Enabled then SpBtnClinEditClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnClinDelete.Enabled then SpBtnClinDeleteClick(Self);
        end;
  end;
//"�������" ������� �������� �� ������ ����
AppEventsFrmClinic.CancelDispatch;
end;

//----------------------------------------------------------------------------------
//����� �� ��������� ������
procedure TFrmTblClinic.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetClinic.Modified then DMFIB.DSetClinic.Cancel;
BtnEditRecOn(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;

with LblWarning do
  begin
    Parent:= DBGridClinic;
    Left:= (DBGridClinic.Width - LblWarning.Width) div 2;
    Top:= DBGridClinic.Height div 2;
  end;

end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.FormCreate(Sender: TObject);
begin
NiceSetFrmTblClinic.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblClinic.LoadSettings;

BtnCancel.Left:= BtnClose.Left;//���������� ������ ������ ����������
BtnCancel.Visible:= False;
BtnSave.Visible:= False;

//������� ���������� ����� ��� ��������� ������
ClinFPath:= ExtractFileDrive(Application.ExeName) + '\Temp\FBUserTmpFiles_'
                          + IntToStr(DMFIB.Database.Gen_Id('GEN_OTHER_UNQ',1,nil));

if not DirectoryExists(ClinFPath) then ForceDirectories(ClinFPath);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------
//������������ ����
procedure TFrmTblClinic.DBGridClinicDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridClinic.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridClinic.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridClinic.Canvas.Brush.Color:= clMoneyGreen;
		DBGridClinic.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridClinic.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblClinic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//������ ����� ��� ��������� ������
if DirectoryExists(ClinFPath) then RemoveTmpDir(ClinFPath);

//��������� ��������� �����
NiceSetFrmTblClinic.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
