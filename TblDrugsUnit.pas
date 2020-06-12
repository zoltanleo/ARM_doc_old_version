unit TblDrugsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, PngSpeedButton, PngBitBtn, MemTableDataEh,
  MemTableEh, DataDriverEh, FIBDataSet, pFIBDataSet, frxClass, frxGZip,
  frxRich, frxDBSet, fs_idbrtti, fs_ipascal, fs_iinterpreter, AppEvnts, XPStyleActnCtrls, ActnList, ActnMan;

type
  TFrmTblDrugs = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblDrug: TPanel;
    PnlBtnBar: TPanel;
    LblCapt: TLabel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    EdtDrugNamePill: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtDrugDose: TEdit;
    Label3: TLabel;
    EdtDrugUse: TEdit;
    Label4: TLabel;
    EdtDrugCure: TEdit;
    Label5: TLabel;
    CbBoxDrugInput: TComboBox;
    Label6: TLabel;
    BtnChoice: TButton;
    CbBoxDrugMethod: TComboBox;
    Label7: TLabel;
    LblWarning: TLabel;
    PpMnuTblDrug: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDrugs: TNiceSettings;
    Label8: TLabel;
    BtnHlp: TButton;
    BtnPrintRecipe: TButton;
    Panel1: TPanel;
    DSetChoiceDrug: TpFIBDataSet;
    DSMTETblDrug: TDataSource;
    dsdTblDrug: TDataSetDriverEh;
    MTETblDrug: TMemTableEh;
    dsdChoiceDrug: TDataSetDriverEh;
    MTEChoiceDrug: TMemTableEh;
    DSMTEChoiceDrug: TDataSource;
    DSetReportRecipe: TpFIBDataSet;
    PnlViewGridGeneral: TPanel;
    PnlViewTblDrug: TPanel;
    Lbl2: TLabel;
    SpBtnDrugDelete: TSpeedButton;
    SpBtnDrugEdit: TSpeedButton;
    SpBtnDrugAdd: TSpeedButton;
    Lbl1: TLabel;
    DBGridTblDrug: TDBGridEh;
    PnlChoiceTblDrug: TPanel;
    DBGridChoiceDrug: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    PnlChoiceDocClin: TPanel;
    CbBoxInfoDoc: TComboBox;
    Label9: TLabel;
    DSetReportDoc: TpFIBDataSet;
    frxDBDataset1: TfrxDBDataset;
    LblEmptyDocWarning: TLabel;
    BitBtnEdtTblDoc: TBitBtn;
    BtnRichFmtRecipe: TButton;
    BtnRichFmtDrugNote: TButton;
    RichEditDrugNote: TRichEdit;
    RichEditDrugRecipe: TRichEdit;
    AppEventsDrug: TApplicationEvents;
    BtnDrugInfo: TButton;
    CbBoxPrintFmt: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpBtnDrugAddClick(Sender: TObject);
    procedure SpBtnDrugEditClick(Sender: TObject);
    procedure SpBtnDrugDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure DBGridTblDrugDblClick(Sender: TObject);
    procedure EdtDrugNamePillChange(Sender: TObject);
    procedure DBGridTblDrugDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblDrugCellClick(Column: TColumnEh);
    procedure BtnPrintRecipeClick(Sender: TObject);
    procedure DBGridTblDrugDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridTblDrugDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceDrugDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceDrugDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceDrugDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure BitBtnEdtTblDocClick(Sender: TObject);
    procedure CbBoxInfoDocChange(Sender: TObject);
    procedure BtnRichFmtRecipeClick(Sender: TObject);
    procedure BtnRichFmtDrugNoteClick(Sender: TObject);
    procedure AppEventsDrugShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnDrugInfoClick(Sender: TObject);
    procedure CbBoxPrintFmtChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure BtnEdtRecOn(Sender: TObject);
    procedure BtnEdtRecOff(Sender: TObject);
    procedure ActivatingControlls(Sender: TObject);
    procedure SwitchOnOffBtn(Sender: TObject);
    procedure FillCbBoxDoctorByData(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmTblDrugs: TFrmTblDrugs;

implementation

uses VarAndrUnit, StatusPatUnit, DMFIBUnit, MainAndrUnit, StrUtils, uFrmRichTxtShow;

var DrugSendTag: Integer;//������������� ����� ��� ��������������
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//������ ������ �����
begin
NiceSetFrmTblDrugs.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmTblDrugs.LoadSettings;

FrmLongWidth:= Self.Width;//�������� ������ ����� � DesignTime

//���� ����� ������� ��� ��������� ��� ����� ������, �� "�����������" ��
if not DrugChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblDrug.Width;//����������� �����
      Self.Caption:= '���������� ������������� �������';
    end
  else //����� ��� ����������, ��� � Design Time
    begin
      Self.Width:= FrmLongWidth;

      //������ ��������� � ����������� �� ����
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //���� ��� �������
            Self.Caption:= '����� ���������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //���� ��� �������
            Self.Caption:= '����� ���������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblDrug.Visible:= DrugChoiceBtn;//���������� ��� �������� � ����������� �� �������� �����
FocusFlag:= True;

//���� ������ ����� ������
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

FillCbBoxDoctorByData(Sender);//��������� ���� � ���������
FormResize(Sender);//�������������� ������� �� �����
CbBoxPrintFmtChange(Sender);//���������� ������ �������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.ActivatingControlls(Sender: TObject);
begin
//������������� ��� ��������� ������
DMFIB.DSetDrugs.FullRefresh;
DSetChoiceDrug.FullRefresh;

if MTETblDrug.Active then MTETblDrug.Close;
MTETblDrug.Open;

if MTEChoiceDrug.Active then MTEChoiceDrug.Close;
MTEChoiceDrug.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmTblDrugs.SaveSettings;

if DMFIB.DSetDrugs.Active then DMFIB.DSetDrugs.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormShow(Sender: TObject);
begin
FrmTblDrugs.Caption:= '���������� ����������';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//���������� ���������

with LblWarning do
  begin
    Parent:= DBGridTblDrug;
    Left:= (DBGridTblDrug.Width - LblWarning.Width) div 2;//���������� ��������������
    Top:= DBGridTblDrug.Height div 2; //���������� �������������� �� ������
  end;

with LblEmptyDocWarning do
  begin
    Parent:= CbBoxInfoDoc;
    Left:= CbBoxInfoDoc.Left + 5;
    Top:= (CbBoxInfoDoc.Height - Height) div 2;
  end;
  
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblDrug.Visible:= True;
PnlViewTblDrug.Enabled:= False;
PnlChoiceDocClin.Visible:= False;//������ ������ � ��������

//��������� � "�������������" ������ ��������������
BtnClose.Visible:= False;
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

SpBtnDrugAdd.Enabled:= False;
SpBtnDrugEdit.Enabled:= False;
SpBtnDrugDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//���������� ������ ���������
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDrugFlag
  then LblCapt.Caption:= '�������� � ���������� ����� ��������'//������ ������ "��������"
  else LblCapt.Caption:= '�������������� ������ � ���������';//������ ������ "�������������"

//"����������" �����
FrmMainProg.SwitchGrid(DBGridTblDrug, False);
FrmMainProg.SwitchGrid(DBGridChoiceDrug, False);

LblWarning.Font.Color:= clGray;
FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= '���������� ������������';//�������� ���������
PnlEdtTblDrug.Visible:= False;//������ ������ ��������������
PnlViewTblDrug.Enabled:= True;//�������� ������ � ��������
PnlChoiceDocClin.Visible:= True;//���������� ������ � ��������

LblWarning.Font.Color:= clRed;
FormResize(Sender);

//������ ������ ���������
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//�������� ������ ��������������
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

SpBtnDrugAdd.Enabled:= True;

//����.����� �������, ���� ����� ������� ��� ������
if DrugChoiceBtn
  then DBGridTblDrug.Options:= DBGridTblDrug.Options + [dgMultiSelect]
  else DBGridTblDrug.Options:= DBGridTblDrug.Options - [dgMultiSelect];

Lbl1.Visible:= DrugChoiceBtn;//������� �����, ���� ����� ��������
Lbl2.Visible:= DrugChoiceBtn;//������� �����, ���� ����� ��������

ActivatingControlls(Sender);//������������� ��� ������
SwitchOnOffBtn(Sender);//������������� ����������� ������

with DMFIB,DSetDrugs do
  begin
    LblWarning.Visible:= IsEmpty;//������� ��������������
    FrmMainProg.SwitchGrid(DBGridTblDrug, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceDrug, not IsEmpty);
  end;                                                                 

if DBGridTblDrug.CanFocus then
  begin
    DBGridTblDrug.SetFocus;//���� �����, ����� �� ����

    //�������� �������������� �� ��������
//    DBGridTblDrug.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblDrug.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblDrug.DefaultApplySorting;
  end;

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugAddClick(Sender: TObject);
begin
TblDrugFlag:= True;
BtnEdtRecOff(Sender);

EdtDrugNamePill.Clear;
EdtDrugDose.Clear;
EdtDrugUse.Clear;
EdtDrugCure.Clear;
CbBoxDrugInput.ItemIndex:= 0;
RichEditDrugNote.Text:= '���� ����� ������ �������������� �������� � ���������.'
                        + #13#10 + '��� ���� �� �������� ������������ ��� ����������.';
RichEditDrugRecipe.Text:= '���� ����� ������ "�����������" ����� ��� ���������, ��� �������� ������������� '
                        + '������� ����������� ������ � ��������� �����.'
                        + #13#10 + '��� ���� �� �������� ������������ ��� ����������.';
if EdtDrugNamePill.CanFocus then EdtDrugNamePill.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugEditClick(Sender: TObject);
var msDrugNote, msDrugRecipe: TMemoryStream;
begin
TblDrugFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetDrugs do
  begin
    Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//���������� ������ � ������ 
    EdtDrugNamePill.Text:= Trim(FieldByName('DrugNamePill').AsString);
    EdtDrugDose.Text:= Trim(FieldByName('DrugDose').AsString);
    EdtDrugUse.Text:= Trim(FieldByName('DrugUse').AsString);
    EdtDrugCure.Text:= Trim(FieldByName('DrugCure').AsString);
    CbBoxDrugInput.ItemIndex:= FieldByName('DrugInput').AsInteger;
    CbBoxDrugMethod.ItemIndex:= FieldByName('DrugMethod').AsInteger;

    msDrugNote:= TMemoryStream.Create;
    msDrugRecipe:= TMemoryStream.Create;

    try
      TBlobField(FN('DrugNote')).SaveToStream(msDrugNote);
      msDrugNote.Position:= 0;
      RichEditDrugNote.Lines.LoadFromStream(msDrugNote);

      TBlobField(FN('DRUGRECIPE')).SaveToStream(msDrugRecipe);
      msDrugRecipe.Position:= 0;
      RichEditDrugRecipe.Lines.LoadFromStream(msDrugRecipe);

    finally
      msDrugNote.Free;
      msDrugRecipe.Free;
    end;{try..finally}
  end;{with}

//���� ���-����� ������, �� ������ ���� ���������
if Trim(RichEditDrugNote.Text) = '' then
  RichEditDrugNote.Text:= '���� ����� ������ �������������� �������� � ���������.'
                        + #13#10 + '��� ���� �� �������� ������������ ��� ����������.';

if Trim(RichEditDrugRecipe.Text) = '' then
  RichEditDrugRecipe.Text:= '���� ����� ������ "�����������" ����� ��� ���������, ��� �������� ������������� '
                          + '������� ����������� ������ � ��������� �����.'
                          + #13#10 + '��� ���� �� �������� ������������ ��� ����������.';

if EdtDrugNamePill.CanFocus then EdtDrugNamePill.SetFocus;        
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugDeleteClick(Sender: TObject);
begin
if Application.MessageBox('�� �������, ��� ������ ������� �������� �� �����������?',
                          '��������!', MB_ICONINFORMATION + MB_YESNO)= IDNo
  then
    Exit
  else
    try
      if DMFIB.DSetDrugs.IsEmpty then Exit;
      DMFIB.DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//������������ ������ � ������
      DMFIB.DSetDrugs.Delete;
    except
      Application.MessageBox(Pchar(ErrorMsg),'������ �������� ������',MB_ICONINFORMATION);
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDrugs.Modified then DMFIB.DSetDrugs.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnSaveClick(Sender: TObject);
var msDrugNote, msDrugRecipe: TMemoryStream;
begin
//������������� ���������� "������" �������
if (Trim(EdtDrugNamePill.Text) = '') or (Trim(EdtDrugDose.Text) = '')
                      or (Trim(EdtDrugUse.Text) = '') or (Trim(EdtDrugCure.Text) = '')
  then
    begin
      if Application.MessageBox('�������� � ��������� ������� �� ���������. ������ '
                              + '���������?', '�������� ������',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
            with FrmMainProg do
              begin
                if Trim(EdtDrugNamePill.Text) = '' then CheckEdtEmpty(EdtDrugNamePill,
                                   '�� �� ����� ������������ �������������� ���������!');

                if Trim(EdtDrugDose.Text) = '' then CheckEdtEmpty(EdtDrugDose,
                                      '�� �� ����� ��������� �������������� ���������!');

                if Trim(EdtDrugUse.Text) = '' then CheckEdtEmpty(EdtDrugUse,
                                            '�� �� ������� ��������� ������ ���������!');
                if Trim(EdtDrugCure.Text) = '' then CheckEdtEmpty(EdtDrugCure,
                                         '�� �� ������� ������������ ������ ���������!');
              end;
      Exit;
    end;

with DMFIB,DSetDrugs do
  try
    if (State = dsBrowse)
      then //���� ����� � ������ ������
        begin
          if TblDrugFlag //���� �������
            then Insert //��������� ������
            else Edit;  // ����������� ������
        end;

    FieldByName('DrugNamePill').AsString:= Trim(EdtDrugNamePill.Text);
    FieldByName('DrugDose').AsString:= Trim(EdtDrugDose.Text);
    FieldByName('DrugUse').AsString:= Trim(EdtDrugUse.Text);
    FieldByName('DrugCure').AsString:= Trim(EdtDrugCure.Text);
    FieldByName('DrugInput').AsInteger:= CbBoxDrugInput.ItemIndex;
    FieldByName('DrugMethod').AsInteger:= CbBoxDrugMethod.ItemIndex;

    msDrugNote:= TMemoryStream.Create;
    msDrugRecipe:= TMemoryStream.Create;

    try
      if (Trim(RichEditDrugNote.Text) = '') //���� � �������� ������ ��� ��� �� ��������
                or (LeftStr(Trim(RichEditDrugNote.Text),32) = '���� ����� ������ ��������������')//���� �����
        then //��-null-��� ����
          FN('DrugNote').Clear
        else // ����� ����� � ���� RTF-�����
          begin
            RichEditDrugNote.Lines.SaveToStream(msDrugNote);
            msDrugNote.Position:= 0;
            TBlobField(FN('DrugNote')).LoadFromStream(msDrugNote);
          end;

      if (Trim(RichEditDrugRecipe.Text) = '') //���� � �������� ������ ��� ��� �� ��������
                or (LeftStr(Trim(RichEditDrugRecipe.Text),31) = '���� ����� ������ "�����������"')//���� �����
        then
          FN('DRUGRECIPE').Clear
        else
          begin
            RichEditDrugRecipe.Lines.SaveToStream(msDrugRecipe);
            msDrugRecipe.Position:= 0;
            TBlobField(FN('DRUGRECIPE')).LoadFromStream(msDrugRecipe);
          end;

    finally
      msDrugNote.Free;
      msDrugRecipe.Free;
    end;{try..finally}

    if DSetDrugs.Modified then DSetDrugs.Post;
  except
    if DSetDrugs.Modified then DSetDrugs.Cancel;
    Application.MessageBox(Pchar(ErrorMsg),'������ ���������� ������',MB_ICONINFORMATION);
  end;{try..except}

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//�������� �������� � ���������
procedure TFrmTblDrugs.BtnDrugInfoClick(Sender: TObject);
begin
  //���������� �� ������ ������
  if MTETblDrug.IsEmpty then Exit;

  // ���� ���� �� ���������� �� ���������, �� ����������� �� ���� � ����� ����� ������
  with DMFIB do
    begin
      DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//���������� ������ � ����� � �������
      if Trim(DSetDrugs.FN('DRUGNOTE').AsString) = ''
        then
          begin
            if Application.MessageBox(PChar('��������� � ��������� "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) +
                '" � ���� ������ �����������. ������ ������ �� ������ ?'),
                '������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  SpBtnDrugEditClick(Sender);//���������� �������� ������ ��������������
                  if RichEditDrugNote.CanFocus then RichEditDrugNote.SetFocus;
                end;
          end
        else //���� � ���������� � ��������� �� ������
          begin
            SimpleREStr:= Trim(DSetDrugs.FN('DRUGNOTE').AsString);//���������� ������������ �����
            if Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) <> ''
              then
                CaptionREStr:= '��������� � ��������� "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) + '"'
              else
                CaptionREStr:= '�������� ��������� �����������';
                
            with TFrmRichTxtShow.Create(Self) do //������� ��������� �����
              try
                ShowModal;
              finally
                Free;
              end;

            if DBGridTblDrug.CanFocus then DBGridTblDrug.SetFocus;//���������� ����� � ����
          end;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugCellClick(Column: TColumnEh);
begin
// �� ��������� ����� ������������� ��� ������� �������� �� �������,
// ���� "��������" ������������� �����
//SpBtnDrugEdit.Enabled:= (DBGridTblDrug.SelectedRows.Count = 1);
//SpBtnDrugDelete.Enabled:= (DBGridTblDrug.SelectedRows.Count = 1);

SwitchOnOffBtn(Self);//�������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnChoiceClick(Sender: TObject);
var j,k: Integer;
    sj,sk: String;
    FullTxt: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> ���� ������ �� ������� (������������)
if DBGridChoiceDrug.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('�� ������� �� ����� ������. ��� ������ ���������� ��������� �� ������� ����� '
                  + '� ������� ������ ��������, �������������� ����� ����, ��� ���������� ������. ��� '
                  + '�������������� ������ ���������� � ����� ������� ����������� ������� ������� <Ctrl>. '
                  + '������ ��������� �������?', '��������', MB_ICONINFORMATION + MB_YESNO) = IDYes
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
sj:= '';
sk:= '';

TmpRE:= TRichEdit.CreateParented(Self.Handle);
with TmpRE do
  try
    PlainText:= False;
    Visible:= False;

    Lines.Add('�������: ');
    SelStart:= 0;
    SelLength:= Length(Trim('�������: '));
    SelAttributes.Style:= [fsUnderline];
    SelStart:= SelLength;
    SelAttributes.Assign(DefAttributes);


    //"����������" ��������� ������ � ���-����
   // for i:= 0 to DBGridChoiceDrug.DataSource.DataSet.RecordCount - 1 do
   MTEChoiceDrug.First;

   while not MTEChoiceDrug.Eof do
     begin
        //��������� ������
        with MTEChoiceDrug do
          begin
            //����������� ���� � ����������� ��������������� �������� �����
            j:= FieldByName('DrugInput').AsInteger;
            case j of
              0: sj:= ' ������';
              1: sj:= ' ���������';
              2: sj:= ' �/�';
              3: sj:= ' �/�';
              4: sj:= ' �/�';
              5: sj:= ' �������';
              else sj:= '';
            end;{case}

            k:= FieldByName('DrugMethod').AsInteger;
            case k of
              0: begin
                  if (j <> 0)
                    then sk:= ''
                    else sk:= ' (��� ����������� �� ������ ����)';
                 end;
              1: sk:= ' (�� 1 ��� �� ���)';
              2: sk:= ' (����� 2 ���� ����� ���)';
              3: sk:= ' (�� 1 ��� �� ��� ��� ����� 2 ���� ����� ���)';
              4: sk:= ' (�� ����� ��� ����� ���)';
              5: sk:= ' (�� ����)';
              6: sk:= ' (�� ����, �������) ';
              7: sk:= ' (�� 30-60 ��� �� �������� ����) ';
            else sk:= '';
            end;


            FullTxt:= '- ' + Trim(FieldByName('DrugNamePill').AsString) + ' '
                    + Trim(FieldByName('DrugDose').AsString) + ' x '
                    + Trim(FieldByName('DrugUse').AsString) + ' '
                    + Trim(FieldByName('DrugCure').AsString) + sj + sk;
          end;
        Lines.Add(FullTxt);//��������� ������ � ���-����
        MTEChoiceDrug.Next;
     end;

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextDrugs;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������ ������������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextDrugs:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextDrugs <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ���������������� ������� ' +
               '������ ����� ������� �� ����� �������������� �����. ��������� ������?',
               '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextDrugs:= FullTxt;//��������, ���� ����� "��"
  finally
    Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDblClick(Sender: TObject);
begin
//SpBtnDrugEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.EdtDrugNamePillChange(Sender: TObject);
begin
UpFirstChar(EdtDrugNamePill);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDrug.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDrug.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridTblDrug.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDrug.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridTblDrug.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

//----------------------------------------------------------------------------
//������ ������� ��� ���������
procedure TFrmTblDrugs.BtnPrintRecipeClick(Sender: TObject);
var TmpTxt,DrugFPath,DrugFileName: string;
begin
  //���������� �� ������ ������
  if MTETblDrug.IsEmpty then Exit;

  // ���� ���� � ���������� �� ���������, �� ����������� �� ���� � ����� ����� ������
  with DMFIB do
    begin
      DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//���������� ������ � ����� � �������
      if Trim(DSetDrugs.FN('DRUGRECIPE').AsString) = ''
        then
          begin
            if Application.MessageBox(PChar('��� ��������� "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) +
                '" ���� � ���������� ���� �� ���������. ������ ��������� ��� ������ ?'),
                '������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  SpBtnDrugEditClick(Sender);//���������� �������� ������ ��������������
                  if RichEditDrugRecipe.CanFocus then RichEditDrugRecipe.SetFocus;
                  Exit;
                end
              else
                Exit;//������ ������ �� ���������
          end{if Trim(FN('DRUGRECIPE').AsString) = '' .. then}
        else
          begin
            //��������� ������� ����������� ��� ���������� ������ ������� ��������
            if DSetTotalPat.IsEmpty then
              begin
                Application.MessageBox('� ������� ������ ���� ������� ������ ��������. � ����� ���� ������ '
                + '��������� ��� ������ !','������������ ������', MB_ICONINFORMATION);
                Exit;
              end;

            if DSetReportDoc.IsEmpty then
              begin
                if Application.MessageBox('� ������� ������ ���� ������� ������ �������, ����������� ��������. '
                  + '������ �������� ����� ?','������������ ������',MB_ICONINFORMATION + MB_YESNO) = IDYes
                  then
                    BitBtnEdtTblDocClick(Sender);//���������� �������� �� ������ ���������� ��������
                Exit;
              end;

            //���� ������������ ������ ��� ��������, �� ������� �� ������ �����, �������������� ������ �������
            with DSetReportRecipe do
              begin
                if Active then Close;//������� �����

                Prepare;//������������� ������

                //���������� ������ � ������ � ��������� � �������� ������� � �����
                DSetReportDoc.Locate(Trim('SHORT_DOCINFO'),Trim(CbBoxInfoDoc.Text),[]);

                //��������� ��������� �������
                ParamByName('prmID_DR').Value:= DSetDrugs.FN('ID_DRUGS').Value;
                ParamByName('prmID_DOC').Value:= DSetReportDoc.FN('ID_DOCTOR').Value;
                ParamByName('prmID_ANK').Value:= DSetTotalPat.FN('ID_ANKETA').Value;

                Open;
              end;

//              ReportRecipe.ShowReport(True);//���������� ����� �������
                case DrugSendTag of
                  45014: DrugFileName:= 'Recipe_a4.fr3';
                  45015: DrugFileName:= 'Recipe_a5.fr3';
                end;

                DrugFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + DrugFileName;

                //���� ���� ����������
                if FileExists(DrugFPath)
                  then //��������� �����
                    begin
                      FrmMainProg.frxHTMLExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxODTExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxPDFExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxRTFExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;

                      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

                      FrmMainProg.frxHTMLExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxODTExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxPDFExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxRTFExport.DefaultPath:= ReportInitDir;

                      FrmMainProg.MainReport.LoadFromFile(DrugFPath);
                      FrmMainProg.MainReport.ShowReport;
                    end
                  else //������� �� ��������� � ���������������
                    begin
                      TmpTxt:= '����������� ����������� ���� ������ "' + DrugFileName + '" ! ��������, '
                      + '�� ��� �������� ������ ��� ������������. ���������� ���� ���� �� ����� � ������� � ����� '
                      + '\Reports\ � �������� �������� ��������� � ���������� ��������� ����� ������.';
                      Application.MessageBox(PChar(TmpTxt), '������ ������� � �����', MB_ICONINFORMATION);
                      Exit;
                    end;

          end;{if Trim(FN('DRUGRECIPE').AsString) = '' .. else}
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceDrug)
                          and DrugChoiceBtn //� ����� ������� ��� ����.������
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceDrug then
    begin
      DBGridTblDrug.DataSource.DataSet.DisableControls;
      DBGridChoiceDrug.DataSource.DataSet.DisableControls;
      DBGridTblDrug.SaveBookmark;
      if DBGridChoiceDrug.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceDrug.SelectedRows.Count-1 do
          begin
            DBGridChoiceDrug.DataSource.DataSet.Bookmark := DBGridChoiceDrug.SelectedRows[I];
            DBGridTblDrug.DataSource.DataSet.Append;
            DBGridTblDrug.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblDrug.DataSource.DataSet.FieldCount-1 do
              DBGridTblDrug.DataSource.DataSet.Fields[j].Value := DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value;

            DBGridTblDrug.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceDrug.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceDrug.DataSource.DataSet.First;

            while  not DBGridChoiceDrug.DataSource.DataSet.EOF do
              begin
                DBGridTblDrug.DataSource.DataSet.Append;
                DBGridTblDrug.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblDrug.DataSource.DataSet.FieldCount-1 do
                  DBGridTblDrug.DataSource.DataSet.Fields[j].Value := DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value;

                DBGridTblDrug.DataSource.DataSet.Post;
                DBGridChoiceDrug.DataSource.DataSet.Delete;
              end;
            DBGridChoiceDrug.Selection.Clear;
          end;
      DBGridTblDrug.RestoreBookmark;
      DBGridChoiceDrug.SelectedRows.Delete;
      DBGridChoiceDrug.DataSource.DataSet.Refresh;
      DBGridChoiceDrug.DataSource.DataSet.EnableControls;
      DBGridTblDrug.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblDrug then
    begin
      DBGridChoiceDrug.DataSource.DataSet.DisableControls;
      DBGridTblDrug.DataSource.DataSet.DisableControls;
      DBGridChoiceDrug.SaveBookmark;

      if DBGridTblDrug.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblDrug.SelectedRows.Count-1 do
            begin
              DBGridTblDrug.DataSource.DataSet.Bookmark := DBGridTblDrug.SelectedRows[I];
              DBGridChoiceDrug.DataSource.DataSet.Append;
              DBGridChoiceDrug.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceDrug.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value := DBGridTblDrug.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceDrug.DataSource.DataSet.Post;
            end
        else
          if DBGridTblDrug.Selection.SelectionType = gstAll then
            begin
              DBGridTblDrug.DataSource.DataSet.First;
              while  not DBGridTblDrug.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceDrug.DataSource.DataSet.Append;
                  DBGridChoiceDrug.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceDrug.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value := DBGridTblDrug.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceDrug.DataSource.DataSet.Post;
                  DBGridTblDrug.DataSource.DataSet.Delete;
                end;
              DBGridTblDrug.Selection.Clear;
            end;

      DBGridChoiceDrug.RestoreBookmark;
      DBGridTblDrug.SelectedRows.Delete;
      DBGridTblDrug.DataSource.DataSet.Refresh;
      DBGridTblDrug.DataSource.DataSet.EnableControls;
      DBGridChoiceDrug.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblDrug)
      and DrugChoiceBtn //� ����� ������� ��� ����.������
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------
//��������-��������� ������
procedure TFrmTblDrugs.SwitchOnOffBtn(Sender: TObject);
begin
if DrugChoiceBtn
  then //������������� �����
    begin
      BtnFwdOne.Enabled:= (DBGridTblDrug.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblDrug.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);

      //���������� ������ ������ �������������� ������� ������� � ����� ��������� �������
      //��� �������, ��� ����� ������� ��� ������ (� ��������� ���������)
      //+ ���������� ������ ������ ������� � �������� � ���������, ���� ������ ������ ���� �������� � ���� � ���� ���� ���� �������
      //� ���� ���� ������ � ���� ����� �� ������
      BtnChoice.Visible:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);
      BtnPrintRecipe.Visible:= ((DBGridTblDrug.SelectedRows.Count = 1) and (not MTETblDrug.IsEmpty) and
                                              (not DMFIB.DSetTotalPat.IsEmpty) and (not DMFIB.DSetDoctor.IsEmpty));
      BtnDrugInfo.Visible:= ((DBGridTblDrug.SelectedRows.Count = 1) and (not MTETblDrug.IsEmpty) and
                                              (not DMFIB.DSetTotalPat.IsEmpty) and (not DMFIB.DSetDoctor.IsEmpty));
      CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;
    end
  else //��������� �����
    begin
      BtnFwdOne.Enabled:= False;
      BtnFwdAll.Enabled:= False;

      BtnRtnOne.Enabled:= False;
      BtnRtnAll.Enabled:= False;

      BtnChoice.Visible:= False;
      BtnPrintRecipe.Visible:= ((not MTETblDrug.IsEmpty) and (not DMFIB.DSetTotalPat.IsEmpty)
                                                                              and (not DMFIB.DSetDoctor.IsEmpty));
      BtnDrugInfo.Visible:= ((not MTETblDrug.IsEmpty) and (not DMFIB.DSetTotalPat.IsEmpty)
                                                                              and (not DMFIB.DSetDoctor.IsEmpty));
      CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;
    end;

//������ �������������� � �������� ������� �� ����� ����� ��������, ���� ���� �� ������
//� ���������� ��������� ������� � ������� ������ �� ������ �����
SpBtnDrugEdit.Enabled:= ((DBGridTblDrug.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblDrug.SelectedRows.Count > 1)));
SpBtnDrugDelete.Enabled:= ((DBGridTblDrug.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblDrug.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceDrug.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceDrug.Canvas.Brush.Color:= clCream;

	// ��������������� ��������� ������� ������� �������
	if  gdSelected in State
	then
    begin
		DBGridChoiceDrug.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceDrug.Canvas.Font.Color := clWindowText;
	  end;
	// ������ GRID �������������� ������
	DBGridChoiceDrug.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblDrug,DBGridChoiceDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxDrugs);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblDrug,DBGridChoiceDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceDrug,DBGridTblDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceDrug,DBGridTblDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------
//��������� ���� � ���������
procedure TFrmTblDrugs.FillCbBoxDoctorByData(Sender: TObject);
begin
//������� ����� � ���������
DSetReportDoc.FullRefresh;

//�������� ���� � ���������
CbBoxInfoDoc.Clear;

LblEmptyDocWarning.Visible:= DSetReportDoc.IsEmpty;
LblEmptyDocWarning.Invalidate;//���������� �������

CbBoxInfoDoc.Enabled:= not DSetReportDoc.IsEmpty;

//���� ����� � ��������� ������
if DSetReportDoc.IsEmpty
  then
    Exit//������ �� ���������
  else//���� �� �� ������
    begin
      DSetReportDoc.First;
      //��������� ���� � ��������� ���������� �� �����
      while not DSetReportDoc.Eof do
        begin
          CbBoxInfoDoc.Items.Add(Trim(DSetReportDoc.FN('SHORT_DOCINFO').AsString));
          DSetReportDoc.Next;
        end;

      //�������� ���������� � ����� �������, ������������ � "����������" ����������
      DSetReportDoc.Locate('ID_DOCTOR',VarID_Tbl_Doctor,[]);
      if CbBoxInfoDoc.Items.IndexOf(DSetReportDoc.FN('SHORT_DOCINFO').AsString) >= 0//���� ����� �������
        then //���������� ��� � ����� �� ���������
          CbBoxInfoDoc.ItemIndex:= CbBoxInfoDoc.Items.IndexOf(DSetReportDoc.FN('SHORT_DOCINFO').AsString)
        else //�����, ������� �����������
          CbBoxInfoDoc.ItemIndex:= 0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.AppEventsDrugShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� ������� "�������" ������
    if DrugChoiceBtn then //���� ����� ������� ��� ������
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then
              begin
                DBGridTblDrug.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //����� � ������ �������������� �������� ������ ����������� �������
          then
            begin
              DBGridChoiceDrug.DataSource.DataSet.CursorPosChanged;//������� ������� ������ "����������"
              BtnRtnOneClick(Self);
            end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //����� � ������ �������������� �������� ������ ����������� �������
            then BtnRtnAllClick(Self);
      end;

    //����������� �������� �� �����, ��������� ��������� ��-�������
    if PnlEdtTblDrug.Visible
      then //���� ��������� � ������ ��������������
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
          if (GetKeyState(VK_RETURN) < 0) then //���� ���� <Enter>
            begin
              if BtnRichFmtDrugNote.Focused //���� ����� �� ������ ������ �������������� ���������
                then
                  BtnRichFmtDrugNoteClick(Self) //���� ��
                else
                  begin
                    if BtnRichFmtRecipe.Focused //���� ����� �� ������ ������ �������������� ����������� �������
                      then
                        BtnRichFmtRecipeClick(Self); //���� ��
                  end;
            end;

          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);// ��������� ��������� � ������
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

    //������� ������� ���
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('P')) < 0) and BtnPrintRecipe.Visible then BtnPrintRecipeClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0) and BtnDrugInfo.Visible then BtnDrugInfoClick(Self);

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnDrugAdd.Enabled then SpBtnDrugAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnDrugEdit.Enabled then SpBtnDrugEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDrugDelete.Enabled then SpBtnDrugDeleteClick(Self);
  end;

//����� ������ ����� �� ����������� �� ����� �������
AppEventsDrug.CancelDispatch;
end;

//----------------------------------------------------------------------------
//������ �������������� ������ ��������
procedure TFrmTblDrugs.BitBtnEdtTblDocClick(Sender: TObject);
begin
//�������� ���������� � ���������
FrmMainProg.ActTblDoctorExecute(Sender);

//��������� �������������� ������
FillCbBoxDoctorByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.CbBoxInfoDocChange(Sender: TObject);
begin
DSetReportDoc.Locate(Trim('SHORT_DOCINFO'),Trim(CbBoxInfoDoc.Text),[]);
VarID_Tbl_Doctor:= DSetReportDoc.FN('ID_DOCTOR').AsInteger;//���������� ID ������� � ������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.CbBoxPrintFmtChange(Sender: TObject);
begin
case CbBoxPrintFmt.ItemIndex of
  0 : DrugSendTag:= 45015;//������ �5
  1 : DrugSendTag:= 45014;//������ �4
end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRichFmtRecipeClick(Sender: TObject);
begin
RichEditDrugRecipe.Text:= FrmStatusPat.CallSimpleRichEditor(RichEditDrugRecipe);
RichEditDrugRecipe.Refresh;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRichFmtDrugNoteClick(Sender: TObject);
begin
RichEditDrugNote.Text:= FrmStatusPat.CallSimpleRichEditor(RichEditDrugNote);
RichEditDrugNote.Refresh;
end;

//----------------------------------------------------------------------------

end.
