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

var InitFrmHeight,//первоначальная высота формы
    IntHint: Integer;//временный хинт в пределах "видимости" этой формы
    GDS_dll_name: string;//имя клиентской embedded-библиотеки

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.AppEventsFrmConnEmbShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
//при нажатии на <Enter>
if (GetKeyState(VK_RETURN) < 0) then
  begin
    if EdtFDBName.Focused //если фокус на строке ввода имени ДБ
      then
        SpBtnOpenFDBClick(Self)//открываем диалог
      else
        BtnOKClick(Self);//закрываем форму кнопкой <ОК>
  end;

if (GetKeyState(VK_ESCAPE) < 0)
  then
    BtnCancelClick(Self);//по кнопке <Esc> "жмем" на кнопку "Cancel"

AppEventsFrmConnEmb.CancelDispatch;//спрячем нажатие кнопок от других форм
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
//если в каталоге с еэкзешником нет ни одного из перечисленных ниже файлов
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
    EdtFDBName.Hint:= 'Название базы данных.' + #13#10 + #13#10
                + 'Укажите путь к вашей базе данных, нажав на кнопку со значком справа ' + #13#10
                + 'или дважды щелкнув левой мышью по этому полю. Вы можете ввести путь ' + #13#10
                + 'к базе данных и вручную, если точно уверены, что не ошибетесь при вводе.'
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
//сохраняем параметры формы
NiceSetFrmConnEmd.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormCreate(Sender: TObject);
begin
InitFrmHeight:= Self.Height;//запоминаем дефолтовую формы 
NiceSetFrmConnEmd.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmConnEmd.LoadSettings;

Caption:= '  Подключение к базе данных FireBird';
EdtFDBName.Clear;

IntHint:= Application.HintHidePause;
Application.HintHidePause:= 50000;//увеличиваем время показа хинта

//переключаем раскладку клавиатуры на английскую, ибо русскому тут делать нечего
LoadKeyboardLayout('00000409',KLF_ACTIVATE);//для английского
//    LoadKeyboardLayout('00000419',KLF_ACTIVATE); //для русского

LblDLLWarning.Caption:= '     Не найден файл библиотеки встроенного сервера Firebird (это может быть либо' + #13#10
         + 'gds32.dll, либо fbembed.dll, либо fbclient.dll), который для корректной работы' + #13#10
         + 'обязательно должен находиться в каталоге с запускаемой программой.' + #13#10
         + '     Скопируйте его из дистрибутива в папку с этой программой и заново переоткройте' + #13#10 + 'это окно.';

LblDLLWarning.Top:= 120;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect_emd.FormDestroy(Sender: TObject);
begin
Application.HintHidePause:= IntHint;//возвращаем дефолтовое время показа хинта
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
        EdtFDBName.Hint:= 'Название базы данных.' + #13#10 + #13#10
                  + 'Укажите путь к вашей базе данных, нажав на кнопку со значком справа ' + #13#10
                  + 'или дважды щелкнув левой мышью по этому полю. Вы можете ввести путь ' + #13#10
                  + 'к базе данных и вручную, если точно уверены, что не ошибетесь при вводе.';
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
//        EdtLib.Hint:= 'Выберите файл библиотеки, соответствующий' + #13#10
//                    + 'Вашей версии сервера (при наличии нескольких' + #13#10
//                    + 'версий сервера Firebird на одном PC)';
//  end;
//
//Self.FormShow(Sender);
end;

//----------------------------------------------------------------------------

end.
