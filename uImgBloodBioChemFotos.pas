unit uImgBloodBioChemFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtnrs, DB, FIBDataSet, Buttons, ExtDlgs,
  NiceSettings, AppEvnts;

type
  TFrmImgBloodBioChemFotos = class(TForm)
    PnlCap: TPanel;
    LblName: TLabel;
    LblCaption: TLabel;
    PnlBtnBar: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    PnlImg: TPanel;
    SpBtnAdd: TSpeedButton;
    SpBtnDel: TSpeedButton;
    AppEventsImgBloodBioChemFotos: TApplicationEvents;
    NiceSetFrmImgBloodBioChemFotos: TNiceSettings;
    OpenPictDialog: TOpenPictureDialog;
    ScrollBox1: TScrollBox;
    ImgCont: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AppEventsImgBloodBioChemFotosShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure SpBtnAddClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnDelClick(Sender: TObject);
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
  FrmImgBloodBioChemFotos: TFrmImgBloodBioChemFotos;

implementation

uses
    DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit;

var TmpFExt: String;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.AppEventsImgBloodBioChemFotosShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //��������� �� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then  BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);

    //����������� "������" ����������� ������ ����������/�������� ��������
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnAdd.Enabled then SpBtnAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnDel.Enabled then SpBtnDelClick(Self);
  end;
AppEventsImgBloodBioChemFotos.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if ImgCont.Picture.Graphic <> nil
      then
        begin
          ImgCont.Picture.SaveToFile(FPath + '\BloodBioTmpImg.tmp');//��������� �� ��������� ����
          TBlobField(FN('TMP_BLOODBIOFOTOS')).LoadFromFile(FPath + '\BloodBioTmpImg.tmp');
          FN('TMP_BLOODBIOFOTOS_EXT').AsString:= TmpFExt;
        end {if ImgCont.Picture.Graphic <> nil ..then}
      else //����� ����� ������, ������� "�������" ����
        begin
          TBlobField(FN('TMP_BLOODBIOFOTOS')).Clear;
          FN('TMP_BLOODBIOFOTOS_EXT').AsString:= '';
        end;
    if DSetTmpBlobVisit.Modified then Post;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmImgBloodBioChemFotos.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.FormCreate(Sender: TObject);
begin
NiceSetFrmImgBloodBioChemFotos.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmImgBloodBioChemFotos.LoadSettings;
DoubleBuffered:= True;

ScrollBox1.BorderStyle:= bsNone;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '����������� ������ �������� ����� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '����������� ������ �������� ����� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

TmpFExt:= DMFIB.DSetTmpBlobVisit.FN('TMP_BLOODBIOFOTOS_EXT').AsString;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.FormResize(Sender: TObject);
begin
LblName.Left:= (PnlCap.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//����������� � ���������� ���������
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - ���� ���������� �������������� ������� ����� ��������';

with DMFIB, DSetTmpBlobVisit do
  begin
  //���� ���� �� ������, �� �������� ��������
  if not FN('TMP_BLOODBIOFOTOS').IsNull then
    begin
      TmpFPath:= FPath + '\BloodBioTmpImg' + FN('TMP_BLOODBIOFOTOS_EXT').AsString;
      TBlobField(FN('TMP_BLOODBIOFOTOS')).SaveToFile(TmpFPath);
        try
          ImgCont.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('�� ������� ��������� �������� �� ���� ������!',
                                                              '������ ������� � ������');
        end;
    end;
  end;

FormResize(Sender);

SpBtnDel.Enabled:= (ImgCont.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.LoadPictToImgbox(Sender: TImage; var FExt: String);
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

procedure TFrmImgBloodBioChemFotos.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnDel.Enabled:= (ImgCont.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.SpBtnAddClick(Sender: TObject);
begin
LoadPictToImgbox(ImgCont, TmpFExt);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgBloodBioChemFotos.SpBtnDelClick(Sender: TObject);
begin
ClearPictImgbox(ImgCont);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

end.
