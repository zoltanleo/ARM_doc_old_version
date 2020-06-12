unit TblDsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  MemTableEh, DataDriverEh, StrUtils, AppEvnts;

type
  TFrmTblDs = class(TForm)
    PnlCaption: TPanel;
    LblCapt: TLabel;
    PnlEdtTblDs: TPanel;
    Label1: TLabel;
    EdtDsName: TEdit;
    PnlViewTblDs: TPanel;
    SpBtnDsAdd: TSpeedButton;
    SpBtnDsEdit: TSpeedButton;
    SpBtnDsDelete: TSpeedButton;
    Lbl2: TLabel;
    Lbl1: TLabel;
    DBGridTblDs: TDBGridEh;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    Label2: TLabel;
    EdtDsNumber: TEdit;
    BitBtnMKBchoice: TBitBtn;
    PpMnuTblDs: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDs: TNiceSettings;
    BtnHlp: TButton;
    PnlChoiceTblDs: TPanel;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    DBGridChoiceTblDs: TDBGridEh;
    dsdViewTblDs: TDataSetDriverEh;
    MTEViewTblDs: TMemTableEh;
    MTEChoiceTblDs: TMemTableEh;
    dsdChoiceTblDs: TDataSetDriverEh;
    DSViewTblDs: TDataSource;
    DSChoiceTblDs: TDataSource;
    DSetChoiceTblDs: TpFIBDataSet;
    LblWarning: TLabel;
    AppEventsDs: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnDsAddClick(Sender: TObject);
    procedure SpBtnDsEditClick(Sender: TObject);
    procedure SpBtnDsDeleteClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure DBGridTblDsDblClick(Sender: TObject);
    procedure EdtDsNameChange(Sender: TObject);
    procedure DBGridTblDsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtnMKBchoiceClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblDsCellClick(Column: TColumnEh);
    procedure DBGridChoiceTblDsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridChoiceTblDsDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceTblDsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridTblDsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsDsShortCut(var Msg: TWMKey; var Handled: Boolean);
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
    FrmTblDs: TFrmTblDs;
    DsNumb, DsName, MKB_IDNUMBER: String;
    FocusFlag: Boolean;
    
implementation

uses VarAndrUnit, StatusPatUnit, MainAndrUnit, DMFIBUnit, MKBUnit;

var iii: integer;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblDs.Visible:= True;
PnlViewTblDs.Enabled:= False;

//��������� � "�������������" ������ ��������������
BtnClose.Visible:= False;
BtnChoice.Visible:= False;
DBGridTblDs.Enabled:= False;

SpBtnDsAdd.Enabled:= False;
SpBtnDsEdit.Enabled:= False;
SpBtnDsDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

FrmMainProg.SwitchGrid(DBGridTblDs, False);
FrmMainProg.SwitchGrid(DBGridChoiceTblDs, False);

//���������� ������ ���������
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDsFlag
  then LblCapt.Caption:= '�������� � ���������� ����� �������'//������ ������ "��������"
  else LblCapt.Caption:= '�������������� ������������ ��������';//������ ������ "�������������"

FormResize(Sender);

if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= '���������� ���������';//�������� ���������
PnlEdtTblDs.Visible:= False;//������ ������ ��������������
PnlViewTblDs.Enabled:= True;//�������� ������ � ��������

//�������� ������ ��������������
BtnClose.Visible:= True;
BtnChoice.Visible:= False;

//������ ������ ���������
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//����.����� �������, ���� ����� ������� ��� ������
if DsChoiceBtn
  then DBGridTblDs.Options:= DBGridTblDs.Options + [dgMultiSelect]
  else DBGridTblDs.Options:= DBGridTblDs.Options - [dgMultiSelect];

Lbl1.Visible:= DsChoiceBtn;//������� �����, ���� ����� ��������
Lbl2.Visible:= DsChoiceBtn;//������� �����, ���� ����� ��������

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);//������������� ����������� ������

SpBtnDsAdd.Enabled:= True;

with DMFIB. DSetDs do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblDs, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceTblDs, not IsEmpty);//������� ���� ��������� ����������
  end;



if DBGridTblDs.CanFocus then
  begin
    DBGridTblDs.SetFocus;//���� �����, ����� �� ����

    //�������� �������������� �� ��������
//    DBGridTblDs.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblDs.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblDs.DefaultApplySorting;
  end;

FormResize(Sender);//���������� ���� �� ����� ���������
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmTblDs.SaveSettings;

if DMFIB.DSetDs.Active then DMFIB.DSetDs.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//������ ������ �����
    TmpSQLTxt: String;
begin
NiceSetFrmTblDs.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblDs.LoadSettings;

FrmLongWidth:= Self.Width;//�������� ������ ����� � DesignTime

//���� ����� ������� ��� ��������� ��� ����� ������, �� "�����������" ��
if not DsChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblDs.Width;//����������� �����
      Self.Caption:= '���������� ���������';
    end
  else //����� ��� ����������, ��� � Design Time
    begin
      Self.Width:= FrmLongWidth;

      //������ ��������� � ����������� �� ����
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //���� ��� �������
            Self.Caption:= '����� �������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //���� ��� �������
            Self.Caption:= '����� �������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblDs.Visible:= DsChoiceBtn;//���������� ���.�������� � ����������� �� ��������������� ������

DsNumb:= '';
DsName:='';
MKB_IDNUMBER:= '';

iii:= 0;
FocusFlag:= True;

//���������� ����� ��������� � ���������� ������� ����� ������ �������� ����� � �����������
with DMFIB.DSetDs do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_DS, DS_MKB_IDNUMBER, DSNUMBER, DSNAME, ROLE_NAME, USR_NAME FROM TBL_DS ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) '
                                             + 'or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 4';
    Prepare;
  end;

with DSetChoiceTblDs do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_DS, DS_MKB_IDNUMBER, DSNUMBER, DSNAME, ROLE_NAME, USR_NAME FROM TBL_DS ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) '
                                                                + 'or (USR_NAME LIKE CURRENT_USER)) AND (1=2)) '
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 4';
    Prepare;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.ActivatingControlls(Sender: TObject);
begin
//������������� ��� ������
DMFIB.DSetDs.FullRefresh;
DSetChoiceTblDs.FullRefresh;

if MTEViewTblDs.Active then MTEViewTblDs.Close;
MTEViewTblDs.Open;

if MTEChoiceTblDs.Active then MTEChoiceTblDs.Close;
MTEChoiceTblDs.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormShow(Sender: TObject);
begin
FrmTblDs.Caption:= '���������� ���������';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.FormResize(Sender: TObject);
begin
LblCapt.Left:= (ClientWidth - LblCapt.Width) div 2;//���������� ���������
with LblWarning do
  begin
    Parent:= DBGridTblDs;//��������
    //���������� ��������������
    Left:= (DBGridTblDs.Width - Width) div 2;//�� �����������
    Top:= DBGridTblDs.Height div 3;//�� ���������
  end;

//���������� ������ �� "�������" �����
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsAddClick(Sender: TObject);
begin
TblDsFlag:= True;
BtnEdtRecOff(Sender);

EdtDsName.Clear;
EdtDsNumber.Clear;
MKB_IDNUMBER:= '';

if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsEditClick(Sender: TObject);
begin
TblDsFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetDs do
  begin
    Locate('ID_DS',MTEViewTblDs['ID_DS'],[]);//���������� ������ � ������
    EdtDsName.Text:= Trim(FieldByName('DsName').AsString);
    EdtDsNumber.Text:= Trim(FieldByName('DsNumber').AsString);
  end;{with}

  if EdtDsName.CanFocus then EdtDsName.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SpBtnDsDeleteClick(Sender: TObject);
begin
if Application.MessageBox('�� �������, ��� ������ ������� ������� �� �����������?',
                          '��������!', MB_ICONINFORMATION + MB_YESNO) = IDYES
  then
    begin
      if DMFIB.DSetDs.IsEmpty then Exit;
      DMFIB.DSetDs.Locate('ID_DS',MTEViewTblDs['ID_DS'],[]);//������������ ������ � ������
      try
        DMFIB.DSetDs.Delete;
      except
        Application.MessageBox(PChar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
      end;
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnChoiceClick(Sender: TObject);
var TmpTxt, FullTxt, ID_text: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> ���� ������ �� �������

if DBGridChoiceTblDs.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('�� ������� �� ����� ������. ��� ������ ���������� �������������� �����'
                  + ' �� ������� ����� � ������� ������ ��������, �������������� ����� ����, ��� ���������� '
                  + '������. ��� �������������� ������ ��������� � ����� ������� ����������� ������� ������� '
                  + '<Ctrl>. ������ ��������� �������?', '��������', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          Exit  //�������� � �����
        else
          begin
           Close;
           Exit;
          end; //������� �����
    end;

// ---> ���� ������� �� ������ ����� ������
FullTxt:= '';
ID_text:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    //"����������" ��������� ������ � ���-����
    with MTEChoiceTblDs do
      begin
        First;//��������� � ������ ������

        while not Eof do//���� �� �������� ����� �����������
          begin
            TmpTxt:= '';
            FullTxt:= FullTxt + Trim(FieldByName('DsName').AsString);

            if Trim(FieldByName('DsNumber').AsString) <> ''
              then TmpTxt:= ' [' + Trim(FieldByName('DsNumber').AsString) + ']';

            //��������� ����� � ����� ������
            if RightStr(Trim(FullTxt),1) = '.'
              then //���� ����� ����
                FullTxt:= LeftStr(Trim(FullTxt), Length(Trim(FullTxt)) - 1); //������� ��

            FullTxt:= FullTxt + TmpTxt + '. ';

            if Trim(FieldByName('DS_MKB_IDNUMBER').AsString) <> ''
              then ID_text:= ID_text + '#' + Trim(FieldByName('DS_MKB_IDNUMBER').AsString) + '^';

            Next;//��������� � ��������� ������
          end;
      end;

    TmpRE.Lines.Add('Ds: ' + Trim(FullTxt));//��������� ������ � ���-����

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextDs;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������ ���������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        begin
          TextDs:= FullTxt; //����� �������� "���������" ��������� ����������
          DsMKBnumberID:= Trim(ID_text);//��������� ������ ID ���������
        end
      else//���� ���-�� ��������
        if TextDs <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� �� ������� ��������� ' +
               '������ ����� ������� �� ����� �������������� �����. ��������� ������?',
               '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then
                begin
                  TextDs:= FullTxt;//��������, ���� ����� "��"
                  DsMKBnumberID:= Trim(ID_text);
                end;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDs.Modified then DMFIB.DSetDs.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnSaveClick(Sender: TObject);
begin
//������������� ���������� "������" �������
if (Trim(EdtDsName.Text) = '')
  then
    begin
      if Application.MessageBox('�� �� ��������� ������ � ���������. ������ '
                              + '���������?', '�������� ������',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
          if EdtDsName.CanFocus then EdtDsName.SetFocus;
      Exit;
    end;

  try
    with DMFIB,DSetDs do
    begin
      if State = dsBrowse then//���� ����� � ������ ������
      begin
        if TblDsFlag //���� �������
          then Insert //��������� ������
          else Edit;  // ����������� ������

        FieldByName('DsName').AsString:= Trim(EdtDsName.Text);
        FieldByName('DsNumber').AsString:= Trim(EdtDsNumber.Text);
        FN('DS_MKB_IDNUMBER').AsString:= Trim(MKB_IDNUMBER);

        if DSetDs.Modified then DSetDs.Post;
      end;{if .. State}
    end{with..do}
  except
    DMFIB.DSetDs.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'������ ���������� ������',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsCellClick(Column: TColumnEh);
begin
// �� ��������� ����� ������������� ��� ������� ������� �� �������,
// ���� "��������" ������������� �����
//SpBtnDsEdit.Enabled:= not (DBGridTblDs.SelectedRows.Count > 1);
//SpBtnDsDelete.Enabled:= not (DBGridTblDs.SelectedRows.Count > 1);
SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDblClick(Sender: TObject);
begin
//SpBtnDsEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.EdtDsNameChange(Sender: TObject);
begin
UpFirstChar(EdtDsName);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDs.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDs.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTblDs.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDs.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTblDs.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.AppEventsDsShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then //���� ����� � ������
  begin
    //��������� ������� "�������" ������
    if DsChoiceBtn then //���� ����� ������� ��� ������
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridTblDs.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0)
          and (GetKeyState(VK_CONTROL) < 0)
            and not(PnlEdtTblDs.Visible) //����� � ������ �������������� �������� ������ ����������� �������
              then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridChoiceTblDs.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnRtnOneClick(Self);
              end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDs.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then BtnRtnAllClick(Self);
      end;

    //����������� �������� �� �����, ��������� ��������� ��-�������
    if PnlEdtTblDs.Visible
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

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnDsAdd.Enabled then SpBtnDsAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnDsEdit.Enabled then SpBtnDsEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDsDelete.Enabled then SpBtnDsDeleteClick(Self);
  end;

//����� ������ ����� �� ����������� �� ����� �������
AppEventsDs.CancelDispatch;
end;

//----------------------------------------------------------------------------
//�������� ���� ������ �������� �� ���-10
procedure TFrmTblDs.BitBtnMKBchoiceClick(Sender: TObject);
begin
with TFrmMKBView.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

if Trim(DsNumb) <> '' then
  EdtDsNumber.Text:= Trim(DsNumb);
if Trim(DsName) <> '' then
  EdtDsName.Text:= Trim(DsName);

BtnEdtRecOff(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.SwitchOnOffBtn(Sender: TObject);
begin
if DsChoiceBtn //���� ����� ������� ��� �������������� ������
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblDs.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblDs.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);

      //���������� ������ ������ �������������� ������� � ������ ����� ��������� �������
      BtnChoice.Visible:= (DBGridChoiceTblDs.DataSource.DataSet.RecordCount > 0);
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
SpBtnDsEdit.Enabled:= ((DBGridTblDs.DataSource.DataSet.RecordCount > 0)
                                                                  and (not (DBGridTblDs.SelectedRows.Count > 1)));
SpBtnDsDelete.Enabled:= ((DBGridTblDs.DataSource.DataSet.RecordCount > 0)
                                                                  and (not (DBGridTblDs.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceTblDs.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceTblDs.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridChoiceTblDs.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceTblDs.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridChoiceTblDs.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblDs) and DsChoiceBtn //� ����� ������� ��� ����.������
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridChoiceTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblDs then
    begin
      DBGridChoiceTblDs.DataSource.DataSet.DisableControls;
      DBGridTblDs.DataSource.DataSet.DisableControls;
      DBGridChoiceTblDs.SaveBookmark;

      if DBGridTblDs.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblDs.SelectedRows.Count-1 do
            begin
              DBGridTblDs.DataSource.DataSet.Bookmark := DBGridTblDs.SelectedRows[I];
              DBGridChoiceTblDs.DataSource.DataSet.Append;
              DBGridChoiceTblDs.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceTblDs.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value := DBGridTblDs.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceTblDs.DataSource.DataSet.Post;
            end
        else
          if DBGridTblDs.Selection.SelectionType = gstAll then
            begin
              DBGridTblDs.DataSource.DataSet.First;
              while  not DBGridTblDs.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceTblDs.DataSource.DataSet.Append;
                  DBGridChoiceTblDs.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceTblDs.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value := DBGridTblDs.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceTblDs.DataSource.DataSet.Post;
                  DBGridTblDs.DataSource.DataSet.Delete;
                end;
              DBGridTblDs.Selection.Clear;
            end;

      DBGridChoiceTblDs.RestoreBookmark;
      DBGridTblDs.SelectedRows.Delete;
      DBGridTblDs.DataSource.DataSet.Refresh;
      DBGridTblDs.DataSource.DataSet.EnableControls;
      DBGridChoiceTblDs.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceTblDs) and DsChoiceBtn //� ����� ������� ��� ����.������
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.DBGridTblDsDragDrop(Sender, Source: TObject; X, Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceTblDs then
    begin
      DBGridTblDs.DataSource.DataSet.DisableControls;
      DBGridChoiceTblDs.DataSource.DataSet.DisableControls;
      DBGridTblDs.SaveBookmark;
      if DBGridChoiceTblDs.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceTblDs.SelectedRows.Count-1 do
          begin
            DBGridChoiceTblDs.DataSource.DataSet.Bookmark := DBGridChoiceTblDs.SelectedRows[I];
            DBGridTblDs.DataSource.DataSet.Append;
            DBGridTblDs.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblDs.DataSource.DataSet.FieldCount-1 do
              DBGridTblDs.DataSource.DataSet.Fields[j].Value := DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value;

            DBGridTblDs.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceTblDs.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceTblDs.DataSource.DataSet.First;

            while  not DBGridChoiceTblDs.DataSource.DataSet.EOF do
              begin
                DBGridTblDs.DataSource.DataSet.Append;
                DBGridTblDs.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblDs.DataSource.DataSet.FieldCount-1 do
                  DBGridTblDs.DataSource.DataSet.Fields[j].Value := DBGridChoiceTblDs.DataSource.DataSet.Fields[j].Value;

                DBGridTblDs.DataSource.DataSet.Post;
                DBGridChoiceTblDs.DataSource.DataSet.Delete;
              end;
            DBGridChoiceTblDs.Selection.Clear;
          end;
      DBGridTblDs.RestoreBookmark;
      DBGridChoiceTblDs.SelectedRows.Delete;
      DBGridChoiceTblDs.DataSource.DataSet.Refresh;
      DBGridChoiceTblDs.DataSource.DataSet.EnableControls;
      DBGridTblDs.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblDs,DBGridChoiceTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxDs);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblDs,DBGridChoiceTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceTblDs,DBGridTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDs.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceTblDs,DBGridTblDs);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
