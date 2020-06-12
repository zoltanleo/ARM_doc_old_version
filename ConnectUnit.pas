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
    function CyrChrPresents(const AText: string): Integer;//позволяет проверить наличие кириллических символов в строке AText
    function IsIP_Address(const AText: string): Integer;//позволяет проверить, содержит ли строка только цифры и точки
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

var IntHint,//временный хинт в пределах "видимости" этой формы
    ServerSendTag, //имитация тэга сендера для кнопки хелпа возле CbBoxServerName (значения 1101,1105)
    AliasSendTag: Integer; //имитация тэга сендера для кнопки хелпа возле CbBoxAlias (значения 1110,1115)
    FName, //имя искомого файла
    AliasNamePathString: string;//алиас БД (содержит полный путь к файлу БД)
//    WinPath: string;//путь к папке Windows

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmConnect.FormCreate(Sender: TObject);
begin
(************************************************************************************)
(*** LblVarServNm - это "уловка", чтобы хранить некоторые переменные в компоненте ***)
(*** NiceSettings, именно поэтому он лежит на форме, но невидим                  ***)
(************************************************************************************)

NiceSetFrmConnect.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmConnect.LoadSettings;

IsFinishedThread:= False;
Self.ModalResult:= mrNone;

Caption:= '  Подключение к базе данных FireBird';
FName:= 'hosts';

//переключаем раскладку клавиатуры на английскую, ибо русскому тут делать нечего
LoadKeyboardLayout('00000409',KLF_ACTIVATE);//для английского
//    LoadKeyboardLayout('00000419',KLF_ACTIVATE); //для русского

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

//проверяем и отображаем соответствующий интерфейс окна согласно режиму
CbBoxConnModeChange(Sender);

(**********************************)
if ChkBoxPswd.Checked
  then MskEdt.Text:= 'Введите пароль'
  else MskEdt.Clear;
(*************************************)

IntHint:= Application.HintHidePause;
Application.HintHidePause:= 50000;//увеличиваем время показа хинта

EdtFDBName.Hint:= 'Название базы данных.' + #13#10 + #13#10
                + 'Укажите путь к вашей базе данных, нажав на кнопку со значком справа ' + #13#10
                + 'или дважды щелкнув левой мышью по этому полю. Вы можете ввести путь ' + #13#10
                + 'к базе данных и вручную, если точно уверены, что не ошибетесь при вводе.';

EdtLib.Hint:= 'Выберите файл библиотеки,соответствующий' + #13#10
            + 'Вашей версии сервера (при наличии нескольких' + #13#10
            + 'версий сервера Firebird на одном PC)';

pnlBaseGeneral.BevelOuter:= bvNone;
pnlBaseTop.BevelOuter:= bvNone;
pnlClientLib.BevelOuter:= bvNone;
pnlEmbeddedFileName.BevelOuter:= bvNone;
pnlMaxSettings.BevelOuter:= bvNone;

//инициализируем переменные формы
SpBtnCapt:= '';
UsrLgn:= '';
UsrPswd:= '';
UsrRoleName:= '';
UsrPortNumb:= 3050;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormDestroy(Sender: TObject);
begin
Application.HintHidePause:= IntHint;//возвращаем дефолтовое время показа хинта
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormKeyPress(Sender: TObject; var Key: Char);
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
  then BtnCancelClick(Sender);//по кнопке <Esc> "жмем" на кнопку "Cancel"
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.FormShow(Sender: TObject);
begin
//все процедуры перенесены в код ниже

//  ServListParamFill(Self);//заполняем список серверов в системе
//  CbBoxConctAccessChange(Sender);//проверяем расположение клиента относительно сервера
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

        if ChkBoxPortNumb.Checked //если стоит пометка "стандартный порт"
          then
            UsrPortNumb:= 3050 //присваиваем "стандартное" значение
          else //иначе проверим введенное значение
            begin
              if Length(Trim(EdtPortNumb.Text)) > 0 //если там есть циферьки
                then
                  UsrPortNumb:= StrToInt(Trim(EdtPortNumb.Text)) //запомним их
                else //иначе поругаемся, покажем окно в "админском режиме" и вернемся в пустой эдит
                  begin
                    Application.MessageBox('Необходимо указать номер порта для Вашего сервера!',
                                                        'Недостаточно данных', MB_ICONINFORMATION);
                    CbBoxConnMode.ItemIndex:= 2;
                    CbBoxConnModeChange(Sender);
                    if EdtPortNumb.CanFocus then EdtPortNumb.SetFocus;
                    Exit;
                  end;
            end;

        if ChkBoxAutoServName.Checked //если "автонастройки" помечены
          then // делаем одни выводы
            begin
              //проверяем наличие хоть одного сервера в ОСи
              if Pos('в системе не найдено',Trim(CbBoxServName.Text)) > 0 then
                begin
                  Application.MessageBox('В вашей операционной системе не определен ни один сервер, через который '
                  + 'можно было бы подсоединиться к базе данных! Обратитесь к системному администратору '
                  + 'или прочитайте соответствующий раздел справки, чтобы попытаться решить проблему самостоятельно.', 'Недостаточно данных',
                  MB_ICONEXCLAMATION);

                  CbBoxConnMode.ItemIndex:= 2;
                  CbBoxConnModeChange(Sender);

                  if CbBoxServName.CanFocus then CbBoxServName.SetFocus;
                  Exit;
                end;

              //теперь проверим, чтобы удаленный клиент не соединялся через локалхост
              if (AnsiLowerCase(LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1)) = 'localhost')
                and (CbBoxConctAccess.ItemIndex = 0) then
                  begin
                    if CbBoxServName.Items.Count < 2 //если это единственная строка в комбе
                      then
                        begin
                          ServerSendTag:= 1102;
                          Application.MessageBox('Удаленный клиент не может коннектиться к базе данных через виртуальный сервер '
                            + '"localhost" ! Обратитесь к системному администратору или прочитайте соответствующий раздел справки, '
                            + 'чтобы попытаться решить проблему самостоятельно.', 'Некорректные данные', MB_ICONEXCLAMATION);

                          SpBtnHlpServName.Visible:= True;
                        end
                      else //иначе, строк в комбе несколько, но текущая - localhost
                        begin
                          Application.MessageBox('Удаленный клиент не может коннектиться к базе данных через виртуальный сервер '
                            + '"localhost" ! Выберите для коннекта другой сервер.', 'Некорректные данные', MB_ICONINFORMATION);
                        end;

                    CbBoxConnMode.ItemIndex:= 2;
                    CbBoxConnModeChange(Sender);

                    if CbBoxServName.CanFocus then CbBoxServName.SetFocus;
                    Exit;
                  end;

              //если прошли все проверки, то запомним имя/адрес сервера из комба
              TmpServIP_adress:= LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1);
            end
          else // делаем другие выводы
            begin
              if Length(Trim(EdtServName.Text)) = 0 then
                begin
                  Application.MessageBox('Необходимо указать имя или IP-адрес сервера !', 'Некорректные данные', MB_ICONINFORMATION);

                  CbBoxConnMode.ItemIndex:= 2;
                  CbBoxConnModeChange(Sender);

                  if EdtServName.CanFocus then EdtServName.SetFocus;
                  Exit;
                end;

              //если прошли все проверки, то запомним имя/адрес сервера, введенного вручную
              TmpServIP_adress:= Trim(EdtServName.Text);
            end;


        //проверяем наличие пустых или неправильно заполненных полей
        if CbBoxAlias.Visible
          then //если комб с алиасам виден
            begin
              //исключаем наличие кириллических букв в строке, а также пустое значение строки
              if CyrChrPresents(CbBoxAlias.Text) < 0 //если текущая строка в комбе пуста
                then
                  begin
                    Application.MessageBox('Вы не указали псевдоним базы данных !', 'Некорректные данные', MB_ICONINFORMATION);
                    if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
                    Exit;
                  end
                else
                  begin
                    if CyrChrPresents(CbBoxAlias.Text) > 0 //если в строке символы кириллицы все-таки встречаются
                      then
                        begin
                          Application.MessageBox('Псевдоним базы данных должен состоять из букв только ЛАТИНСКОГО алфавита !',
                                                                                       'Некорректные данные', MB_ICONINFORMATION);
                          if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
                          Exit;
                        end
                      else //иначе все символы на латинице
                        begin
                          //анализируем, чтобы алиас был единственным словом в строке
                          if Pos(' ',Trim(CbBoxAlias.Text)) > 0
                            then
                              TmpPathDB:= LeftStr(Trim(CbBoxAlias.Text),Pos(' ',Trim(CbBoxAlias.Text)) - 1)
                            else
                              TmpPathDB:= Trim(CbBoxAlias.Text);
                        end;
                  end;
            end
          else //иначе виден эдит с путями к файлу БД
            begin
              if (CyrChrPresents(EdtFDBName.Text) = - 1)
                then
                  begin
                    Application.MessageBox('Вы не указали путь к файлу базы данных !', 'Некорректные данные', MB_ICONINFORMATION);
                    if EdtFDBName.CanFocus then EdtFDBName.SetFocus;
                    Exit;
                  end
                else
                  if (CyrChrPresents(EdtFDBName.Text) = 1) then
                    begin
                      Application.MessageBox('В именах папок или файла базы данных СИМВОЛЫ КИРИЛЛИЦЫ недопустимы !',
                                                                                      'Некорректные данные', MB_ICONINFORMATION);
                      if EdtFDBName.CanFocus then EdtFDBName.SetFocus;
                      Exit;
                    end;

              //если прошли все проверки
              TmpPathDB:= Trim(EdtFDBName.Text);
            end;

        if Trim(EdtUsrLogin.Text) = '' then
          FrmMainProg.CheckEdtEmpty(EdtUsrLogin, 'Вы не указали свой логин!');//логин

        if (Trim(MskEdt.Text) = '') or (Trim(MskEdt.Text) = 'Введите пароль') then
          FrmMainProg.CheckMaskEdtEmpty(MskEdt, 'Вы забыли ввести пароль!');

        //пример сроки соединения для TCP/IP
        //     имя_сервера/номер_порта:Диск:\путь_файловой_системы\файл_базы_данных
        // или
        //     имя_сервера/номер_порта:алиас_БД
        //если порт 3050, то его можно не указывать

        //формируем строку коннекта
        //DBConnectString:= LeftStr(Trim(CbBoxServName.Text),Pos(' ',Trim(CbBoxServName.Text)) - 1) + ':' + TmpPathDB;

        if UsrPortNumb = 3050
          then
            DBConnectString:= TmpServIP_adress + ':' + TmpPathDB
          else
            DBConnectString:= TmpServIP_adress + '/' + IntToStr(UsrPortNumb) + ':' + TmpPathDB;

        UsrLgn:= Trim(EdtUsrLogin.Text);//логин
        UsrPswd:= Trim(MskEdt.Text);//пароль
        UsrRoleNumb:= CbBoxRole.ItemIndex;//цифровой идентификатор роли

        case UsrRoleNumb of //выбираем роль
          0: UsrRoleName:= 'ADMINISTR';
          1: UsrRoleName:= 'REGISTRATOR';
          2: UsrRoleName:= 'UROLOG';
          3: UsrRoleName:= 'GINEKOLOG';
          4: UsrRoleName:= 'DERMATOLOG';
        else
          UsrRoleName:= '';//если пользователь SYSDBA
        end;
        {$endregion}
      end;
    1: //embedded server
      begin
        DBConnectString:= Trim(edtEmbedDBFileName.Text);
        UsrLgn:= 'sysdba';//логин
        UsrPswd:= '1';//пароль
        UsrRoleName:= '';//цифровой идентификатор роли
      end;

  end;


//функция ExtractFileName тут почему-то работает некорректно, поэтому парсим строку таким сложным способом
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
      EdtLib.Text:= 'Укажите клиентскую библиотеку вручную ...';
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
  Self.Hide;//спрячем форму во время показа сплэша
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
    then Self.Show//покажем форму, если была ошибка коннекта
    else Self.ModalResult:= FrmSenderModalResult;
end;

//----------------------------------------------------------------------------
//заполнение значениями комба с алиасами
procedure TFrmConnect.AliasListParamFill(Sender: TObject);
var i, CbBoxCount, FileHandle: Integer;
    FnPath: string;
    BoolFlag: Boolean;//внутр. флаг, показывающий, удалось ли создать файл или нет
    SL: TStringList;
begin
CbBoxCount:= 0;
CbBoxAlias.Clear;
FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\';
BoolFlag:= False;//по дефолту файл не создан
CbBoxAlias.Hint:= 'Нажмите кнопку справа для получения дополнительной информации';

SL:= TStringList.Create;

  try
    //если отсутствует темп-папка для хранения файла с алиасами
    if not DirectoryExists(FnPath)
      then //пытаемся создать ее
        begin
          if ForceDirectories(FnPath) //если папка создалась успешно
            then //проверяем наличие уже существующего файла 'leybasoftdbalias.txt'
              begin
                //если его не существует, то пытаемся его создать
                if not FileExists(FnPath + 'leybasoftdbalias.txt') then
                  begin
                    FileHandle:= FileCreate(FnPath + 'leybasoftdbalias.txt');//запомним хэндл создающегося файла

                    //если функция не отработала (возвращает значение -1),
                    if FileHandle < 0
                      then //файл не создан
                        AliasSendTag:= 1110 //сообщим, что не создается файл
                      else //файл успешно создан
                        begin
                          FileClose(FileHandle);//закроем этот файл, чтобы освободить доступ к нему

                          //сформируем "шапку" в файле
                          SL.Clear;
                          SL.Add('# Этот файл содержит алиасы (псевдонимы) для коннекта с базами данных FireBird');
                          SL.Add('#');
                          SL.Add('# Используется программой "АРМ: рабочее место врача" из пакета leybasoft');
                          SL.Add('#');
                          SL.Add('# Пожалуйста, не удаляйте этот файл  и не делайте правки в нем вручную');
                          SL.Add('# без крайней необходимости, так это может повлиять на работоспособность');
                          SL.Add('# программы');
                          SL.Add('#');
                          SL.Add('');

                          SL.SaveToFile(FnPath + 'leybasoftdbalias.txt');

                          CbBoxAlias.Hint:= 'Список из введенных ранее псевдонимов БД. Вы можете '
                                          + #13#10 + 'самостоятельно редактировать этот список.';
                          BoolFlag:= True;//файл создать удалось
                        end;
                  end;
              end
            else
              AliasSendTag:= 1016;//сообщим, что не создается папка


          CbBoxAlias.Items.Add('Введите псевдоним базы данных');
          CbBoxAlias.Font.Color:= clRed;
          CbBoxAlias.ItemIndex:= 0;
        end
      else //иначе папка 'Temp' существует
        begin
          //проверяем наличие уже существующего файла 'leybasoftdbalias.txt'
          if not FileExists(FnPath + 'leybasoftdbalias.txt')
            then //если его не существует, то пытаемся его создать
              begin
                FileHandle:= FileCreate(FnPath + 'leybasoftdbalias.txt');//запомним хэндл создающегося файла
                //если функция не отработала (возвращает значение -1),
                if FileHandle < 0
                  then //файл не создан
                    AliasSendTag:= 1110 //сообщим, что не создается файл
                  else //файл успешно создан
                    begin
                      FileClose(FileHandle);//закроем этот файл, чтобы освободить доступ к нему
                      BoolFlag:= True;//файл создать удалось
                      CbBoxAlias.Hint:= 'Список из введенных ранее псевдонимов БД. Вы можете '
                                          + #13#10 + 'самостоятельно редактировать этот список.';

                      //сформируем "шапку" в файле
                      SL.Clear;
                      SL.Add('# Этот файл содержит алиасы (псевдонимы) для коннекта с базами данных FireBird');
                      SL.Add('#');
                      SL.Add('# Используется программой "АРМ: рабочее место врача" из пакета leybasoft');
                      SL.Add('#');
                      SL.Add('# Пожалуйста, не удаляйте этот файл  и не делайте правки в нем вручную');
                      SL.Add('# без крайней необходимости, так это может повлиять на работоспособность');
                      SL.Add('# программы');
                      SL.Add('#');
                      SL.Add('');

                      SL.SaveToFile(FnPath + 'leybasoftdbalias.txt');
                    end;
                //заполним комб
                CbBoxAlias.Items.Add('Введите псевдоним базы данных');
                CbBoxAlias.Font.Color:= clRed;
                CbBoxAlias.ItemIndex:= 0;
              end
            else //если файл существует
              begin
                SL.LoadFromFile(FnPath + 'leybasoftdbalias.txt');
                for  i:= 0 to SL.Count - 1 do
                  begin
                    //если очередная строка не пустая и не начинается знаком '#' и первая буква строки не является русской
                    if ((Length(Trim(SL[i])) > 0) and (LeftStr(Trim(SL[i]),1) <> '#')
                                            and not ((LeftStr(Trim(SL[i]),1) >= #192) and (LeftStr(Trim(SL[i]),1) <= #255))) then
                      if Pos(' ',Trim(SL[i])) > 0 // если в строке несколько слов (есть пробел)
                        then //то добавим только первое слово из строки
                          CbBoxAlias.Items.Add(AnsiLowerCase(LeftStr(Trim(SL[i]),Pos(' ',Trim(SL[i])) - 1)))
                        else //добавим это единственное слово
                          CbBoxAlias.Items.Add(AnsiLowerCase(Trim(SL[i])));
                  end;

                CbBoxCount:= CbBoxAlias.Items.Count;//запомним настоящее кол-во строк
                CbBoxAlias.Hint:= 'Список из введенных ранее псевдонимов БД. Вы можете '
                                + #13#10 + 'самостоятельно редактировать этот список.';
                BoolFlag:= True;//загрузиться из файла удалось
                CbBoxAlias.Font.Color:= clWindowText;

                if CbBoxAlias.Items.Count = 0//если комб пустой
                  then
                    begin
                      CbBoxAlias.Clear;
                      CbBoxAlias.Items.Add('Введите псевдоним базы данных');
                      CbBoxAlias.Font.Color:= clRed;
                      CbBoxAlias.ItemIndex:= 0;
                    end
                  else
                    //иначе он не пустой: пробуем спозиционировать его на значении алиаса,
                    //которое использовалось в последний раз
                    begin
                      //если такое значение в списке есть
                      if CbBoxAlias.Items.IndexOf(LblVarAlias.Caption) <> -1
                        then
                          //его и устанавливаем
                          CbBoxAlias.ItemIndex:= CbBoxAlias.Items.IndexOf(LblVarAlias.Caption)
                        else //иначе ставим первое же по списку
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
// функция, позволяющая определить, имеются ли в переданной строке кириллические символы
// Возвращает 3 значения:
// - строка пуста или содержит только пробелы (-1)
// - в строке не содержится ни одного символа кириллицы (0)
// - в строке содержится хотя бы один кириллический символ (1)

function TFrmConnect.CyrChrPresents(const AText: string): Integer;
var i, counter: Integer;
    TmpStr: string;
begin
Result:= -1;

if Length(Trim(AText)) = 0  then Exit;//выйдем, если строка пустая

TmpStr:= 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ'
       + 'абвгдеёжзийклмнопрстуфхцчшщьыъэюя';

counter:= 0;//обнулим счетчик

for i:= 1 to Length(AText) do
  if (Pos(AText[i],TmpStr) > 0) then Inc(counter);

//==============================
(* старый вариант *)
  //(ord('A') = 192, т.е. #192 возращает строку 'А'; ord('я') = 255, т.е. #255 возращает
  //строку 'я'), #168 строку 'Ё', # 184 строку 'ё'
  //если очередной символ строки - кириллический
//  if ((TmpStr[i] >= #192) and (TmpStr[i] <= #255)) or (TmpStr[i] = #168) or (TmpStr[i] = #184) then
//    counter:= counter + 1;//то наращиваем счетчик
//===============================

if counter = 0
  then
    Result:= 0 //символов кириллицы нет
  else
    Result:= 1;//символ кириллицы есть
end;

procedure TFrmConnect.edtEmbedDBFileNameDblClick(Sender: TObject);
begin
  sbtnOpenEmbedDBClick(Sender);
end;

//----------------------------------------------------------------------------
//функция позволяет проверить, содержаться ли в строке
//только цифры от 0 до 9 и точка (1)
//другие знаки (0)
//или строка вообще пуста (-1)

function TFrmConnect.IsIP_Address(const AText: string): Integer;
var i, counter: Integer;
    TmpStr: string;
begin
Result:= -1;
if Length(Trim(AText)) = 0  then Exit;//выйдем, если строка пустая

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
if CbBoxConctAccess.ItemIndex = 0 //если выбрана опция "удаленный клиент"
  then CbBoxConnectType.ItemIndex:= 0;//автоматически выставляем коннект только по алиасу


CbBoxConnectTypeChange(Sender);//проверяем остальные зависимые опции
end;

//------------------------------------------------------------------------

procedure TFrmConnect.CbBoxConnectTypeChange(Sender: TObject);
begin
if (CbBoxConctAccess.ItemIndex = 0) and (CbBoxConnectType.ItemIndex = 1 ) then
  begin
    Application.MessageBox('Доступ к файлу базы данных с удаленного клиента возможен только '
                         + 'с использованием псевдонима !', 'Некорректные данные', MB_ICONINFORMATION);
    CbBoxConnectType.ItemIndex:= 0;
  end;

//показываем-скрываем соответствующие поля ввода в зависимости от настроек комбов

LblNameDB.Visible:= not (CbBoxConnectType.ItemIndex = 0);
EdtFDBName.Visible:= not (CbBoxConnectType.ItemIndex = 0);
SpBtnOpenFDB.Visible:= not (CbBoxConnectType.ItemIndex = 0);
CbBoxAlias.Visible:= (CbBoxConnectType.ItemIndex = 0);

AliasListParamFill(Self);//заполняем комб списком алиасов, которые могли быть сохранены ранее
end;

//------------------------------------------------------------------------

procedure TFrmConnect.CbBoxConnModeChange(Sender: TObject);
begin
  case CbBoxConnMode.ItemIndex of
    0: //полноценный сервер
      begin
        pnlMaxSettings.Visible:= True;
        pnlEmbeddedFileName.Visible:= False;
        pnlBaseGeneral.Height:= pnlBaseTop.Height + pnlMaxSettings.Height + pnlClientLib.Height + 1;
      end;
    1: //embedded сервер
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

ServListParamFill(Self);//заполняем список серверов в системе
ChkBoxPswdClick(Sender);
end;

//------------------------------------------------------------------------

procedure TFrmConnect.EdtUsrLoginChange(Sender: TObject);
begin
CbBoxRole.Enabled:= not(UpperCase(EdtUsrLogin.Text) = 'SYSDBA');//отключаем комб с ролями
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
       Application.MessageBox('Вы можете вводить только буквы английского алфавита и '
                          + 'целые числа от 0 до 9 !   ','Ввод некорректного значения!',
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
        edtEmbedDBFileName.Hint:= 'Название базы данных.' + #13#10 + #13#10
                  + 'Укажите путь к вашей базе данных, нажав на кнопку со значком справа ' + #13#10
                  + 'или дважды щелкнув левой мышью по этому полю. Вы можете ввести путь ' + #13#10
                  + 'к базе данных и вручную, если точно уверены, что не ошибетесь при вводе.';
  end;
end;

//----------------------------------------------------------------------------
//заполнение значениями комба с серверами
procedure TFrmConnect.ServListParamFill(sender: TObject);
var i: Integer;
//    WinDir: PChar;
    s,s_beg,s_end: string;
    SL,SL2: TStringList;
begin
//ищем файл hosts, который в ОСях Win XP, Vista, Se7en должен находиться тут:
//<имя системного диска>:\WINDOWS\system32\drivers\etc\

CbBoxServName.Clear;

  SL:= TStringList.Create;
  SL2:= TStringList.Create;
  try
        if not FileExists(GetSystemPath(WinSys) + '\drivers\etc\' + FName) //если искомый файл не найден
      then //покажем угрожающую надпись и кнопку с подсказкой
        begin
          CbBoxServName.Items.Add('Файл "' + FName + '" в системе не найден !');
          CbBoxServName.ItemIndex:= 0;
          CbBoxServName.Font.Color:= clRed;

          SpBtnHlpServName.Visible:= True;
          CbBoxServName.Hint:= 'Нажмите кнопку с картинкой, находящуюся справа';
          ServerSendTag:= 1101;//присвоим "от балды" номер тэга "сендеру"
        end
      else //если файл HOSTS найден, то пробуем заполнить комб с серверами из него
        begin
          SpBtnHlpServName.Visible:= False;
          CbBoxServName.Font.Color:= clWindowText;

          //грузим содержимое FName-файла в мемо построчно
          SL.LoadFromFile(GetSystemPath(WinSys) + '\drivers\etc\' + FName);
          //анализируем и парсим строки
          for i:= 0 to SL.Count-1 do
            begin
              s:= Trim(SL.Strings[i]);
              if (LeftStr(s,1) <> '#') //если не стоит первым символом '#'
                and (s <> '') //если строка не пустая
                  and (pos(' ',s) > 0) //если есть хоть один пробел, т.е. строка априори не должна
                                       //содержать одно слово (адрес или название сервера)
                then
                  begin
                    s_beg:= Trim(LeftStr(s,Pos(' ',s) - 1));//режем и сохраняем левую часть строки до пробела
                    s_end:= Trim(RightStr(s,Length(s) - Length(s_beg)));//сохраняем "остаток" строки (справа от пробела)

                    //если правая половина строки - это не "голый" комментарий без предшествующего имени сервера,
                    //т.е. не содержит первым символом решетку
                    if (LeftStr(s_end,1) <> '#')
                      then //то это не комментарий - парсим дальше
                        begin
                          //если символ решетки еще присутствует, отделим имя сервера от комментария
                          if (Pos('#',s_end) > 0) then s_end:= Trim(LeftStr(s_end,Pos('#',s_end) - 1));

                          //если строка содержит символы кириллицы, которые в имени сервера не допустимы,
                          //то эту строку мы тоже не используем
                          if (CyrChrPresents(s_end) <> 0) then s_end:= '';
                        end
                      else //иначе это голый комментарий и нами не используется
                        s_end:= '';

                   //заполним комб и список с именами, если они заполнены правильно
                   if (IsIP_Address(s_beg) = 1) and (s_end <> '') then
                     begin
                       SL2.Add(AnsiLowerCase(Trim(s_end)));
                       CbBoxServName.Items.Add(AnsiLowerCase(Trim(s_end)) + ' (IP-адрес: ' + s_beg + ')');
                     end;
                  end;
            end;

          //если комб не пуст (при этом SL2 тоже будет заполнен теми же значениями)
          if SL2.Count > 0 //если есть как минимум одна строка в списке
            then //формируем хинт динамически
              begin
                //анализируем второй СтрингЛист и формируем хинт для комба
                s:= 'localhost - вариант соединения с базой данных, который доступен только пользователям, '
                  + #13#10 + 'у которых эта программа находится на одном компьютере с файлом базы данных.';
                s_beg:= '';
                s_end:= 'Вы можете попытаться подсоединиться' + #13#10 +'к базе данных.'
                    +  #13#10 + #13#10 + '     Этот способ коннекта подходит как для удаленных клиентов, так и для клиента на сервере. '
                    + #13#10 + 'Обратите внимание, для удаленного клиента этот вариант будет единственно возможным.';

                CbBoxServName.Hint:= '';

                for i:= 0 to SL2.Count - 1 do
                  begin
                    if Trim(SL2.Strings[i]) <> '' then
                      begin
                        s_beg:= s_beg + '* ' + AnsiLowerCase(Trim(SL2.Strings[i])) + ', ' + #13#10;//сформируем список серверов в нижнем регистре в столбик строчку
                      end
                  end;

                s_beg:= Trim(s_beg);//уберем перенос каретки в конце строки

                if SL2.IndexOf(AnsiLowerCase('localhost')) <> -1 //если из этого минимума одна строка есть 'localhost'
                  then
                    begin
                      if SL2.Count < 2 // если это единственная строка
                        then
                          begin
                            //формируем первую строку хинта
                            CbBoxServName.Hint:= s;
                            s_beg:= '';
                            s_end:= '';
                          end
                        else // если кроме localhost еще еще строки
                          begin
                            //вырежем из общего списка серверов localhost
                            s_beg:= Trim(AnsiReplaceText(s_beg,'* localhost, ',''));

                            //обрежем запятую на конце
                            s_beg:= LeftStr(s_beg,Length(s_beg) - 1);

                            CbBoxServName.Hint:= s + #13#10 + #13#10;//добавим разделительную пустую строку

                            if (SL2.Count = 2) //если строк 2 (1 + localhost)
                              then
                                s_beg:= s_beg + ' - сервер, через который '
                              else//иначе их 2 и более + (localhost)
                                s_beg:= s_beg + ' - список серверов, через которые ';
                          end;
                    end
                  else //иначе строки 'localhost' в списке нет
                    begin
                      s_beg:= LeftStr(Trim(s_beg),Length(Trim(s_beg)) - 1);// обрежем запятую на конце строки

                      if SL2.Count = 1 //если в списке была одна строка
                        then
                          s_beg:= s_beg + ' - сервер, через который '
                        else //иначе в списке 2 и более наименований
                          s_beg:= s_beg + ' - список серверов, через которые ';
                    end;


                CbBoxServName.Hint:= CbBoxServName.Hint + s_beg + s_end;

                //проверим, заполнялся ли при предыдущих запусках программы комб с серверами. В таком случае
                //в реестре останется имя сервера, через который пытались коннектиться. Если он по-прежнему
                //есть в списке, то спозиционируемся на него, если нет - выставим первое попавшее в него значение

                if (CbBoxServName.Items.IndexOf(LblVarServNm.Caption) <> -1)
                  then
                    begin
                    CbBoxServName.ItemIndex:= CbBoxServName.Items.IndexOf(LblVarServNm.Caption);
                    CbBoxServNameChange(sender);//"запомним" выставленное значение для сохранения в реестре
                    end
                  else
                    CbBoxServName.ItemIndex:= 0;
              end
            else //иначе список пуст, а чем выведем угрожающую надпись
              begin
                CbBoxServName.Items.Add('в системе не найдено ни одного сервера !');
                CbBoxServName.ItemIndex:= 0;
                CbBoxServName.Font.Color:= clRed;

                SpBtnHlpServName.Visible:= True;
                CbBoxServName.Hint:= 'Нажмите кнопку с картинкой, находящуюся справа';
                ServerSendTag:= 1105;//присвоим "от балды" номер тэга "сендеру"
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
    1101: //не найдено файла FName в системе
          TmpMsgStr:=
              'В вашей операционной системе отсутствует необходимый для работы файл "' + FName
            + '", который должен находиться в системном каталоге "' + GetSystemPath(WinSys) + '\drivers\etc". '
            + #13#10 + #13#10 + '     Вам нужно будет создать его самостоятельно '
            + 'при помощи любого текстового редактора (типа "блокнот"), поместить в указанную папку и '
            + 'вписать в него следующий текст (с сохранением всех пробелов и символов):'
            + #13#10 + #13#10 + '#' + #13#10 + '127.0.0.1     localhost' + #13#10
            + 'XXX.XXX.XXX.XXX      myserver  # это комментарий' + #13#10 + '#' + #13#10 + #13#10
            + 'ОБРАТИТЕ ВНИМАНИЕ: ' + #13#10 + '- вместо символов XXX.XXX.XXX.XXX вам необходимо написать '
            + 'РЕАЛЬНЫЙ IP-адрес сетевой карты того компьютера, на котором запущен сервер базы данных '
            + '(напр.: 192.168.0.1 или др.)' + #13#10 + '- в данном примере "myserver" - это имя сервера, '
            + 'через который вы соединяетесь с базой данных. Это имя может быть любым на ваше усмотрение, '
            + 'но обязательно ЛАТИНСКИМИ буквами'+ #13#10 + '- любая строка после знака "#" будет '
            + 'интерпретирована как комментарий, который может быть на любом языке';
    1102: //у удаленного клиента из серверов лишь localhost в системе
          TmpMsgStr:=
              'Удаленный клиент (т.е. пользователь, который соединяется с базой данных по локальной сети) не '
            + 'может использовать для коннекта виртуальный сервер "localhost".' + #13#10 + 'Чтобы соединиться '
            + 'с удаленной базой данных Вам необходимо добавить в операционную систему сервер с другим названием '
            + 'и IP-адресом. Для этого сделайте следующее:' + #13#10 + #13#10
            + '1. Найдите в папке "' + GetSystemPath(WinSys) + '\drivers\etc" файл "' + FName + '" и откройте его в '
            + 'любом текстовом редакторе (типа "блокнот")' + #13#10 + '2. После строки "127.0.0.1     localhost" '
            + 'добавьте еще одну строку вида' + #13#10 + #13#10 + '     XXX.XXX.XXX.XXX      myserver  # это комментарий '
            + #13#10 + #13#10 + ' а после нее еще две пустые строки' + #13#10 + '3. Сохраните и закройте файл "' + FName + '"'
            + #13#10 + #13#10
            + 'ОБРАТИТЕ ВНИМАНИЕ: ' + #13#10 + '- вместо символов XXX.XXX.XXX.XXX вам необходимо написать '
            + 'РЕАЛЬНЫЙ IP-адрес сетевой карты того компьютера, на котором запущен сервер базы данных '
            + '(напр.: 192.168.0.1 или др.)' + #13#10 + '- в данном примере "myserver" - это имя сервера, '
            + 'через который вы соединяетесь с базой данных. Это имя может быть любым на ваше усмотрение, '
            + 'но обязательно ЛАТИНСКИМИ буквами' + #13#10 + '- любая строка после знака "#" будет '
            + 'интерпретирована как комментарий, который может быть на любом языке';
    1105: //не найден ни один сервер в системе
          TmpMsgStr:=
             'В вашей операционной системе в файле "' + FName  + '", который находится в системном каталоге "'
            + GetSystemPath(WinSys) + '\drivers\etc", отсутствует имя как минимум одного сервера, через который '
            + 'Вы смогли бы соединиться с файлом базы данных.'
            + #13#10 + #13#10 + '     Вам нужно будет самостоятельно добавить его в список '
            + 'при помощи любого текстового редактора (типа "блокнот"), вписав в файл "' + FName + '" следующий '
            + 'текст (с сохранением всех пробелов и символов):'
            + #13#10 + #13#10 + '#' + #13#10 + '127.0.0.1     localhost' + #13#10
            + 'XXX.XXX.XXX.XXX      myserver  # это комментарий' + #13#10 + '#' + #13#10 + #13#10
            + 'ОБРАТИТЕ ВНИМАНИЕ: ' + #13#10 + '- вместо символов XXX.XXX.XXX.XXX вам необходимо написать '
            + 'РЕАЛЬНЫЙ IP-адрес сетевой карты того компьютера, на котором запущен сервер базы данных '
            + '(напр.: 192.168.0.1 или др.)' + #13#10 + '- в данном примере "myserver" - это имя сервера, '
            + 'через который вы соединяетесь с базой данных. Это имя может быть любым на ваше усмотрение, '
            + 'но обязательно ЛАТИНСКИМИ буквами' + #13#10 + '- любая строка после знака "#" будет '
            + 'интерпретирована как комментарий, который может быть на любом языке';
  end;

Application.MessageBox(PChar(TmpMsgStr), 'Недостаточно данных!', MB_ICONINFORMATION);
ServListParamFill(Sender);//вновь проверяем комб с серверами
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
        EdtFDBName.Hint:= 'Название базы данных.' + #13#10 + #13#10
                  + 'Укажите путь к вашей базе данных, нажав на кнопку со значком справа ' + #13#10
                  + 'или дважды щелкнув левой мышью по этому полю. Вы можете ввести путь ' + #13#10
                  + 'к базе данных и вручную, если точно уверены, что не ошибетесь при вводе.';
  end;
end;

//----------------------------------------------------------------------------
//кнопка открытия FB-клиентской библиотеки (gds32.dll или fbclient.dll)
procedure TFrmConnect.SpBtnOpnLibClick(Sender: TObject);
begin
if OpnDlgClientDLL.Execute then
  begin
    LblVarGDSPath.Caption:= OpnDlgClientDLL.FileName;
    EdtLib.Text:= OpnDlgClientDLL.FileName;
    EdtLib.Font.Color:= clWindowText;
    EdtLib.Hint:= 'Текущая клиентская библиотека ' + Trim(LblVarGDSPath.Caption);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnAddAliasClick(Sender: TObject);
var i: Integer;
    FnPath, CbBoxStr: string;
    SL: TStringList;
begin
FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\leybasoftdbalias.txt';
if FileExists(FnPath) then //если файл существует
  begin
    //если хоть один символ в строке кириллический или строка пуста
    if CyrChrPresents(CbBoxAlias.Text) = 0
      then //попытаемся добавить слово в список через добавление в файл и повторной вычитки из него
        begin
          SL:= TStringList.Create;
          try
            if CbBoxAlias.Items.Count > 0
              then //если список комба не пуст
                begin
                  if Pos(' ',Trim(CbBoxAlias.Text)) > 0
                    then //если строка содержит пробелы (состоит из неск. слов)
                      CbBoxStr:= AnsiLowerCase(LeftStr(Trim(CbBoxAlias.Text),Pos(' ',Trim(CbBoxAlias.Text)) - 1))
                    else //состоит из одного слова
                      CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Text));

                  CbBoxAlias.Items.Add(CbBoxStr);//добавим эту строку в комб

                  //сформируем "шапку" в файле
                  SL.Clear;
                  SL.Add('# Этот файл содержит алиасы (псевдонимы) для коннекта с базами данных FireBird');
                  SL.Add('#');
                  SL.Add('# Используется программой "АРМ: рабочее место врача" из пакета leybasoft');
                  SL.Add('#');
                  SL.Add('# Пожалуйста, не удаляйте этот файл  и не делайте правки в нем вручную');
                  SL.Add('# без крайней необходимости, так это может повлиять на работоспособность');
                  SL.Add('# программы');
                  SL.Add('#');
                  SL.Add('');

                  //для каждой строки комба
                  for i:= 0 to CbBoxAlias.Items.Count - 1 do
                    begin
                      if CyrChrPresents(CbBoxAlias.Items[i]) = 0
                        then
                          begin
                            //обрезаем строку до 1 слова, если там их несколько
                            if Pos(' ',Trim(CbBoxAlias.Items[i])) > 0
                              then
                                CbBoxStr:= AnsiLowerCase(LeftStr(Trim(CbBoxAlias.Items[i]),Pos(' ',Trim(CbBoxAlias.Items[i])) - 1))
                              else
                                CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Items[i])) ;
                            //добавляем слово в список, если его там еще нет
                            if SL.IndexOf(CbBoxStr) = -1 then SL.Add(CbBoxStr);
                          end;
                    end;

                  SL.SaveToFile(FnPath);//сохраняемся в файл
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
              Application.MessageBox('Добавляемая строка не может быть пустой !', 'Некорректные данные', MB_ICONINFORMATION)
            else
              Application.MessageBox('Добавляемая строка не должна содержать символы русского алфавита !',
                                                                                      'Некорректные данные', MB_ICONINFORMATION);

          if CbBoxAlias.CanFocus then CbBoxAlias.SetFocus;
        end;

      AliasListParamFill(Sender);//освежаем комб

      //позиционируем комб на только что сохраненное значение
      if CbBoxAlias.Items.IndexOf(CbBoxStr) <> - 1
        then CbBoxAlias.ItemIndex:= CbBoxAlias.Items.IndexOf(CbBoxStr)
        else CbBoxAlias.ItemIndex:= 0;
  end; 
end;

//----------------------------------------------------------------------------
//удаляем из комба внесенные алиасы БД
procedure TFrmConnect.SpBtnDelAliasClick(Sender: TObject);
var i: Integer;
    FnPath, CbBoxStr: string;
    SL,SL2: TStringList;
begin
//подстрахуемся
if Length(Trim(CbBoxAlias.Text)) = 0 then Exit;

FnPath:= ExtractFileDrive(Application.ExeName) + '\Temp\leybasoftdbalias.txt';
SL:= TStringList.Create;
SL2:= TStringList.Create;
  try
    //запоминаем текущую строку в комбе
    CbBoxStr:= AnsiLowerCase(Trim(CbBoxAlias.Text));

    for i:= 0 to CbBoxAlias.Items.Count - 1 do
      //если в строке нет ни одной русской буквы (при этом сама строка не пустая, иначе функция вернет значение -1)
      if (CyrChrPresents(CbBoxAlias.Text) = 0)
        then //то добавляем строку список
          SL.Add(AnsiLowerCase(Trim(CbBoxAlias.Items[i])));

    //если список пуст
    if SL.Count = 0
      then //то выходим из процедуры
        Exit
      else
        //удалим эту строку из списка (и из файла), если она там была
        if SL.IndexOf(CbBoxStr) <> -1 then
            begin
              SL.Delete(SL.IndexOf(CbBoxStr));

              //сформируем "шапку" в файле
              SL2.Clear;
              SL2.Add('# Этот файл содержит алиасы (псевдонимы) для коннекта с базами данных FireBird');
              SL2.Add('#');
              SL2.Add('# Используется программой "АРМ: рабочее место врача" из пакета leybasoft');
              SL2.Add('#');
              SL2.Add('# Пожалуйста, не удаляйте этот файл  и не делайте правки в нем вручную');
              SL2.Add('# без крайней необходимости, так это может повлиять на работоспособность');
              SL2.Add('# программы');
              SL2.Add('#');
              SL2.Add('');

              //добавим оставшиеся строки в итоговый список
              if SL.Count > 0 then
                for i:= 0 to SL.Count - 1 do
                  SL2.Add(SL[i]);

              SL2.SaveToFile(FnPath);//сольем список в файл
              AliasListParamFill(Sender);//обновимся из файла
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
      TmpMsgStr:= 'В папке "' + ExtractFileDrive(Application.ExeName) + '\Temp\" не удается создать программно '
            + 'файл "leybasoftdbalias.txt" , в котором можно было бы сохранять использовавшиеся ранее '
            + 'псевдонимы баз данных.' + #13#10 + #13#10
            + 'Попробуйте самостоятельно создать этот файл в указанной папке. Если Вам все-таки не удастся это сделать, '
            + 'то псевдоним БД для коннекта придется вводить каждый раз заново.';
    1016:
      TmpMsgStr:= 'Не удается создать программно папку "' + ExtractFileDrive(Application.ExeName)
            + '\Temp\", где можно было бы хранить файл с использовавшимися ранее '
            + 'псевдонимами баз данных.' + #13#10 + #13#10
            + 'Попробуйте самостоятельно создать на диске "' + ExtractFileDrive(Application.ExeName)
            + '" папку "Temp", а затем в ней создать пустой файл "leybasoftdbalias.txt".';
  end;

Application.MessageBox(PChar(TmpMsgStr),'Недостаточно данных', MB_ICONINFORMATION);
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.SpBtnHlpConctAccessClick(Sender: TObject);
begin
Application.MessageBox(PChar('localhost - это виртуальный сервер (т.н. "виртуальная заглушка"), '
              + 'который используется операционной системой для имитации работы сервера '
              + ', даже если отсутствует сетевая карта и IP-адрес. В операционных системах семейства Windows "по умолчанию" '
              + 'сервер localhost имеет IP-адрес 127.0.0.1' + #13#10 + #13#10 + 'Коннект к базе данных через '
              + 'этот сервер возможен только, если эта программа запущена на том же компьютере, где находится и файл '
              + 'базы данных, т.е. для варианта "клиент на сервере"'), 'Некорректные параметры', MB_ICONINFORMATION);

//спрячем кнопку
SpBtnHlpConctAccess.Visible:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtFDBNameChange(Sender: TObject);
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
//если чекбокс не помечен галкой (т.е. эдит доступен редактированию)
if not ChkBoxPortNumb.Checked
  then LblPortNumb.Caption:= Trim(EdtPortNumb.Text);//запоминаем введенные циферки
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.EdtPortNumbKeyPress(Sender: TObject; var Key: Char);
begin
if (((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #13)) and (not(GetKeyState(VK_CONTROL) < 0))
   then
     begin
       Beep;
       Application.MessageBox('Вы можете вводить только целые числа от 0 до 9 !   ',
                        'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmConnect.CbBoxRoleClick(Sender: TObject);
begin
if (CbBoxRole.ItemIndex = 3) or (CbBoxRole.ItemIndex = 4) then
  begin
    Application.MessageBox('В данной версии программы эта опция недоступна !','Отказ в доступе',
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
//запоминаем использовавшийся алиас
LblVarAlias.Caption:= Trim(CbBoxAlias.Text);

//сохраняем параметры формы
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
      FMsgStrValue:= 'Попытка коннекта';//аналог WParam - строка
      FMsgParam:= 2;//аналог LParam
      Synchronize(MyMsg);//заголовок формы

      FMsgStrValue:= 'Пытаемся открыть базу данных. Пожалуйста, подождите';
      FMsgParam:= 1;
      Queue(MyMsg);//текстовое сообщение на форме

      Sleep(500);

      if not DMFIB.Database.Connected then DMFIB.Database.Connected:= True;
      DMFIB.DSetServInfo.FullRefresh;

      if IsFinishedThread then Exit;//проверка отказа от коннекта

      //промежуточные вычисления (для удобства)
      if DMFIB.DSetServInfo.FN('SERV_NUMVERS').IsNull
        then DBVers:= 1
        else DBVers:= DMFIB.DSetServInfo.FN('SERV_NUMVERS').AsInteger;

      if IsFinishedThread then Exit;//проверка отказа от коннекта

      //если версия БД не совпадает с версией клиента, то сообщим ему об этом и откажем в доступе
      if (DBVers <> DBCurVersInfo) then
        begin
          if DMFIB.Database.Connected then DMFIB.Database.Connected:= False;
          FMsgStrValue:= 'Ошибка коннекта';
          FMsgParam:= 2;
          Queue(MyMsg);//заголовок формы

          FMsgStrValue:= Format('Вы пытаетесь подсоединиться к базе данных версии %d, хотя для корректной '
              + 'работы вашей клиентской программы вам требуется база данных версии %d.'
              + #13#10 + 'Для решения проблемы необходимо '
              + 'обратиться к соответствующему разделу справки',[DBVers, DBCurVersInfo]);
          FMsgParam:= 1;
          Queue(MyMsg);//текстовое сообщение на форме

          FMsgIntValue:= 1;
          FMsgParam:= 4;
          Queue(MyMsg);//принудительно покажем на сплэше панель с кнопкой

          //инициализируем счетчик
          i:= 10;
          while (i > 0) and (not IsFinishedThread) do
          begin
            FMsgStrValue:= Format('Закрыть(%d)',[i]);
            FMsgParam:= 3;
            Queue(MyMsg);//надпись на кнопке

            Sleep(1000);
            Dec(i);
          end;

            Exit;
        end;

      if IsFinishedThread then Exit;//проверка отказа от коннекта

      (***************** блок подключения таблиц *******************)
      //открываем набор с параметром "Все"
//      FrmMainProg.SpdBtnAll.Down:= True;//"жмем" на эту кнопку
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

      if IsFinishedThread then Exit;//проверка отказа от коннекта

      //сопоставляем курсоры во входных наборах
      DMFIB.DSTotalPatDataChange(TObject(Application),DMFIB.DSetTotalPat.FN('ID_Anketa'));
      FrmMainProg.CurrDate:= Date;//получаем текущую дату
      FrmMainProg.OldTickTime:= GetTickCount;//получаем время с момента запуска ОСи, которое будет "последним" запомненным

      //запоминаем текущие курсоры и глобальные переменные в некоторых таблицах
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

      if IsFinishedThread then Exit;//проверка отказа от коннекта
      FrmSenderModalResult:= mrOk;
      FrmMainProg.CountOpenDetailDSet:= 0;//обнуляем переменную, потому что все табли открыты впервые
    except
      on E:Exception do
      begin
        if DMFIB.Database.Connected then DMFIB.Database.Connected:= False;

        FMsgStrValue:= 'Ошибка коннекта';
        FMsgParam:= 2;
        Synchronize(MyMsg);//заголовок формы

        if E is EFIBError
          then FMsgStrValue:= ErrorMsg
          else FMsgStrValue:= E.Message;

        FMsgParam:= 1;
        Synchronize(MyMsg);//текстовое сообщение на форме

        FMsgParam:= 4;
        FMsgIntValue:= 1;
        Synchronize(MyMsg);//принудительно покажем на сплэше панель с кнопкой

        //инициализируем счетчик
        i:= 10;
        while (i > 0) and (not IsFinishedThread) do
        begin
          FMsgStrValue:= Format('Закрыть(%d)',[i]);
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
      //текст для основного сообщения
      1:
        begin
          frmSplash.InMsgStr:= FMsgStrValue;
          //высчитываем высоту передаваемого текст frmSplash.InMsgStr
          ARect:= Rect(0,0,frmSplash.LblMsg.Width,frmSplash.LblMsg.Height);

          with FrmConnect do
          begin
            Canvas.Lock;
            frmSplash.TextMsgHeight:= DrawText(Canvas.Handle,PChar(frmSplash.InMsgStr),-1,
                                                                  ARect,DT_CALCRECT or DT_WORDBREAK);
            Canvas.Unlock;
          end;
        end;
      //текст заголовка формы
      2: frmSplash.FrmCaptStr:= FMsgStrValue;
      //текст для кнопки
      3: frmSplash.BtnMsgStr:= FMsgStrValue;
      //показ/сокрытие pnlBottom на сплэше
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
