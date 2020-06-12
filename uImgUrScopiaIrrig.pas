unit uImgUrScopiaIrrig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ExtDlgs, JPEG, DB, DBTables,
  NiceSettings, AppEvnts, ActnList;

type
  TFrmImgUrScopiaIrrig = class(TForm)
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
    Panel6: TPanel;
    Panel7: TPanel;
    PnlUpMed: TPanel;
    PnlDnMed: TPanel;
    SpBtnDnMedAdd: TSpeedButton;
    SpBtnDnMedDel: TSpeedButton;
    SpBtnUpMedAdd: TSpeedButton;
    SpBtnUpMedDel: TSpeedButton;
    NiceSetFrmImgUrScopiaIrrig: TNiceSettings;
    AppEventsImgUrScopiaIrrig: TApplicationEvents;
    ScrollBox1: TScrollBox;
    Img1: TImage;
    ScrollBox2: TScrollBox;
    Img3: TImage;
    ScrollBox3: TScrollBox;
    Img5: TImage;
    ScrollBox4: TScrollBox;
    Img6: TImage;
    ScrollBox5: TScrollBox;
    Img2: TImage;
    ScrollBox6: TScrollBox;
    Img4: TImage;
    ActList: TActionList;
    ActShowFullImage: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnUpLeftAddClick(Sender: TObject);
    procedure SpBtnUpLeftDelClick(Sender: TObject);
    procedure SpBtnDnLeftAddClick(Sender: TObject);
    procedure SpBtnDnLeftDelClick(Sender: TObject);
    procedure SpBtnUpRigthAddClick(Sender: TObject);
    procedure SpBtnUpRigthDelClick(Sender: TObject);
    procedure SpBtnDnRigthAddClick(Sender: TObject);
    procedure SpBtnDnRigthDelClick(Sender: TObject);
    procedure SpBtnUpMedAddClick(Sender: TObject);
    procedure SpBtnUpMedDelClick(Sender: TObject);
    procedure SpBtnDnMedAddClick(Sender: TObject);
    procedure SpBtnDnMedDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsImgUrScopiaIrrigShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ActShowFullImageExecute(Sender: TObject);
    procedure Img1DblClick(Sender: TObject);
    procedure Img5DblClick(Sender: TObject);
    procedure Img2DblClick(Sender: TObject);
    procedure Img3DblClick(Sender: TObject);
    procedure Img6DblClick(Sender: TObject);
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
  FrmImgUrScopiaIrrig: TFrmImgUrScopiaIrrig;

implementation

uses DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit, uShowFullImg;
var TmpFExt_01, TmpFExt_02, TmpFExt_03,
    TmpFExt_04, TmpFExt_05, TmpFExt_06: String;
    FocusFlag: Boolean;
    
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.FormCreate(Sender: TObject);
begin
NiceSetFrmImgUrScopiaIrrig.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmImgUrScopiaIrrig.LoadSettings;

DoubleBuffered:= True;

ScrollBox1.BorderStyle:= bsNone;
ScrollBox2.BorderStyle:= bsNone;
ScrollBox3.BorderStyle:= bsNone;
ScrollBox4.BorderStyle:= bsNone;
ScrollBox5.BorderStyle:= bsNone;
ScrollBox6.BorderStyle:= bsNone;


PnlWork.Align:= alClient;
PnlDn.Align:= alClient;
PnlUpMed.Align:= alClient;
PnlDnMed.Align:= alClient;

Self.Caption:= '����������� ������������� ������������ (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

with DMFIB, DSetTmpBlobVisit do
  begin
    TmpFExt_01:= FN('TMP_URSCOPIAIRRIGFOTOS_01_EXT').AsString;
    TmpFExt_02:= FN('TMP_URSCOPIAIRRIGFOTOS_02_EXT').AsString;
    TmpFExt_03:= FN('TMP_URSCOPIAIRRIGFOTOS_03_EXT').AsString;
    TmpFExt_04:= FN('TMP_URSCOPIAIRRIGFOTOS_04_EXT').AsString;
    TmpFExt_05:= FN('TMP_URSCOPIAIRRIGFOTOS_05_EXT').AsString;
    TmpFExt_06:= FN('TMP_URSCOPIAIRRIGFOTOS_06_EXT').AsString;
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//����������� � ���������� ���������
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - ����������� ������������� ������������';

with DMFIB, DSetTmpBlobVisit do
  begin
  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_01').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_01' + FN('TMP_URSCOPIAIRRIGFOTOS_01_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_01')).SaveToFile(TmpFPath);
        try
          Img1.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_02').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_02' + FN('TMP_URSCOPIAIRRIGFOTOS_02_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_02')).SaveToFile(TmpFPath);
        try
          Img2.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_03').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_03' + FN('TMP_URSCOPIAIRRIGFOTOS_03_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_03')).SaveToFile(TmpFPath);
        try
          Img3.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_04').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_04' + FN('TMP_URSCOPIAIRRIGFOTOS_04_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_04')).SaveToFile(TmpFPath);
        try
          Img4.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_05').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_05' + FN('TMP_URSCOPIAIRRIGFOTOS_05_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_05')).SaveToFile(TmpFPath);
        try
          Img5.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;

  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_URSCOPIAIRRIGFOTOS_06').IsNull then
    begin
      TmpFPath:= FPath + '\UrScIrTmpImg_06' + FN('TMP_URSCOPIAIRRIGFOTOS_06_EXT').AsString;
      TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_06')).SaveToFile(TmpFPath);
        try
          Img6.Picture.LoadFromFile(TmpFPath);
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

procedure TFrmImgUrScopiaIrrig.Img1DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img1);
end;

procedure TFrmImgUrScopiaIrrig.Img2DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img2);
end;

procedure TFrmImgUrScopiaIrrig.Img3DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img3);
end;

procedure TFrmImgUrScopiaIrrig.Img4DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img4);
end;

procedure TFrmImgUrScopiaIrrig.Img5DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img5);
end;

procedure TFrmImgUrScopiaIrrig.Img6DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img6);
end;

//----------------------------------------------------------------------------
//���������� ������ �������� �������� � ����������� �� ������������� TImage
procedure TFrmImgUrScopiaIrrig.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnUpLeftDel.Enabled:= (Img1.Picture.Graphic <> nil);
SpBtnUpRigthDel.Enabled:= (Img2.Picture.Graphic <> nil);
SpBtnDnLeftDel.Enabled:= (Img3.Picture.Graphic <> nil);
SpBtnDnRigthDel.Enabled:= (Img4.Picture.Graphic <> nil);
SpBtnUpMedDel.Enabled:= (Img5.Picture.Graphic <> nil);
SpBtnDnMedDel.Enabled:= (Img6.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.FormResize(Sender: TObject);
begin
PnlUp.Height:= PnlWork.Height div 2;
PnlUpLeft.Width:= PnlUp.Width div 3;
PnlUpRight.Width:= PnlUp.Width div 3;
PnlDnLeft.Width:= PnlDn.Width div 3;
PnlDnRight.Width:= PnlUp.Width div 3;


LblName.Left:= (PnlCapt.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if Img1.Picture.Graphic <> nil
      then
        begin
          Img1.Picture.SaveToFile(FPath + '\UrScIrTmpImg_01.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_01')).LoadFromFile(FPath + '\UrScIrTmpImg_01.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_01_EXT').AsString:= TmpFExt_01;
        end {if Img1.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_01')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_01_EXT').AsString:= '';
        end;

    if Img2.Picture.Graphic <> nil
      then
        begin
          Img2.Picture.SaveToFile(FPath + '\UrScIrTmpImg_02.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_02')).LoadFromFile(FPath + '\UrScIrTmpImg_02.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_02_EXT').AsString:= TmpFExt_02;
        end {if Img2.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_02')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_02_EXT').AsString:= '';
        end;

    if Img3.Picture.Graphic <> nil
      then
        begin
          Img3.Picture.SaveToFile(FPath + '\UrScIrTmpImg_03.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_03')).LoadFromFile(FPath + '\UrScIrTmpImg_03.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_03_EXT').AsString:= TmpFExt_03;
        end {if Img3.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_03')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_03_EXT').AsString:= '';
        end;

    if Img4.Picture.Graphic <> nil
      then
        begin
          Img4.Picture.SaveToFile(FPath + '\UrScIrTmpImg_04.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_04')).LoadFromFile(FPath + '\UrScIrTmpImg_04.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_04_EXT').AsString:= TmpFExt_04;
        end {if Img4.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_04')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_04_EXT').AsString:= '';
        end;

    if Img5.Picture.Graphic <> nil
      then
        begin
          Img5.Picture.SaveToFile(FPath + '\UrScIrTmpImg_05.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_05')).LoadFromFile(FPath + '\UrScIrTmpImg_05.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_05_EXT').AsString:= TmpFExt_05;
        end {if Img5.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_05')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_05_EXT').AsString:= '';
        end;

    if Img6.Picture.Graphic <> nil
      then
        begin
          Img6.Picture.SaveToFile(FPath + '\UrScIrTmpImg_06.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_06')).LoadFromFile(FPath + '\UrScIrTmpImg_06.tmp');
          FN('TMP_URSCOPIAIRRIGFOTOS_06_EXT').AsString:= TmpFExt_06;
        end {if Img6.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_URSCOPIAIRRIGFOTOS_06')).Clear;
          FN('TMP_URSCOPIAIRRIGFOTOS_06_EXT').AsString:= '';
        end;

    if DSetTmpBlobVisit.Modified then Post;
  end;{with DMFIB, DSetTmpBlobVisit do}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.ActShowFullImageExecute(Sender: TObject);
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

procedure TFrmImgUrScopiaIrrig.AppEventsImgUrScopiaIrrigShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"

    //����������� "������" ����������� ������ ����������/�������� ��������
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftAdd.Enabled then SpBtnUpLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftDel.Enabled then SpBtnUpLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnLeftAdd.Enabled then SpBtnDnLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnLeftDel.Enabled then SpBtnDnLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpMedAdd.Enabled then SpBtnUpMedAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpMedDel.Enabled then SpBtnUpMedDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('5')) < 0) and SpBtnDnMedAdd.Enabled then SpBtnDnMedAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('5')) < 0) and SpBtnDnMedDel.Enabled then SpBtnDnMedDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnUpRigthAdd.Enabled then SpBtnUpRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnUpRigthDel.Enabled then SpBtnUpRigthDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('6')) < 0) and SpBtnDnRigthAdd.Enabled then SpBtnDnRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('6')) < 0) and SpBtnDnRigthDel.Enabled then SpBtnDnRigthDelClick(Self);
  end;
AppEventsImgUrScopiaIrrig.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;

//----------------------------------------------------------------------------

(******************************************************************************)
(***           ���� ��������� ������ ����������-�������� ��������           ***)
(******************************************************************************)

//----------------------------------------------------------------------------
//������ �������� �� �����������
procedure TFrmImgUrScopiaIrrig.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//��������� � �������� �����������
procedure TFrmImgUrScopiaIrrig.LoadPictToImgbox(Sender: TImage; var FExt: String);
begin
FExt:= '';
if OpenPictDialog.Execute then
  begin
    //�������� ������� ����� � ������ (��� ������� ������ ��������� �������������)
//    if GetFileSize(OpenPictDialog.FileName) > 1000000 then
//      begin
//        Application.MessageBox('������ ������������ � �� ����� �� ������ ��������� 1 Mb!'
//                           + #13#10 + '���������� ��������� ��� �������� � �����-������ '
//                           + '����������� ���������.', '������ ������� � ������',
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

procedure TFrmImgUrScopiaIrrig.SpBtnUpLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img1, TmpFExt_01);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnUpLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img1);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnUpRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img2, TmpFExt_02);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnUpRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img2);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img3, TmpFExt_03);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img3);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img4, TmpFExt_04);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img4);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnUpMedAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img5, TmpFExt_05);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnUpMedDelClick(Sender: TObject);
begin
ClearPictImgbox(Img5);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnMedAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img6, TmpFExt_06);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.SpBtnDnMedDelClick(Sender: TObject);
begin
ClearPictImgbox(Img6);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------------

procedure TFrmImgUrScopiaIrrig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmImgUrScopiaIrrig.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
