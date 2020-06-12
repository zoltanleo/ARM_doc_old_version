unit DMFIBUnit;

interface

uses
  SysUtils, Classes, StdCtrls, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  pFIBErrorHandler, FIB, FIBQuery, pFIBQuery;

type
  TDMFIB = class(TDataModule)
    Database: TpFIBDatabase;
    ReadTrans: TpFIBTransaction;
    DSetTotalPat: TpFIBDataSet;
    DSTotalPat: TDataSource;
    DSetSinglePat: TpFIBDataSet;
    DSSinglePat: TDataSource;
    DSetTown: TpFIBDataSet;
    WriteTransTown: TpFIBTransaction;
    DSTown: TDataSource;
    DSetClinic: TpFIBDataSet;
    WriteTransClinic: TpFIBTransaction;
    DSClinic: TDataSource;
    DSetDoctor: TpFIBDataSet;
    WriteTransDoctor: TpFIBTransaction;
    DSDoctor: TDataSource;
    DSetManip: TpFIBDataSet;
    WriteTransManip: TpFIBTransaction;
    DSManip: TDataSource;
    DSetRecom: TpFIBDataSet;
    WriteTransRecom: TpFIBTransaction;
    DSRecom: TDataSource;
    WriteTransPrice: TpFIBTransaction;
    DSPrice: TDataSource;
    DSetDrugs: TpFIBDataSet;
    WriteTransDrugs: TpFIBTransaction;
    DSDrugs: TDataSource;
    DSetDs: TpFIBDataSet;
    WriteTransDs: TpFIBTransaction;
    DSDs: TDataSource;
    DSetAnketa: TpFIBDataSet;
    WriteTransAnketa: TpFIBTransaction;
    DSAnketa: TDataSource;
    DSetPayment: TpFIBDataSet;
    WriteTransPayment: TpFIBTransaction;
    DSPayment: TDataSource;
    DSetShedule: TpFIBDataSet;
    WriteTransShedule: TpFIBTransaction;
    DSShedule: TDataSource;
    DSetVisitMain: TpFIBDataSet;
    WriteTransVisit: TpFIBTransaction;
    DSVisitMain: TDataSource;
    DSetVisitLabor: TpFIBDataSet;
    DSVisitLabor: TDataSource;
    DSetVisitExamin: TpFIBDataSet;
    DSVisitExamin: TDataSource;
    DSetVisitBlob: TpFIBDataSet;
    DSVisitBlob: TDataSource;
    DSetTemp: TpFIBDataSet;
    DSTemp: TDataSource;
    ErrorHandler: TpFibErrorHandler;
    DSetMKB_10: TpFIBDataSet;
    DS_MKB_10: TDataSource;
    DSBasePrice: TDataSource;
    DSetBasePrice: TpFIBDataSet;
    WriteTransBasePrice: TpFIBTransaction;
    DSetPrice: TpFIBDataSet;
    QryTemp: TpFIBQuery;
    DSetPriceID_PRICE: TFIBIntegerField;
    DSetPriceFK_BASEPRICE: TFIBIntegerField;
    DSetPriceNAME_PRICE: TFIBStringField;
    DSetPriceCOST_PROC_PRICE: TFIBBCDField;
    DSetPricePROC_CODE: TFIBStringField;
    DSetPricePROC_NAME: TFIBStringField;
    DSetTmpBlobVisit: TpFIBDataSet;
    TmpBlobQry: TpFIBQuery;
    WriteTransTmpBlob: TpFIBTransaction;
    DSetLookUpClin: TpFIBDataSet;
    DSLookUpClin: TDataSource;
    DSetReport: TpFIBDataSet;
    DSetTmp_2: TpFIBDataSet;
    WriteTransConsult: TpFIBTransaction;
    DSetConsult: TpFIBDataSet;
    DSConsult: TDataSource;
    DSetLaborIssue: TpFIBDataSet;
    WriteTransLaborIssue: TpFIBTransaction;
    DSLaborIssue: TDataSource;
    DSetServInfo: TpFIBDataSet;
    WriteTransServInfo: TpFIBTransaction;
    DSServInfo: TDataSource;
    procedure DSTotalPatDataChange(Sender: TObject; Field: TField);
    procedure DSSinglePatDataChange(Sender: TObject; Field: TField);
    procedure DSVisitMainDataChange(Sender: TObject; Field: TField);
    procedure DSAnketaDataChange(Sender: TObject; Field: TField);
    procedure ErrorHandlerFIBErrorEvent(Sender: TObject;
      ErrorValue: EFIBError; KindIBError: TKindIBError;
      var DoRaise: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  DMFIB: TDMFIB;
  ErrCount: Integer;//����� "�������" � ��������� ��������� ������
  
implementation

uses MainAndrUnit, VarAndrUnit, BasePriceUnit, uFrmConsultation;


{$R *.dfm}
(*
procedure TFrmOneTwoThree.DS_MasterDataChange(Sender: TObject;
  Field: TField);
begin
//������������ �������
if not DataSet_Master.IsEmpty then
  begin
    if not DataSet_Detail.Active then DataSet_Detail.Open;
    if not DataSet_Detail.IsEmpty then
                      DataSet_Detail.Locate('id_d',DataSet_Master['id_m'],[]);
  end;
end;
*)
//----------------------------------------------------------------------------

procedure TDMFIB.DSTotalPatDataChange(Sender: TObject; Field: TField);
begin
//������������ �������
if not DSetTotalPat.IsEmpty then
  begin
    if not DSetAnketa.Active then DSetAnketa.Open;
    if not DSetAnketa.IsEmpty then
      DSetAnketa.Locate('ID_Anketa',DSetTotalPat['ID_Anketa'],[]);
    //VarID_Tbl_Anketa:= DSetTotalPat.FN('ID_ANKETA').AsInteger      
  end;

FrmMainProg.PatAnketsDisplay(Sender);//���������� �������� ��� ��������
end;


//----------------------------------------------------------------------------

procedure TDMFIB.DSSinglePatDataChange(Sender: TObject; Field: TField);
begin
if not DSetSinglePat.IsEmpty then
  begin
    if not DSetVisitMain.Active then DSetVisitMain.Open;
    if not DSetVisitMain.IsEmpty then
      DSetVisitMain.Locate('ID_VISITMAIN',DSetSinglePat['ID_VISITMAIN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.DSVisitMainDataChange(Sender: TObject; Field: TField);
begin
if not DSetVisitMain.IsEmpty then
  begin
    if not DSetVisitLabor.Active then DSetVisitLabor.Open;
    if not DSetVisitLabor.IsEmpty then
      DSetVisitLabor.Locate('ID_VISITLABOR',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetVisitExamin.Active then DSetVisitExamin.Open;
    if not DSetVisitExamin.IsEmpty then
      DSetVisitExamin.Locate('ID_VISITEXAMIN',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetVisitBlob.Active then DSetVisitBlob.Open;
    if not DSetVisitBlob.IsEmpty then
      DSetVisitBlob.Locate('ID_VISITBLOB',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetDoctor.Active then DSetDoctor.Open;
    if not DSetDoctor.IsEmpty then
      DSetDoctor.Locate('ID_DOCTOR',DSetVisitMain['ID_VISITMAIN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.DSAnketaDataChange(Sender: TObject; Field: TField);
begin
if not DSetAnketa.IsEmpty then
  begin
    if not DSetTown.Active then DSetTown.Open;
    if not DSetTown.IsEmpty then
      DSetTown.Locate('ID_TOWN',DSetAnketa['ANK_LINKTOWN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.ErrorHandlerFIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
begin
ErrorGDSCode:= ErrorValue.IBErrorCode;
DoRaise:= True;
MsgFlag:= False;

case ErrorValue.IBErrorCode of
  //========================
  335544324: ErrorMsg:= '�� ������� �������������� � ���� ������!';
  //========================
  335544332: ErrorMsg:= '���������� ��������� �������������� ������� ������. ������ �����, '
                                                             + '�� ��� ������ �������!';
  //========================
  335544382: ErrorMsg:= '���� ���� (�������� ��� ������� �����) �� �������!';
  //========================
  335544472: ErrorMsg:= '����� �� ������������� ������!';
  //========================
  335544344: ErrorMsg:= '�� ������� ������� ��������� ����!';
  //========================
  335544345: ErrorMsg:= '���-�� �������������� �� �� ����� ������ � ��������� ��������� ��������� � ��� '
                    + '������������ � ����. ������ �� ����� ������� ��� ������� ������ ���, ������� ��� '
                    + '��������� ���� ������� ���������, � ���� - ��� !' + #13#10 + '�� �����������. '
                    + '�������� �������� ����������� �����. ���������� ������ ��������� � ��� ������ ��� '
                    + '��� (���� � ���� ��� ����� ������������ �������������).';
  //========================
  335544352: ErrorMsg:= '� ��� ��� ��������������� ���� �� ��������� ������ '
             + '���� ������� ��� ������ ������ �����/������ ������������� ������ '
             + '������ �������������!';
  //========================
  335544517: begin //���������������� ���������� ����� ���� ������
               case ErrorHandler.ExceptionNumber of
                 1: ErrorMsg:= '��� ��������� �������, ������ � ������� ����������� '
                      + '���������� !';
                 2: ErrorMsg:= '������������� �������� �������� ������������ �������� !';
                 3: ErrorMsg:= '�� �� ������ ������� ����� ��������, ���� � ���� ������ '
                      + '���� �������� (������, ������������ �������, ���, ������ '
                      + '������������), ��������� � ����������� ����� ������ ���������!';
                 4: ErrorMsg:= '�� �� ������ ������� ����� �� ����, ��������� �� ������ � '
                      + '�������� �������� ������� � ������ ��� ���������� ���������!';
                 5: ErrorMsg:= '�� �� ������ ������� ���� ���������� ����� �� ���� ������ '
                      + '���� � ������ ��� ���������� ��������� �� ������ � �������� '
                      + '����� ����������!';
                 6: ErrorMsg:= '�� �� ������ ������� ��� ������ �� �������� ������, ��� '
                      + '��� ��� �������� � ������ ��������� �����-������. ���� �� '
                      + '������ �������� ���-���� ������� ���� �����, �� ������� ������� '
                      + '��� ��������� ���� ������, ��� ��� ������ ���������. *'
                      + #13#10 + #13#10 + '*  ����������: ����� �� �������� � ��������� '
                      + '������ � ������� ����� ������ ������������ ������ '
                      + '"�������������" � ��������� ������������� (������������ '
                      + 'SYSDBA).';
                 7: ErrorMsg:= '��������� ���� �������� �� ����� ���� ������������� ������!';
                 8: ErrorMsg:= '�� �� ������ ������� ������ ��� �� ���� ������, ��� ��� � ������ '
                      + '�� ��������� ��� ������� � �������� ��������� ����������, ��� ��� '
                      + '���� ������� ����������� ������!';
                 9: ErrorMsg:= '�� �� ������ ������� ����� �� ����, ��������� ��� ����� �������� '
                      + '���������� ����������� ������ � ����� ���� ! ������� ������� ��� '
                      + '���������� �� ���� ����� �� ������� ���������� ������������.';
                10: ErrorMsg:= '�� �� ������ ������� ������ ��� �� ���� ������, ��������� ��� '
                      + '����� �������� ���������� ����������� ������ � ����� ���� ! ������� '
                      + '������� �� ������� ���������� ������������ ���� ������, ������������ '
                      + '� ������ �������.';
                11: ErrorMsg:= '�� �� ������ ������� ���� �������� ������ ������, ��� ��� �� ��� '
                      + '������������ � ������� ������ ��� ����������� ����������� ����� �� '
                      + '�������� �������� ! ��� �������� ��������� ������� ��� ���������� ������� '
                      + '������� �� �������� ������ ��� ����������� ������, ����������� �� ���� '
                      + '������.';
                12: ErrorMsg:= '�� ������ ������������ ����� ������ ���������� �������� !';
                13: ErrorMsg:= '�� �� ������ ������� ����� ��������, ���� � ������� ������� ������� ������, '
                      + '�������� ����!';
                  else
                   ErrorMsg:= '��������� �������: ' + '"' + Trim(ErrorValue.Message) + '"' + #13#10
                   + '����� ����������������� ����������: ' + IntToStr(ErrorHandler.ExceptionNumber)
                   + #13#10 + #13#10 + '�������� ��������� ������� � ����� ����������������� '
                   + '����������, ����� ����� �������� ���������� ��������������, ���� �� ������ '
                   + '��������� ��� ������.';
               end;{case}
             end;
  //========================
  335544569:  begin
                ErrorMsg:= '���� ���������� �� ����� ������� ��� ���� ������, ��� ��� '
                + '��� ����� ������ ���������. ����� ����� ��������, ���� ��� ����������,'
                + ' ���� �� ��������� ������� �� "������" ���� ������.';
              end;
  335544349:  begin
               if SenderTag = 665 //���� ������ �� ������ TStatusPatUnit.BtnSave
                 then ErrorMsg:= '� �������� ��� ���� ��������� � ������� ����� �� ��� ����! '
                               + '���� �������� ���� ����� ������ �� �����, ���� �������������� '

                               + '������ ������ � ����� �� ��������� ����.';
              end;
  335544665:  begin
               if SenderTag = 667 //���� ������ �� ������ TFrmConsultation.BtnSave
                 then ErrorMsg:= '���� �� ������ ����� ��� ���������� ������ � ����� � ��� �� '
                               + '�������� ����������! ���� �������� �������� ���������� ��� '
                               + '������� �����, ���� �������������� ��� ��������� ����������.';
              end;

  else
    begin
      ErrorMsg:= Format('GDSCODE: %d' + #13#10 + 'IBMessage: %s' + #13#10
      + '          �� ������� ��������� ��������� ���� ��������! ���������� �������� '
      + '�� ������ ����� GDSCODA''� � ����� ����������� ��������� ������, ����� '
      + '�������� �� ���������� �������������� �����, ���� �� ������ ������� ��� ������.',
      [ErrorValue.IBErrorCode]);
    end;
end;
end;


end.
