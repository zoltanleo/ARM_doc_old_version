unit TblManipUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  DataDriverEh, MemTableEh, AppEvnts;

type
  TFrmTblManip = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblManip: TPanel;
    PnlViewTblManip: TPanel;
    LblCapt: TLabel;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    SpBtnManipAdd: TSpeedButton;
    SpBtnManipEdit: TSpeedButton;
    SpBtnManipDelete: TSpeedButton;
    DBGridTblManip: TDBGridEh;
    Lbl1: TLabel;
    Lbl2: TLabel;
    EdtManipName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtManipUse: TEdit;
    Label3: TLabel;
    EdtManipCure: TEdit;
    LblWarning: TLabel;
    PpMnuTblManip: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblManip: TNiceSettings;
    PnlChoiceTblManip: TPanel;
    DBGridChoiceManip: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    MTEChoiceTblManip: TMemTableEh;
    dsdChoiceTblManip: TDataSetDriverEh;
    MTEViewTblManip: TMemTableEh;
    dsdViewTblManip: TDataSetDriverEh;
    DSChoiceTblManip: TDataSource;
    DSViewTblManip: TDataSource;
    DSetChoiceTblManip: TpFIBDataSet;
    AppEventsManip: TApplicationEvents;
    BtnHlp: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnManipAddClick(Sender: TObject);
    procedure SpBtnManipEditClick(Sender: TObject);
    procedure SpBtnManipDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure DBGridTblManipDblClick(Sender: TObject);
    procedure DBGridTblManipDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblManipCellClick(Column: TColumnEh);
    procedure DBGridChoiceManipDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridTblManipDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridTblManipDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceManipDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceManipDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsManipShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure BtnEdtRecOn(Sender: TObject);
    procedure BtnEdtRecOff(Sender: TObject);
    procedure ActivatingControlls(Sender: TObject);
    procedure SwitchOnOffBtn(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmTblManip: TFrmTblManip;

implementation

uses VarAndrUnit, MainAndrUnit, StatusPatUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmTblManip.SaveSettings;

if DMFIB.DSetManip.Active then DMFIB.DSetManip.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//���������� ���������
with LblWarning do
  begin
  Parent:= DBGridTblManip;
  Left:= (DBGridTblManip.Width - LblWarning.Width) div 2;//���������� ��������������
  Top:= DBGridTblManip.Height div 2;//���������� �������������� �� ������
  end;

//���������� ������ �� "�������" �����
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//������ ������ �����
    TmpSQLTxt: String;
begin
NiceSetFrmTblManip.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblManip.LoadSettings;

FrmLongWidth:= Self.Width;//�������� ������ ����� � DesignTime

//���� ����� ������� ��� ��������� ��� ����� ������, �� "�����������" ��
if not ManipChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblManip.Width;//����������� �����
      Self.Caption:= '�������� ����������� � ��������';
    end
  else //����� ��� ����������, ��� � Design Time
    begin
      Self.Width:= FrmLongWidth;

      //������ ��������� � ����������� �� ����
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //���� ��� �������
            Self.Caption:= '����� ����������� � �������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //���� ��� �������
            Self.Caption:= '����� ����������� � �������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblManip.Visible:= ManipChoiceBtn;//���������� ���.�������� � ����������� �� ��������������� ������


//����������� ������� ��� ������� �������
with DMFIB.DSetManip do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_MANIP, MANIPNAME, MANIPUSE, MANIPCURE, ROLE_NAME, USR_NAME '
    + 'FROM TBL_MANIP ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
  end;

with DSetChoiceTblManip do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_MANIP, MANIPNAME, MANIPUSE, MANIPCURE, ROLE_NAME, USR_NAME '
    + 'FROM TBL_MANIP ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) and (1=2)) '
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.FormShow(Sender: TObject);
begin
FrmTblManip.Caption:= '������ �������� ����������� � ��������';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblManip.Visible:= True;
PnlViewTblManip.Enabled:= False;

//��������� � "�������������" ������ ��������������
BtnClose.Visible:= False;
BtnChoice.Visible:= False;

SpBtnManipAdd.Enabled:= False;
SpBtnManipEdit.Enabled:= False;
SpBtnManipDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//���������� ������ ���������
BtnSave.Visible:= True;
BtnCancel.Visible:= True;
LblWarning.Font.Color:= clGray;

if TblManipFlag
  then LblCapt.Caption:= '�������� �������� ����� �����������'//������ ������ "��������"
  else LblCapt.Caption:= '�������������� �������� �����������';//������ ������ "�������������"

FrmMainProg.SwitchGrid(DBGridTblManip, False);
FrmMainProg.SwitchGrid(DBGridChoiceManip, False);

FormResize(Sender);  
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= '�������� �����������';//�������� ���������
PnlEdtTblManip.Visible:= False;//������ ������ ��������������
PnlViewTblManip.Enabled:= True;//�������� ������ � ��������

//�������� ������ ��������������
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
SpBtnManipAdd.Enabled:= True;

//������ ������ ���������
BtnSave.Visible:= False;
BtnCancel.Visible:= False;
LblWarning.Font.Color:= clRed;

//����.����� �������, ���� ����� ������� ��� ������
if ManipChoiceBtn
  then DBGridTblManip.Options:= DBGridTblManip.Options + [dgMultiSelect]
  else DBGridTblManip.Options:= DBGridTblManip.Options - [dgMultiSelect];

Lbl1.Visible:= ManipChoiceBtn;//������� �����, ���� ����� ��������
Lbl2.Visible:= ManipChoiceBtn;//������� �����, ���� ����� ��������

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);

with DMFIB, DSetManip do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblManip, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceManip, not IsEmpty);
  end;

if DBGridTblManip.CanFocus then
  begin
    DBGridTblManip.SetFocus;//���� �����, ����� �� ����

    //�������� �������������� �� ��������
//    DBGridTblManip.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblManip.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblManip.DefaultApplySorting;
  end;
FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipAddClick(Sender: TObject);
begin
TblManipFlag:= True;
BtnEdtRecOff(Sender);

EdtManipName.Clear;
EdtManipUse.Clear;
EdtManipCure.Clear;

if EdtManipName.CanFocus then EdtManipName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipEditClick(Sender: TObject);
begin
TblManipFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetManip do
  begin
    Locate('ID_MANIP',MTEViewTblManip['ID_MANIP'],[]);//���������� ������ � ������
    EdtManipName.Text:= Trim(FieldByName('ManipName').AsString);
    EdtManipUse.Text:= Trim(FieldByName('ManipUse').AsString);
    EdtManipCure.Text:= Trim(FieldByName('ManipCure').AsString);
  end;{with}

if EdtManipName.CanFocus then EdtManipName.SetFocus;  
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SpBtnManipDeleteClick(Sender: TObject);
begin
if Application.MessageBox('�� �������, ��� ������ ������� ������ ����������� (���������)'
                        + ' �� �����������?', '��������!',
                                                    MB_ICONINFORMATION + MB_YESNO)= IDNo
  then Exit
  else
    try
      if DMFIB.DSetManip.IsEmpty then Exit;

      DMFIB.DSetManip.Locate('ID_MANIP',MTEViewTblManip['ID_MANIP'],[]);//���������� ������ � ������
      DMFIB.DSetManip.Delete;
    except
      Application.MessageBox(Pchar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.AppEventsManipShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� ������� "�������" ������
    if ManipChoiceBtn then //���� ����� ������� ��� ������
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblManip.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridTblManip.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblManip.Visible) //����� � ������ �������������� �������� ������ ����������� �������
              then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblManip.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridChoiceManip.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnRtnOneClick(Self);
              end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblManip.Visible) //����� � ������ �������������� �������� ������ ����������� �������
              then BtnRtnAllClick(Self);
      end;

    //����������� �������� �� �����, ��������� ��������� ��-�������
    if PnlEdtTblManip.Visible
      then //���� ��������� � ������ ��������������
        begin
          if GetKeyState(VK_ESCAPE) < 0 then BtnCancelClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
            begin
              if BtnChoice.Visible //���� ������ ������ �� ��������
                then
                  BtnChoiceClick(Self)
                else
                  BtnCloseClick(Self);
            end;
        end;

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnManipAdd.Enabled then SpBtnManipAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnManipEdit.Enabled then SpBtnManipEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnManipDelete.Enabled then SpBtnManipDeleteClick(Self);
  end;

//����� ������ ����� �� ����������� �� ����� �������
AppEventsManip.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetManip.Modified then DMFIB.DSetManip.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnSaveClick(Sender: TObject);
begin
//������������� ���������� "������" �������
with FrmMainProg do
  begin
    if Trim(EdtManipName.Text) = '' then CheckEdtEmpty(EdtManipName,
                                        '�� �� ����� �������� ����������� (���������)!');
    if Trim(EdtManipUse.Text) = '' then CheckEdtEmpty(EdtManipUse,
                                            '�� �� ������� ��������� ������ ���������!');
    if Trim(EdtManipCure.Text) = '' then CheckEdtEmpty(EdtManipCure,
                                            '�� �� ������� ������������ ����� �������!');
  end;

  try
    with DMFIB,DSetManip do
    begin
      if State = dsBrowse then//���� ����� � ������ ������
      begin
        if TblManipFlag //���� �������
          then Insert //��������� ������
          else Edit;  // ����������� ������

        FieldByName('ManipName').AsString:= Trim(EdtManipName.Text);
        FieldByName('ManipUse').AsString:= Trim(EdtManipUse.Text);
        FieldByName('ManipCure').AsString:= Trim(EdtManipCure.Text);

        if DSetManip.Modified then DSetManip.Post;
      end;
    end;{with}
  except
    DMFIB.DSetManip.Cancel;
    Application.MessageBox(Pchar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipCellClick(Column: TColumnEh);
begin
// �� ��������� ����� ������������� ��� ������� ��������� �� �������,
// ���� "��������" ������������� �����
//SpBtnManipEdit.Enabled:= not (DBGridTblManip.SelectedRows.Count > 1);
//SpBtnManipDelete.Enabled:= not (DBGridTblManip.SelectedRows.Count > 1);

SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDblClick(Sender: TObject);
begin
//SpBtnManipEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnChoiceClick(Sender: TObject);
var TmpTxt, FullTxt: String;
    TmpRE: TRichEdit;
begin
// ---> ���� ������ �� �������

if DBGridChoiceManip.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('�� ������� �� ����� ������. ��� ������ ���������� ����������� '
                  + '�� ������� ����� � ������� ������ ��������, �������������� ����� ����, ��� ���������� '
                  + '������. ��� �������������� ������ ����������� � ����� ������� ����������� ������� ������� '
                  + '<Ctrl>. ������ ��������� �������?', '��������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          Exit //�������� � �����
        else
          begin
           Close;
           Exit;
          end; //������� �����
    end;

// ---> ���� ������� �� ������ ����� ������

FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;

        Lines.Add('�����������: ');
        SelStart:= 0;
        SelLength:= Length(Trim('�����������: '));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= SelLength;
        SelAttributes.Assign(DefAttributes);
      end;

    //"����������" ��������� ������ � ���-����
    with MTEChoiceTblManip do
      begin
        First;//��������� � ������ ������

        while not Eof do
          begin
            FullTxt:= '- ' + Trim(FieldByName('ManipName').AsString) + ' '
                    + Trim(FieldByName('ManipCure').AsString) + ' '
                    + Trim(FieldByName('ManipUse').AsString);

            TmpRE.Lines.Add(FullTxt);//��������� ������ � ���-����
            Next;//��������� ������
          end;

      end;

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextManip;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������ �����������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextManip:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextManip <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ������ ����������� ' +
               '������ ����� ������� �� ����� �������������� �����. ��������� ������?',
               '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextManip:= FullTxt;//��������, ���� ����� "��"

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblManip.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblManip.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTblManip.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblManip.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTblManip.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.ActivatingControlls(Sender: TObject);
begin
//������������� ��� ������
DMFIB.DSetManip.FullRefresh;
DSetChoiceTblManip.FullRefresh;

if MTEViewTblManip.Active then MTEViewTblManip.Close;
MTEViewTblManip.Open;

if MTEChoiceTblManip.Active then MTEChoiceTblManip.Close;
MTEChoiceTblManip.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.SwitchOnOffBtn(Sender: TObject);
begin
if ManipChoiceBtn //���� ����� ������� ��� �������������� ������
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblManip.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblManip.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);

      //���������� ������ ������ �������������� ������� � ������ ����� ��������� �������
      BtnChoice.Visible:= (DBGridChoiceManip.DataSource.DataSet.RecordCount > 0);
    end {if DsChoiceBtn..then}
  else
    begin
      BtnFwdOne.Enabled:= False;
      BtnFwdAll.Enabled:= False;

      BtnRtnOne.Enabled:= False;
      BtnRtnAll.Enabled:= False;

      BtnChoice.Visible:= False;
    end; {if DsChoiceBtn.. else}

//������ �������������� � �������� ������� �� ����� ����� ��������, ���� ���� �� ������
//� ���������� ��������� ������� � ������� ������ �� ������ �����
SpBtnManipEdit.Enabled:= ((DBGridTblManip.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblManip.SelectedRows.Count > 1)));
SpBtnManipDelete.Enabled:= ((DBGridTblManip.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblManip.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceManip.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceManip.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridChoiceManip.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceManip.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridChoiceManip.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceManip) and ManipChoiceBtn //� ����� ������� ��� ����.������
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridTblManipDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceManip then
    begin
      DBGridTblManip.DataSource.DataSet.DisableControls;
      DBGridChoiceManip.DataSource.DataSet.DisableControls;
      DBGridTblManip.SaveBookmark;
      if DBGridChoiceManip.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceManip.SelectedRows.Count-1 do
          begin
            DBGridChoiceManip.DataSource.DataSet.Bookmark := DBGridChoiceManip.SelectedRows[I];
            DBGridTblManip.DataSource.DataSet.Append;
            DBGridTblManip.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblManip.DataSource.DataSet.FieldCount-1 do
              DBGridTblManip.DataSource.DataSet.Fields[j].Value := DBGridChoiceManip.DataSource.DataSet.Fields[j].Value;

            DBGridTblManip.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceManip.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceManip.DataSource.DataSet.First;

            while  not DBGridChoiceManip.DataSource.DataSet.EOF do
              begin
                DBGridTblManip.DataSource.DataSet.Append;
                DBGridTblManip.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblManip.DataSource.DataSet.FieldCount-1 do
                  DBGridTblManip.DataSource.DataSet.Fields[j].Value := DBGridChoiceManip.DataSource.DataSet.Fields[j].Value;

                DBGridTblManip.DataSource.DataSet.Post;
                DBGridChoiceManip.DataSource.DataSet.Delete;
              end;
            DBGridChoiceManip.Selection.Clear;
          end;
      DBGridTblManip.RestoreBookmark;
      DBGridChoiceManip.SelectedRows.Delete;
      DBGridChoiceManip.DataSource.DataSet.Refresh;
      DBGridChoiceManip.DataSource.DataSet.EnableControls;
      DBGridTblManip.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblManip) and ManipChoiceBtn //� ����� ������� ��� ����.������
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.DBGridChoiceManipDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblManip then
    begin
      DBGridChoiceManip.DataSource.DataSet.DisableControls;
      DBGridTblManip.DataSource.DataSet.DisableControls;
      DBGridChoiceManip.SaveBookmark;

      if DBGridTblManip.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblManip.SelectedRows.Count-1 do
            begin
              DBGridTblManip.DataSource.DataSet.Bookmark := DBGridTblManip.SelectedRows[I];
              DBGridChoiceManip.DataSource.DataSet.Append;
              DBGridChoiceManip.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceManip.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceManip.DataSource.DataSet.Fields[j].Value := DBGridTblManip.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceManip.DataSource.DataSet.Post;
            end
        else
          if DBGridTblManip.Selection.SelectionType = gstAll then
            begin
              DBGridTblManip.DataSource.DataSet.First;
              while  not DBGridTblManip.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceManip.DataSource.DataSet.Append;
                  DBGridChoiceManip.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceManip.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceManip.DataSource.DataSet.Fields[j].Value := DBGridTblManip.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceManip.DataSource.DataSet.Post;
                  DBGridTblManip.DataSource.DataSet.Delete;
                end;
              DBGridTblManip.Selection.Clear;
            end;

      DBGridChoiceManip.RestoreBookmark;
      DBGridTblManip.SelectedRows.Delete;
      DBGridTblManip.DataSource.DataSet.Refresh;
      DBGridTblManip.DataSource.DataSet.EnableControls;
      DBGridChoiceManip.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblManip,DBGridChoiceManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxManip);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblManip,DBGridChoiceManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceManip,DBGridTblManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblManip.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceManip,DBGridTblManip);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
