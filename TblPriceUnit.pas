unit TblPriceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh,
  GridsEh, Buttons, ComCtrls, ADODB, FIBDataSet, pFIBDataSet, DB, Menus,
  NiceSettings, FIBDatabase, pFIBDatabase, AppEvnts;

type
  TFrmTblPrice = class(TForm)
    PnlBtnBar: TPanel;
    BtnEscape: TButton;
    BtnChoice: TButton;
    PnlCaption: TPanel;
    LblTitle: TLabel;
    BtnClose: TButton;
    PnlEdtGrid: TPanel;
    LblCautionZeroPrice: TLabel;
    PnlViewGrid: TPanel;
    LblCautionEmptyPrice: TLabel;
    SpBtnCostAdd: TSpeedButton;
    SpBtnCostDelete: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    LblWarningCbBox: TLabel;
    GridTblPriceView: TDBGridEh;
    CbBoxPriceIssue: TComboBox;
    CbBoxPriceLists: TComboBox;
    SpBtnPriceAdd: TSpeedButton;
    SpBtnPriceDel: TSpeedButton;
    Lbl1: TLabel;
    Lbl2: TLabel;
    PpMnuTblPrice: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    NiceSetFrmTblPrice: TNiceSettings;
    BtnHlp: TButton;
    DSetPriceList: TpFIBDataSet;
    DSetPriceIssue: TpFIBDataSet;
    GridTblPriceEdit: TDBGridEh;
    DSPriceEdt: TDataSource;
    DSetPriceEdt: TpFIBDataSet;
    WriteTransPriceEdt: TpFIBTransaction;
    StTxtNoGrant: TStaticText;
    AppEventsFrmTblPrice: TApplicationEvents;
    LblStoreCbBoxPriceLists: TLabel;
    LblStoreCbBoxPriceIssue: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnEscapeClick(Sender: TObject);
    procedure SpBtnCostAddClick(Sender: TObject);
    procedure GridTblPriceViewDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure CbBoxIssueChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CbBoxPriceListsChange(Sender: TObject);
    procedure CbBoxPriceIssueChange(Sender: TObject);
    procedure SpBtnCostDeleteClick(Sender: TObject);
    procedure GridTblPriceEditDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure GridTblPriceEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTblPriceViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpBtnPriceAddClick(Sender: TObject);
    procedure SpBtnPriceDelClick(Sender: TObject);
    procedure GridTblPriceViewCellClick(Column: TColumnEh);
    procedure GridTblPriceEditDblClick(Sender: TObject);
    procedure DSetPriceEdtBeforeInsert(DataSet: TDataSet);
    procedure DSetPriceEdtBeforePost(DataSet: TDataSet);
    procedure AppEventsFrmTblPriceShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure ViewGridRate(Sender: TObject);
    procedure EditGridRate(Sender: TObject);
    procedure GetValueCbBoxPriceLists(Sender: TObject);
    procedure GetValueCbBoxPriceIssue(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmTblPrice: TFrmTblPrice;
  CbPriceIssueItem,        //����� item'a ����� � ��������� ������
  CbPriceListItem: Integer;//����� item'a ����� � ��������
  BasePriceFlag: Boolean;//���� ��� ���������� �����
  PriceListName: String;//��� ������ ��� ���������� �����


implementation

uses MainAndrUnit, TblAnketaUnit, VarAndrUnit,
  TblClinicUnit, TblDoctorUnit, TblTownUnit,
  StatusPatUnit, DMFIBUnit, BasePriceUnit, FIBQuery, pFIBQuery, Math,
  TblPaymentUnit, StrUtils;

var CtrlVisFlag, FocusFlag: Boolean; //���� ��������� ��������� ���������� � ����������� �� ���� �����
    SumVal: Currency;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormCreate(Sender: TObject);
begin
NiceSetFrmTblPrice.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblPrice.LoadSettings;

PnlViewGrid.Align:= alClient;
PnlEdtGrid.Align:= alClient;
BasePriceFlag:= False;
PriceListName:= '';

//��������������� ��������� �������� ������ � �������� � ��������� ������
if PrmIsDigit(LblStoreCbBoxPriceLists.Caption)
  then
    CbPriceListItem:= StrToInt(Trim(LblStoreCbBoxPriceLists.Caption))
  else
    CbPriceListItem:= -1;

if PrmIsDigit(LblStoreCbBoxPriceIssue.Caption)
  then
    CbPriceIssueItem:= StrToInt(Trim(LblStoreCbBoxPriceIssue.Caption))
  else
    CbPriceIssueItem:= -1;

//������ ������
BtnClose.Left:= BtnEscape.Left;
BtnClose.Top:= BtnEscape.Top;

//������� ��������� ������ VIP-������
CtrlVisFlag:= ((AnsiUpperCase(Trim(UsrRoleName)) = 'ADMINISTR') or (AnsiUpperCase(Trim(UsrLgn)) = 'SYSDBA'));

DMFIB.DSetBasePrice.FullRefresh;
FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormShow(Sender: TObject);
begin
ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//������� �������� ��������
with DMFIB do
  begin
    if DSetPriceList.Active then DSetPriceList.Close;
    if DSetPriceIssue.Active then DSetPriceIssue.Close;
    if DSetPrice.Active then DSetPrice.Close;
  end;

LblStoreCbBoxPriceLists.Caption:= IntToStr(CbBoxPriceLists.ItemIndex);
LblStoreCbBoxPriceIssue.Caption:= IntToStr(CbBoxPriceIssue.ItemIndex);
  
//��������� ��������� �����
NiceSetFrmTblPrice.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnEscapeClick(Sender: TObject);
begin
ModRes:= 0;//"�������", �.�. �� �������� ModalResult �����
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblPrice.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxPrice);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.AppEventsFrmTblPriceShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if PnlEdtGrid.Visible
      then
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);//��������� ������� ������� "�������"
        end
      else
        begin
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnChoice.Visible then BtnChoiceClick(Self);//��������� ������� ������� "�������"
          if (GetKeyState(VK_ESCAPE) < 0) then BtnEscapeClick(Self);//��������� ������� ������� "�����"

          //��������� ������� ������ �������������� �����
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)) and SpBtnCostAdd.Enabled then SpBtnCostAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0)) and SpBtnCostDelete.Enabled then SpBtnCostDeleteClick(Self);

          //��������� ������� ������ ����������/�������� �������
          if ((GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0)) and SpBtnPriceAdd.Enabled then SpBtnPriceAddClick(Self);
          if ((GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0)) and SpBtnPriceDel.Enabled then SpBtnPriceDelClick(Self);
        end;
  end;
//"�������" ������� �������� �� ������ ����
AppEventsFrmTblPrice.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnChoiceClick(Sender: TObject);
var i: Integer;
    FullTxt, TmpTxt: String;
begin
TmpTxt:= '';
FullTxt:= '';

ModRes:= 1;//"�������", �.�. �� �������� ModalResult �����

//���� ����� ������� �� ������� ��������, �� ���������� ������
if TblPriceFlag then
  begin
    if GridTblPriceView.SelectedRows.Count > 0
      then //���� ������� ���� ���� ������
        begin
          //�������� � ������� �������� ��������� �����
          PaySum:= SumVal;
          //"����������" ��������� ������ � ���-����
          for i:=0 to GridTblPriceView.SelectedRows.Count-1 do
            begin
              //������ �� ��������� ��������� ������
              GridTblPriceView.DataSource.DataSet.
                            GotoBookmark(pointer(GridTblPriceView.SelectedRows.Items[i]));

              TmpTxt:= Trim(DMFIB.DSetPricePROC_NAME.AsString);
(*
              if i = 0 //���� ��� ������ ��������� ������
                then // �� ������ ������ ����� ��������� (���������)
                  TmpTxt:= AnsiUpperCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1)
                else //����� ������ ����� ��������
                  TmpTxt:= AnsiLowerCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1);
*)

              // ������ ������ ����� ��������� (���������)
              TmpTxt:= AnsiUpperCase(LeftStr(TmpTxt, 1))
                                                  + RightStr(TmpTxt, Length(TmpTxt) - 1);
              FullTxt:= FullTxt + '[' + Trim(DMFIB.DSetPricePROC_CODE.AsString) + '] '
                                                                          + TmpTxt + ', ';

              //������� � ������� �������� ������ "���������" �����������
              PayText:= LeftStr(Trim(FullTxt), Length(Trim(FullTxt)) - 1) + '.';
            end;{for .. to .. do}
      end{if GridTblPriceView.SelectedRows.Count > 0 .. then}
    else
      begin
        PaySum:= 0;
        PayText:= '��� ��������...';
      end;{if GridTblPriceView.SelectedRows.Count > 0 .. else}
  end;{if TblPriceFlag .. then}

Close;
end;

//----------------------------------------------------------------------------------
(**************  ������ �������������� ������� �������  **************)

procedure TFrmTblPrice.SpBtnCostAddClick(Sender: TObject);
begin
LblCautionZeroPrice.Caption:= '��� ������������ �� �������� ������ �������.';
StTxtNoGrant.Caption:= '' + #13#10 + #13#10 + '� ��� ��� ���� �� ��������� ������ � ���� �������!';
EditGridRate(Sender);

CbPriceListItem:= CbBoxPriceLists.ItemIndex;//�������� ����� ������ � ������ �����
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;//�� �� ��� �������� ������
PriceListName:= CbBoxPriceLists.Text;

//���������� ����� � �������� ������
with DSetPriceEdt do
  begin
    if Active then Close;
    SelectSQL.Clear;
    SelectSQL.Text:=
               'SELECT '
                   + 'P.ID_PRICE, '
                   + 'P.FK_BASEPRICE, '
                   + 'P.NAME_PRICE, '
                   + 'P.COST_PROC_PRICE, '
                   + 'P.CHOICE_PROC_PRICE, '
                   + 'BP.BASEPRICE_ID, '
                   + 'BP.BASEPRICE_PROC_ISSUE_FK, '
                   + 'BP.BASEPRICE_PROC_CODE, '
                   + 'BP.BASEPRICE_PROC_NAME, '
                   + 'LI.LABORISSUE_ID, '
                   + 'LI.LABORISSUE_NAME, '
                   + 'LI.LABORISSUE_CODELITER '
             + 'FROM TBL_LABORISSUE LI '
                   + 'JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PROC_ISSUE_FK) '
                   + 'JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE) '
             + 'WHERE (P.NAME_PRICE = :prmPriceName) and (P.COST_PROC_PRICE = 0) '
             + 'ORDER BY LABORISSUE_NAME';
    Prepare;
    ParamByName('prmPriceName').AsString:= PriceListName;
    Open;
    StTxtNoGrant.Visible:= (not CtrlVisFlag);
    LblCautionZeroPrice.Visible:= (IsEmpty and CtrlVisFlag);

    //�������-�������� �������� ����� � ����������� �� ��� "������������" � ���� (���� �������) �����
    FrmMainProg.SwitchGrid(GridTblPriceEdit,((not IsEmpty) and (CtrlVisFlag)));
//    FrmMainProg.SwitchGrid(GridTblPriceEdit, (not IsEmpty));

    if not IsEmpty
      then LblTitle.Caption:= '�������� � �����-���� "' + PriceListName
                                                  + '" ������, ��������� �� ���������'
      else LblTitle.Caption:= '';
  end;

FormResize(Sender);//���������� �������

//���� �����, ����� � ����
if GridTblPriceEdit.CanFocus then GridTblPriceEdit.SetFocus;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.SpBtnCostDeleteClick(Sender: TObject);
begin
CbPriceListItem:= CbBoxPriceLists.ItemIndex;//�������� ����� ������ � ������ �����
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;//�� �� ��� �������� ������
PriceListName:= CbBoxPriceLists.Text;

  with DMFIB, DSetPrice do
    begin
      try
        //�������� "��������" ��������� ���������, ����� ��������� ������� ������ �� ������
        if IsEmpty then Exit;
        Delete;
        ViewGridRate(Sender);//������������� �������� ����� � ������ ������ � ������
      except
        Application.MessageBox(PChar(ErrorMsg),'�������� ������', MB_ICONINFORMATION);
        Exit;//������� �� ���������
      end;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceViewDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridTblPriceView.DataSource.DataSet.RecNo mod 2 = 1
	then GridTblPriceView.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		GridTblPriceView.Canvas.Brush.Color:= clMoneyGreen;
		GridTblPriceView.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	GridTblPriceView.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------
//��������� ��������� � ������ �������
procedure TFrmTblPrice.GetValueCbBoxPriceLists(Sender: TObject);
begin
  with DSetPriceList do
    begin
      //������ Tbl_price
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT DISTINCT NAME_PRICE FROM TBL_PRICE ORDER BY 1 DESC';
      Prepare;
      Open;
    end;{with DMFIB,DSetTemp do..}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GetValueCbBoxPriceIssue(Sender: TObject);
begin
  with DSetPriceIssue do
    begin
      //������ Tbl_LaborIssue
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:= 'SELECT LABORISSUE_ID, LABORISSUE_NAME FROM TBL_LABORISSUE ORDER BY 1';
      Prepare;
      Open;

      //�������� ����
      CbBoxPriceIssue.Items.Clear;

      //�������� ����, ���� �� ������ �������
      if not IsEmpty //���� ������� �������� �������� ������ �� ������
        then //��������� ���������
          begin
            CbBoxPriceIssue.Items.Add('��� �������');//������� �����, �������� ��� � ��������
            First;//������ �� ������ ������

            while not Eof do
              begin
                CbBoxPriceIssue.Items.Add(Trim(FN('LABORISSUE_NAME').AsString));//������� �����
                Next;//��������� ������
              end;{while not Eof do..}

            CbBoxPriceIssue.ItemIndex:= CbPriceIssueItem;//��������� ��������
          end
        else
          begin
            CbBoxPriceIssue.Items.Add('����������� ������� ������');
          end;
    end;{with DMFIB,DSetTemp do..}        
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.CbBoxIssueChange(Sender: TObject);
begin
CbBoxPriceListsChange(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.FormResize(Sender: TObject);
begin
//���������� ��� �������
with LblCautionEmptyPrice do
  begin
    Parent:= GridTblPriceView;//��������� �������� �������
    Left:= (GridTblPriceView.Width - Width) div 2;
    Top:= GridTblPriceView.Height div 2;
  end;{with LblCautionEmptyPrice do..}

LblTitle.Left:= (ClientWidth - LblTitle.Width) div 2;

//������� �� ����� �������
with LblWarningCbBox do
  begin
    Parent:= CbBoxPriceLists;
    Left:= CbBoxPriceLists.Left + 5;
    Top:= (CbBoxPriceLists.Height - Height) div 2;
  end;

//������� �� ������ ������
with LblCautionZeroPrice do
  begin
    Parent:= GridTblPriceEdit;
    Left:= (GridTblPriceEdit.Width - Width) div 2;
    Top:= GridTblPriceEdit.Height div 2;
  end;

with StTxtNoGrant do
  begin
    Parent:= GridTblPriceEdit;
    Left:= (Parent.Width - Width) div 2;
    Top:= (Parent.Height - Height) div 2;
//    Color:= RGB(150,0,0);
    Color:= clWindow;
    Font.Color:= clRed;//(ColorToRGB = 255)

    //���� � ������� ������������� � ���� ������ �������, �� ������������� �����
    if (Abs(ColorToRGB(clWindow)- ColorToRGB(Font.Color)) < 150)
      then
        Font.Color:= clWindowText;
//    ShowMessage('clWindow = ' + IntToStr(ColorToRGB(clWindow)));
  end;

end;

//----------------------------------------------------------------------------------
//����������� ����
procedure TFrmTblPrice.EditGridRate(Sender: TObject);
begin
//������� ������ ������ �� �����
BtnChoice.Visible:= False;
BtnEscape.Visible:= False;
BtnClose.Visible:= True;

PnlViewGrid.Visible:= False;//������� �������� ����
PnlEdtGrid.Visible:= True;//������� ���� � "��������" ������

end;

//----------------------------------------------------------------------------------
//������������� ����
procedure TFrmTblPrice.ViewGridRate(Sender: TObject);
begin
PnlViewGrid.Visible:= True;//���������� �������� ����
PnlEdtGrid.Visible:= False;//������� ���� � "��������" ������

//������� ������ ������ �� �����
BtnChoice.Visible:= False;
BtnEscape.Visible:= True;
BtnClose.Visible:= False;

//������� ������ ����������-�������� �������, ���� � ���� ����� ���� ��������������� �����
SpBtnPriceAdd.Visible:= CtrlVisFlag;
SpBtnPriceDel.Visible:= CtrlVisFlag;
SpBtnCostAdd.Visible:= CtrlVisFlag;
SpBtnCostDelete.Visible:= CtrlVisFlag;

LblTitle.Caption:= '�����-���� ����������� �����';

//����.����� �������, ���� ����� ������� ��� ������
if TblPriceFlag
  then GridTblPriceView.Options:= GridTblPriceView.Options + [dgMultiSelect]
  else GridTblPriceView.Options:= GridTblPriceView.Options - [dgMultiSelect];

Lbl1.Visible:= TblPriceFlag;//������� �����, ���� ����� ��������
Lbl2.Visible:= TblPriceFlag;//������� �����, ���� ����� ��������


FormResize(Sender);

//��������� ������ �� ���� ������� � ����������
GetValueCbBoxPriceLists(Sender);

//��������� ������ �� �������� ������ � ����������
GetValueCbBoxPriceIssue(Sender);


with DSetPriceList do
  begin
    //�������� �������� ������������ ������������� ������
    SpBtnPriceDel.Enabled:= ((not IsEmpty) and CtrlVisFlag);//��������� ������ �������� �������
    CbBoxPriceLists.Enabled:= not IsEmpty;//����������� ������ �����
    CbBoxPriceIssue.Enabled:= not IsEmpty;//�������������� � ����� � ���������
    LblWarningCbBox.Visible:= IsEmpty;//��������������� ������� �� �����
    CbBoxPriceLists.Items.Clear;//������� ����

    //�������� ��������� ����
    if not IsEmpty //���� ������� ������� �� ������
      then //��������� ���������
        begin
          First;//������ �� ������ ������ (��������� �� ��������)
          while not Eof do
            begin
              CbBoxPriceLists.Items.Add(FN('NAME_PRICE').AsString);//������� �����
              Next;//��������� ������
            end;{while not Eof do..}

//          //���������� � ����� ��������� ����������� ItemIndex
//          if Trim(PriceListName) <> ''
//            then //�� ���������� ��������
//              CbBoxPriceLists.ItemIndex:= CbBoxPriceLists.Items.IndexOf(PriceListName)
//            else //�� ���������� ������
//              CbBoxPriceLists.ItemIndex:= NumPriceList;

            CbBoxPriceLists.ItemIndex:= CbPriceListItem;

          SpBtnCostAdd.Enabled:= ((not IsEmpty) and CtrlVisFlag);//������ ���������� �������
          CbBoxPriceLists.Font.Color:= clWindowText;

          if TblPriceFlag //���� �������� ������������� �����
            then
              GridTblPriceView.FooterRowCount:= 1 //������� ������
            else
              GridTblPriceView.FooterRowCount:= 0;//������� ������

          //����������� � ������� ������ ������ �������������� ����� ������ � �����
          CbBoxPriceListsChange(Sender);
        end{if not IsEmpty..then}
      else //���� ������� ������� ������
        begin
          //���������� "������" �����
          with DMFIB, DSetPrice do
            begin
              if Active then Close;
              //SQLs.SelectSQL.Clear;
              SQLs.SelectSQL.Text:= 'SELECT * FROM TBL_PRICE';
              Open;
            end;

          GridTblPriceView.FooterRowCount:= 0;// ������� ������
          //��������
          FrmMainProg.SwitchGrid(GridTblPriceView,(not IsEmpty));//����
          SpBtnCostAdd.Enabled:= ((not IsEmpty) and CtrlVisFlag);//������ ���������� �������
          SpBtnCostDelete.Enabled:= ((not IsEmpty) and CtrlVisFlag);//������ �������� �������

          //������� �������, ���� �������� ����������(��.����. CbBoxPriceListsChange)
          LblCautionEmptyPrice.Caption:= '�� ������ ������ � ���� ������ �� ������� '
                                       + '�� ������ �����-�����.';
          LblCautionEmptyPrice.Visible:= IsEmpty;
        end;{if not IsEmpty..else}
  end;{with DMFIB, DSetTemp do..}

//����� � ����, ���� �����
if GridTblPriceView.CanFocus then GridTblPriceView.SetFocus;
end;

//----------------------------------------------------------------------------------
//������������� ������� ����� � �������� ��� ����� �������� �����
procedure TFrmTblPrice.CbBoxPriceListsChange(Sender: TObject);
var TmpStr: String;
begin
//�������� ���������� ��� � ��������������� ����� � ������ �������� ������ � �����
PriceListName:= Trim(CbBoxPriceLists.Text);
CbPriceListItem:= CbBoxPriceLists.ItemIndex;//�������� ������� item'a ������
CbPriceIssueItem:= CbBoxPriceIssue.ItemIndex;

if CbBoxPriceIssue.ItemIndex > 0
  then
    begin
    //��� ���� ��������� ����� ����������� � � ������� DBLookUpCbBox, �� ���� :-)
    if not DSetPriceIssue.Active then DSetPriceIssue.Open;//�������, ���� ������

    //������������� ������ �� ������, ��������������� ���������� � �����
    if not DSetPriceIssue.IsEmpty then
      begin
        if DSetPriceIssue.Locate('LABORISSUE_NAME',CbBoxPriceIssue.Text,[])
          then
            TmpStr:= '(P.NAME_PRICE = :prmPriceName) AND (BP.BASEPRICE_PROC_ISSUE_FK = '
                                     + IntToStr(DSetPriceIssue.FN('LABORISSUE_ID').AsInteger) + ')';
      end;
    end
  else
    TmpStr:= 'P.NAME_PRICE = :prmPriceName';
    
  //��������� ������ ��� ����������� � �����
  with DMFIB, DSetPrice do
    begin
      if Active then Close;
      SQLs.SelectSQL.Clear;
      SQLs.SelectSQL.Text:=
        'SELECT '
         + 'P.ID_PRICE, '
         + 'P.FK_BASEPRICE, '
         + 'P.NAME_PRICE, '
         + 'P.COST_PROC_PRICE, '
         + 'P.CHOICE_PROC_PRICE, '
         + 'BP.BASEPRICE_ID, '
         + 'BP.BASEPRICE_PROC_ISSUE_FK, '
         + 'BP.BASEPRICE_PROC_CODE, '
         + 'BP.BASEPRICE_PROC_NAME, '
         + 'LI.LABORISSUE_ID, '
         + 'LI.LABORISSUE_NAME, '
         + 'LI.LABORISSUE_CODELITER '
      + 'FROM TBL_LABORISSUE LI '
        + 'INNER JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PROC_ISSUE_FK) '
        + 'INNER JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE) '
      + 'WHERE (' + TmpStr + ') and (P.COST_PROC_PRICE > 0) '
      + 'ORDER BY 2 DESC';

      Prepare;
      ParamByName('prmPriceName').AsString:= PriceListName;
      FullRefresh;

      //"�������/��������"
      FrmMainProg.SwitchGrid(GridTblPriceView,(not isEmpty));//����
      SpBtnCostDelete.Enabled:= ((not IsEmpty) and CtrlVisFlag);//������ ��������

      LblCautionEmptyPrice.Visible:= IsEmpty;
      if CbBoxPriceIssue.ItemIndex = 0
        then
          LblCautionEmptyPrice.Caption:= '� �����-����� "'  + PriceListName
          + '" �� � ����� �� �������� ��������� �� ����������.'
        else
          LblCautionEmptyPrice.Caption:= '� ������� "' + Trim(CbBoxPriceIssue.Text)
          + '" �����-����� "' + Trim(CbBoxPriceLists.Text) + '" �� � ����� �� �������� '
          + '��������� �� ����������.';
      if IsEmpty
        then FormResize(Sender);//���������� ��������������� �������
    end;{with DMFIB, DSetPrice do..}

//"��������" ������ ����� ����� ������
GridTblPriceView.Columns[2].Footer.Value:= '';
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.CbBoxPriceIssueChange(Sender: TObject);
begin
CbBoxPriceListsChange(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceEditDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if GridTblPriceEdit.DataSource.DataSet.RecNo mod 2 = 1
	then GridTblPriceEdit.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		GridTblPriceEdit.Canvas.Brush.Color:= clMoneyGreen;
		GridTblPriceEdit.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	GridTblPriceEdit.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnSaveClick(Sender: TObject);
begin
ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.BtnCloseClick(Sender: TObject);
begin
  try
    //��������� ��������� � ��������, ���� � ����� ���� ��������� ������
    if DMFIB.DSetPrice.Modified then DMFIB.DSetPrice.Post;
  except
    //���������� ��������� � �������� � ������ ������
    if DMFIB.DSetPrice.Modified then DMFIB.DSetPrice.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'������ ���������� ������', MB_ICONINFORMATION);
  end;

ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------
//��������� "��������������" ������� � "�������" ���� �������� �� ���������
procedure TFrmTblPrice.GridTblPriceEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) and (Key = VK_DELETE) then
  begin
    Key:= 0;
    Exit;
  end;

//if (Key = VK_DOWN) or (Key = VK_TAB) then
//  with DSetPriceEdt do
//    begin
//      DisableControls;
//      Next;
//      if Eof then Key:= 0 else Prior;
//      EnableControls;
//    end;{with DSetPriceEdt do}
//
////����������� �������� ������ "Enter" ��������� ����� ������ ������
//if (Key = VK_RETURN) and DSetPriceEdt.FN('BASEPRICE_PROC_NAME').IsNull then
//  with DSetPriceEdt do
//    begin
//      DisableControls;
//      Next;
//      if Eof then Key:= 0 else Prior;
//      EnableControls;
//    end;{with DSetPriceEdt do}

//��. BeforeInsert ��������

//���� ��������� ������� ���������
if (Key = VK_UP) or (Key = VK_DOWN) or (Key = VK_TAB) then
  try
    if DSetPriceEdt.Modified then DSetPriceEdt.Post;
  except
    if DSetPriceEdt.Modified then DSetPriceEdt.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'������ ��������� ������',MB_ICONINFORMATION);
  end;

end;

//----------------------------------------------------------------------------------
//��������� "��������������" ������� � �������� ���� �������� �� ���������
procedure TFrmTblPrice.GridTblPriceViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((Key = VK_DOWN) or (Key = VK_TAB)) then
  with DMFIB, DSetPrice do
    begin
      DisableControls;
      Next;
      if Eof then Key:= 0 else Prior;
      EnableControls;
    end;{with DMFIB, DSetPrice do}
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------
//��������� ����� �����
procedure TFrmTblPrice.SpBtnPriceAddClick(Sender: TObject);
begin
with TFrmBasePrice.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

if BasePriceFlag
  then //���� ���� ������ ������ �������� ������ ������
     with DMFIB, DSetTemp do
       begin
        GetValueCbBoxPriceLists(Sender);//���������� � ����������� ������
        if not IsEmpty //���� ������� ������� �� ������
          then //��������� ���������
            begin
              First;//������ �� ������ ������ (��������� �� ��������)
              while not Eof do
                begin
                  CbBoxPriceLists.Items.Add(FN('NAME_PRICE').AsString);//������� �����
                  Next;//��������� ������
                end;{while not Eof do..}

              //������� ����� ������� � ����� �� ��������
              //NumPriceList:= CbBoxPriceLists.Items.IndexOf(PriceListName);
              //CbBoxPriceLists.ItemIndex:= NumPriceList;
              CbBoxPriceLists.ItemIndex:= CbBoxPriceLists.Items.IndexOf(PriceListName);
              SpBtnCostAddClick(Sender);//������ ������ ����������� ���
            end {if not IsEmpty...then}
          else //���� ���� ������-�� ����
            ViewGridRate(Sender);//��������� ����� � ���������� ���� ���������
       end{with DMFIB, DSetTemp do}
  else //���� ���� ������ ������ �������� �������� ������
    ViewGridRate(Sender);//��������� ����� � ���������� ���� ���������
end;

//----------------------------------------------------------------------------------
//������� ������� �����
procedure TFrmTblPrice.SpBtnPriceDelClick(Sender: TObject);
begin
//���� ���� ������, �� �������
if CbBoxPriceLists.Items.Count = 0 then Exit;

with DMFIB,QryTemp do
  begin
    SQL.Clear;
    SQL.Text:= 'DELETE FROM TBL_PRICE '
             + 'WHERE NAME_PRICE LIKE :prmNamePrice';
    Prepare;
    ParamByName('prmNamePrice').AsString:= Trim(CbBoxPriceLists.Text);

    if Application.MessageBox(PChar('�� ������������� ������ ������� �����-���� "'
                              + Trim(CbBoxPriceLists.Text) + '" �� ������?'),
                              '�������� �������', MB_ICONINFORMATION + MB_YESNO) = IDNo
      then Exit
      else
        begin
          try
            ExecQuery;//������� �������� �����
            PriceListName:= '';
            CbPriceListItem:= CbBoxPriceLists.Items.Count - 2;
          except
            Application.MessageBox(PChar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
            Exit;
          end;{try..except}
        end;
  end;{with DMFIB,QryTemp do}

ViewGridRate(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceViewCellClick(Column: TColumnEh);
var   i: Integer;
begin
//���� ��������� ����� �����, ��
// �� ��������� ����� ������������� �����,
// ���� "��������" ������������� �����

SpBtnCostAdd.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnCostDelete.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnPriceAdd.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);
SpBtnPriceDel.Enabled:= ((not (GridTblPriceView.SelectedRows.Count > 1)) and CtrlVisFlag);


//���������� ������ ������ �������������� ������� ���������� �������
//��� �������, ��� ����� ������� ��� ������
if TblPriceFlag
  then
    BtnChoice.Visible:= (GridTblPriceView.SelectedRows.Count > 0)
  else
    BtnChoice.Visible:= False;

//������������ ��������� ������
if GridTblPriceView.SelectedRows.Count = 0
  then
    GridTblPriceView.Columns[2].Footer.Value:= '0'
  else
    begin
      SumVal:= 0;
      //��������� ��������� ������
      for i:=0 to GridTblPriceView.SelectedRows.Count-1 do
        begin
          GridTblPriceView.DataSource.DataSet.
                              GotoBookmark(pointer(GridTblPriceView.SelectedRows.Items[i]));
          SumVal:= SumVal + DMFIB.DSetPrice.FieldByName('COST_PROC_PRICE').AsCurrency;
        end;
      GridTblPriceView.Columns[2].Footer.Value:= CurrToStrF(SumVal,ffNumber, 2) + ' ���.';
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.GridTblPriceEditDblClick(Sender: TObject);
begin
BtnCloseClick(Sender);
end;

//----------------------------------------------------------------------------------
//�������� ��������� ����� ������ � �������
procedure TFrmTblPrice.DSetPriceEdtBeforeInsert(DataSet: TDataSet);
begin
Abort;
end;

//----------------------------------------------------------------------------------

procedure TFrmTblPrice.DSetPriceEdtBeforePost(DataSet: TDataSet);
begin
//���� ������ ��������� ����, �� ������� ��� ����
if DSetPriceEdt.FN('COST_PROC_PRICE').IsNull
  then DSetPriceEdt.FN('COST_PROC_PRICE').AsCurrency:= 0;
end;

//----------------------------------------------------------------------------------

end.
