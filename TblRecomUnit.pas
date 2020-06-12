unit TblRecomUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, MemTableDataEh, FIBDataSet, pFIBDataSet,
  MemTableEh, DataDriverEh, AppEvnts;

type
  TFrmTblRecom = class(TForm)
    PnlCaption: TPanel;
    LblCapt: TLabel;
    PnlEdtTblRecom: TPanel;
    Label1: TLabel;
    EdtRecomStr: TEdit;
    PnlViewTblRecom: TPanel;
    SpBtnRecomAdd: TSpeedButton;
    SpBtnRecomEdit: TSpeedButton;
    SpBtnRecomDelete: TSpeedButton;
    Lbl2: TLabel;
    Lbl1: TLabel;
    DBGridTblRecom: TDBGridEh;
    PnlBtnBar: TPanel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    BtnChoice: TButton;
    PpMnuTblRecom: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblRecom: TNiceSettings;
    PnlChoiceTblRecom: TPanel;
    LblWarning: TLabel;
    BtnHlp: TButton;
    DBGridChoiceRecom: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    dsdChoiceTblRecom: TDataSetDriverEh;
    MTEChoiceTblRecom: TMemTableEh;
    DSChoiceTblRecom: TDataSource;
    DSetChoiceTblRecom: TpFIBDataSet;
    dsdViewTblRecom: TDataSetDriverEh;
    MTEViewTblRecom: TMemTableEh;
    DSViewTblRecom: TDataSource;
    AppEventsRecom: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnRecomAddClick(Sender: TObject);
    procedure SpBtnRecomEditClick(Sender: TObject);
    procedure SpBtnRecomDeleteClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure DBGridTblRecomDblClick(Sender: TObject);
    procedure DBGridTblRecomDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblRecomCellClick(Column: TColumnEh);
    procedure DBGridChoiceRecomDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridTblRecomDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridTblRecomDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceRecomDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceRecomDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure AppEventsRecomShortCut(var Msg: TWMKey; var Handled: Boolean);
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
  FrmTblRecom: TFrmTblRecom;

implementation

uses VarAndrUnit, MainAndrUnit, StatusPatUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblRecom.Visible:= True;
PnlViewTblRecom.Enabled:= False;//�������� ������
FrmMainProg.SwitchGrid(DBGridTblRecom,False);//�������� ���� �����
FrmMainProg.SwitchGrid(DBGridChoiceRecom,False);//�������� ���� ������

//�������� ������ ��������������
SpBtnRecomAdd.Enabled:= False;
SpBtnRecomEdit.Enabled:= False;
SpBtnRecomDelete.Enabled:= False;

//��������� � "�������������" ������ ��������������
BtnClose.Visible:= False;
BtnChoice.Visible:= False;

//�� ��  ��� ������ ����������� �������
BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//���������� ������ ���������
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblRecomFlag
  then LblCapt.Caption:= '�������� ������������ � ������'//������ ������ "��������"
  else LblCapt.Caption:= '�������������� ����� ������������';//������ ������ "�������������"

if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;//����� � ������

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= '������ ������������';//�������� ���������
PnlEdtTblRecom.Visible:= False;//������ ������ ��������������
PnlViewTblRecom.Enabled:= True;//�������� ������ � ��������

//�������� ������
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
SpBtnRecomAdd.Enabled:= True;

//������ ������ ���������
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//����.����� �������, ���� ����� ������� ��� ������
if RecomChoiceBtn
  then DBGridTblRecom.Options:= DBGridTblRecom.Options + [dgMultiSelect]
  else DBGridTblRecom.Options:= DBGridTblRecom.Options - [dgMultiSelect];

Lbl1.Visible:= RecomChoiceBtn;//������� �����, ���� ����� ��������
Lbl2.Visible:= RecomChoiceBtn;//������� �����, ���� ����� ��������

ActivatingControlls(Sender);
SwitchOnOffBtn(Sender);//������������� ����������� ������

with DMFIB, DSetRecom do
  begin
    LblWarning.Visible:= IsEmpty;
    FrmMainProg.SwitchGrid(DBGridTblRecom, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceRecom, not IsEmpty);//������� ���� ��������� ������������
  end;

if DBGridTblRecom.CanFocus then
  begin
    DBGridTblRecom.SetFocus;//���� �����, ����� �� ����

    //�������� �������������� �� ��������
//    DBGridTblRecom.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblRecom.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblRecom.DefaultApplySorting;
  end;

FormResize(Sender);//���������� ������ � �������   
end;
 
//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmTblRecom.SaveSettings;

if DMFIB.DSetRecom.Active then DMFIB.DSetRecom.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormResize(Sender: TObject);
begin
LblCapt.Left:= (ClientWidth - LblCapt.Width) div 2;//���������� ���������
with LblWarning do
  begin
    Parent:= DBGridTblRecom;
    Left:= (DBGridTblRecom.Width - Width) div 2;
    Top:= DBGridTblRecom.Height div 2;
  end;

//���������� ������ �� "�������" �����
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
BtnChoice.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//������ ������ �����
    TmpSQLTxt: String;
begin
NiceSetFrmTblRecom.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblRecom.LoadSettings;

FrmLongWidth:= Self.Width;//�������� ������ ����� � DesignTime

//���� ����� ������� ��� ��������� ��� ����� ������, �� "�����������" ��
if not RecomChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblRecom.Width;//����������� �����
      Self.Caption:= '������ ������������';
    end
  else //����� ��� ����������, ��� � Design Time
    begin
      Self.Width:= FrmLongWidth;

      //������ ��������� � ����������� �� ����
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //���� ��� �������
            Self.Caption:= '����� ������������ (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //���� ��� �������
            Self.Caption:= '����� ������������ (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblRecom.Visible:= RecomChoiceBtn;//���������� ���.�������� � ����������� �� ��������������� ������
FocusFlag:= True;

//������� ��� ����� ���������
with DMFIB.DSetRecom do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_RECOM, RECOMSTR, ROLE_NAME, USR_NAME FROM TBL_RECOM ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then TmpSQLTxt:= TmpSQLTxt + 'WHERE ((ROLE_NAME LIKE CURRENT_ROLE) '
                                             + 'or (USR_NAME LIKE CURRENT_USER)) ';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
    Prepare;
  end;

with DSetChoiceTblRecom do
  begin
    if Active then Close;
    SelectSQL.Clear;

    TmpSQLTxt:= 'SELECT ID_RECOM, RECOMSTR, ROLE_NAME, USR_NAME FROM TBL_RECOM ';

    if (UpperCase(Trim(UsrLgn)) <> 'SYSDBA') and (UsrRoleName <> 'ADMINISTR')
      then
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (((ROLE_NAME LIKE CURRENT_ROLE) or (USR_NAME LIKE CURRENT_USER)) and (1=2))'
      else
        TmpSQLTxt:= TmpSQLTxt + 'WHERE (1=2)';

    SelectSQL.Text:= TmpSQLTxt + 'ORDER BY 2';
    Prepare;
  end;

end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.FormShow(Sender: TObject);
begin
FrmTblRecom.Caption:= '������ ������������';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomAddClick(Sender: TObject);
begin
TblRecomFlag:= True;
BtnEdtRecOff(Sender);

EdtRecomStr.Clear;
if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomEditClick(Sender: TObject);
begin
TblRecomFlag:= False;
BtnEdtRecOff(Sender);

DMFIB.DSetRecom.Locate('ID_RECOM',MTEViewTblRecom['ID_RECOM'],[]);//���������� ������ � ������
EdtRecomStr.Text:= Trim(DMFIB.DSetRecom.FieldByName('RecomStr').AsString);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SpBtnRecomDeleteClick(Sender: TObject);
begin
if Application.MessageBox('�� �������, ��� ������ ������� ������ ������������ �� ������?',
                          '��������!', MB_ICONINFORMATION + MB_YESNO)= IDNo
  then Exit
  else
    try
      if DMFIB.DSetRecom.IsEmpty then Exit;

      DMFIB.DSetRecom.Locate('ID_RECOM',MTEViewTblRecom['ID_RECOM'],[]);//���������� ������ � ������
      DMFIB.DSetRecom.Delete;
    except
      Application.MessageBox(PChar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
    end;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnChoiceClick(Sender: TObject);
var FullTxt: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> ���� ������ �� �������
if DBGridChoiceRecom.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('�� ������� �� ����� ������. ��� ������ ���������� ������������ '
                  + '�� ������� ����� � ������� ������ ��������, �������������� ����� ����, ��� ���������� '
                  + '������. ��� �������������� ������ ������������ � ����� ������� ����������� ������� ������� '
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

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;

        Lines.Add('�������������: ');
        SelStart:= 0;
        SelLength:= Length(Trim('�������������: '));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= SelLength;
        SelAttributes.Assign(DefAttributes);

      end;

    //"����������" ��������� ������ � ���-����

    with MTEChoiceTblRecom do
      begin
        First;//������� � ������ ������

        while not Eof do  //���� �� �������� ����� �����������
          begin
            FullTxt:= '- ' + Trim(FieldByName('RecomStr').AsString);
            TmpRE.Lines.Add(FullTxt);//��������� ������ � ���-����
            Next;//������� � ��������� ������
          end;

      end;

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextRecom;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������ ������������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextRecom:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextRecom <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ������ ������������ ' +
               '������ ����� ������� �� ����� �������������� �����. ��������� ������?',
               '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextRecom:= FullTxt;//��������, ���� ����� "��"

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.AppEventsRecomShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� ������� "�������" ������
    if RecomChoiceBtn then //���� ����� ������� ��� ������
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridTblRecom.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridChoiceRecom.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnRtnOneClick(Self);
              end;
        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblRecom.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then BtnRtnAllClick(Self);
      end;

    //����������� �������� �� �����, ��������� ��������� ��-�������
    if PnlEdtTblRecom.Visible
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

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnRecomAdd.Enabled then SpBtnRecomAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnRecomEdit.Enabled then SpBtnRecomEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnRecomDelete.Enabled then SpBtnRecomDeleteClick(Self);

  end;
//����� ������ ����� �� ����������� �� ����� �������
AppEventsRecom.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetRecom.Modified then DMFIB.DSetRecom.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnSaveClick(Sender: TObject);
begin
//������������� ���������� "������" �������
if (Trim(EdtRecomStr.Text) = '')
  then
    begin
      if Application.MessageBox('�� �� ��������� ������ � �������������. ������ '
                              + '���������?', '�������� ������',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
          if EdtRecomStr.CanFocus then EdtRecomStr.SetFocus;
      Exit;
    end;

  try
    with DMFIB,DSetRecom do
    begin
      if State = dsBrowse then//���� ����� � ������ ������
      begin
        if TblRecomFlag //���� �������
          then Insert //��������� ������
          else Edit;  // ����������� ������
        FieldByName('RecomStr').AsString:= Trim(EdtRecomStr.Text);

        if DSetRecom.Modified then DSetRecom.Post;
      end;
    end;{with}
  except
    DMFIB.DSetRecom.Cancel;
    Application.MessageBox(PChar(ErrorMsg),'������ ���������� ������',MB_ICONINFORMATION);
  end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDblClick(Sender: TObject);
begin
//SpBtnRecomEditClick(Sender);
end;

//----------------------------------------------------------------------------
procedure TFrmTblRecom.DBGridTblRecomCellClick(Column: TColumnEh);
begin
// �� ��������� ����� ������������� ��� ������� ������������ �� �������,
// ���� "��������" ������������� �����
//SpBtnRecomEdit.Enabled:= not (DBGridTblRecom.SelectedRows.Count > 1);
//SpBtnRecomDelete.Enabled:= not (DBGridTblRecom.SelectedRows.Count > 1);

//���������� ������ ������ �������������� ������� ���������� �������
//��� �������, ��� ����� ������� ��� ������
//if RecomChoiceBtn
//  then
//    BtnChoice.Visible:= (DBGridTblRecom.SelectedRows.Count > 0)
//  else
//    BtnChoice.Visible:= False;

SwitchOnOffBtn(Self);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblRecom.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblRecom.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTblRecom.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblRecom.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTblRecom.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.ActivatingControlls(Sender: TObject);
begin
//������������� ��� ������
DMFIB.DSetRecom.FullRefresh;
DSetChoiceTblRecom.FullRefresh;

if MTEViewTblRecom.Active then MTEViewTblRecom.Close;
MTEViewTblRecom.Open;

if MTEChoiceTblRecom.Active then MTEChoiceTblRecom.Close;
MTEChoiceTblRecom.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.SwitchOnOffBtn(Sender: TObject);
begin
if RecomChoiceBtn //���� ����� ������� ��� �������������� ������
  then
    begin
      BtnFwdOne.Enabled:= (DBGridTblRecom.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblRecom.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);

      //���������� ������ ������ �������������� ������� � ������ ����� ��������� �������
      BtnChoice.Visible:= (DBGridChoiceRecom.DataSource.DataSet.RecordCount > 0);
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
SpBtnRecomEdit.Enabled:= ((DBGridTblRecom.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblRecom.SelectedRows.Count > 1)));
SpBtnRecomDelete.Enabled:= ((DBGridTblRecom.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblRecom.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceRecom.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceRecom.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridChoiceRecom.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceRecom.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridChoiceRecom.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceRecom) and RecomChoiceBtn //� ����� ������� ��� ����.������
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridTblRecomDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceRecom then
    begin
      DBGridTblRecom.DataSource.DataSet.DisableControls;
      DBGridChoiceRecom.DataSource.DataSet.DisableControls;
      DBGridTblRecom.SaveBookmark;
      if DBGridChoiceRecom.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceRecom.SelectedRows.Count-1 do
          begin
            DBGridChoiceRecom.DataSource.DataSet.Bookmark := DBGridChoiceRecom.SelectedRows[I];
            DBGridTblRecom.DataSource.DataSet.Append;
            DBGridTblRecom.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblRecom.DataSource.DataSet.FieldCount-1 do
              DBGridTblRecom.DataSource.DataSet.Fields[j].Value := DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value;

            DBGridTblRecom.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceRecom.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceRecom.DataSource.DataSet.First;

            while  not DBGridChoiceRecom.DataSource.DataSet.EOF do
              begin
                DBGridTblRecom.DataSource.DataSet.Append;
                DBGridTblRecom.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblRecom.DataSource.DataSet.FieldCount-1 do
                  DBGridTblRecom.DataSource.DataSet.Fields[j].Value := DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value;

                DBGridTblRecom.DataSource.DataSet.Post;
                DBGridChoiceRecom.DataSource.DataSet.Delete;
              end;
            DBGridChoiceRecom.Selection.Clear;
          end;
      DBGridTblRecom.RestoreBookmark;
      DBGridChoiceRecom.SelectedRows.Delete;
      DBGridChoiceRecom.DataSource.DataSet.Refresh;
      DBGridChoiceRecom.DataSource.DataSet.EnableControls;
      DBGridTblRecom.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblRecom) and RecomChoiceBtn //� ����� ������� ��� ����.������
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.DBGridChoiceRecomDragDrop(Sender, Source: TObject; X,Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblRecom then
    begin
      DBGridChoiceRecom.DataSource.DataSet.DisableControls;
      DBGridTblRecom.DataSource.DataSet.DisableControls;
      DBGridChoiceRecom.SaveBookmark;

      if DBGridTblRecom.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblRecom.SelectedRows.Count-1 do
            begin
              DBGridTblRecom.DataSource.DataSet.Bookmark := DBGridTblRecom.SelectedRows[I];
              DBGridChoiceRecom.DataSource.DataSet.Append;
              DBGridChoiceRecom.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceRecom.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value := DBGridTblRecom.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceRecom.DataSource.DataSet.Post;
            end
        else
          if DBGridTblRecom.Selection.SelectionType = gstAll then
            begin
              DBGridTblRecom.DataSource.DataSet.First;
              while  not DBGridTblRecom.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceRecom.DataSource.DataSet.Append;
                  DBGridChoiceRecom.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceRecom.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceRecom.DataSource.DataSet.Fields[j].Value := DBGridTblRecom.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceRecom.DataSource.DataSet.Post;
                  DBGridTblRecom.DataSource.DataSet.Delete;
                end;
              DBGridTblRecom.Selection.Clear;
            end;

      DBGridChoiceRecom.RestoreBookmark;
      DBGridTblRecom.SelectedRows.Delete;
      DBGridTblRecom.DataSource.DataSet.Refresh;
      DBGridTblRecom.DataSource.DataSet.EnableControls;
      DBGridChoiceRecom.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblRecom,DBGridChoiceRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxRecom);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblRecom,DBGridChoiceRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceRecom,DBGridTblRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblRecom.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceRecom,DBGridTblRecom);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

end.
