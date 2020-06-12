unit uImgUZIGenit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, ExtDlgs, DB, DBTables,
  FIBDataSet, NiceSettings, AppEvnts, ActnList;

type
  TFrmImgUZIGenit = class(TForm)
    PnlBtnBar: TPanel;
    PnlCapt: TPanel;
    PnlWork: TPanel;
    PnlUp: TPanel;
    PnlDn: TPanel;
    BtnCancel: TButton;
    PnlUpLeft: TPanel;
    PnlUpRight: TPanel;
    PnlDnLeft: TPanel;
    PnlDnRight: TPanel;
    BtnSave: TButton;
    LblCaption: TLabel;
    LblName: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpBtnUpLeftAdd: TSpeedButton;
    SpBtnUpLeftDel: TSpeedButton;
    SpBtnDnLeftAdd: TSpeedButton;
    SpBtnDnLeftDel: TSpeedButton;
    SpBtnUpRigthAdd: TSpeedButton;
    SpBtnUpRigthDel: TSpeedButton;
    SpBtnDnRigthAdd: TSpeedButton;
    SpBtnDnRigthDel: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    OpenPictDialog: TOpenPictureDialog;
    NiceSetFrmImgUZIGenit: TNiceSettings;
    AppEventsImgUZIGenit: TApplicationEvents;
    ScrollBox1: TScrollBox;
    Img1: TImage;
    ScrollBox2: TScrollBox;
    Img2: TImage;
    ScrollBox3: TScrollBox;
    Img3: TImage;
    ScrollBox4: TScrollBox;
    Img4: TImage;
    ActList: TActionList;
    ActShowFullImage: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnUpLeftAddClick(Sender: TObject);
    procedure SpBtnUpLeftDelClick(Sender: TObject);
    procedure SpBtnUpRigthAddClick(Sender: TObject);
    procedure SpBtnUpRigthDelClick(Sender: TObject);
    procedure SpBtnDnLeftAddClick(Sender: TObject);
    procedure SpBtnDnLeftDelClick(Sender: TObject);
    procedure SpBtnDnRigthAddClick(Sender: TObject);
    procedure SpBtnDnRigthDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsImgUZIGenitShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ActShowFullImageExecute(Sender: TObject);
    procedure Img1DblClick(Sender: TObject);
    procedure Img2DblClick(Sender: TObject);
    procedure Img3DblClick(Sender: TObject);
    procedure Img4DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadPictToImgbox(Sender: TImage; var FExt: String);
    procedure ClearPictImgbox(Sender: TImage);
    procedure RepaintSpBtnDel(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmImgUZIGenit: TFrmImgUZIGenit;

implementation

uses DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit, uShowFullImg;
var TmpFExt_01, TmpFExt_02, TmpFExt_03, TmpFExt_04: String;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.FormCreate(Sender: TObject);
begin
NiceSetFrmImgUZIGenit.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmImgUZIGenit.LoadSettings;
DoubleBuffered:= True;

ScrollBox1.BorderStyle:= bsNone;
ScrollBox2.BorderStyle:= bsNone;
ScrollBox3.BorderStyle:= bsNone;
ScrollBox4.BorderStyle:= bsNone;

PnlWork.Align:= alClient;
PnlDn.Align:= alClient;
PnlUpRight.Align:= alClient;
PnlDnRight.Align:= alClient;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '����������� ��� ��������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '����������� ��� ��������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

with DMFIB, DSetTmpBlobVisit do
  begin
    TmpFExt_01:= FN('TMP_UZIGENITFOTOS_01_EXT').AsString;
    TmpFExt_02:= FN('TMP_UZIGENITFOTOS_02_EXT').AsString;
    TmpFExt_03:= FN('TMP_UZIGENITFOTOS_03_EXT').AsString;
    TmpFExt_04:= FN('TMP_UZIGENITFOTOS_04_EXT').AsString;
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//����������� � ���������� ���������
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - ����������� ��� ���������';

with DMFIB, DSetTmpBlobVisit do
  begin
  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_UZIGENITFOTOS_01').IsNull then
    begin
      TmpFPath:= FPath + '\UZIGenTmpImg_01' + FN('TMP_UZIGENITFOTOS_01_EXT').AsString;
      TBlobField(FN('TMP_UZIGENITFOTOS_01')).SaveToFile(TmpFPath);
        try
          Img1.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_UZIGENITFOTOS_02').IsNull then
    begin
      TmpFPath:= FPath + '\UZIGenTmpImg_02' + FN('TMP_UZIGENITFOTOS_02_EXT').AsString;
      TBlobField(FN('TMP_UZIGENITFOTOS_02')).SaveToFile(TmpFPath);
        try
          Img2.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_UZIGENITFOTOS_03').IsNull then
    begin
      TmpFPath:= FPath + '\UZIGenTmpImg_03' + FN('TMP_UZIGENITFOTOS_03_EXT').AsString;
      TBlobField(FN('TMP_UZIGENITFOTOS_03')).SaveToFile(TmpFPath);
        try
          Img3.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_UZIGENITFOTOS_04').IsNull then
    begin
       TmpFPath:= FPath + '\UZIGenTmpImg_04' + FN('TMP_UZIGENITFOTOS_04_EXT').AsString;
       TBlobField(FN('TMP_UZIGENITFOTOS_04')).SaveToFile(TmpFPath);
        try
          Img4.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;
  end;{with DMFIB, DSetTmpBlobVisit do}

//���������-������� ������ � ����������� �� ������������� TImage
RepaintSpBtnDel(Sender);

FormResize(Sender);
end;

procedure TFrmImgUZIGenit.Img1DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img1);
end;

procedure TFrmImgUZIGenit.Img2DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img2);
end;

procedure TFrmImgUZIGenit.Img3DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img3);
end;

procedure TFrmImgUZIGenit.Img4DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img4);
end;

//----------------------------------------------------------------------------
//���������� ������ �������� �������� � ����������� �� ������������� TImage
procedure TFrmImgUZIGenit.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnUpLeftDel.Enabled:= (Img1.Picture.Graphic <> nil);
SpBtnUpRigthDel.Enabled:= (Img2.Picture.Graphic <> nil);
SpBtnDnLeftDel.Enabled:= (Img3.Picture.Graphic <> nil);
SpBtnDnRigthDel.Enabled:= (Img4.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.FormResize(Sender: TObject);
begin
PnlUp.Height:= (ClientHeight - PnlCapt.Height - PnlBtnBar.Height) div 2;
PnlUpLeft.Width:= PnlUp.Width div 2;
PnlDnLeft.Width:= PnlDn.Width div 2;
Label1.Left:= (PnlUpLeft.Width - Label1.Width) div 2;
Label1.Top:= PnlUpLeft.Height div 2;

Label2.Left:= (PnlDnLeft.Width - Label2.Width) div 2;
Label2.Top:= PnlDnLeft.Height div 2;

Label3.Left:= (PnlUpRight.Width - Label3.Width) div 2;
Label3.Top:= PnlUpRight.Height div 2;

Label4.Left:= (PnlDnRight.Width - Label4.Width) div 2;
Label4.Top:= PnlDnRight.Height div 2;

LblName.Left:= (PnlCapt.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if Img1.Picture.Graphic <> nil
      then
        begin
          Img1.Picture.SaveToFile(FPath + '\UZIGenTmpImg_01.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_UZIGENITFOTOS_01')).LoadFromFile(FPath + '\UZIGenTmpImg_01.tmp');
          FN('TMP_UZIGENITFOTOS_01_EXT').AsString:= TmpFExt_01;
        end {if Img1.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_UZIGENITFOTOS_01')).Clear;
          FN('TMP_UZIGENITFOTOS_01_EXT').AsString:= '';
        end;

    if Img2.Picture.Graphic <> nil
      then
        begin
          Img2.Picture.SaveToFile(FPath + '\UZIGenTmpImg_02.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_UZIGENITFOTOS_02')).LoadFromFile(FPath + '\UZIGenTmpImg_02.tmp');
          FN('TMP_UZIGENITFOTOS_02_EXT').AsString:= TmpFExt_02;
        end {if Img2.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_UZIGENITFOTOS_02')).Clear;
          FN('TMP_UZIGENITFOTOS_02_EXT').AsString:= '';
        end;

    if Img3.Picture.Graphic <> nil
      then
        begin
          Img3.Picture.SaveToFile(FPath + '\UZIGenTmpImg_03.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_UZIGENITFOTOS_03')).LoadFromFile(FPath + '\UZIGenTmpImg_03.tmp');
          FN('TMP_UZIGENITFOTOS_03_EXT').AsString:= TmpFExt_03;
        end {if Img3.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_UZIGENITFOTOS_03')).Clear;
          FN('TMP_UZIGENITFOTOS_03_EXT').AsString:= '';
        end;

    if Img4.Picture.Graphic <> nil
      then
         begin
          Img4.Picture.SaveToFile(FPath + '\UZIGenTmpImg_04.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_UZIGENITFOTOS_04')).LoadFromFile(FPath + '\UZIGenTmpImg_04.tmp');
          FN('TMP_UZIGENITFOTOS_04_EXT').AsString:= TmpFExt_04;
        end {if Img4.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_UZIGENITFOTOS_04')).Clear;
          FN('TMP_UZIGENITFOTOS_04_EXT').AsString:= '';
        end;

    if DSetTmpBlobVisit.Modified then Post;
  end;{with DMFIB, DSetTmpBlobVisit do}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.ActShowFullImageExecute(Sender: TObject);
var frmImage: TfrmShowFullImg;
begin
  if (Sender is TImage) then
  begin
    if Assigned(@TImage(Sender)) then
    begin
      frmImage:= TfrmShowFullImg.Create(nil);
      try
        frmImage.imgFull.Picture.Graphic:= TImage(Sender).Picture.Graphic;
        frmImage.ShowModal;
      finally
        FreeAndNil(frmImage);
      end;
    end;
  end;
end;

procedure TFrmImgUZIGenit.AppEventsImgUZIGenitShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"

    //����������� "������" ����������� ������ ����������/�������� ��������
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftAdd.Enabled then SpBtnUpLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftDel.Enabled then SpBtnUpLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnDnLeftAdd.Enabled then SpBtnDnLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnDnLeftDel.Enabled then SpBtnDnLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpRigthAdd.Enabled then SpBtnUpRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpRigthDel.Enabled then SpBtnUpRigthDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnRigthAdd.Enabled then SpBtnDnRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnRigthDel.Enabled then SpBtnDnRigthDelClick(Self);
  end;
AppEventsImgUZIGenit.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;



(******************************************************************************)
(***           ���� ��������� ������ ����������-�������� ��������           ***)
(******************************************************************************)

//----------------------------------------------------------------------------
//������ �������� �� �����������
procedure TFrmImgUZIGenit.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//��������� � �������� �����������
procedure TFrmImgUZIGenit.LoadPictToImgbox(Sender: TImage; var FExt: String);
begin
FExt:= '';
if OpenPictDialog.Execute then
  begin
    //�������� ������� ����� � ������ (��� ������� ������ ��������� �������������)
//    if GetFileSize(OpenPictDialog.FileName) > 500000 then
//      begin
//        Application.MessageBox('������ ������������ � �� ����� �� ������ ��������� 500 Kb!'
//                           + #13#10 + '���������� ��������� ��� �������� � �����-������ '
//                           + '����������� ���������.', '������ ������� � ������,',
//                           MB_ICONINFORMATION);
//        Exit;
//      end;
    try
      TImage(Sender).Picture.LoadFromFile(OpenPictDialog.FileName);
      FExt:= Trim(ExtractFileExt(OpenPictDialog.FileName));
    except
      Application.MessageBox('�� ������� ��������� �����������! �������� ���� ��������� '
                 + '��� ��� ���������� �� �������� ��������.','������ ������� � ������');
      FExt:= '';
    end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnUpLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img1, TmpFExt_01);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnUpLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img1);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnUpRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img2, TmpFExt_02);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnUpRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img2);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnDnLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img3, TmpFExt_03);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnDnLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img3);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnDnRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img4, TmpFExt_04);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.SpBtnDnRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img4);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUZIGenit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmImgUZIGenit.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
