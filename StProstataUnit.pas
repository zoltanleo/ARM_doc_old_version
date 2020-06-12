unit StProstataUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmStProstataTemplate = class(TForm)
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtProstataSize1: TEdit;
    EdtProstataSize2: TEdit;
    CbBoxDensity: TComboBox;
    CbBoxProstataSulcus: TComboBox;
    CbBoxProstataVesic: TComboBox;
    CbBoxProstataCoopery: TComboBox;
    CbBoxProstataSize: TComboBox;
    CbBoxProstataDolor: TComboBox;
    CbBoxProstataPath: TComboBox;
    CbBoxProstataSurface: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Label5: TLabel;
    Label6: TLabel;
    CbBoxProstataMucosa: TComboBox;
    Label7: TLabel;
    CbBoxProstataAnalSphincter: TComboBox;
    NiceSetFrmStProstataTemplate: TNiceSettings;
    AppEventsStProstata: TApplicationEvents;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure EdtProstataSize1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtProstataSize2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsStProstataShortCut(var Msg: TWMKey; var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmStProstataTemplate: TFrmStProstataTemplate;

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, StrUtils;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.AppEventsStProstataShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //реагируем на "хоткеи"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0)then BtnCancelClick(Self);
  end;
AppEventsStProstata.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//формируем и сохраняем текст
procedure TFrmStProstataTemplate.BtnSaveClick(Sender: TObject);
var CapLength: Integer;
    TmpTxt, ReadyTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TmpTxt:= '';
ReadyTxt:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmStProstataTemplate;
        PlainText:= False;
        Visible:= False;
      end;

    //проверяем, заполнены ли эдиты
    if (Trim(EdtProstataSize1.Text) = '') or (Trim(EdtProstataSize2.Text) = '') then
      begin
        Beep;
        Application.MessageBox('Вы не указали размер простаты!', 'Недостаточно данных!',
                                                             MB_OK + MB_ICONINFORMATION);
        if Trim(EdtProstataSize1.Text) = ''
          then
            begin
              if EdtProstataSize1.CanFocus then EdtProstataSize1.SetFocus;
            end
          else
           if EdtProstataSize2.CanFocus then EdtProstataSize2.SetFocus;
        Exit;
      end;

    //собираем текст
    ReadyTxt:= 'Prostata per rectum (' + FormatDateTime('DD.MM.YY', DateStatusPat) + '):';
    CapLength:= Length(ReadyTxt);

    //если нет запятой, то добавим ее с нулем
    if StrPos(PChar(Trim(EdtProstataSize1.Text)),',') = nil
      then EdtProstataSize1.Text:= Trim(EdtProstataSize1.Text) + ',0'
      else //если запятая есть, но без цифры, то добавим ноль
        if RightStr(Trim(EdtProstataSize1.Text), 1) = ','
          then EdtProstataSize1.Text:= Trim(EdtProstataSize1.Text) + '0' ;

    if StrPos(PChar(Trim(EdtProstataSize2.Text)),',') = nil
      then EdtProstataSize2.Text:= Trim(EdtProstataSize2.Text) + ',0'
      else //если запятая есть, но без цифры, то добавим ноль
        if RightStr(Trim(EdtProstataSize2.Text), 1) = ','
          then EdtProstataSize2.Text:= Trim(EdtProstataSize2.Text) + '0';



    ReadyTxt:= ReadyTxt + ' размеры ' + Trim(EdtProstataSize1.Text) + ' x ' +
                                                    Trim(EdtProstataSize2.Text) + ' см;';

    case CbBoxDensity.ItemIndex of
      0 : TmpTxt:= 'размягчена';
      1 : TmpTxt:= 'тестоватой консистенции';
      2 : TmpTxt:= 'пастозная';
      3 : TmpTxt:= 'эластической консистенции';
      4 : TmpTxt:= 'мягко-эластической консистенции';
      5 : TmpTxt:= 'туго-эластической консистенции';
      6 : TmpTxt:= 'уплотнена плотности';
      7 : TmpTxt:= 'каменистой плотности';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ' + TmpTxt + ',';

    case CbBoxProstataSize.ItemIndex of
      0 : TmpTxt:= 'не увеличена';
      1 : TmpTxt:= 'увеличена';
      2 : TmpTxt:= 'левая доля увеличена относительно правой доли';
      3 : TmpTxt:= 'правая доля увеличена относительно левой доли';
    end;{case}

    ReadyTxt:= ReadyTxt + ' ' + TmpTxt + ',';

    case CbBoxProstataDolor.ItemIndex of
      0 : TmpTxt:= 'безболезненная при пальпации,';
      1 : TmpTxt:= 'умеренно болезненная слева,';
      2 : TmpTxt:= 'умеренно болезненная справа,';
      3 : TmpTxt:= 'умеренно болезненная с обеих сторон,';
      4 : TmpTxt:= 'умеренно болезненная с обеих сторон, больше слева;';
      5 : TmpTxt:= 'умеренно болезненная с обеих сторон, больше справа;';
      6 : TmpTxt:= 'несколько болезненная по срединной борозде;';
      7 : TmpTxt:= 'умеренно болезненная по срединной борозде;';
      8 : TmpTxt:= 'выражено болезненная по срединной борозде;';
    end;{case}

    ReadyTxt:= ReadyTxt + ' железа ' + TmpTxt + ' контуры ';

    if CbBoxProstataPath.ItemIndex <> 4
      then
        ReadyTxt:= ReadyTxt + CbBoxProstataPath.Items[CbBoxProstataPath.ItemIndex] + ','
      else
        ReadyTxt:= ReadyTxt + 'смазаны,';

        ReadyTxt:= ReadyTxt + ' поверхность ' +
               CbBoxProstataSurface.Items[CbBoxProstataSurface.ItemIndex] +
               ', междолевая борозда ' +
               CbBoxProstataSulcus.Items[CbBoxProstataSulcus.ItemIndex] + ',';

    case CbBoxProstataMucosa.ItemIndex of
      0 : TmpTxt:= 'подвижная';
      1 : TmpTxt:= 'мало подвижная из-за спаек с подлежащими тканями';
      2 : TmpTxt:= 'плотно спаяна с подлежащими тканями';
    end;{case}

    ReadyTxt:= ReadyTxt + ' слизистая кишки над ней ' + TmpTxt + '.';

    case CbBoxProstataVesic.ItemIndex of
      0 : TmpTxt:= 'безболезненная с обеих сторон';
      1 : TmpTxt:= 'болезненная слева';
      2 : TmpTxt:= 'болезненная справа';
      3 : TmpTxt:= 'болезненная с обеих сторон';
      4 : TmpTxt:= 'болезненная с обеих сторон, больше слева';
      5 : TmpTxt:= 'болезненная с обеих сторон, больше справа';
    end;{case}

    ReadyTxt:= ReadyTxt + ' Пальпация семенных пузырьков ' + TmpTxt + '.';

    case CbBoxProstataCoopery.ItemIndex of
      0 : TmpTxt:= 'безболезненные с обеих сторон';
      1 : TmpTxt:= 'болезненные слева';
      2 : TmpTxt:= 'болезненные справа';
      3 : TmpTxt:= 'болезненные с обеих сторон';
      4 : TmpTxt:= 'болезненные с обеих сторон, больше слева';
      5 : TmpTxt:= 'болезненные с обеих сторон, больше справа';
    end;{case}

    ReadyTxt:= ReadyTxt + ' Куперовы железы пальпаторно ' + TmpTxt + '.';

    case CbBoxProstataAnalSphincter.ItemIndex of
      0 : TmpTxt:= 'гипотонусе';
      1 : TmpTxt:= 'нормотонусе';
      2 : TmpTxt:= 'гипертонусе';
    end;{case}

    ReadyTxt:= ReadyTxt + ' Анальный сфинктер в ' + TmpTxt + '.';

    //добавляем полученный текст в "виртуальный" рич-эдит
    with TmpRE do
      begin
      PlainText:= False;
      Lines.Add(ReadyTxt);//добавим текст
      SelStart:= 0;//курсор в начало
      SelLength:= CapLength;
      SelAttributes.Style:= [fsUnderline];//подчеркиваем выделенный текст
      SelStart:= Length(Text);
      SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
      end;{with TmpRE do}

    //присваиваем строке "форматированный" текст
    ReadyTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextStProstata;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст статуса
    if Trim(TmpRE.Text) = ''//если рич-эдит пустой
      then TextStProstata:= ReadyTxt //смело изменяем строковую переменную
      else//если рич-эдит что-то содержит
        if TextStProstata <> ReadyTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенное описание ректального исследования'
              + ' предстательной железы сейчас будет заменено на вновь сформированный '
              + 'текст. Разрешить замену?',
                'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextStProstata:= ReadyTxt;//заменяем, если ответ "Да"

  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.EdtProstataSize1KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> ',') and(Key <> #8)
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только цифры и запятую!',
      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.EdtProstataSize2KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> ',') and(Key <> #8)
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только цифры и запятую!',
      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.FormCreate(Sender: TObject);
begin
NiceSetFrmStProstataTemplate.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmStProstataTemplate.LoadSettings;
FocusFlag:= True;

Self.Caption:= 'Per rectum (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmStProstataTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmStProstataTemplate.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
