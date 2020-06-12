unit uFrmReportResearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, StrUtils, ExtCtrls, Buttons, GridsEh, DBGridEh,
  Mask, DBCtrlsEh, MemTableDataEh, Db, FIBDataSet, pFIBDataSet, MemTableEh, padegFIO,
  DataDriverEh, fs_iinterpreter, fs_ipascal, frxClass, frxCrypt, frxGZip, frxDBSet, AppEvnts, frxExportHTML,
  frxExportODF, frxExportRTF, frxExportBaseDialog, frxExportPDF;

type
  TFrmReportResearch = class(TForm)
    NiceSetFrmReportResearch: TNiceSettings;
    PnlSrc: TPanel;
    PnlBtnBar: TPanel;
    BtnClose: TButton;
    BtnPrint: TButton;
    BtnHlp: TButton;
    PnlCaption: TPanel;
    LblCapt: TLabel;
    PnlDest: TPanel;
    GridEhSrc: TDBGridEh;
    GridEhDest: TDBGridEh;
    MTESrc: TMemTableEh;
    DSSrc: TDataSource;
    DSetResIssue: TpFIBDataSet;
    DSDest: TDataSource;
    MTEDest: TMemTableEh;
    frxDBDSetRes: TfrxDBDataset;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    DSetResPriceName: TpFIBDataSet;
    LblIssueEmptyWarning: TLabel;
    LblPriceNameEmptyWarning: TLabel;
    LblNullPriceWarning: TLabel;
    LblPatientsFIO: TLabel;
    FIBDSetInfoDoc: TpFIBDataSet;
    FIBDSetInfoPat: TpFIBDataSet;
    FIBDSetInfoClinic: TpFIBDataSet;
    frxDBDSetInfoDoc: TfrxDBDataset;
    frxDBDSetInfoClinic: TfrxDBDataset;
    Label1: TLabel;
    CbBoxIssue: TComboBox;
    Label2: TLabel;
    CbBoxPriceName: TComboBox;
    BitBtnEdtPrice: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    CbBoxInfoClinic: TComboBox;
    BitBtnEdtClinic: TBitBtn;
    Label4: TLabel;
    CbBoxInfoDoc: TComboBox;
    BitBtnEdtDoctor: TBitBtn;
    LblClinicEmptyWarning: TLabel;
    LblDocEmptyWarning: TLabel;
    frxDBDSetInfoPat: TfrxDBDataset;
    DSetSrc: TpFIBDataSet;
    DSetDest: TpFIBDataSet;
    dsdSrc: TDataSetDriverEh;
    dsdDest: TDataSetDriverEh;
    AppEventsRepResearch: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure CbBoxIssueChange(Sender: TObject);
    procedure CbBoxPriceNameChange(Sender: TObject);
    procedure GridEhSrcDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridEhSrcDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GridEhDestDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridEhDestDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure BitBtnEdtPriceClick(Sender: TObject);
    procedure BitBtnEdtClinicClick(Sender: TObject);
    procedure BitBtnEdtDoctorClick(Sender: TObject);
    procedure GridEhSrcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure GridEhDestDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure AppEventsRepResearchShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
    procedure frxPDFExport1BeforeExport(Sender: TObject);
  private
    { Private declarations }
    procedure FillCbBoxIssueByData(Sender: TObject);
    procedure FillCbBoxPriceNameByData(Sender: TObject);
    procedure FillCbBoxDoctorByData(Sender: TObject);
    procedure FillCbBoxClinicByData(Sender: TObject);
    procedure SwitchOnOffBtn(Sender: TObject);
    procedure ActivatingControlls(Sender: TObject);
    procedure ParsingMTESrcFilterTxt(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
  end;

var
  FrmReportResearch: TFrmReportResearch;

implementation

uses
  DMFIBUnit, VarAndrUnit, MainAndrUnit;

var prmPriceName, prmIssue: AnsiString; //������������ ������� MTESrc
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FormCreate(Sender: TObject);
begin
NiceSetFrmReportResearch.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmReportResearch.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '���������� ������������ (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '���������� ������������ (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);//�������� ������ ��������� �������
FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.ActivatingControlls(Sender: TObject);
begin
prmPriceName:= '';
prmIssue:= '';

//������������� ������-����� � �� ���������
DSetSrc.FullRefresh;
DSetDest.FullRefresh;

if MTESrc.Active then MTESrc.Close;
MTESrc.Open;

if MTEDest.Active then MTEDest.Close;
MTEDest.Open;

//�������� � ����� �������� �� ��
FillCbBoxIssueByData(Sender);
FillCbBoxPriceNameByData(Sender);
FillCbBoxDoctorByData(Sender);
FillCbBoxClinicByData(Sender);

//�������� ����� � ��������� �������
CbBoxPriceNameChange(Sender);

//�������-�������� ����� � ����������� �� ������������� ��������� �������
FrmMainProg.SwitchGrid(GridEhSrc,not MTESrc.IsEmpty);
FrmMainProg.SwitchGrid(GridEhDest,not MTESrc.IsEmpty);

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmReportResearch.SaveSettings;

//��������� "����������" ����������
VarTblPrice_PriceName:= Trim(CbBoxPriceName.Text);

//������������ ������ � ID ������������ ������ �����
FIBDSetInfoDoc.Locate('SHORT_DOCINFO',CbBoxInfoDoc.Items[CbBoxInfoDoc.ItemIndex],[]);
VarID_Tbl_Doctor:= FIBDSetInfoDoc.FN('ID_DOCTOR').AsInteger;//���������� "���������" ����� ID

FIBDSetInfoClinic.Locate('CLIN_NAME',CbBoxInfoClinic.Items[CbBoxInfoClinic.ItemIndex],[]);
VarID_Tbl_Clinic:= FIBDSetInfoClinic.FN('ID_CLINIC').AsInteger;
end;


//----------------------------------------------------------------------------

procedure TFrmReportResearch.FormShow(Sender: TObject);
begin
//
end;

procedure TFrmReportResearch.frxPDFExport1BeforeExport(Sender: TObject);
begin
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FormResize(Sender: TObject);
var TmpStr: AnsiString;
begin
with LblIssueEmptyWarning do
  begin
    Parent:= CbBoxIssue; //��������� �������
    Top:= 3;
    Left:= 5;
  end;

with LblPriceNameEmptyWarning do
  begin
    Parent:= CbBoxPriceName; //��������� �������
    Top:= 3;
    Left:= 5;
  end;

with LblClinicEmptyWarning do
  begin
    Parent:= CbBoxInfoClinic; //��������� �������
    Top:= 3;
    Left:= 5;
  end;

with LblDocEmptyWarning do
  begin
    Parent:= CbBoxInfoDoc; //��������� �������
    Top:= 3;
    Left:= 5;
  end;

with LblNullPriceWarning do
  begin
    Parent:= GridEhSrc;
    Width:= (GridEhSrc.Width - 40);
    Height:= 60;
    Left:= (GridEhSrc.Width - LblNullPriceWarning.Width) div 2;
    LblNullPriceWarning.Caption:= '� �����-����� "' + Trim(CbBoxPriceName.Text) + '" �� � ����� �� '
                                                             + '����������� ����� �� ���������� ��������� !';
    Top:= GridEhSrc.Height div 2;
  end;

//�������� ������ ��� �������� � ����������� ������
with DMFIB.DSetAnketa do
  begin
    LblPatientsFIO.Caption:= GetFIOPadeg(Trim(FN('ANKLASTNAME').AsString),
      AnsiUpperCase(LeftStr(Trim(FN('ANKFIRSTNAME').AsString),1)) + '.',
      AnsiUpperCase(LeftStr(Trim(FN('ANKTHIRDNAME').AsString),1)) + '.',
      (GetSex(Trim(FN('ANKTHIRDNAME').AsString)) = 1), 2) + ', '
      + FormatDateTime('YYYY',FN('ANKDATEBORN').AsDateTime) + ' �.�.';

    if (FN('SEX').AsInteger = 1)
     then TmpStr:= '��������'
     else TmpStr:= '���������';

  end;

with LblCapt do
  begin
    Caption:= '����������� �� ��������������� ������������ ' + TmpStr + '  ';
    Left:= (PnlCaption.Width - Width - LblPatientsFIO.Width) div 2;
    LblPatientsFIO.Left:= Left + Width;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnPrintClick(Sender: TObject);
var RepFPath, RepFileName: WideString;
    TmpTxt: String;
begin
//�������� ������� ��������� � ����
FIBDSetInfoPat.FullRefresh;

//���� ��� ������ ���� �������, �� ���������� � ������
if FIBDSetInfoPat.IsEmpty then
  begin
    Application.MessageBox('� ����� ���� ������ �� ������� ������ ��� �� ������ �������� ! ��������� ����� � '
                           + '��������� ���� �������.', '������������ ������', MB_ICONINFORMATION);
    Exit;
  end;

//����������� � ������ ������, �������� � �������, ���� ��� ������
if FIBDSetInfoDoc.IsEmpty then
  begin
    Application.MessageBox('� ����� ���� ������ ����������� �������� � ��������, ������� ����� ! '
                           + '��������� ����� � ��������� ���� �������.',
                           '������������ ������', MB_ICONINFORMATION);
    if BitBtnEdtDoctor.CanFocus then BitBtnEdtDoctor.SetFocus;
    Exit;
  end;

if FIBDSetInfoClinic.IsEmpty then
  begin
    Application.MessageBox('� ����� ���� ������ ����������� �������� � ���, ��� ������� ����� ��������� ! '
                           + '��������� ����� � ��������� ���� �������.',
                           '������������ ������', MB_ICONINFORMATION);
    if BitBtnEdtClinic.CanFocus then BitBtnEdtClinic.SetFocus;
    Exit;
  end;


//������������� ������ "��������" ������ ��������� � ���������� �������
if not DMFIB.DSetTotalPat.IsEmpty then
  if not FIBDSetInfoPat.IsEmpty then
                      FIBDSetInfoPat.Locate('ID_ANKETA',DMFIB.DSetTotalPat['ID_ANKETA'],[]);

//������������� ������ ������ "�������" ������� ��������� ��������� � ������
FIBDSetInfoDoc.Locate(Trim('SHORT_DOCINFO'),Trim(CbBoxInfoDoc.Text),[]);
FIBDSetInfoClinic.Locate(Trim('CLIN_NAME'),Trim(CbBoxInfoClinic.Text),[]);

if SenderTag = 444
  then
    RepFileName:= 'ResearchList_A4.fr3'
  else
    RepFileName:= 'ResearchList_A5.fr3';

RepFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + RepFileName;

//���� ���� ����������
if FileExists(RepFPath)
  then //��������� �����
    begin
      FrmMainProg.frxHTMLExport.FileName:= FIBDSetInfoPat.FN('REPORT_NAME').AsString;
      FrmMainProg.frxODTExport.FileName:= FIBDSetInfoPat.FN('REPORT_NAME').AsString;
      FrmMainProg.frxPDFExport.FileName:= FIBDSetInfoPat.FN('REPORT_NAME').AsString;
      FrmMainProg.frxRTFExport.FileName:= FIBDSetInfoPat.FN('REPORT_NAME').AsString;

      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

      FrmMainProg.frxHTMLExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxODTExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxPDFExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxRTFExport.DefaultPath:= ReportInitDir;

      FrmMainProg.MainReport.LoadFromFile(RepFPath);
      FrmMainProg.MainReport.ShowReport;
    end
  else
    begin
      TmpTxt:= '����������� ����������� ���� ������ "' + RepFileName + '"! ��������, '
      + '�� ��� �������� ������ ��� ������������. ���������� ���� ���� �� ����� � ������� � ����� '
      + '\Reports\ � �������� �������� ��������� � ���������� ��������� ����� ������.';
      Application.MessageBox(PChar(TmpTxt), '������ ������� � �����', MB_ICONINFORMATION);
      Exit;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FillCbBoxIssueByData(Sender: TObject);
begin
//�������� ������� �������� ������ ������
DSetResIssue.FullRefresh;//�������� �����
CbBoxIssue.Clear;//������ ����

LblIssueEmptyWarning.Visible:= DSetResIssue.IsEmpty;
LblIssueEmptyWarning.Invalidate;//���������� �������

CbBoxIssue.Enabled:= not DSetResIssue.IsEmpty;

//���� ����� c ��������� ������ ������
if DSetResIssue.IsEmpty
  then
    begin
      Exit;//������ (���� "����������" � �������������� ��������)
    end
  else //����� ���-���� ����� �� ������
    begin
      CbBoxIssue.Items.Add('��� �������');//������� ����������� ��������� ��� ������� ������

      DSetResIssue.First;//������ �� ������ ������

      //����������� ���� � ��������� ���������� �� �����
      while not DSetResIssue.Eof do
        begin
          CbBoxIssue.Items.Add(DSetResIssue.FN('LABORISSUE_NAME').AsString);
          DSetResIssue.Next;
        end;
      CbBoxIssue.ItemIndex:= 0;//������� ��� ��������
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FillCbBoxPriceNameByData(Sender: TObject);
begin
//�������� ������� ���� ������-������ ������
DSetResPriceName.FullRefresh;
CbBoxPriceName.Clear;

LblPriceNameEmptyWarning.Visible:= DSetResPriceName.IsEmpty;
LblPriceNameEmptyWarning.Invalidate;//���������� �������

CbBoxPriceName.Enabled:= not DSetResPriceName.IsEmpty;

//���� ����� � ���������� ������� ������
if DSetResPriceName.IsEmpty
  then
    Exit//������ �� ���������
  else//���� �� �� ������
    begin
      DSetResPriceName.First;
      //��������� ���� � ���������� ������� ���������� �� �����
      while not DSetResPriceName.Eof do
        begin
          CbBoxPriceName.Items.Add(Trim(DSetResPriceName.FN('NAME_PRICE').AsString));
          DSetResPriceName.Next;
        end;

      //�������� ���������������� ���� �� ����� ���������������� ��������
      with CbBoxPriceName do
        begin
          if Items.IndexOf(Trim(VarTblPrice_PriceName)) >= 0
            then ItemIndex:= Items.IndexOf(Trim(VarTblPrice_PriceName))
            else
              begin
                //�������������� ���� � �������� �� ��������� ����������� ����� (��������� �����, ����� ����������)
                DSetResPriceName.First;
                ItemIndex:= Items.IndexOf(Trim(DSetResPriceName.FN('NAME_PRICE').AsString));
              end;
        end;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FillCbBoxClinicByData(Sender: TObject);
begin
FIBDSetInfoClinic.FullRefresh;
CbBoxInfoClinic.Clear;

LblClinicEmptyWarning.Visible:= FIBDSetInfoClinic.IsEmpty;
LblClinicEmptyWarning.Invalidate;//���������� �������

CbBoxInfoClinic.Enabled:= not FIBDSetInfoClinic.IsEmpty;

//���� ����� � ���������� ��� ������
if FIBDSetInfoClinic.IsEmpty
  then
    Exit//������ �� ���������
  else//���� �� �� ������
    begin
      FIBDSetInfoClinic.First;
      //��������� ���� � ���������� ��� ���������� �� �����
      while not FIBDSetInfoClinic.Eof do
        begin
          CbBoxInfoClinic.Items.Add(Trim(FIBDSetInfoClinic.FN('CLIN_NAME').AsString));
          FIBDSetInfoClinic.Next;
        end;

      //�������� ���������� � ����� �������, ����������� � "����������" ����������
      FIBDSetInfoClinic.Locate('ID_CLINIC',VarID_Tbl_Clinic,[]);
      if CbBoxInfoClinic.Items.IndexOf(FIBDSetInfoClinic.FN('CLIN_NAME').AsString) >= 0
        then
          CbBoxInfoClinic.ItemIndex:= CbBoxInfoClinic.Items.IndexOf(FIBDSetInfoClinic.FN('CLIN_NAME').AsString)
        else
          CbBoxInfoClinic.ItemIndex:= 0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.FillCbBoxDoctorByData(Sender: TObject);
begin
//������� ����� � ���������
FIBDSetInfoDoc.FullRefresh;
CbBoxInfoDoc.Clear;

LblDocEmptyWarning.Visible:= FIBDSetInfoDoc.IsEmpty;
LblDocEmptyWarning.Invalidate;//���������� �������

CbBoxInfoDoc.Enabled:= not FIBDSetInfoDoc.IsEmpty;

//���� ����� � ��������� ������
if FIBDSetInfoDoc.IsEmpty
  then
    Exit//������ �� ���������
  else//���� �� �� ������
    begin
      FIBDSetInfoDoc.First;
      //��������� ���� � ��������� ���������� �� �����
      while not FIBDSetInfoDoc.Eof do
        begin
          CbBoxInfoDoc.Items.Add(Trim(FIBDSetInfoDoc.FN('SHORT_DOCINFO').AsString));
          FIBDSetInfoDoc.Next;
        end;

      //�������� ���������� � ����� �������, ������������ � "����������" ����������
      FIBDSetInfoDoc.Locate('ID_DOCTOR',VarID_Tbl_Doctor,[]);
      if CbBoxInfoDoc.Items.IndexOf(FIBDSetInfoDoc.FN('SHORT_DOCINFO').AsString) >= 0
        then
          CbBoxInfoDoc.ItemIndex:= CbBoxInfoDoc.Items.IndexOf(FIBDSetInfoDoc.FN('SHORT_DOCINFO').AsString)
        else
          CbBoxInfoDoc.ItemIndex:= 0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.SwitchOnOffBtn(Sender: TObject);
begin
BtnFwdOne.Enabled:= (GridEhSrc.DataSource.DataSet.RecordCount > 0);
BtnFwdAll.Enabled:= (GridEhSrc.DataSource.DataSet.RecordCount > 0);

BtnRtnOne.Enabled:= (GridEhDest.DataSource.DataSet.RecordCount > 0);
BtnRtnAll.Enabled:= (GridEhDest.DataSource.DataSet.RecordCount > 0);

//�������-������� ������ � ����������� �� ������������� �����-����������
if (GridEhDest.DataSource.DataSet.RecordCount > 0)
  then
    GridEhDest.FooterRowCount:= 1
  else
    GridEhDest.FooterRowCount:= 0;

BtnPrint.Enabled:= (GridEhDest.DataSource.DataSet.RecordCount > 0);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.CbBoxIssueChange(Sender: TObject);
begin
if DSetResIssue.IsEmpty then Exit;//���� ������� ����, �� ������ ����������� ������ - �������

//���� ������� �� ������, �� ���� ��������
if CbBoxIssue.ItemIndex > 0
  then
    prmIssue:= '(LABORISSUE_NAME = ' + QuotedStr(Trim(CbBoxIssue.Text)) + ')'//��������� ����� �������
  else
    prmIssue:= '';//�� ������� ������ ��� ����� �������, �.� ����� ���������� ��� �������

//���������� ������
ParsingMTESrcFilterTxt(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.CbBoxPriceNameChange(Sender: TObject);
begin
if DSetResPriceName.IsEmpty then Exit;//���� ������� ����, �� ������ ����������� ������ - �������

prmPriceName:= '(NAME_PRICE = ' + QuotedStr(Trim(CbBoxPriceName.Text)) + ')';//��������� ������

//���������� ����� �������� ������� ��� ������� ������ ��� ����� �� �����������
CbBoxIssue.ItemIndex:= 0;
CbBoxIssueChange(Sender);//�������������� ���������
end;

//----------------------------------------------------------------------------
//�������� ������ ������ � ������������� ������
procedure TFrmReportResearch.ParsingMTESrcFilterTxt(Sender: TObject);
begin
if (Trim(prmIssue) = '') and (Trim(prmPriceName) = '')
  then
    begin
      MTESrc.Filter:= '';
      MTEDest.Filter:= '';
      MTESrc.Filtered:= False;
      MTEDest.Filtered:= False;
    end
  else //���� ��� �� ������
    if (Trim(prmIssue) <> '') and (Trim(prmPriceName) <> '')
      then
        begin
          MTESrc.Filter:= prmIssue + ' and ' + prmPriceName;
          MTESrc.Filtered:= True;
          MTEDest.Filter:= prmPriceName;
          MTEDest.Filtered:= True;
        end
      else //�� ���� ������ � ��������� ������
        if Trim(prmPriceName) <> ''
          then
            begin
              MTESrc.Filter:= prmPriceName;
              MTESrc.Filtered:= True;
              MTEDest.Filter:= prmPriceName;
              MTEDest.Filtered:= True;
            end
          else //����� �� ���� ������ ����  � ��������� ������ (������� ����������� ��������, ��. ��� ����)
            begin
              MTESrc.Filter:= prmIssue;
              MTESrc.Filtered:= True;
              MTEDest.Filter:= '';
              MTEDest.Filtered:= False;
            end;

//�������-������� ������� ������� ������
LblNullPriceWarning.Visible:= ((not(DSetResPriceName.IsEmpty)) and (CbBoxIssue.ItemIndex = 0)
                                                                 and (MTESrc.IsEmpty) and (MTEDest.IsEmpty));
CbBoxIssue.Enabled:= not LblNullPriceWarning.Visible;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhSrcDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = GridEhDest then
    begin
      GridEhSrc.DataSource.DataSet.DisableControls;
      GridEhDest.DataSource.DataSet.DisableControls;
      GridEhSrc.SaveBookmark;
      if GridEhDest.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to GridEhDest.SelectedRows.Count-1 do
          begin
            GridEhDest.DataSource.DataSet.Bookmark := GridEhDest.SelectedRows[I];
            GridEhSrc.DataSource.DataSet.Append;
            GridEhSrc.DataSource.DataSet.Edit;

            for j := 0 to GridEhSrc.DataSource.DataSet.FieldCount-1 do
              GridEhSrc.DataSource.DataSet.Fields[j].Value := GridEhDest.DataSource.DataSet.Fields[j].Value;

            GridEhSrc.DataSource.DataSet.Post;
          end
      else
        if GridEhDest.Selection.SelectionType = gstAll then
          begin
            GridEhDest.DataSource.DataSet.First;

            while  not GridEhDest.DataSource.DataSet.EOF do
              begin
                GridEhSrc.DataSource.DataSet.Append;
                GridEhSrc.DataSource.DataSet.Edit;

                for j := 0 to GridEhSrc.DataSource.DataSet.FieldCount-1 do
                  GridEhSrc.DataSource.DataSet.Fields[j].Value := GridEhDest.DataSource.DataSet.Fields[j].Value;

                GridEhSrc.DataSource.DataSet.Post;
                GridEhDest.DataSource.DataSet.Delete;
              end;
            GridEhDest.Selection.Clear;
          end;
      GridEhSrc.RestoreBookmark;
      GridEhDest.SelectedRows.Delete;
      GridEhDest.DataSource.DataSet.Refresh;
      GridEhDest.DataSource.DataSet.EnableControls;
      GridEhSrc.DataSource.DataSet.EnableControls;
    end;

SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhSrcDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = GridEhDest
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhDestDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = GridEhSrc then
    begin
      GridEhDest.DataSource.DataSet.DisableControls;
      GridEhSrc.DataSource.DataSet.DisableControls;
      GridEhDest.SaveBookmark;

      if GridEhSrc.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to GridEhSrc.SelectedRows.Count-1 do
            begin
              GridEhSrc.DataSource.DataSet.Bookmark := GridEhSrc.SelectedRows[I];
              GridEhDest.DataSource.DataSet.Append;
              GridEhDest.DataSource.DataSet.Edit;

              for j := 0 to GridEhDest.DataSource.DataSet.FieldCount-1 do
                GridEhDest.DataSource.DataSet.Fields[j].Value := GridEhSrc.DataSource.DataSet.Fields[j].Value;

              GridEhDest.DataSource.DataSet.Post;
            end
        else
          if GridEhSrc.Selection.SelectionType = gstAll then
            begin
              GridEhSrc.DataSource.DataSet.First;
              while  not GridEhSrc.DataSource.DataSet.EOF do
                begin
                  GridEhDest.DataSource.DataSet.Append;
                  GridEhDest.DataSource.DataSet.Edit;

                  for j := 0 to GridEhDest.DataSource.DataSet.FieldCount-1 do
                    GridEhDest.DataSource.DataSet.Fields[j].Value := GridEhSrc.DataSource.DataSet.Fields[j].Value;

                  GridEhDest.DataSource.DataSet.Post;
                  GridEhSrc.DataSource.DataSet.Delete;
                end;
              GridEhSrc.Selection.Clear;
            end;

      GridEhDest.RestoreBookmark;
      GridEhSrc.SelectedRows.Delete;
      GridEhSrc.DataSource.DataSet.Refresh;
      GridEhSrc.DataSource.DataSet.EnableControls;
      GridEhDest.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhDestDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = GridEhSrc
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(GridEhSrc,GridEhDest);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxReportResearch);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(GridEhSrc,GridEhDest);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(GridEhDest,GridEhSrc);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(GridEhDest,GridEhSrc);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BitBtnEdtPriceClick(Sender: TObject);
begin
FrmMainProg.ActTblPrice.Execute;//���� ������������� �����
ActivatingControlls(Sender);//������������ ��� ������
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.AppEventsRepResearchShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then //���� ����� � ������
  begin
    //��������� ������� "�������" ������
    if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0) then
      begin
        GridEhSrc.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
        BtnFwdOneClick(Self);
      end;
    if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) then BtnFwdAllClick(Self);

    if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0) then
      begin
        GridEhDest.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
        BtnRtnOneClick(Self);
      end;
    if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) then BtnRtnAllClick(Self);


    //����� ������������� ����� ��������� ������ ������ ��-�� ����, ��� ����� "�����" ������� <Escape> �� FastReport'�,
    //��� �������� �� ����������� CancelDistach
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnPrint.Enabled then BtnPrintClick(Self);
  end;

//����� ������ ����� �� ����������� �� ����� �������
AppEventsRepResearch.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BitBtnEdtClinicClick(Sender: TObject);
begin
//�������� ���������� � ���
FrmMainProg.ActTblClinicExecute(Sender);

//��������� �������������� ������
FillCbBoxClinicByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.BitBtnEdtDoctorClick(Sender: TObject);
begin
//�������� ���������� � ���������
FrmMainProg.ActTblDoctorExecute(Sender);

//��������� �������������� ������
FillCbBoxDoctorByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhSrcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridEhSrc.DataSource.DataSet.RecNo mod 2 = 1
	then GridEhSrc.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
    then
      begin
        GridEhSrc.Canvas.Brush.Color:= clMoneyGreen;
        GridEhSrc.Canvas.Font.Color := clWindowText;
      end;
	// ������ GRID �������������� ������
	GridEhSrc.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
//if Mess.WParam = WA_INACTIVE //���� ����� ������ �����
//  then FocusFlag:= 0
//  else FocusFlag:= 1;

inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmReportResearch.GridEhDestDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridEhDest.DataSource.DataSet.RecNo mod 2 = 1
	then GridEhDest.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
    then
      begin
        GridEhDest.Canvas.Brush.Color:= clMoneyGreen;
        GridEhDest.Canvas.Font.Color := clWindowText;
      end;
	// ������ GRID �������������� ������
	GridEhDest.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

end.
