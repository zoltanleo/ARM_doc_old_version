unit UFrmChoiceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh, Buttons, DB,
  FIBDataSet, pFIBDataSet, AppEvnts,
  fs_iclassesrtti,  fs_ipascal, fs_iinterpreter,
  frxClass, frxDBSet, frxRich, frxGZip, frxExportBaseDialog,
  frxExportRTF, frxExportPDF, frxExportHTML, frxExportODF;

type
  TFrmChoiceForm = class(TForm)
    Label1: TLabel;
    BtnPrintTitul: TButton;
    BtnPrintClose: TButton;
    CbBoxInfoClinic: TComboBox;
    BitBtnEdtClinic: TBitBtn;
    LblClinicEmptyWarning: TLabel;
    DSetInfoClinic: TpFIBDataSet;
    AppEventsChioceForm: TApplicationEvents;
    DBDSetTitul: TfrxDBDataset;
    DSetTitul: TpFIBDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnEdtClinicClick(Sender: TObject);
    procedure AppEventsChioceFormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnPrintTitulClick(Sender: TObject);
    procedure BtnPrintCloseClick(Sender: TObject);
    procedure CbBoxInfoClinicChange(Sender: TObject);
  private
    { Private declarations }
    procedure FillCbBoxClinicByData(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
  end;

var
  FrmChoiceForm: TFrmChoiceForm;

implementation

uses
  DMFIBUnit, VarAndrUnit, TblClinicUnit, MainAndrUnit;

var
  FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.AppEventsChioceFormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then //���� ����� � ������
  begin
    //����� ������������� ����� ��������� ������ ������ ��-�� ����, ��� ����� "�����" ������� <Escape> �� FastReport'�,
    //��� �������� �� ����������� CancelDistach
    if (GetKeyState(VK_ESCAPE) < 0) then BtnPrintCloseClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnPrintTitul.Enabled then BtnPrintTitulClick(Self);
  end;

//����� ������ ����� �� ����������� �� ����� �������
AppEventsChioceForm.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.BitBtnEdtClinicClick(Sender: TObject);
begin
//�������� ���������� � ���
FrmMainProg.ActTblClinicExecute(Sender);

//��������� �������������� ������
FillCbBoxClinicByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.BtnPrintCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.BtnPrintTitulClick(Sender: TObject);
var RepFPath, RepFileName: WideString;
    TmpTxt: String;
begin
if DSetInfoClinic.IsEmpty then
  begin
    Application.MessageBox('� ����� ���� ������ ����������� �������� � ���, ��� ������� ����� ��������� ! '
                           + '��������� ����� � ��������� ���� �������.',
                           '������������ ������', MB_ICONINFORMATION);
    if BitBtnEdtClinic.CanFocus then BitBtnEdtClinic.SetFocus;
    Exit;
  end;

DSetInfoClinic.Locate('CLIN_NAME',CbBoxInfoClinic.Items[CbBoxInfoClinic.ItemIndex],[]);
VarID_Tbl_Clinic:= DSetInfoClinic.FN('ID_CLINIC').AsInteger;

with DSetTitul do
  begin
    if Active then Close;
    Prepare;
    ParamByName('prmID_CLINIC').Value:= VarID_Tbl_Clinic;
    ParamByName('prmID_PATIENT').Value:= VarID_Tbl_Anketa;
    Open;
  end;

case SenderTag of
  4441: RepFileName:= 'TitulList_A4.fr3';
  5551: RepFileName:= 'TitulList_A5.fr3';
end;

RepFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + RepFileName;

//���� ���� ����������
if FileExists(RepFPath)
  then //��������� �����
    begin
      FrmMainProg.frxHTMLExport.FileName:= DSetTitul.FN('REPORT_TITUL').AsString;
      FrmMainProg.frxODTExport.FileName:= DSetTitul.FN('REPORT_TITUL').AsString;
      FrmMainProg.frxPDFExport.FileName:= DSetTitul.FN('REPORT_TITUL').AsString;
      FrmMainProg.frxRTFExport.FileName:= DSetTitul.FN('REPORT_TITUL').AsString;

      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

      FrmMainProg.frxHTMLExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxODTExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxPDFExport.DefaultPath:= ReportInitDir;
      FrmMainProg.frxRTFExport.DefaultPath:= ReportInitDir;

      FrmMainProg.MainReport.LoadFromFile(RepFPath);
      FrmMainProg.MainReport.ShowReport;
    end
  else //���� ����������, �� ���������� � ������
    begin
      TmpTxt:= '����������� ����������� ���� ������ "' + RepFileName + '"! ��������, '
      + '�� ��� �������� ������ ��� ������������. ���������� ���� ���� �� ����� � ������� � ����� '
      + '\Reports\ � �������� �������� ��������� � ���������� ��������� ����� ������.';
      Application.MessageBox(PChar(TmpTxt), '������ ������� � �����', MB_ICONINFORMATION);
      Exit;
    end;
Close;
end;

procedure TFrmChoiceForm.CbBoxInfoClinicChange(Sender: TObject);
begin
//������������� ���������� ����������
DSetInfoClinic.Locate('CLIN_NAME',CbBoxInfoClinic.Items[CbBoxInfoClinic.ItemIndex],[]);
VarID_Tbl_Clinic:= DSetInfoClinic.FN('ID_CLINIC').AsInteger;
end;

//----------------------------------------------------------------------------
//��������� ���������
procedure TFrmChoiceForm.FillCbBoxClinicByData(Sender: TObject);
begin
DSetInfoClinic.FullRefresh;
CbBoxInfoClinic.Clear;

LblClinicEmptyWarning.Visible:= DSetInfoClinic.IsEmpty;
LblClinicEmptyWarning.Invalidate;//���������� �������

CbBoxInfoClinic.Enabled:= not DSetInfoClinic.IsEmpty;
BtnPrintTitul.Enabled:= not DSetInfoClinic.IsEmpty;

//���� ����� � ���������� ��� ������
if DSetInfoClinic.IsEmpty
  then
    Exit//������ �� ���������
  else//���� �� �� ������
    begin
      DSetInfoClinic.First;
      //��������� ���� � ���������� ��� ���������� �� �����
      while not DSetInfoClinic.Eof do
        begin
          CbBoxInfoClinic.Items.Add(Trim(DSetInfoClinic.FN('CLIN_NAME').AsString));
          DSetInfoClinic.Next;
        end;

      //�������� ���������� � ����� �������, ����������� � "����������" ����������
      DSetInfoClinic.Locate('ID_CLINIC',VarID_Tbl_Clinic,[]);
      if CbBoxInfoClinic.Items.IndexOf(DSetInfoClinic.FN('CLIN_NAME').AsString) >= 0
        then
          CbBoxInfoClinic.ItemIndex:= CbBoxInfoClinic.Items.IndexOf(DSetInfoClinic.FN('CLIN_NAME').AsString)
        else
          CbBoxInfoClinic.ItemIndex:= 0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ���������� ����������
if not DSetInfoClinic.IsEmpty
  then
    begin
      DSetInfoClinic.Locate('CLIN_NAME',CbBoxInfoClinic.Items[CbBoxInfoClinic.ItemIndex],[]);
      VarID_Tbl_Clinic:= DSetInfoClinic.FN('ID_CLINIC').AsInteger;
    end
  else
    VarID_Tbl_Clinic:= -1;
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.FormCreate(Sender: TObject);
begin
with LblClinicEmptyWarning do
  begin
    Parent:= CbBoxInfoClinic; //��������� �������
    Top:= 3;
    Left:= 5;
  end;

FocusFlag:= True;
FillCbBoxClinicByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.FormShow(Sender: TObject);
begin
//��������� ����� �  ����������� �� ������������� ����� � ���
if not DSetInfoClinic.IsEmpty
  then
    FocusControl(CbBoxInfoClinic)
  else
    FocusControl(BitBtnEdtClinic);
end;

//----------------------------------------------------------------------------

procedure TFrmChoiceForm.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
end;

end.
