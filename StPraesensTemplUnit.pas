unit StPraesensTemplUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmStPraesensTemplate = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    NiceSetFrmStPraesensTemplate: TNiceSettings;
    GroupBox2: TGroupBox;
    CbBoxCorTone: TComboBox;
    CbBoxCorBlood: TComboBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    CbBoxFeelState: TComboBox;
    Label3: TLabel;
    CbBoxSkin: TComboBox;
    Label5: TLabel;
    CbBoxBlubber: TComboBox;
    Label4: TLabel;
    CbBoxLdi: TComboBox;
    BtnEdtLdi: TButton;
    CbBoxPulmBreathe: TComboBox;
    CbBoxWheeze: TComboBox;
    GroupBox5: TGroupBox;
    CbBoxAbdomDolor: TComboBox;
    CbBoxAbdomLevel: TComboBox;
    CbBoxAbdomSide: TComboBox;
    CbBoxAbdomDegree: TComboBox;
    GroupBox6: TGroupBox;
    CbBoxRenLocal: TComboBox;
    CbBoxRenDolor: TComboBox;
    CbBoxRenSide: TComboBox;
    GroupBox7: TGroupBox;
    CbBoxPasternFact: TComboBox;
    CbBoxPasternSide: TComboBox;
    GroupBox8: TGroupBox;
    CbBoxMicciaDolor: TComboBox;
    CbBoxMicciaCount: TComboBox;
    CbBoxMicciaNicturia: TComboBox;
    GroupBox9: TGroupBox;
    CbBoxStoolFunc: TComboBox;
    CbBoxStoolConsistence: TComboBox;
    CbBoxStool: TComboBox;
    AppEventsStPraesens: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbBoxLdiChange(Sender: TObject);
    procedure BtnEdtLdiClick(Sender: TObject);
    procedure CheckPaintCbboxLdi(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbBoxAbdomDolorChange(Sender: TObject);
    procedure CbBoxAbdomLevelChange(Sender: TObject);
    procedure CbBoxRenDolorChange(Sender: TObject);
    procedure CbBoxPasternFactChange(Sender: TObject);
    procedure CbBoxStoolFuncChange(Sender: TObject);
    procedure AppEventsStPraesensShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmStPraesensTemplate: TFrmStPraesensTemplate;

implementation

uses MainAndrUnit, ReseachLuesUnit, StatusPatUnit, VarAndrUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.BtnSaveClick(Sender: TObject);
var FullTxt, TmpStr: AnsiString;
    TmpRE: TRichEdit;
begin
//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        Parent:= FrmStPraesensTemplate;
        PlainText:= False;
        Visible:= False;
      end;

    //начинаем сборку текста из комбобоксов
    FullTxt:= 'Об-но: состояние ' + Trim(CbBoxFeelState.Text) + '.';

    case CbBoxSkin.ItemIndex of
     0 : TmpStr:= 'обычной';
     1 : TmpStr:= 'физиологической';
     2 : TmpStr:= 'бледно-розовой';
     3 : TmpStr:= 'бледной';
     4 : TmpStr:= 'бледно-цианотичной';
     5 : TmpStr:= 'землистой';
    end;

    FullTxt:= FullTxt + ' ' + 'Кожа и слизистые ' + TmpStr + ' окраски.';
    FullTxt:= FullTxt + ' ' + 'Подкожная клетчатка ' + Trim(CbBoxBlubber.Text) + '.';

    //анализируем состояние лимфузлов
    if CbBoxLdi.ItemIndex = 0
      then //выбран пункт "не увеличены"
        begin
        //"нормализуем" все лимфузлы для непротиворечивости данных
        VarLdiCervix:= 0;
        VarLdiSubLing:= 0;
        VarLdiAxillar:= 0;
        VarLdiUlnar:= 0;
        VarLdiInguinal:= 0;

        FullTxt:= FullTxt + ' ' + 'Периферические l-di не увеличены.';
        end{CbBoxLdi.ItemIndex=0..then}

      else //выбран пункт "изменены"
        if (VarLdiCervix = 1) or (VarLdiSubLing = 1) or
            (VarLdiAxillar = 1) or (VarLdiUlnar = 1) or (VarLdiInguinal = 1)
          then //один из лимфузлов помечен в листе на сифилис измененным
            begin
              TmpStr:= '';
              if VarLdiCervix = 1 then TmpStr:= 'шейных, ';
              if VarLdiSubLing = 1 then TmpStr:= TmpStr + 'подчелюстных, ';
              if VarLdiAxillar = 1 then TmpStr:= TmpStr + 'подмышечных, ';
              if VarLdiUlnar = 1 then TmpStr:= TmpStr + 'локтевых, ';
              if VarLdiInguinal = 1 then TmpStr:= TmpStr + 'паховых, ';

              //обрезаем запятую
              TmpStr:= WriteSymbolToEndString(Trim(TmpStr),' ');
              FullTxt:= FullTxt + ' ' + 'Отмечается увеличение ' + TmpStr +
                                                           'периферических лимфузлов.';
            end {if VarLdi = 1 ..then}
          else //ни один из лимфузлов не помечен в листе на сифилис измененным
            begin
            //предупреждение юзеру
            Application.MessageBox('Вы выбрали пункт "Периферические лимфузлы изменены", ' +
            'но не отметили, какие из лимфатических узлов имеют изменения. Пожалуйста, ' +
            'внесите соответствующие поправки для устранения противоречивости данных.',
            'Некорректный ввод данных', MB_OK + MB_ICONINFORMATION);

            BtnEdtLdiClick(Sender);
            Abort;
            end;{if VarLdi..else}

    FullTxt:= FullTxt + ' ' + 'Cor - ' + Trim(CbBoxCorTone.Text) + ', ' +
                                                          Trim(CbBoxCorBlood.Text) + '.';
    //анализируем хрипы
    case CbBoxWheeze.ItemIndex of
     0 : TmpStr:= 'хрипы не выслушиваются';
     1 : TmpStr:= 'выслушиваются сухие хрипы';
     2 : TmpStr:= 'выслушиваются мелкопузырчатые хрипы';
     3 : TmpStr:= 'выслушиваются крупнопузырчатые хрипы';
     4 : TmpStr:= 'выслушиваются крепитирующие хрипы';
    end;

    FullTxt:= FullTxt + ' ' + 'Pulm - ' + Trim(CbBoxPulmBreathe.Text) + ', ' + TmpStr + '.';


    if CbBoxAbdomDolor.ItemIndex = 0
      then
        TmpStr:= Trim(CbBoxAbdomDolor.Text)
      else
        TmpStr:= Trim(CbBoxAbdomDegree.Text) + ' ' + Trim(CbBoxAbdomDolor.Text) + ' '
         + Trim(CbBoxAbdomLevel.Text);

    if CbBoxAbdomSide.Enabled
      then
        begin
          case CbBoxAbdomSide.ItemIndex of
           3: TmpStr:= TmpStr + ', ' + Trim(CbBoxAbdomSide.Text);
           4: TmpStr:= TmpStr + ', ' + Trim(CbBoxAbdomSide.Text);
          else TmpStr:= TmpStr + ' ' + Trim(CbBoxAbdomSide.Text);
          end;

        end;

    FullTxt:= FullTxt + ' ' + 'Живот при пальпации ' + TmpStr + '. Пальпация области почек ';

    if CbBoxRenDolor.ItemIndex = 0
      then
        FullTxt:= FullTxt + 'безболезненная с обеих сторон. '
      else
        FullTxt:= FullTxt + Trim(CbBoxRenLocal.Text) + ' болезненная '
                                                                + Trim(CbBoxRenSide.Text) + '. ';


    case CbBoxPasternFact.ItemIndex of
      0: TmpStr:= 'отрицательный с обеих сторон';
      1: begin //симптом положительный
           case CbBoxPasternSide.ItemIndex of
             0: TmpStr:= 'слева - положительный, справа - отрицательный';
             1: TmpStr:= 'справа - положительный, слева - отрицательный';
           else
                TmpStr:= 'положительный с обеих сторон';
           end;
         end;
      2: begin  //симптом сомнительный
           case CbBoxPasternSide.ItemIndex of
             0: TmpStr:= 'слева - сомнительный, справа - отрицательный';
             1: TmpStr:= 'справа - сомнительный, слева - отрицательный';
           else
                TmpStr:= 'сомнительный с обеих сторон';
           end;
         end;
    end;

    FullTxt:= FullTxt + 'Симптом Пастернацкого ' + TmpStr + '.';

    //анализируем никтурию
    case CbBoxMicciaNicturia.ItemIndex of
     0 : TmpStr:= 'никтурии нет';
     1 : TmpStr:= 'отмечает никтурию';
    end;

    FullTxt:= FullTxt + ' Мочеиспускание ' + Trim(CbBoxMicciaDolor.Text) + ', ' +
                                        Trim(CbBoxMicciaCount.Text) + ', ' + TmpStr + '. ';

    if CbBoxStoolFunc.ItemIndex = 0
      then
        FullTxt:= FullTxt + 'Стул не нарушен.'
      else
        begin
          if CbBoxStool.ItemIndex = 1
            then
              TmpStr:= 'отмечает запоры'
            else
              TmpStr:= Trim(CbBoxStool.Text);
          FullTxt:= FullTxt + 'Стул ' + Trim(CbBoxStoolConsistence.Text) + ', ' + TmpStr + '.';
        end;

(*
    FullTxt:= FullTxt + ' ' + 'Живот при пальпации ' + Trim(CbBoxAbdomDolor.Text) + '.';

    //анализируем никтурию
    case CbBoxMicciaNicturia.ItemIndex of
     0 : TmpStr:= 'никтурии нет';
     1 : TmpStr:= 'отмечает никтурию';
    end;

    FullTxt:= FullTxt + ' Мочеиспускание ' + Trim(CbBoxMicciaDolor.Text) + ', ' +
                                        Trim(CbBoxMicciaCount.Text) + ', ' + TmpStr + '.';
*)
    //добавляем полученный текст в "виртуальный" рич-эдит
    with TmpRE do
      begin
      PlainText:= False;
      Lines.Add(FullTxt);//добавим текст
      SelStart:= 0;//курсор в начало
      SelLength:= Length('Об-но:');
      SelAttributes.Style:= [fsUnderline];//подчеркиваем выделенный текст
      SelStart:= Length(Text);
      SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
      end;{with TmpRE do}

    //присваиваем строке "форматированный" текст
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextStPraesens;//деформатируем имеющийся для сравнения


    //анализируем имеющийся текст статуса
    if Trim(TmpRE.Text) = ''//если он пустой
      then TextStPraesens:= FullTxt//смело изменяем переменную
      else//если рич-эдит что-то содержит
        if TextStPraesens <> FullTxt //сравниваем содержимое и выдаем предупреждение
          then
            if Application.MessageBox('Ранее введенное описание объективного статуса' +
            ' сейчас будет заменено на вновь сформированный текст. Разрешить замену?',
            'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextStPraesens:= Trim(FullTxt);//заменяем, если ответ "Да"
  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.AppEventsStPraesensShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
    begin
      //реагируем на "хоткеи"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
        begin
          if BtnEdtLdi.Focused then Self.SetFocus;//уберем фокус с кнопки, если он там есть
          BtnSaveClick(Self);
        end;

      if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
    end;

AppEventsStPraesens.CancelDispatch;
end;

procedure TFrmStPraesensTemplate.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.FormShow(Sender: TObject);
begin
//проверяем состояние лимфузлов
CheckPaintCbboxLdi(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//проверяем отрисовку CbboxLdi
procedure TFrmStPraesensTemplate.CheckPaintCbboxLdi(Sender: TObject);
begin
//проверяем состояние лимфузлов
//если изменены
if (VarLdiCervix = 1) or (VarLdiSubLing =1)
                    or (VarLdiAxillar = 1) or (VarLdiUlnar = 1) or (VarLdiInguinal = 1)
  then CbBoxLdi.ItemIndex:= 1//ставим пункт на "изменены"
  else CbBoxLdi.ItemIndex:= 0;//ставим пункт "не увеличены"

CbBoxLdiChange(Sender);
CbBoxLdi.SelLength:= 0;//снимем выделение
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxLdiChange(Sender: TObject);
begin
if CbBoxLdi.ItemIndex = 0
  then
    begin
    CbBoxLdi.Width:= 185;
    BtnEdtLdi.Visible:= False;
    end
  else
    begin
    CbBoxLdi.Width:= 164;
    BtnEdtLdi.Visible:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.BtnEdtLdiClick(Sender: TObject);
begin
with TFrmResearchLues.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

//проверяем состояние лимфузлов
CheckPaintCbboxLdi(Sender);
end;

//----------------------------------------------------------------------------


procedure TFrmStPraesensTemplate.FormCreate(Sender: TObject);
begin
NiceSetFrmStPraesensTemplate.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmStPraesensTemplate.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Описание общего статуса (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Описание общего статуса (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//проверяем комбы
CbBoxAbdomDolorChange(Sender);
CbBoxRenDolorChange(Sender);
CbBoxPasternFactChange(Sender);
CbBoxStoolFuncChange(Sender);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmStPraesensTemplate.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxAbdomDolorChange(Sender: TObject);
begin
CbBoxAbdomDegree.Enabled:= not (CbBoxAbdomDolor.ItemIndex = 0);
CbBoxAbdomLevel.Enabled:= not (CbBoxAbdomDolor.ItemIndex = 0);
CbBoxAbdomLevelChange(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxAbdomLevelChange(Sender: TObject);
begin
CbBoxAbdomSide.Enabled:= not((CbBoxAbdomLevel.ItemIndex = 0) or (CbBoxAbdomLevel.ItemIndex = 3))
                                                           and not (CbBoxAbdomDolor.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxRenDolorChange(Sender: TObject);
begin
CbBoxRenLocal.Enabled:= not (CbBoxRenDolor.ItemIndex = 0);
CbBoxRenSide.Enabled:= not (CbBoxRenDolor.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxPasternFactChange(Sender: TObject);
begin
CbBoxPasternSide.Enabled:= not(CbBoxPasternFact.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStPraesensTemplate.CbBoxStoolFuncChange(Sender: TObject);
begin
CbBoxStoolConsistence.Enabled:= not (CbBoxStoolFunc.ItemIndex = 0);
CbBoxStool.Enabled:= not (CbBoxStoolFunc.ItemIndex = 0);
end;

//----------------------------------------------------------------------------

end.
