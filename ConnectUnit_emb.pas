unit ConnectUnit_emb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NiceSettings, AppEvnts;

type
  TFrmConnect_emd = class(TForm)
    GrpBx1: TGroupBox;
    BtnHlp: TButton;
    BtnOK: TButton;
    BtnCancel: TButton;
    LblNameDB: TLabel;
    EdtFDBName: TEdit;
    SpBtnOpenFDB: TSpeedButton;
    lbl1: TLabel;
    EdtLib: TEdit;
    SpBtnOpnLib: TSpeedButton;
    NiceSetFrmConnEmd: TNiceSettings;
    AppEventsFrmConnEmb: TApplicationEvents;
    LblDLLWarning: TLabel;
    OpnDlgGdsDll: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtFDBNameChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtnOpenFDBClick(Sender: TObject);
    procedure EdtFDBNameDblClick(Sender: TObject);
    procedure AppEventsFrmConnEmbShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure SpBtnOpnLibClick(Sender: TObject);
  private
    { Private declarations }
    function ChkEmbedLibrary(out DLL_name: string): Integer;
  public
    { Public declarations }
  end;

var
  FrmConnect_emd: TFrmConnect_emd;

implementation

uses
  VarAndrUnit, MainAndrUnit;

var InitFrmHeight,//�������������� ������ �����
    IntHint: Integer;//��������� ���� � �������� "���������" ���� �����
    GDS_dll_name: string;//��� ���������� embedded-����������

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.AppEventsFrmConnEmbShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
//��� ������� �� <Enter>
if (GetKeyState(VK_RETURN) < 0) then
  begin
    if EdtFDBName.Focused //���� ����� �� ������ ����� ����� ��
      then
        SpBtnOpenFDBClick(Self)//��������� ������
      else
        BtnOKClick(Self);//��������� ����� ������� <��>
  end;

if (GetKeyState(VK_ESCAPE) < 0)
  then
    BtnCancelClick(Self);//�� ������ <Esc> "����" �� ������ "Cancel"

AppEventsFrmConnEmb.CancelDispatch;//������� ������� ������ �� ������ ����
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.BtnCancelClick(Sender: TObject);
begin
ModalResult:= mrCancel;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxConnect);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.BtnOKClick(Sender: TObject);
begin
UsrLgn:='SYSDBA';
UsrPswd:= '';
UsrRoleName:= 'ADMINISTR';
FB_Client_Path:= ExtractFileDir(Application.ExeName) + '\' + Trim(EdtLib.Text);
DBConnectString:= Trim(EdtFDBName.Text);

ModalResult:= mrOk;
end;

//----------------------------------------------------------------------------

function TFrmConnect_emd.ChkEmbedLibrary(out DLL_name: string): Integer;
begin
//���� � �������� � ����������� ��� �� ������ �� ������������� ���� ������
  if not (FileExists(ExtractFileDir(Application.ExeName) + '\gds32.dll')
      or FileExists(ExtractFileDir(Application.ExeName) + '\fbembed.dll')
        or FileExists(ExtractFileDir(Application.ExeName) + '\fbclient.dll'))
  then
    Result:= 0
  else
    begin
      Result:= 1;
      if FileExists(ExtractFileDir(Application.ExeName) + '\gds32.dll')
        then
          DLL_name:= 'gds32.dll'
        else
          if FileExists(ExtractFileDir(Application.ExeName) + '\fbembed.dll')
            then
              DLL_name:= 'fbembed.dll'
            else
              DLL_name:= 'fbclient.dll';
    end;                                
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.EdtFDBNameChange(Sender: TObject);
begin
if Length(Trim(EdtFDBName.Text)) = 0
  then
    EdtFDBName.Hint:= '�������� ���� ������.' + #13#10 + #13#10
                + '������� ���� � ����� ���� ������, ����� �� ������ �� ������� ������ ' + #13#10
                + '��� ������ ������� ����� ����� �� ����� ����. �� ������ ������ ���� ' + #13#10
                + '� ���� ������ � �������, ���� ����� �������, ��� �� ��������� ��� �����.'
  else
    EdtFDBName.Hint:= Trim(EdtFDBName.Text);
end;

procedure TFrmConnect_emd.EdtFDBNameDblClick(Sender: TObject);
begin
SpBtnOpenFDBClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmConnEmd.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormCreate(Sender: TObject);
begin
InitFrmHeight:= Self.Height;//���������� ���������� ����� 
NiceSetFrmConnEmd.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmConnEmd.LoadSettings;

Caption:= '  ����������� � ���� ������ FireBird';
EdtFDBName.Clear;

IntHint:= Application.HintHidePause;
Application.HintHidePause:= 50000;//����������� ����� ������ �����

//����������� ��������� ���������� �� ����������, ��� �������� ��� ������ ������
LoadKeyboardLayout('00000409',KLF_ACTIVATE);//��� �����������
//    LoadKeyboardLayout('00000419',KLF_ACTIVATE); //��� ��������

LblDLLWarning.Caption:= '     �� ������ ���� ���������� ����������� ������� Firebird (��� ����� ���� ����' + #13#10
         + 'gds32.dll, ���� fbembed.dll, ���� fbclient.dll), ������� ��� ���������� ������' + #13#10
         + '����������� ������ ���������� � �������� � ����������� ����������.' + #13#10
         + '     ���������� ��� �� ������������ � ����� � ���� ���������� � ������ ������������' + #13#10 + '��� ����.';

LblDLLWarning.Top:= 120;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormDestroy(Sender: TObject);
begin
Application.HintHidePause:= IntHint;//���������� ���������� ����� ������ �����
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormShow(Sender: TObject);
begin
if ChkEmbedLibrary(GDS_dll_name) = 1
  then
    begin
     Self.Height:= InitFrmHeight;
     EdtLib.Text:= GDS_dll_name;
    end
  else
    begin
      Self.Height:= InitFrmHeight + 68;
      EdtLib.Clear;
//      if EdtLib.CanFocus then EdtLib.SetFocus;
    end;


LblDLLWarning.Visible:= (ChkEmbedLibrary(GDS_dll_name) = 0);
BtnOK.Enabled:= not (ChkEmbedLibrary(GDS_dll_name) = 0);
EdtFDBName.Enabled:= not (ChkEmbedLibrary(GDS_dll_name) = 0);
LblNameDB.Enabled:= not (ChkEmbedLibrary(GDS_dll_name) = 0);
SpBtnOpenFDB.Enabled:= not (ChkEmbedLibrary(GDS_dll_name) = 0);
//EdtLib.Enabled:= (ChkEmbedLibrary(GDS_dll_name) = 0);
//SpBtnOpnLib.Enabled:= (ChkEmbedLibrary(GDS_dll_name) = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.SpBtnOpenFDBClick(Sender: TObject);
begin
if FrmMainProg.OpenDialogFDB.Execute then
  begin
    EdtFDBName.Text:= FrmMainProg.OpenDialogFDB.FileName;

    if Length(Trim(EdtFDBName.Text)) > 0
      then
        EdtFDBName.Hint:= FrmMainProg.OpenDialogFDB.FileName
      else
        EdtFDBName.Hint:= '�������� ���� ������.' + #13#10 + #13#10
                  + '������� ���� � ����� ���� ������, ����� �� ������ �� ������� ������ ' + #13#10
                  + '��� ������ ������� ����� ����� �� ����� ����. �� ������ ������ ���� ' + #13#10
                  + '� ���� ������ � �������, ���� ����� �������, ��� �� ��������� ��� �����.';
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.SpBtnOpnLibClick(Sender: TObject);
begin
//if OpnDlgGdsDll.Execute then
//  begin
//    EdtLib.Text:= ExtractFileName(OpnDlgGdsDll.FileName);
//
//    if Length(Trim(EdtLib.Text)) > 0
//      then
//        EdtLib.Hint:= OpnDlgGdsDll.FileName
//      else
//        EdtLib.Hint:= '�������� ���� ����������, ���������������' + #13#10
//                    + '����� ������ ������� (��� ������� ����������' + #13#10
//                    + '������ ������� Firebird �� ����� PC)';
//  end;
//
//Self.FormShow(Sender);
end;

//----------------------------------------------------------------------------

end.
