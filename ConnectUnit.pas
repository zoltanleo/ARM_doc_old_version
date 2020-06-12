unit ConnectUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ImgList, ExtCtrls, NiceSettings, AppEvnts, StrUtils
  , VarAndrUnit
  , uSplash
  ;

type
  TThreadConnect = class(TThread)
    private
      FMsgParam: Word;
      FMsgStrValue: string;
      FMsgIntValue: Integer;
      procedure MyMsg;
      procedure CloseSplashMsg;
    protected
      procedure Execute;override;
    public
      constructor Create(CreateSuspended: Boolean);
  end;

  TFrmConnect = class(TForm)
    {$region 'component''s block'}
    BtnOK: TButton;
    BtnCancel: TButton;
    NiceSetFrmConnect: TNiceSettings;
    GroupBox1: TGroupBox;
    BtnHlp: TButton;
    pnlBaseGeneral: TPanel;
    pnlBaseTop: TPanel;
    lblServerArchitecture: TLabel;
    CbBoxConnMode: TComboBox;
  	OpnDlgClientDLL: TOpenDialog;
    pnlMaxSettings: TPanel;
    LblPortNumb: TLabel;
    Label8: TLabel;
    SpBtnHlpConctAccess: TSpeedButton;
    Label2: TLabel;
    Label5: TLabel;
    SpBtnHlpServName: TSpeedButton;
    LblVarServNm: TLabel;
    LblVarAlias: TLabel;
    LblNameDB: TLabel;
    LblAliasDB: TLabel;
    SpBtnHlpAlias: TSpeedButton;
    SpBtnOpenFDB: TSpeedButton;
    Label3: TLabel;
    SpBtnAddAlias: TSpeedButton;
    SpBtnDelAlias: TSpeedButton;
    Label4: TLabel;
    ChkBoxPortNumb: TCheckBox;
    EdtPortNumb: TEdit;
    CbBoxConctAccess: TComboBox;
    CbBoxConnectType: TComboBox;
    ChkBoxAutoServName: TCheckBox;
    CbBoxServName: TComboBox;
    EdtServName: TEdit;
    EdtFDBName: TEdit;
    CbBoxAlias: TComboBox;
    CbBoxRole: TComboBox;
    EdtUsrLogin: TEdit;
    ChkBoxPswd: TCheckBox;
    MskEdt: TMaskEdit;
    pnlClientLib: TPanel;
    Lbllbl1: TLabel;
    LblVarGDSPath: TLabel;
    SpBtnOpnLib: TSpeedButton;
    EdtLib: TEdit;
    pnlEmbeddedFileName: TPanel;
    edtEmbedDBFileName: TEdit;
    lblEmbedDBFileName: TLabel;
    lvlVarEmbedDBFileName: TLabel;
    sbtnOpenEmbedDB: TSpeedButton;
    {$endregion component's block}
    {$region  'standart procedure''s block'}
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure ChkBoxPswdClick(Sender: TObject);
    procedure CbBoxConctAccessChange(Sender: TObject);
    procedure EdtUsrLoginChange(Sender: TObject);
    procedure EdtUsrLoginKeyPress(Sender: TObject; var Key: Char);
    procedure MskEdtClick(Sender: TObject);
    procedure MskEdtKeyPress(Sender: TObject; var Key: Char);
    procedure SpBtnOpenFDBClick(Sender: TObject);
    procedure EdtFDBNameDblClick(Sender: TObject);
    procedure CbBoxRoleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbBoxConnectTypeChange(Sender: TObject);
    procedure SpBtnHlpServNameClick(Sender: TObject);
    procedure SpBtnHlpConctAccessClick(Sender: TObject);
    procedure SpBtnHlpAliasClick(Sender: TObject);
    procedure SpBtnAddAliasClick(Sender: TObject);
    procedure SpBtnDelAliasClick(Sender: TObject);
    procedure EdtFDBNameChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
    procedure EdtPortNumbKeyPress(Sender: TObject; var Key: Char);
    procedure ChkBoxPortNumbClick(Sender: TObject);
    procedure EdtPortNumbChange(Sender: TObject);
    procedure CbBoxAliasChange(Sender: TObject);
    procedure CbBoxServNameChange(Sender: TObject);
    procedure CbBoxConnModeChange(Sender: TObject);
    procedure ChkBoxAutoServNameClick(Sender: TObject);
    procedure SpBtnOpnLibClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLibKeyPress(Sender: TObject; var Key: Char);
    {$endregion standart procedure's block}
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnCancelClick(Sender: TObject);
    procedure EdtLibDblClick(Sender: TObject);
    procedure sbtnOpenEmbedDBClick(Sender: TObject);
    procedure edtEmbedDBFileNameDblClick(Sender: TObject);
  private
    { Private declarations }
    FThreadConnect: TThreadConnect;
    function CyrChrPresents(const AText: string): Integer;//��������� ��������� ������� ������������� �������� � ������ AText
    function IsIP_Address(const AText: string): Integer;//��������� ���������, �������� �� ������ ������ ����� � �����
    procedure ServListParamFill(sender: TObject);
    procedure AliasListParamFill(sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmConnect: TFrmConnect;
//  IntHint: Integer;

implementation

uses MainAndrUnit, DMFIBUnit, fib;

var IntHint,//��������� ���� � �������� "���������" ���� �����
    ServerSendTag, //�������� ���� ������� ��� ������ ����� ����� CbBoxServerName (�������� 1101,1105)
    AliasSendTag: Integer; //�������� ���� ������� ��� ������ ����� ����� CbBoxAlias (�������� 1110,1115)
    FName, //��� �������� �����
    AliasNamePathString: string;//����� �� (�������� ������ ���� � ����� ��)
//    WinPath: string;//���� � ����� Windows

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmConnect.FormCreate(Sender: TObject);
begin
(************************************************************************************)
(*** LblVarServNm - ��� "������", ����� ������� ��������� ���������� � ���������� ***)
(*** NiceSettings, ������ ������� �� ����� �� �����, �� �������                  ***)
(************************************************************************************)

NiceSetFrmConnect.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmConnect.LoadSettings;

IsFinishedThread:= False;
Self.ModalResult:= mrNone;

Caption:= '  ����������� � ���� ������ FireBird';
FName:= 'hosts';

//����������� ��������� ���������� �� ����������, ��� �������� ��� ������ ������
LoadKeyboardLayout('00000409',KLF_ACTIVATE);//��� �����������
//    LoadKeyboardLayout('00000419',KLF_ACTIVATE); //��� ��������

CbBoxAlias.Left:= EdtFDBName.Left;
CbBoxAlias.Top:= EdtFDBName.Top;

SpBtnAddAlias.Left:= SpBtnOpenFDB.Left;
SpBtnAddAlias.Top:= SpBtnOpenFDB.Top;

SpBtnDelAlias.Left:= SpBtnAddAlias.Left + 20;
SpBtnDelAlias.Top:= SpBtnAddAlias.Top;

SpBtnHlpAlias.Left:= SpBtnOpenFDB.Left;
SpBtnHlpAlias.Top:= SpBtnOpenFDB.Top;

LblAliasDB.Top:= LblNameDB.Top;
LblAliasDB.Left:= LblNameDB.Left + LblNameDB.Width - LblAliasDB.Width;

EdtServName.Left:= CbBoxServName.Left;
EdtServName.Top:= CbBoxServName.Top;

//��������� � ���������� ��������������� ��������� ���� �������� ������
CbBoxConnModeChange(Sender);

(**********************************)
if ChkBoxPswd.Checked
  then MskEdt.Text:= '������� ������'
  else MskEdt.Clear;
(*************************************)

IntHint:= Application.HintHidePause;
Application.HintHidePause:= 50000;//����������� ����� ������ �����

EdtFDBName.Hint:= '�������� ���� ������.' + #13#10 + #13#10
                + '������� ���� � ����� ���� ������, ����� �� ������ �� ������� ������ ' + #13#10
                + '��� ������ ������� ����� ����� �� ����� ����. �� ������ ������ ���� ' + #13#10
                + '� ���� ������ � �������, ���� ����� �������, ��� �� ��������� ��� �����.';

EdtLib.Hint:= '�������� ���� ����������,���������������' + #13#10
            + '����� ������ ������� (��� ������� ����������' + #13#10
            + '������ ������� Firebird �� ����� PC)';

pnlBaseGeneral.BevelOuter:= bvNone;
pnlBaseTop.BevelOuter:= bvNone;
pnlClientLib.BevelOuter:= bvNone;
pnlEmbeddedFileName.BevelOuter:= bvNone;
pnlMaxSettings.BevelOuter:= bvNone;

//�������������� ���������� �����
SpBtnCapt:= '';
UsrLgn:= '';
UsrPswd:= '';
UsrRoleName:= '';
UsrPortNumb:= 3050;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormDestroy(Sender: TObject);
begin
Application.HintHidePause:= IntHint;//���������� ���������� ����� ������ �����
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormKeyPress(Sender: TObject; var Key: Char);
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
  then BtnCancelClick(Sender);//�� ������ <Esc> "����" �� ������ "Cancel"
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormShow(Sender: TObject);
begin
//��� ��������� ���������� � ��� ����

//  ServListParamFill(Self);//��������� ������ �������� � �������
//  CbBoxConctAccessChange(Sender);//��������� ������������ ������� ������������ �������
//  ChkBoxPswdClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.BtnOKClick(Sender: TObject);
var TmpPathDB,TmpServIP_adress: string;
begin

  case CbBoxConnMode.ItemIndex of
    0: //full server
      begin
        {$region 'validation code'}

        if ChkBoxPortNumb.Checked //���� ����� ������� "����������� ����"
          then
            UsrPortNumb:= 3050 //����������� "�����������" ��������
          else //����� �������� ��������� ��������
            begin
              if Length(Trim(EdtPortNumb.Text)) > 0 //���� ��� ���� ��������
                then
                  UsrPortNumb:= StrToInt(Trim(EdtPortNumb.Text)) //�������� ��
                else //����� ����������, ������� ���� � "��������� ������" � �������� � ������ ����
                  begin
                    Application.MessageBox('���������� ������� ����� ����� ��� ������ �������!',
                                                        '������������ ������', MB_ICONINFORMATION);
                    CbBoxConnMode.ItemIndex:= 2;
                    CbBoxConnModeChange(Sender);
                    if EdtPortNumb.CanFocus then EdtPortNumb.SetFocus;
                    Exit;
                  end;
            end;

        if ChkBoxAutoServName.Checked //���� "�������������" ��������
          then // ������ ���� ������
            begin
              //��������� ������� ���� ������ ������� � ���
              if Pos('� ������� �� �������',Trim(CbBoxServName.Text)) > 0 then
                begin
                  Application.MessageBox('� ����� ������������ ������� �� ��������� �� ���� ������, ����� ������� '
                  + '����� ���� �� �������������� � ���� ������! ���������� � ���������� �������������� '
                  + '��� ���������� ��������������� ������ �������, ����� ���������� ������ �������� ��������������.', '������������ ������',
                  MB_ICONEXCLAMATION);

                  CbBoxConnMode.ItemIndex:= 2;
                  CbBoxConnModeChange(Sender);

                  if CbBoxServName.CanFocus then CbBoxServName.SetFocus;
                  Exit;
                end;

              //������ ��������, ����� ��������� ������ �� ���������� ����� ���������
              if (AnsiLowerCase(LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1)) = 'localhost')
                and (CbBoxConctAccess.ItemIndex = 0) then
                  begin
                    if CbBoxServName.Items.Count < 2 //���� ��� ������������ ������ � �����
                      then
                        begin
                          ServerSendTag:= 1102;
                          Application.MessageBox('��������� ������ �� ����� ������������ � ���� ������ ����� ����������� ������ '
                            + '"localhost" ! ���������� � ���������� �������������� ��� ���������� ��������������� ������ �������, '
                            + '����� ���������� ������ �������� ��������������.', '������������ ������', MB_ICONEXCLAMATION);

                          SpBtnHlpServName.Visible:= True;
                        end
                      else //�����, ����� � ����� ���������, �� ������� - localhost
                        begin
                          Application.MessageBox('��������� ������ �� ����� ������������ � ���� ������ ����� ����������� ������ '
                            + '"localhost" ! �������� ��� �������� ������ ������.', '������������ ������', MB_ICONINFORMATION);
                        end;

                    CbBoxConnMode.ItemIndex:= 2;
                    CbBoxConnModeChange(Sender);

                    if CbBoxServName.CanFocus then CbBoxServName.SetFocus;
                    Exit;
                  end;

              //���� ������ ��� ��������, �� �������� ���/����� ������� �� �����
              TmpServIP_adress:= LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1);
            end
          else // ������ ������ ������
            begin
              if Length(Trim(EdtServName.Text)) = 0 then
                begin
                  Application.MessageBox('���������� ������� ��� ��� IP-����� ������� !', '������������ ������', MB_ICONINFORMATION);

                  CbBoxConnMode.ItemIndex:= 2;
                  CbBoxConnModeChange(Sender);

                  if EdtServName.CanFocus then EdtServName.SetFocus;
                  Exit;
                end;

              //���� ������ ��� ��������, �� �������� ���/����� �������, ���������� �������
              TmpServIP_adress:= Trim(EdtServName.Text);
            end;


        //��������� ������� ������ ��� ����������� ����������� �����
        if CbBoxAlias.Visible
          then //���� ���� � ������� �����
            begin
              //��������� ������� ������������� ���� � ������, � ����� ������ �������� ������
              if CyrChrPresents(CbBoxAlias.Text) < 0 //���� ������� ������ � ����� �����
                then
                  begin
                    Application.MessageBox('�� �� ������� ��������� ���� ������ !', '������������ ������', MB_ICONINFORMATION);
                    if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
                    Exit;
                  end
                else
                  begin
                    if CyrChrPresents(CbBoxAlias.Text) > 0 //���� � ������ ������� ��������� ���-���� �����������
                      then
                        begin
                          Application.MessageBox('��������� ���� ������ ������ �������� �� ���� ������ ���������� �������� !',
                                                                                       '������������ ������', MB_ICONINFORMATION);
                          if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
                          Exit;
                        end
                      else //����� ��� ������� �� ��������
                        begin
                          //�����������, ����� ����� ��� ������������ ������ � ������
                          if Pos(' ',Trim(CbBoxAlias.Text)) > 0
                            then
                              TmpPathDB:= LeftStr(Trim(CbBoxAlias.Text),Pos(' ',Trim(CbBoxAlias.Text)) - 1)
                            else
                              TmpPathDB:= Trim(CbBoxAlias.Text);
                        end;
                  end;
            end
          else //����� ����� ���� � ������ � ����� ��
            begin
              if (CyrChrPresents(EdtFDBName.Text) = - 1)
                then
                  begin
                    Application.MessageBox('�� �� ������� ���� � ����� ���� ������ !', '������������ ������', MB_ICONINFORMATION);
                    if EdtFDBName.CanFocus then EdtFDBName.SetFocus;
                    Exit;
                  end
                else
                  if (CyrChrPresents(EdtFDBName.Text) = 1) then
                    begin
                      Application.MessageBox('� ������ ����� ��� ����� ���� ������ ������� ��������� ����������� !',
                                                                                      '������������ ������', MB_ICONINFORMATION);
                      if EdtFDBName.CanFocus then EdtFDBName.SetFocus;
                      Exit;
                    end;

              //���� ������ ��� ��������
              TmpPathDB:= Trim(EdtFDBName.Text);
            end;

        if Trim(EdtUsrLogin.Text) = '' then
          FrmMainProg.CheckEdtEmpty(EdtUsrLogin, '�� �� ������� ���� �����!');//�����

        if (Trim(MskEdt.Text) = '') or (Trim(MskEdt.Text) = '������� ������') then
          FrmMainProg.CheckMaskEdtEmpty(MskEdt, '�� ������ ������ ������!');

        //������ ����� ���������� ��� TCP/IP
        //     ���_�������/�����_�����:����:\����_��������_�������\����_����_������
        // ���
        //     ���_�������/�����_�����:�����_��
        //���� ���� 3050, �� ��� ����� �� ���������

        //��������� ������ ��������
        //DBConnectString:= LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1) + ':' + TmpPathDB;

        if UsrPortNumb = 3050
          then
            DBConnectString:= TmpServIP_adress + ':' + TmpPathDB
          else
            DBConnectString:= TmpServIP_adress + '/' + IntToStr(UsrPortNumb) + ':' + TmpPathDB;

        UsrLgn:= Trim(EdtUsrLogin.Text);//�����
        UsrPswd:= Trim(MskEdt.Text);//������
        UsrRoleNumb:= CbBoxRole.ItemIndex;//�������� ������������� ����

        case UsrRoleNumb of //�������� ����
          0: UsrRoleName:= 'ADMINISTR';
          1: UsrRoleName:= 'REGISTRATOR';
          2: UsrRoleName:= 'UROLOG';
          3: UsrRoleName:= 'GINEKOLOG';
          4: UsrRoleName:= 'DERMATOLOG';
        else
          UsrRoleName:= '';//���� ������������ SYSDBA
        end;
        {$endregion}
      end;
    1: //embedded server
      begin
        DBConnectString:= Trim(edtEmbedDBFileName.Text);
        UsrLgn:= 'sysdba';//�����
        UsrPswd:= '1';//������
        UsrRoleName:= '';//�������� ������������� ����
      end;

  end;


//������� ExtractFileName ��� ������-�� �������� �����������, ������� ������ ������ ����� ������� ��������
//if (InvertStr(LeftStr(InvertStr(Trim(LblVarGDSPath.Caption)),Pos('\',InvertStr(Trim(LblVarGDSPath.Caption))) - 1)) = 'gds32.dll')
//  or (InvertStr(LeftStr(InvertStr(Trim(LblVarGDSPath.Caption)),Pos('\',InvertStr(Trim(LblVarGDSPath.Caption))) - 1)) = 'fbclient.dll')

if (ExtractFileName(EdtLib.Text) = LowerCase('gds32.dll'))
    or (ExtractFileName(EdtLib.Text) = LowerCase('fbclient.dll'))
      or ((ExtractFileName(EdtLib.Text) = LowerCase('fbembed.dll')))
  then
    FB_Client_Path:= Trim(LblVarGDSPath.Caption)
  else
    begin
      EdtLib.Font.Color:= clRed;
      EdtLib.Text:= '������� ���������� ���������� ������� ...';
      if EdtLib.CanFocus then EdtLib.SetFocus;
      EdtLib.SelLength:=0;
      EdtLib.SelStart:= 0;
      Exit;
    end;





  with DMFIB.Database do
  begin
    SQLDialect:= 3;
    ConnectParams.CharSet:= 'WIN1251';
    LibraryName:= FB_Client_Path;
    DBName:= Trim(DBConnectString);
    ConnectParams.UserName:= Trim(UsrLgn);
    ConnectParams.Password:= Trim(UsrPswd);
    ConnectParams.RoleName:= Trim(UsrRoleName);
  end;

  FrmSenderModalResult:= mrNone;

  FThreadConnect:= TThreadConnect.Create(True);
  Self.Hide;//������� ����� �� ����� ������ ������
  try
    frmSplash:= TfrmSplash.Create(Self);
    if FThreadConnect.Suspended then FThreadConnect.Resume;
    try
      frmSplash.ShowModal;
    finally
      FreeAndNil(frmSplash);
    end;
  finally
    FreeAndNil(FThreadConnect);
  end;

  if FrmSenderModalResult = mrNone
    then Self.Show//������� �����, ���� ���� ������ ��������
    else Self.ModalResult:= FrmSenderModalResult;
end;

//----------------------------------------------------------------------------
//���������� ���������� ����� � ��������
procedure TFrmConnect.AliasListParamFill(Sender: TObject);
var i, CbBoxCount, FileHandle: Integer;
    FnPath: string;
    BoolFlag: Boolean;//�����. ����, ������������, ������� �� ������� ���� ��� ���
    SL: TStringList;
begin
CbBoxCount:= 0;
CbBoxAlias.Clear;
FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\';
BoolFlag:= False;//�� ������� ���� �� ������
CbBoxAlias.Hint:= '������� ������ ������ ��� ��������� �������������� ����������';

SL:= TStringList.Create;

  try
    //���� ����������� ����-����� ��� �������� ����� � ��������
    if not DirectoryExists(FnPath)
      then //�������� ������� ��
        begin
          if ForceDirectories(FnPath) //���� ����� ��������� �������
            then //��������� ������� ��� ������������� ����� 'leybasoftdbalias.txt'
              begin
                //���� ��� �� ����������, �� �������� ��� �������
                if not FileExists(FnPath + 'leybasoftdbalias.txt') then
                  begin
                    FileHandle:= FileCreate(FnPath + 'leybasoftdbalias.txt');//�������� ����� ������������ �����

                    //���� ������� �� ���������� (���������� �������� -1),
                    if FileHandle < 0
                      then //���� �� ������
                        AliasSendTag:= 1110 //�������, ��� �� ��������� ����
                      else //���� ������� ������
                        begin
                          FileClose(FileHandle);//������� ���� ����, ����� ���������� ������ � ����

                          //���������� "�����" � �����
                          SL.Clear;
                          SL.Add('# ���� ���� �������� ������ (����������) ��� �������� � ������ ������ FireBird');
                          SL.Add('#');
                          SL.Add('# ������������ ���������� "���: ������� ����� �����" �� ������ leybasoft');
                          SL.Add('#');
                          SL.Add('# ����������, �� �������� ���� ����  � �� ������� ������ � ��� �������');
                          SL.Add('# ��� ������� �������������, ��� ��� ����� �������� �� �����������������');
                          SL.Add('# ���������');
                          SL.Add('#');
                          SL.Add('');

                          SL.SaveToFile(FnPath + 'leybasoftdbalias.txt');

                          CbBoxAlias.Hint:= '������ �� ��������� ����� ����������� ��. �� ������ '
                                          + #13#10 + '�������������� ������������� ���� ������.';
                          BoolFlag:= True;//���� ������� �������
                        end;
                  end;
              end
            else
              AliasSendTag:= 1016;//�������, ��� �� ��������� �����


          CbBoxAlias.Items.Add('������� ��������� ���� ������');
          CbBoxAlias.Font.Color:= clRed;
          CbBoxAlias.ItemIndex:= 0;
        end
      else //����� ����� 'Temp' ����������
        begin
          //��������� ������� ��� ������������� ����� 'leybasoftdbalias.txt'
          if not FileExists(FnPath + 'leybasoftdbalias.txt')
            then //���� ��� �� ����������, �� �������� ��� �������
              begin
                FileHandle:= FileCreate(FnPath + 'leybasoftdbalias.txt');//�������� ����� ������������ �����
                //���� ������� �� ���������� (���������� �������� -1),
                if FileHandle < 0
                  then //���� �� ������
                    AliasSendTag:= 1110 //�������, ��� �� ��������� ����
                  else //���� ������� ������
                    begin
                      FileClose(FileHandle);//������� ���� ����, ����� ���������� ������ � ����
                      BoolFlag:= True;//���� ������� �������
                      CbBoxAlias.Hint:= '������ �� ��������� ����� ����������� ��. �� ������ '
                                          + #13#10 + '�������������� ������������� ���� ������.';

                      //���������� "�����" � �����
                      SL.Clear;
                      SL.Add('# ���� ���� �������� ������ (����������) ��� �������� � ������ ������ FireBird');
                      SL.Add('#');
                      SL.Add('# ������������ ���������� "���: ������� ����� �����" �� ������ leybasoft');
                      SL.Add('#');
                      SL.Add('# ����������, �� �������� ���� ����  � �� ������� ������ � ��� �������');
                      SL.Add('# ��� ������� �������������, ��� ��� ����� �������� �� �����������������');
                      SL.Add('# ���������');
                      SL.Add('#');
                      SL.Add('');

                      SL.SaveToFile(FnPath + 'leybasoftdbalias.txt');
                    end;
                //�������� ����
                CbBoxAlias.Items.Add('������� ��������� ���� ������');
                CbBoxAlias.Font.Color:= clRed;
                CbBoxAlias.ItemIndex:= 0;
              end
            else //���� ���� ����������
              begin
                SL.LoadFromFile(FnPath + 'leybasoftdbalias.txt');
                for  i:= 0 to SL.Count - 1 do
                  begin
                    //���� ��������� ������ �� ������ � �� ���������� ������ '#' � ������ ����� ������ �� �������� �������
                    if ((Length(Trim(SL[i])) > 0) and (LeftStr(Trim(SL[i]),1) <> '#')
                                            and not ((LeftStr(Trim(SL[i]),1) >= #192) and (LeftStr(Trim(SL[i]),1) <= #255))) then
                      if Pos(' ',Trim(SL[i])) > 0 // ���� � ������ ��������� ���� (���� ������)
                        then //�� ������� ������ ������ ����� �� ������
                          CbBoxAlias.Items.Add(AnsiLowerCase(LeftStr(Trim(SL[i]),Pos(' ',Trim(SL[i])) - 1)))
                        else //������� ��� ������������ �����
                          CbBoxAlias.Items.Add(AnsiLowerCase(Trim(SL[i])));
                  end;

                CbBoxCount:= CbBoxAlias.Items.Count;//�������� ��������� ���-�� �����
                CbBoxAlias.Hint:= '������ �� ��������� ����� ����������� ��. �� ������ '
                                + #13#10 + '�������������� ������������� ���� ������.';
                BoolFlag:= True;//����������� �� ����� �������
                CbBoxAlias.Font.Color:= clWindowText;

                if CbBoxAlias.Items.Count = 0//���� ���� ������
                  then
                    begin
                      CbBoxAlias.Clear;
                      CbBoxAlias.Items.Add('������� ��������� ���� ������');
                      CbBoxAlias.Font.Color:= clRed;
                      CbBoxAlias.ItemIndex:= 0;
                    end
                  else
                    //����� �� �� ������: ������� ���������������� ��� �� �������� ������,
                    //������� �������������� � ��������� ���
                    begin
                      //���� ����� �������� � ������ ����
                      if CbBoxAlias.Items.IndexOf(LblVarAlias.Caption) <> -1
                        then
                          //��� � �������������
                          CbBoxAlias.ItemIndex:= CbBoxAlias.Items.IndexOf(LblVarAlias.Caption)
                        else //����� ������ ������ �� �� ������
                          CbBoxAlias.ItemIndex:= 0;
                    end;
              end;
        end;
  finally
    SL.Free;
  end;

//CbBoxAlias.ItemIndex:= 0;
LblAliasDB.Visible:= CbBoxAlias.Visible;
SpBtnAddAlias.Visible:= CbBoxAlias.Visible and BoolFlag;
SpBtnDelAlias.Visible:= CbBoxAlias.Visible and BoolFlag and (CbBoxCount > 0);
SpBtnHlpAlias.Visible:= CbBoxAlias.Visible and not BoolFlag;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.BtnCancelClick(Sender: TObject);
begin
  Self.ModalResult:= mrCancel;
end;

procedure TFrmConnect.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxConnect);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.ChkBoxAutoServNameClick(Sender: TObject);
begin
EdtServName.Visible:= not ChkBoxAutoServName.Checked;
CbBoxServName.Visible:= ChkBoxAutoServName.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.ChkBoxPortNumbClick(Sender: TObject);
begin
EdtPortNumb.Enabled:= not(ChkBoxPortNumb.Checked);

if ChkBoxPortNumb.Checked
  then
    EdtPortNumb.Text:= '3050'
  else
    EdtPortNumb.Text:= Trim(LblPortNumb.Caption);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.ChkBoxPswdClick(Sender: TObject);
begin
  if ChkBoxPswd.Checked
    then
      MskEdt.PasswordChar:= #0
    else
      begin
        MskEdt.Clear;
        MskEdt.PasswordChar:= '*';
      end;
end;

//----------------------------------------------------------------------------
// �������, ����������� ����������, ������� �� � ���������� ������ ������������� �������
// ���������� 3 ��������:
// - ������ ����� ��� �������� ������ ������� (-1)
// - � ������ �� ���������� �� ������ ������� ��������� (0)
// - � ������ ���������� ���� �� ���� ������������� ������ (1)

function TFrmConnect.CyrChrPresents(const AText: string): Integer;
var i, counter: Integer;
    TmpStr: string;
begin
Result:= -1;

if Length(Trim(AText)) = 0  then Exit;//������, ���� ������ ������

TmpStr:= '�����Ũ��������������������������'
       + '��������������������������������';

counter:= 0;//������� �������

for i:= 1 to Length(AText) do
  if (Pos(AText[i],TmpStr) > 0) then Inc(counter);

//==============================
(* ������ ������� *)
  //(ord('A') = 192, �.�. #192 ��������� ������ '�'; ord('�') = 255, �.�. #255 ���������
  //������ '�'), #168 ������ '�', # 184 ������ '�'
  //���� ��������� ������ ������ - �������������
//  if ((TmpStr[i] >= #192) and (TmpStr[i] <= #255)) or (TmpStr[i] = #168) or (TmpStr[i] = #184) then
//    counter:= counter + 1;//�� ���������� �������
//===============================

if counter = 0
  then
    Result:= 0 //�������� ��������� ���
  else
    Result:= 1;//������ ��������� ����
end;

procedure TFrmConnect.edtEmbedDBFileNameDblClick(Sender: TObject);
begin
  sbtnOpenEmbedDBClick(Sender);
end;

//----------------------------------------------------------------------------
//������� ��������� ���������, ����������� �� � ������
//������ ����� �� 0 �� 9 � ����� (1)
//������ ����� (0)
//��� ������ ������ ����� (-1)

function TFrmConnect.IsIP_Address(const AText: string): Integer;
var i, counter: Integer;
    TmpStr: string;
begin
Result:= -1;
if Length(Trim(AText)) = 0  then Exit;//������, ���� ������ ������

TmpStr:= '0123456789.';
counter:= 0;

for i:= 1 to Length(AText) do
  if Pos(AText[i],TmpStr) = 0 then inc(counter);

if counter > 0
  then
    Result:= 0
  else
    Result:= 1;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.CbBoxAliasChange(Sender: TObject);
begin
CbBoxAlias.Font.Color:= clWindowText;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.CbBoxConctAccessChange(Sender: TObject);
begin
if CbBoxConctAccess.ItemIndex = 0 //���� ������� ����� "��������� ������"
  then CbBoxConnectType.ItemIndex:= 0;//������������� ���������� ������� ������ �� ������


CbBoxConnectTypeChange(Sender);//��������� ��������� ��������� �����
end;

//------------------------------------------------------------------------

procedure TFrmConnect.CbBoxConnectTypeChange(Sender: TObject);
begin
if (CbBoxConctAccess.ItemIndex = 0) and (CbBoxConnectType.ItemIndex = 1 ) then
  begin
    Application.MessageBox('������ � ����� ���� ������ � ���������� ������� �������� ������ '
                         + '� �������������� ���������� !', '������������ ������', MB_ICONINFORMATION);
    CbBoxConnectType.ItemIndex:= 0;
  end;

//����������-�������� ��������������� ���� ����� � ����������� �� �������� ������

LblNameDB.Visible:= not (CbBoxConnectType.ItemIndex = 0);
EdtFDBName.Visible:= not (CbBoxConnectType.ItemIndex = 0);
SpBtnOpenFDB.Visible:= not (CbBoxConnectType.ItemIndex = 0);
CbBoxAlias.Visible:= (CbBoxConnectType.ItemIndex = 0);

AliasListParamFill(Self);//��������� ���� ������� �������, ������� ����� ���� ��������� �����
end;

//------------------------------------------------------------------------

procedure TFrmConnect.CbBoxConnModeChange(Sender: TObject);
begin
  case CbBoxConnMode.ItemIndex of
    0: //����������� ������
      begin
        pnlMaxSettings.Visible:= True;
        pnlEmbeddedFileName.Visible:= False;
        pnlBaseGeneral.Height:= pnlBaseTop.Height + pnlMaxSettings.Height + pnlClientLib.Height + 1;
      end;
    1: //embedded ������
      begin
        pnlMaxSettings.Visible:= False;
        pnlEmbeddedFileName.Visible:= True;
        pnlBaseGeneral.Height:= pnlBaseTop.Height + pnlEmbeddedFileName.Height + pnlClientLib.Height + 1;
      end;
  end;

Self.ClientHeight:= pnlBaseGeneral.Height + 73;


ChkBoxAutoServNameClick(Sender);
ChkBoxAutoServNameClick(Sender);
ChkBoxPortNumbClick(Sender);
CbBoxConctAccessChange(Sender);

ServListParamFill(Self);//��������� ������ �������� � �������
ChkBoxPswdClick(Sender);
end;

//------------------------------------------------------------------------

procedure TFrmConnect.EdtUsrLoginChange(Sender: TObject);
begin
CbBoxRole.Enabled:= not(UpperCase(EdtUsrLogin.Text) = 'SYSDBA');//��������� ���� � ������
Label3.Enabled:= not(UpperCase(EdtUsrLogin.Text) = 'SYSDBA');
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtUsrLoginKeyPress(Sender: TObject; var Key: Char);
begin
if (((Key < '0') or (Key > '9'))
      and (((Key < #65) or (Key > #90))
         and((Key < #97) or (Key > #122)))
            and (Key <> #8) and (Key <> #13)) and (not(GetKeyState(VK_CONTROL) < 0))
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� ����������� �������� � '
                          + '����� ����� �� 0 �� 9 !   ','���� ������������� ��������!',
                            MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.MskEdtClick(Sender: TObject);
begin
MskEdt.SelectAll;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.MskEdtKeyPress(Sender: TObject; var Key: Char);
begin
EdtUsrLoginKeyPress(Sender, Key);
end;

procedure TFrmConnect.sbtnOpenEmbedDBClick(Sender: TObject);
begin
if FrmMainProg.OpenDialogFDB.Execute then
  begin
    edtEmbedDBFileName.Text:= FrmMainProg.OpenDialogFDB.FileName;

    if Length(Trim(edtEmbedDBFileName.Text)) > 0
      then
        edtEmbedDBFileName.Hint:= FrmMainProg.OpenDialogFDB.FileName
      else
        edtEmbedDBFileName.Hint:= '�������� ���� ������.' + #13#10 + #13#10
                  + '������� ���� � ����� ���� ������, ����� �� ������ �� ������� ������ ' + #13#10
                  + '��� ������ ������� ����� ����� �� ����� ����. �� ������ ������ ���� ' + #13#10
                  + '� ���� ������ � �������, ���� ����� �������, ��� �� ��������� ��� �����.';
  end;
end;

//----------------------------------------------------------------------------
//���������� ���������� ����� � ���������
procedure TFrmConnect.ServListParamFill(sender: TObject);
var i: Integer;
//    WinDir: PChar;
    s,s_beg,s_end: string;
    SL,SL2: TStringList;
begin
//���� ���� hosts, ������� � ���� Win XP, Vista, Se7en ������ ���������� ���:
//<��� ���������� �����>:\WINDOWS\system32\drivers\etc\

CbBoxServName.Clear;

  SL:= TStringList.Create;
  SL2:= TStringList.Create;
  try
        if not FileExists(GetSystemPath(WinSys) + '\drivers\etc\' + FName) //���� ������� ���� �� ������
      then //������� ���������� ������� � ������ � ����������
        begin
          CbBoxServName.Items.Add('���� "' + FName + '" � ������� �� ������ !');
          CbBoxServName.ItemIndex:= 0;
          CbBoxServName.Font.Color:= clRed;

          SpBtnHlpServName.Visible:= True;
          CbBoxServName.Hint:= '������� ������ � ���������, ����������� ������';
          ServerSendTag:= 1101;//�������� "�� �����" ����� ���� "�������"
        end
      else //���� ���� HOSTS ������, �� ������� ��������� ���� � ��������� �� ����
        begin
          SpBtnHlpServName.Visible:= False;
          CbBoxServName.Font.Color:= clWindowText;

          //������ ���������� FName-����� � ���� ���������
          SL.LoadFromFile(GetSystemPath(WinSys) + '\drivers\etc\' + FName);
          //����������� � ������ ������
          for i:= 0 to SL.Count-1 do
            begin
              s:= Trim(SL.Strings[i]);
              if (LeftStr(s,1) <> '#') //���� �� ����� ������ �������� '#'
                and (s <> '') //���� ������ �� ������
                  and (pos(' ',s) > 0) //���� ���� ���� ���� ������, �.�. ������ ������� �� ������
                                       //��������� ���� ����� (����� ��� �������� �������)
                then
                  begin
                    s_beg:= Trim(LeftStr(s,Pos(' ',s) - 1));//����� � ��������� ����� ����� ������ �� �������
                    s_end:= Trim(RightStr(s,Length(s) - Length(s_beg)));//��������� "�������" ������ (������ �� �������)

                    //���� ������ �������� ������ - ��� �� "�����" ����������� ��� ��������������� ����� �������,
                    //�.�. �� �������� ������ �������� �������
                    if (LeftStr(s_end,1) <> '#')
                      then //�� ��� �� ����������� - ������ ������
                        begin
                          //���� ������ ������� ��� ������������, ������� ��� ������� �� �����������
                          if (Pos('#',s_end) > 0) then s_end:= Trim(LeftStr(s_end,Pos('#',s_end) - 1));

                          //���� ������ �������� ������� ���������, ������� � ����� ������� �� ���������,
                          //�� ��� ������ �� ���� �� ����������
                          if (CyrChrPresents(s_end) <> 0) then s_end:= '';
                        end
                      else //����� ��� ����� ����������� � ���� �� ������������
                        s_end:= '';

                   //�������� ���� � ������ � �������, ���� ��� ��������� ���������
                   if (IsIP_Address(s_beg) = 1) and (s_end <> '') then
                     begin
                       SL2.Add(AnsiLowerCase(Trim(s_end)));
                       CbBoxServName.Items.Add(AnsiLowerCase(Trim(s_end)) + ' (IP-�����: ' + s_beg + ')');
                     end;
                  end;
            end;

          //���� ���� �� ���� (��� ���� SL2 ���� ����� �������� ���� �� ����������)
          if SL2.Count > 0 //���� ���� ��� ������� ���� ������ � ������
            then //��������� ���� �����������
              begin
                //����������� ������ ���������� � ��������� ���� ��� �����
                s:= 'localhost - ������� ���������� � ����� ������, ������� �������� ������ �������������, '
                  + #13#10 + '� ������� ��� ��������� ��������� �� ����� ���������� � ������ ���� ������.';
                s_beg:= '';
                s_end:= '�� ������ ���������� ��������������' + #13#10 +'� ���� ������.'
                    +  #13#10 + #13#10 + '     ���� ������ �������� �������� ��� ��� ��������� ��������, ��� � ��� ������� �� �������. '
                    + #13#10 + '�������� ��������, ��� ���������� ������� ���� ������� ����� ����������� ���������.';

                CbBoxServName.Hint:= '';

                for i:= 0 to SL2.Count - 1 do
                  begin
                    if Trim(SL2.Strings[i]) <> '' then
                      begin
                        s_beg:= s_beg + '* ' + AnsiLowerCase(Trim(SL2.Strings[i])) + ', ' + #13#10;//���������� ������ �������� � ������ �������� � ������� �������
                      end
                  end;

                s_beg:= Trim(s_beg);//������ ������� ������� � ����� ������

                if SL2.IndexOf(AnsiLowerCase('localhost')) <> -1 //���� �� ����� �������� ���� ������ ���� 'localhost'
                  then
                    begin
                      if SL2.Count < 2 // ���� ��� ������������ ������
                        then
                          begin
                            //��������� ������ ������ �����
                            CbBoxServName.Hint:= s;
                            s_beg:= '';
                            s_end:= '';
                          end
                        else // ���� ����� localhost ��� ��� ������
                          begin
                            //������� �� ������ ������ �������� localhost
                            s_beg:= Trim(AnsiReplaceText(s_beg,'* localhost, ',''));

                            //������� ������� �� �����
                            s_beg:= LeftStr(s_beg,Length(s_beg) - 1);

                            CbBoxServName.Hint:= s + #13#10 + #13#10;//������� �������������� ������ ������

                            if (SL2.Count = 2) //���� ����� 2 (1 + localhost)
                              then
                                s_beg:= s_beg + ' - ������, ����� ������� '
                              else//����� �� 2 � ����� + (localhost)
                                s_beg:= s_beg + ' - ������ ��������, ����� ������� ';
                          end;
                    end
                  else //����� ������ 'localhost' � ������ ���
                    begin
                      s_beg:= LeftStr(Trim(s_beg),Length(Trim(s_beg)) - 1);// ������� ������� �� ����� ������

                      if SL2.Count = 1 //���� � ������ ���� ���� ������
                        then
                          s_beg:= s_beg + ' - ������, ����� ������� '
                        else //����� � ������ 2 � ����� ������������
                          s_beg:= s_beg + ' - ������ ��������, ����� ������� ';
                    end;


                CbBoxServName.Hint:= CbBoxServName.Hint + s_beg + s_end;

                //��������, ���������� �� ��� ���������� �������� ��������� ���� � ���������. � ����� ������
                //� ������� ��������� ��� �������, ����� ������� �������� ������������. ���� �� ��-��������
                //���� � ������, �� ���������������� �� ����, ���� ��� - �������� ������ �������� � ���� ��������

                if (CbBoxServName.Items.IndexOf(LblVarServNm.Caption) <> -1)
                  then
                    begin
                    CbBoxServName.ItemIndex:= CbBoxServName.Items.IndexOf(LblVarServNm.Caption);
                    CbBoxServNameChange(sender);//"��������" ������������ �������� ��� ���������� � �������
                    end
                  else
                    CbBoxServName.ItemIndex:= 0;
              end
            else //����� ������ ����, � ��� ������� ���������� �������
              begin
                CbBoxServName.Items.Add('� ������� �� ������� �� ������ ������� !');
                CbBoxServName.ItemIndex:= 0;
                CbBoxServName.Font.Color:= clRed;

                SpBtnHlpServName.Visible:= True;
                CbBoxServName.Hint:= '������� ������ � ���������, ����������� ������';
                ServerSendTag:= 1105;//�������� "�� �����" ����� ���� "�������"
              end;
        end;
  finally
    SL.Free;
    SL2.Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnHlpServNameClick(Sender: TObject);
var TmpMsgStr: string;
begin
  case ServerSendTag of
    1101: //�� ������� ����� FName � �������
          TmpMsgStr:=
              '� ����� ������������ ������� ����������� ����������� ��� ������ ���� "' + FName
            + '", ������� ������ ���������� � ��������� �������� "' + GetSystemPath(WinSys) + '\drivers\etc". '
            + #13#10 + #13#10 + '     ��� ����� ����� ������� ��� �������������� '
            + '��� ������ ������ ���������� ��������� (���� "�������"), ��������� � ��������� ����� � '
            + '������� � ���� ��������� ����� (� ����������� ���� �������� � ��������):'
            + #13#10 + #13#10 + '#' + #13#10 + '127.0.0.1     localhost' + #13#10
            + 'XXX.XXX.XXX.XXX      myserver  # ��� �����������' + #13#10 + '#' + #13#10 + #13#10
            + '�������� ��������: ' + #13#10 + '- ������ �������� XXX.XXX.XXX.XXX ��� ���������� �������� '
            + '�������� IP-����� ������� ����� ���� ����������, �� ������� ������� ������ ���� ������ '
            + '(����.: 192.168.0.1 ��� ��.)' + #13#10 + '- � ������ ������� "myserver" - ��� ��� �������, '
            + '����� ������� �� ������������ � ����� ������. ��� ��� ����� ���� ����� �� ���� ����������, '
            + '�� ����������� ���������� �������'+ #13#10 + '- ����� ������ ����� ����� "#" ����� '
            + '���������������� ��� �����������, ������� ����� ���� �� ����� �����';
    1102: //� ���������� ������� �� �������� ���� localhost � �������
          TmpMsgStr:=
              '��������� ������ (�.�. ������������, ������� ����������� � ����� ������ �� ��������� ����) �� '
            + '����� ������������ ��� �������� ����������� ������ "localhost".' + #13#10 + '����� ����������� '
            + '� ��������� ����� ������ ��� ���������� �������� � ������������ ������� ������ � ������ ��������� '
            + '� IP-�������. ��� ����� �������� ���������:' + #13#10 + #13#10
            + '1. ������� � ����� "' + GetSystemPath(WinSys) + '\drivers\etc" ���� "' + FName + '" � �������� ��� � '
            + '����� ��������� ��������� (���� "�������")' + #13#10 + '2. ����� ������ "127.0.0.1     localhost" '
            + '�������� ��� ���� ������ ����' + #13#10 + #13#10 + '     XXX.XXX.XXX.XXX      myserver  # ��� ����������� '
            + #13#10 + #13#10 + ' � ����� ��� ��� ��� ������ ������' + #13#10 + '3. ��������� � �������� ���� "' + FName + '"'
            + #13#10 + #13#10
            + '�������� ��������: ' + #13#10 + '- ������ �������� XXX.XXX.XXX.XXX ��� ���������� �������� '
            + '�������� IP-����� ������� ����� ���� ����������, �� ������� ������� ������ ���� ������ '
            + '(����.: 192.168.0.1 ��� ��.)' + #13#10 + '- � ������ ������� "myserver" - ��� ��� �������, '
            + '����� ������� �� ������������ � ����� ������. ��� ��� ����� ���� ����� �� ���� ����������, '
            + '�� ����������� ���������� �������' + #13#10 + '- ����� ������ ����� ����� "#" ����� '
            + '���������������� ��� �����������, ������� ����� ���� �� ����� �����';
    1105: //�� ������ �� ���� ������ � �������
          TmpMsgStr:=
             '� ����� ������������ ������� � ����� "' + FName  + '", ������� ��������� � ��������� �������� "'
            + GetSystemPath(WinSys) + '\drivers\etc", ����������� ��� ��� ������� ������ �������, ����� ������� '
            + '�� ������ �� ����������� � ������ ���� ������.'
            + #13#10 + #13#10 + '     ��� ����� ����� �������������� �������� ��� � ������ '
            + '��� ������ ������ ���������� ��������� (���� "�������"), ������ � ���� "' + FName + '" ��������� '
            + '����� (� ����������� ���� �������� � ��������):'
            + #13#10 + #13#10 + '#' + #13#10 + '127.0.0.1     localhost' + #13#10
            + 'XXX.XXX.XXX.XXX      myserver  # ��� �����������' + #13#10 + '#' + #13#10 + #13#10
            + '�������� ��������: ' + #13#10 + '- ������ �������� XXX.XXX.XXX.XXX ��� ���������� �������� '
            + '�������� IP-����� ������� ����� ���� ����������, �� ������� ������� ������ ���� ������ '
            + '(����.: 192.168.0.1 ��� ��.)' + #13#10 + '- � ������ ������� "myserver" - ��� ��� �������, '
            + '����� ������� �� ������������ � ����� ������. ��� ��� ����� ���� ����� �� ���� ����������, '
            + '�� ����������� ���������� �������' + #13#10 + '- ����� ������ ����� ����� "#" ����� '
            + '���������������� ��� �����������, ������� ����� ���� �� ����� �����';
  end;

Application.MessageBox(PChar(TmpMsgStr), '������������ ������!', MB_ICONINFORMATION);
ServListParamFill(Sender);//����� ��������� ���� � ���������
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnOpenFDBClick(Sender: TObject);
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
//������ �������� FB-���������� ���������� (gds32.dll ��� fbclient.dll)
procedure TFrmConnect.SpBtnOpnLibClick(Sender: TObject);
begin
if OpnDlgClientDLL.Execute then
  begin
    LblVarGDSPath.Caption:= OpnDlgClientDLL.FileName;
    EdtLib.Text:= OpnDlgClientDLL.FileName;
    EdtLib.Font.Color:= clWindowText;
    EdtLib.Hint:= '������� ���������� ���������� ' + Trim(LblVarGDSPath.Caption);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnAddAliasClick(Sender: TObject);
var i: Integer;
    FnPath, CbBoxStr: string;
    SL: TStringList;
begin
FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\leybasoftdbalias.txt';
if FileExists(FnPath) then //���� ���� ����������
  begin
    //���� ���� ���� ������ � ������ ������������� ��� ������ �����
    if CyrChrPresents(CbBoxAlias.Text) = 0
      then //���������� �������� ����� � ������ ����� ���������� � ���� � ��������� ������� �� ����
        begin
          SL:= TStringList.Create;
          try
            if CbBoxAlias.Items.Count > 0
              then //���� ������ ����� �� ����
                begin
                  if Pos(' ',Trim(CbBoxAlias.Text)) > 0
                    then //���� ������ �������� ������� (������� �� ����. ����)
                      CbBoxStr:= AnsiLowerCase(LeftStr(Trim(CbBoxAlias.Text),Pos(' ',Trim(CbBoxAlias.Text)) - 1))
                    else //������� �� ������ �����
                      CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Text));

                  CbBoxAlias.Items.Add(CbBoxStr);//������� ��� ������ � ����

                  //���������� "�����" � �����
                  SL.Clear;
                  SL.Add('# ���� ���� �������� ������ (����������) ��� �������� � ������ ������ FireBird');
                  SL.Add('#');
                  SL.Add('# ������������ ���������� "���: ������� ����� �����" �� ������ leybasoft');
                  SL.Add('#');
                  SL.Add('# ����������, �� �������� ���� ����  � �� ������� ������ � ��� �������');
                  SL.Add('# ��� ������� �������������, ��� ��� ����� �������� �� �����������������');
                  SL.Add('# ���������');
                  SL.Add('#');
                  SL.Add('');

                  //��� ������ ������ �����
                  for i:= 0 to CbBoxAlias.Items.Count - 1 do
                    begin
                      if CyrChrPresents(CbBoxAlias.Items[i]) = 0
                        then
                          begin
                            //�������� ������ �� 1 �����, ���� ��� �� ���������
                            if Pos(' ',Trim(CbBoxAlias.Items[i])) > 0
                              then
                                CbBoxStr:= AnsiLowerCase(LeftStr(Trim(CbBoxAlias.Items[i]),Pos(' ',Trim(CbBoxAlias.Items[i])) - 1))
                              else
                                CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Items[i])) ;
                            //��������� ����� � ������, ���� ��� ��� ��� ���
                            if SL.IndexOf(CbBoxStr) = -1 then SL.Add(CbBoxStr);
                          end;
                    end;

                  SL.SaveToFile(FnPath);//����������� � ����
                end
              else
                Exit;
          finally
            SL.Free;
          end;
        end
      else
        begin
          if CyrChrPresents(CbBoxAlias.Text) < 0
            then
              Application.MessageBox('����������� ������ �� ����� ���� ������ !', '������������ ������', MB_ICONINFORMATION)
            else
              Application.MessageBox('����������� ������ �� ������ ��������� ������� �������� �������� !',
                                                                                      '������������ ������', MB_ICONINFORMATION);

          if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
        end;

      AliasListParamFill(Sender);//�������� ����

      //������������� ���� �� ������ ��� ����������� ��������
      if CbBoxAlias.Items.IndexOf(CbBoxStr) <> - 1
        then CbBoxAlias.ItemIndex:= CbBoxAlias.Items.IndexOf(CbBoxStr)
        else CbBoxAlias.ItemIndex:= 0;
  end; 
end;

//----------------------------------------------------------------------------
//������� �� ����� ��������� ������ ��
procedure TFrmConnect.SpBtnDelAliasClick(Sender: TObject);
var i: Integer;
    FnPath, CbBoxStr: string;
    SL,SL2: TStringList;
begin
//�������������
if Length(Trim(CbBoxAlias.Text)) = 0 then Exit;

FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\leybasoftdbalias.txt';
SL:= TStringList.Create;
SL2:= TStringList.Create;
  try
    //���������� ������� ������ � �����
    CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Text));

    for i:= 0 to CbBoxAlias.Items.Count - 1 do
      //���� � ������ ��� �� ����� ������� ����� (��� ���� ���� ������ �� ������, ����� ������� ������ �������� -1)
      if (CyrChrPresents(CbBoxAlias.Text) = 0)
        then //�� ��������� ������ ������
          SL.Add(AnsiLowerCase(Trim(CbBoxAlias.Items[i])));

    //���� ������ ����
    if SL.Count = 0
      then //�� ������� �� ���������
        Exit
      else
        //������ ��� ������ �� ������ (� �� �����), ���� ��� ��� ����
        if SL.IndexOf(CbBoxStr) <> -1 then
            begin
              SL.Delete(SL.IndexOf(CbBoxStr));

              //���������� "�����" � �����
              SL2.Clear;
              SL2.Add('# ���� ���� �������� ������ (����������) ��� �������� � ������ ������ FireBird');
              SL2.Add('#');
              SL2.Add('# ������������ ���������� "���: ������� ����� �����" �� ������ leybasoft');
              SL2.Add('#');
              SL2.Add('# ����������, �� �������� ���� ����  � �� ������� ������ � ��� �������');
              SL2.Add('# ��� ������� �������������, ��� ��� ����� �������� �� �����������������');
              SL2.Add('# ���������');
              SL2.Add('#');
              SL2.Add('');

              //������� ���������� ������ � �������� ������
              if SL.Count > 0 then
                for i:= 0 to SL.Count - 1 do
                  SL2.Add(SL[i]);

              SL2.SaveToFile(FnPath);//������ ������ � ����
              AliasListParamFill(Sender);//��������� �� �����
            end;
  finally
    SL.Free;
    SL2.Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnHlpAliasClick(Sender: TObject);
var TmpMsgStr: string;
begin
  case AliasSendTag of
    1010:
      TmpMsgStr:= '� ����� "' + ExtractFileDrive(Application.ExeName) + '\Temp\" �� ������� ������� ���������� '
            + '���� "leybasoftdbalias.txt" , � ������� ����� ���� �� ��������� ���������������� ����� '
            + '���������� ��� ������.' + #13#10 + #13#10
            + '���������� �������������� ������� ���� ���� � ��������� �����. ���� ��� ���-���� �� ������� ��� �������, '
            + '�� ��������� �� ��� �������� �������� ������� ������ ��� ������.';
    1016:
      TmpMsgStr:= '�� ������� ������� ���������� ����� "' + ExtractFileDrive(Application.ExeName)
            + '\Temp\", ��� ����� ���� �� ������� ���� � ����������������� ����� '
            + '������������ ��� ������.' + #13#10 + #13#10
            + '���������� �������������� ������� �� ����� "' + ExtractFileDrive(Application.ExeName)
            + '" ����� "Temp", � ����� � ��� ������� ������ ���� "leybasoftdbalias.txt".';
  end;

Application.MessageBox(PChar(TmpMsgStr),'������������ ������', MB_ICONINFORMATION);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnHlpConctAccessClick(Sender: TObject);
begin
Application.MessageBox(PChar('localhost - ��� ����������� ������ (�.�. "����������� ��������"), '
              + '������� ������������ ������������ �������� ��� �������� ������ ������� '
              + ', ���� ���� ����������� ������� ����� � IP-�����. � ������������ �������� ��������� Windows "�� ���������" '
              + '������ localhost ����� IP-����� 127.0.0.1' + #13#10 + #13#10 + '������� � ���� ������ ����� '
              + '���� ������ �������� ������, ���� ��� ��������� �������� �� ��� �� ����������, ��� ��������� � ���� '
              + '���� ������, �.�. ��� �������� "������ �� �������"'), '������������ ���������', MB_ICONINFORMATION);

//������� ������
SpBtnHlpConctAccess.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtFDBNameChange(Sender: TObject);
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

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtFDBNameDblClick(Sender: TObject);
begin
SpBtnOpenFDBClick(Sender);
end;

procedure TFrmConnect.EdtLibDblClick(Sender: TObject);
begin
SpBtnOpnLibClick(Sender);
end;

procedure TFrmConnect.EdtLibKeyPress(Sender: TObject; var Key: Char);
begin

end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtPortNumbChange(Sender: TObject);
begin
//���� ������� �� ������� ������ (�.�. ���� �������� ��������������)
if not ChkBoxPortNumb.Checked
  then LblPortNumb.Caption:= Trim(EdtPortNumb.Text);//���������� ��������� �������
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtPortNumbKeyPress(Sender: TObject; var Key: Char);
begin
if (((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #13)) and (not(GetKeyState(VK_CONTROL) < 0))
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� ����� �� 0 �� 9 !   ',
                        '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.CbBoxRoleClick(Sender: TObject);
begin
if (CbBoxRole.ItemIndex = 3) or (CbBoxRole.ItemIndex = 4) then
  begin
    Application.MessageBox('� ������ ������ ��������� ��� ����� ���������� !','����� � �������',
                                                                                    MB_ICONINFORMATION);
    CbBoxRole.ItemIndex:= 0;
    Exit;
  end;

//UsrRoleNumb:= CbBoxRole.ItemIndex;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.CbBoxServNameChange(Sender: TObject);
begin
LblVarServNm.Caption:= CbBoxServName.Items[CbBoxServName.ItemIndex];
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:= caFree;
//���������� ���������������� �����
LblVarAlias.Caption:= Trim(CbBoxAlias.Text);

//��������� ��������� �����
NiceSetFrmConnect.SaveSettings;
end;

procedure TFrmConnect.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:= (Self.ModalResult <> mrNone);
end;

//----------------------------------------------------------------------------

{ TThreadConnect }

procedure TThreadConnect.CloseSplashMsg;
begin
  IsFinishedThread:= True;
  if Assigned(frmSplash) then frmSplash.Close;
end;

constructor TThreadConnect.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  Priority:= tpLower;
  FreeOnTerminate:= False;
  IsFinishedThread:= False;
  FMsgParam:= 0;
  FMsgStrValue:= '';
  FMsgIntValue:= 0;
end;

procedure TThreadConnect.Execute;
var
  i: Integer;
  DBVers: Integer;
begin
  inherited;

  try
    try
      FMsgStrValue:= '������� ��������';//������ WParam - ������
      FMsgParam:= 2;//������ LParam
      Synchronize(MyMsg);//��������� �����

      FMsgStrValue:= '�������� ������� ���� ������. ����������, ���������';
      FMsgParam:= 1;
      Queue(MyMsg);//��������� ��������� �� �����

      Sleep(500);

      if not DMFIB.Database.Connected then DMFIB.Database.Connected:= True;
      DMFIB.DSetServInfo.FullRefresh;

      if IsFinishedThread then Exit;//�������� ������ �� ��������

      //������������� ���������� (��� ��������)
      if DMFIB.DSetServInfo.FN('SERV_NUMVERS').IsNull
        then DBVers:= 1
        else DBVers:= DMFIB.DSetServInfo.FN('SERV_NUMVERS').AsInteger;

      if IsFinishedThread then Exit;//�������� ������ �� ��������

      //���� ������ �� �� ��������� � ������� �������, �� ������� ��� �� ���� � ������� � �������
      if (DBVers <> DBCurVersInfo) then
        begin
          if DMFIB.Database.Connected then DMFIB.Database.Connected:= False;
          FMsgStrValue:= '������ ��������';
          FMsgParam:= 2;
          Queue(MyMsg);//��������� �����

          FMsgStrValue:= Format('�� ��������� �������������� � ���� ������ ������ %d, ���� ��� ���������� '
              + '������ ����� ���������� ��������� ��� ��������� ���� ������ ������ %d.'
              + #13#10 + '��� ������� �������� ���������� '
              + '���������� � ���������������� ������� �������',[DBVers, DBCurVersInfo]);
          FMsgParam:= 1;
          Queue(MyMsg);//��������� ��������� �� �����

          FMsgIntValue:= 1;
          FMsgParam:= 4;
          Queue(MyMsg);//������������� ������� �� ������ ������ � �������

          //�������������� �������
          i:= 10;
          while (i > 0) and (not IsFinishedThread) do
          begin
            FMsgStrValue:= Format('�������(%d)',[i]);
            FMsgParam:= 3;
            Queue(MyMsg);//������� �� ������

            Sleep(1000);
            Dec(i);
          end;

            Exit;
        end;

      if IsFinishedThread then Exit;//�������� ������ �� ��������

      (***************** ���� ����������� ������ *******************)
      //��������� ����� � ���������� "���"
//      FrmMainProg.SpdBtnAll.Down:= True;//"����" �� ��� ������
      DMFIB.DSetTotalPat.SelectSQL.Text:=
        'SELECT A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, A.ANKFIRSTNAME, '
      + 'A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX, MAX(V.DATEVISIT) AS DATEVISIT '
      + 'FROM TBL_TOWN T LEFT JOIN TBL_ANKETA A ON (A.ANK_LINKTOWN = T.ID_TOWN) '
      + 'LEFT JOIN TBL_VISITMAIN V ON (V.VIS_LINKANKETA = A.ID_ANKETA) '
      + 'WHERE A.ID_ANKETA IS NOT NULL '
      + 'GROUP BY A.ID_ANKETA, A.ANK_LINKTOWN, T.TOWNVILLAGE, A.ANKLASTNAME, '
      + 'A.ANKFIRSTNAME, A.ANKTHIRDNAME, A.ANKDATEBORN, A.ANKPHONE, A.SHEDUL_EXISTS, A.SEX '
      + 'ORDER BY DATEVISIT DESC';
      DMFIB.DSetTotalPat.Prepare;
      DMFIB.DSetTotalPat.Active:= True;

      DMFIB.DSetTown.FullRefresh;
      DMFIB.DSetClinic.FullRefresh;
      DMFIB.DSetDoctor.FullRefresh;
      DMFIB.DSetAnketa.FullRefresh;
      DMFIB.DSetVisitMain.FullRefresh;
      DMFIB.DSetConsult.FullRefresh;

      if IsFinishedThread then Exit;//�������� ������ �� ��������

      //������������ ������� �� ������� �������
      DMFIB.DSTotalPatDataChange(TObject(Application),DMFIB.DSetTotalPat.FN('ID_Anketa'));
      FrmMainProg.CurrDate:= Date;//�������� ������� ����
      FrmMainProg.OldTickTime:= GetTickCount;//�������� ����� � ������� ������� ���, ������� ����� "���������" �����������

      //���������� ������� ������� � ���������� ���������� � ��������� ��������
      if not DMFIB.DSetTotalPat.IsEmpty
        then
          VarID_Tbl_Anketa:= DMFIB.DSetTotalPat.FN('ID_ANKETA').AsInteger
        else
          VarID_Tbl_Anketa:= -1;

      if DMFIB.DSetVisitMain.Active and (not DMFIB.DSetVisitMain.IsEmpty)
        then
          VarID_Tbl_VisitMain:= DMFIB.DSetVisitMain.FN('ID_VISITMAIN').AsInteger
        else
          VarID_Tbl_VisitMain:= -1;

      if not DMFIB.DSetClinic.IsEmpty
        then
          VarID_Tbl_Clinic:= DMFIB.DSetClinic.FN('ID_CLINIC').AsInteger
        else
          VarID_Tbl_Clinic:= -1;

      if not DMFIB.DSetDoctor.IsEmpty
        then
          VarID_Tbl_Doctor:= DMFIB.DSetDoctor.FN('ID_DOCTOR').AsInteger
        else
          VarID_Tbl_Doctor:= -1;

      VarTblPrice_PriceName:= '';

      if IsFinishedThread then Exit;//�������� ������ �� ��������
      FrmSenderModalResult:= mrOk;
      FrmMainProg.CountOpenDetailDSet:= 0;//�������� ����������, ������ ��� ��� ����� ������� �������
    except
      on E:Exception do
      begin
        if DMFIB.Database.Connected then DMFIB.Database.Connected:= False;

        FMsgStrValue:= '������ ��������';
        FMsgParam:= 2;
        Synchronize(MyMsg);//��������� �����

        if E is EFIBError
          then FMsgStrValue:= ErrorMsg
          else FMsgStrValue:= E.Message;

        FMsgParam:= 1;
        Synchronize(MyMsg);//��������� ��������� �� �����

        FMsgParam:= 4;
        FMsgIntValue:= 1;
        Synchronize(MyMsg);//������������� ������� �� ������ ������ � �������

        //�������������� �������
        i:= 10;
        while (i > 0) and (not IsFinishedThread) do
        begin
          FMsgStrValue:= Format('�������(%d)',[i]);
          FMsgParam:= 3;
          Synchronize(MyMsg);
          Sleep(1000);
          Dec(i);
        end;
      end;
    end;

  finally
    IsFinishedThread:= True;
    Queue(CloseSplashMsg);
  end;
end;

procedure TThreadConnect.MyMsg;
var ARect: TRect;
begin
  if Assigned(frmSplash) then
    case FMsgParam of
      //����� ��� ��������� ���������
      1:
        begin
          frmSplash.InMsgStr:= FMsgStrValue;
          //����������� ������ ������������� ����� frmSplash.InMsgStr
          ARect:= Rect(0,0,frmSplash.LblMsg.Width,frmSplash.LblMsg.Height);

          with FrmConnect do
          begin
            Canvas.Lock;
            frmSplash.TextMsgHeight:= DrawText(Canvas.Handle,PChar(frmSplash.InMsgStr),-1,
                                                                  ARect,DT_CALCRECT or DT_WORDBREAK);
            Canvas.Unlock;
          end;
        end;
      //����� ��������� �����
      2: frmSplash.FrmCaptStr:= FMsgStrValue;
      //����� ��� ������
      3: frmSplash.BtnMsgStr:= FMsgStrValue;
      //�����/�������� pnlBottom �� ������
      4:
        begin
          if frmSplash.pnlBottom.Visible <> (FMsgIntValue <> 0) then
          begin
            frmSplash.pnlBottom.Visible:= (FMsgIntValue <> 0);
            frmSplash.Repaint;
          end;
        end;
    end;
end;

end.
