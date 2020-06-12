unit StLocalisTemplUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmStLocalisTemplate = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    ChBoxPenis: TCheckBox;
    ChBoxScrotum: TCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    CbBoxOstiumUrethra: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    CbBoxSpongiaUrethra: TComboBox;
    Label3: TLabel;
    CbBoxGlansPenis: TComboBox;
    Label4: TLabel;
    CbBoxDischarge: TComboBox;
    Label5: TLabel;
    CbBoxDischargeNature: TComboBox;
    Label6: TLabel;
    CbBoxDischargeQuantity: TComboBox;
    Label7: TLabel;
    CbBoxGlansInjuries: TComboBox;
    Label8: TLabel;
    CbBoxPreputium: TComboBox;
    Label9: TLabel;
    CbBoxGlansSpot: TComboBox;
    Label10: TLabel;
    CbBoxPreputiumNature: TComboBox;
    Label11: TLabel;
    CbBoxScrotum: TComboBox;
    Label12: TLabel;
    CbBoxScrotumInjuries: TComboBox;
    CbBoxTestisDext: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    CbBoxTestisDextSize: TComboBox;
    Label15: TLabel;
    CbBoxTestisDextDensity: TComboBox;
    Label16: TLabel;
    CbBoxTestisDextSurface: TComboBox;
    Label17: TLabel;
    CbBoxTestisDextPath: TComboBox;
    Label18: TLabel;
    CbBoxTestisDextDolor: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    CbBoxTestisSin: TComboBox;
    CbBoxTestisSinDolor: TComboBox;
    CbBoxTestisSinSize: TComboBox;
    CbBoxTestisSinDensity: TComboBox;
    CbBoxTestisSinSurface: TComboBox;
    CbBoxTestisSinPath: TComboBox;
    Label25: TLabel;
    CbBoxEpidDext: TComboBox;
    Label26: TLabel;
    CbBoxEpidDextPath: TComboBox;
    Label27: TLabel;
    CbBoxEpidDextDolor: TComboBox;
    Label28: TLabel;
    CbBoxEpidSin: TComboBox;
    Label29: TLabel;
    CbBoxEpidSinPath: TComboBox;
    Label30: TLabel;
    CbBoxEpidSinDolor: TComboBox;
    Label31: TLabel;
    CbBoxSpongiaColor: TComboBox;
    Label32: TLabel;
    CbBoxPreputiumFimos: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    CbBoxFunicDext: TComboBox;
    CbBoxFunicDextVena: TComboBox;
    CbBoxFunicSin: TComboBox;
    CbBoxFunicSinVena: TComboBox;
    NiceSetFrmStLocalisTemplate: TNiceSettings;
    AppEventsStLocalis: TApplicationEvents;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure ChBoxPenisClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChBoxScrotumClick(Sender: TObject);
    procedure CbBoxOstiumUrethraChange(Sender: TObject);
    procedure CbBoxDischargeChange(Sender: TObject);
    procedure CbBoxGlansPenisChange(Sender: TObject);
    procedure CbBoxPreputiumChange(Sender: TObject);
    procedure CbBoxTestisDextChange(Sender: TObject);
    procedure CbBoxTestisSinChange(Sender: TObject);
    procedure CbBoxEpidDextChange(Sender: TObject);
    procedure CbBoxEpidSinChange(Sender: TObject);
    procedure CbBoxFunicDextChange(Sender: TObject);
    procedure CbBoxFunicSinChange(Sender: TObject);
    procedure CbBoxScrotumChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsStLocalisShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmStLocalisTemplate: TFrmStLocalisTemplate;

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, Math, DMFIBUnit;
var FocusFlag: Boolean;

{$R *.dfm}


//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.AppEventsStLocalisShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //реагируем на "хоткеи"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then  BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
  end;

AppEventsStLocalis.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.BtnSaveClick(Sender: TObject);
var TxtPenis, TxtScrotum, TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TxtPenis:= '';
TxtScrotum:= '';
TmpTxt:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        Parent:= FrmStLocalisTemplate;
        PlainText:= False;
        Visible:= False;
      end;
    //если отмечен пункт "Описать penis"
    if ChBoxPenis.Enabled then
      begin
      //-------------- описание отверстия уретры -----------
        if CbBoxOstiumUrethra.ItemIndex <> 0
          then//выбран любой пункт, кроме первого
            begin
              TxtPenis:= 'Наружное отверстие уретры ';
              case CbBoxOstiumUrethra.ItemIndex of
                1: TxtPenis:= '';
                2: TxtPenis:= TxtPenis + 'с признаками меатостеноза,';
                3: TxtPenis:= TxtPenis + 'с признаками гипоспадии,';
              end;{case}

              if CbBoxOstiumUrethra.ItemIndex = 1 //выбран пункт "устье уретры изменено"
                then TxtPenis:= TxtPenis + 'Губки уретры '
                else TxtPenis:= TxtPenis + ' губки уретры ';

              TxtPenis:= TxtPenis + CbBoxSpongiaUrethra.Items[CbBoxSpongiaUrethra.ItemIndex];

              case CbBoxSpongiaColor.ItemIndex of
                0 : TmpTxt:= 'обычной окраски';
                1 : TmpTxt:= 'гиперемированы';
                2 : TmpTxt:= 'синюшной окраски';
              end;{case}

              if CbBoxSpongiaUrethra.ItemIndex <> 3
                then TxtPenis:= TxtPenis + ', ' + TmpTxt
                else TxtPenis:= TxtPenis;
            end{if..then CbBoxOstiumUrethra.ItemIndex <> 0}
          else//если выбран первый пункт
            TxtPenis:= 'Наружное отверстие уретры без видимых воспалительных ' +
                                                                            'изменений';

      //-------------- описание выделений из уретры -----------
        if CbBoxDischarge.ItemIndex = 0
          then TxtPenis:= TxtPenis + ', отделяемого из уретры нет.'
          else
            begin
              case CbBoxDischargeQuantity.ItemIndex of
                0 : TmpTxt:= 'со скудным ';
                1 : TmpTxt:= 'с умеренным ';
                2 : TmpTxt:= 'с обильным ';
              end;

              TxtPenis:= TxtPenis + ', ' + TmpTxt;

              case CbBoxDischargeNature.ItemIndex of
                0 : TmpTxt:= 'серозным';
                1 : TmpTxt:= 'слизистым';
                2 : TmpTxt:= 'гнойным';
                3 : TmpTxt:= 'геморрагическим';
              end;

              TxtPenis:= TxtPenis + ' ' + TmpTxt + ' отделяемым из устья уретры.';
            end;{if..else CbBoxDischarge.ItemIndex = 0}



      //-------------- описание головки и крайней плоти -----------
        if (CbBoxGlansPenis.ItemIndex = 0) and (CbBoxPreputium.ItemIndex = 0)
          then TxtPenis:= TxtPenis + ' Головка и крайняя плоть не изменены.'
          else
            begin
            //------------------ описываем головку отдельно -----------------
              if CbBoxGlansPenis.ItemIndex = 0
                then  TxtPenis:= TxtPenis + ' Головка penis не воспалена.'
                else
                  begin
                    case CbBoxGlansInjuries.ItemIndex of
                      0 : TmpTxt:= 'внешне не изменена';
                      1 : TmpTxt:= 'с участками шелушения';
                      2 : TmpTxt:= 'с наличием эрозий';
                      3 : TmpTxt:= 'с наличием язв';
                      4 : TmpTxt:= 'с рубцовыми наложениями';
                      5 : TmpTxt:= 'с очагами гиперемии';
                      6 : TmpTxt:= 'полностью гиперемирована';
                    end;{case}

                    TxtPenis:= TxtPenis + ' Поверхность головки penis ' + TmpTxt;

                    if CbBoxGlansSpot.ItemIndex = 0
                      then TxtPenis:= TxtPenis + '.'
                      else
                        begin
                          case CbBoxGlansSpot.ItemIndex of
                            1 : TmpTxt:= 'скудным без запаха';
                            2 : TmpTxt:= 'скудным с запахом';
                            3 : TmpTxt:= 'обильным без запаха';
                            4 : TmpTxt:= 'обильным с запахом';
                          end;

                          TxtPenis:= TxtPenis + ', покрыта ' + TmpTxt + ' налетом.';
                        end;{if..else CbBoxGlansSpot.ItemIndex = 0}
                  end;{if..else Cb BoxGlansPenis.ItemIndex = 0}

            //------------------ описываем крайнюю плоть отдельно -----------------
              TxtPenis:= TxtPenis + ' Крайняя плоть ';

              if CbBoxPreputium.ItemIndex <> 1
                then TxtPenis:= TxtPenis + CbBoxPreputium.Items[CbBoxPreputium.ItemIndex] + '.'
                else
                  begin
                    case CbBoxPreputiumNature.ItemIndex of
                      0 : TmpTxt:= 'внешне не изменена';
                      1 : TmpTxt:= 'с признаками шелушения';
                      2 : TmpTxt:= 'гиперемирована';
                      3 : TmpTxt:= 'с наличием эрозий';
                      4 : TmpTxt:= 'с наличием язвочек';
                      5 : TmpTxt:= 'с наличием трещин';
                      6 : TmpTxt:= 'с наличием рубцовых наложений';
                      7 : TmpTxt:= 'гиперемирована, с эрозиями и язвочками';
                    end;{case}

                    TxtPenis:= TxtPenis + TmpTxt;

                    if CbBoxPreputiumFimos.ItemIndex = 0
                      then TxtPenis:= TxtPenis + '.'
                      else TxtPenis:= TxtPenis + ', имеются признаки фимоза.'
                  end;{if..else CbBoxPreputium.ItemIndex <> 1}
            end;{if..else CbBoxGlansPenis and CbBoxPreputium = 0}
      end;{if..then ChBoxPenis.Enabled}

    //если отмечен пункт "Описать органы мошонки"
    if ChBoxScrotum.Enabled then
      begin
        //если яички и придатки интактны, то так и напишем
        if (CbBoxTestisDext.ItemIndex = 0) and
              (CbBoxTestisSin.ItemIndex = 0) and
                  (CbBoxEpidDext.ItemIndex = 0) and
                      (CbBoxEpidSin.ItemIndex = 0)
          then
            TxtScrotum:= 'Яички и придатки интактны с обеих сторон.'
          else
            begin
            //----------- описываем правое яичко -------------------
              TxtScrotum:= 'Правое яичко';

              if CbBoxTestisDext.ItemIndex <> 1
                then
                  begin
                    case CbBoxTestisDext.ItemIndex of
                      0 : TmpTxt:= 'интактно';
                      2 : TmpTxt:= 'в мошонке не пальпируется';
                    end;{case}

                      TxtScrotum:= TxtScrotum + ' ' + TmpTxt + '.';
                  end {if..else CbBoxTestisDext.ItemIndex <> 1}
                else
                  begin
                    case CbBoxTestisDextDolor.ItemIndex of
                      0 : TmpTxt:= 'безболезненное';
                      1 : TmpTxt:= 'слабо болезненное';
                      2 : TmpTxt:= 'умеренно болезненное';
                      3 : TmpTxt:= 'выражено болезненное';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ' при пальпации,';

                    case CbBoxTestisDextSize.ItemIndex of
                      0 : TmpTxt:= 'увеличено в размерах';
                      1 : TmpTxt:= 'нормальных размеров';
                      2 : TmpTxt:= 'уменьшено в размерах';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ',';

                    case CbBoxTestisDextDensity.ItemIndex of
                      0 : TmpTxt:= 'плотной консистенции';
                      1 : TmpTxt:= 'эластической консистенции';
                      2 : TmpTxt:= 'тестоватой консистенции';
                      3 : TmpTxt:= 'с участками флюктуации';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ', поверхность ' +
                      CbBoxTestisDextSurface.Items[CbBoxTestisDextSurface.ItemIndex] +
                        ', контуры ' +
                          CbBoxTestisDextPath.Items[CbBoxTestisDextPath.ItemIndex] + '.';

                  end;{if..else CbBoxTestisDext.ItemIndex <> 1}

            //----------- описываем правый придаток, если яичко не отсутствует ---------------
              if CbBoxTestisDext.ItemIndex <> 2 then
                begin
                  TxtScrotum:= TxtScrotum + ' Правый придаток';

                  if CbBoxEpidDext.ItemIndex = 0
                    then TxtScrotum:= TxtScrotum + ' интактен.'
                    else
                      begin
                        case CbBoxEpidDextDolor.ItemIndex of
                          0 : TmpTxt:= 'безболезненный';
                          1 : TmpTxt:= 'слабо болезненный';
                          2 : TmpTxt:= 'умеренно болезненный';
                          3 : TmpTxt:= 'выражено болезненный';
                        end;{case}

                        TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ' при пальпации,';

                        case CbBoxEpidDextPath.ItemIndex of
                          0 : TmpTxt:= 'четкие';
                          1 : TmpTxt:= 'нечеткие';
                          2 : TmpTxt:= 'плохо дифференцируются от паренхимы яичка';
                        end;{case}

                        TxtScrotum:= TxtScrotum + ' контуры ' + TmpTxt + '.';

                      end;{if..else CbBoxEpidDext.ItemIndex = 0}
                end;

            //----------- описываем левое яичко -------------------
              TxtScrotum:= TxtScrotum + ' Левое яичко';

              if CbBoxTestisSin.ItemIndex <> 1
                then
                  begin
                    case CbBoxTestisSin.ItemIndex of
                      0 : TmpTxt:= 'интактно';
                      2 : TmpTxt:= 'в мошонке не пальпируется';
                    end;{case}

                  TxtScrotum:= TxtScrotum + ' ' + TmpTxt + '.';

                  end {if..else CbBoxTestisSin.ItemIndex <> 1}
                else
                  begin
                    case CbBoxTestisSinDolor.ItemIndex of
                      0 : TmpTxt:= 'безболезненное';
                      1 : TmpTxt:= 'слабо болезненное';
                      2 : TmpTxt:= 'умеренно болезненное';
                      3 : TmpTxt:= 'выражено болезненное';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ' при пальпации,';

                    case CbBoxTestisSinSize.ItemIndex of
                      0 : TmpTxt:= 'увеличено в размерах';
                      1 : TmpTxt:= 'нормальных размеров';
                      2 : TmpTxt:= 'уменьшено в размерах';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ',';

                    case CbBoxTestisSinDensity.ItemIndex of
                      0 : TmpTxt:= 'плотной консистенции';
                      1 : TmpTxt:= 'эластической консистенции';
                      2 : TmpTxt:= 'тестоватой консистенции';
                      3 : TmpTxt:= 'с участками флюктуации';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ', поверхность ' +
                      CbBoxTestisSinSurface.Items[CbBoxTestisSinSurface.ItemIndex] +
                        ', контуры ' +
                          CbBoxTestisSinPath.Items[CbBoxTestisSinPath.ItemIndex] + '.';

                  end;{if..else CbBoxTestisSin.ItemIndex <> 1}

            //----------- описываем левый придаток, если яичко не отсутствует ---------------
              if CbBoxTestisSin.ItemIndex <> 2 then
                begin
                  TxtScrotum:= TxtScrotum + ' Левый придаток';

                  if CbBoxEpidSin.ItemIndex = 0
                    then TxtScrotum:= TxtScrotum + ' интактен.'
                    else
                      begin
                        case CbBoxEpidSinDolor.ItemIndex of
                          0 : TmpTxt:= 'безболезненный';
                          1 : TmpTxt:= 'слабо болезненный';
                          2 : TmpTxt:= 'умеренно болезненный';
                          3 : TmpTxt:= 'выражено болезненный';
                        end;{case}

                        TxtScrotum:= TxtScrotum + ' ' + TmpTxt + ' при пальпации,';

                        case CbBoxEpidSinPath.ItemIndex of
                          0 : TmpTxt:= 'четкие';
                          1 : TmpTxt:= 'нечеткие';
                          2 : TmpTxt:= 'плохо дифференцируются от паренхимы яичка';
                        end;{case}

                        TxtScrotum:= TxtScrotum + ' контуры ' + TmpTxt + '.';

                      end;{if..else CbBoxEpidSin.ItemIndex = 0}
                end;
            end;{if..else CbBox TestisDext, TestisSin, EpidDext, EpidSin = 0}

        //если любой из семенных канатиков изменен, то опишем каждый по отдельности
        if (CbBoxFunicDext.ItemIndex = 0) and (CbBoxFunicSin.ItemIndex = 0)
          then TmpTxt:= ''//проще говоря, ничего не пишем
          else
            begin
            //----------- описываем правый семенной канатик -----------
              if CbBoxFunicDext.ItemIndex = 0
                then TxtScrotum:= TxtScrotum + ' Правый семенной канатик без видимых' +
                                                             ' патологических изменений.'
                else
                  begin
                    case CbBoxFunicDextVena.ItemIndex of
                      0 : TmpTxt:= 'в покое';
                      1 : TmpTxt:= 'при натуживании';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' Отмечается расширение вен грушевидного ' +
                                   'сплетения правого семенного канатика ' + TmpTxt + '.';
                  end;{if..else CbBoxFunicDext.ItemIndex = 0}

            //----------- описываем левый семенной канатик -----------
              if CbBoxFunicSin.ItemIndex = 0
                then TxtScrotum:= TxtScrotum + ' Левый семенной канатик без видимых' +
                                                             ' патологических изменений.'
                else
                  begin
                    case CbBoxFunicSinVena.ItemIndex of
                      0 : TmpTxt:= 'в покое';
                      1 : TmpTxt:= 'при натуживании';
                    end;{case}

                    TxtScrotum:= TxtScrotum + ' Отмечается расширение вен грушевидного ' +
                                  'сплетения левого семенного канатика ' + TmpTxt + '.';
                  end;{if..else CbBoxFunicDext.ItemIndex = 0}
            end;{if..else CbBoxFunicDext and CbBoxFunicSin = 0}

        //--------------- описываем мошонку -------------------------
        if CbBoxScrotum.ItemIndex = 0
          then TxtScrotum:= TxtScrotum + ' Кожа мошонки не изменена.'
          else
            begin
              case CbBoxScrotumInjuries.ItemIndex of
                0 : TmpTxt:= 'гиперемирована';
                1 : TmpTxt:= 'с признаками шелушения эпидермиса';
                2 : TmpTxt:= 'эрозирована';
                3 : TmpTxt:= 'изъязвлена';
                4 : TmpTxt:= 'с явлениями отека';
              end;{case}

              TxtScrotum:= TxtScrotum + ' Кожа мошонки ' + TmpTxt + '.';

            end;{if..else CbBoxScrotum.ItemIndex = 0}
      end;{if..then ChBoxScrotum.Enabled}

    TmpTxt:= 'Status localis.' + ' '+  TxtPenis + ' ' + TxtScrotum;

    //добавляем полученный текст в "виртуальный" рич-эдит
    with TmpRE do
      begin
      PlainText:= False;
      Lines.Add(TmpTxt);//добавим текст
      SelStart:= 0;//курсор в начало
      SelLength:= Length('Status localis.');
      SelAttributes.Style:= [fsUnderline];//подчеркиваем выделенный текст
      SelStart:= Length(Text);
      SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
      end;{with TmpRE do}

    //присваиваем строке "форматированный" текст
    TmpTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextStLocalis;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст статуса
    if Trim(TmpRE.Text) = ''//если рич-эдит пустой
      then TextStLocalis:= TmpTxt //смело изменяем переменную
      else//если рич-эдит что-то содержит
        if TextStLocalis <> TmpTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенное описание состояния гениталий' +
            ' сейчас будет заменено на вновь сформированный текст. Разрешить замену?',
            'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextStLocalis:= TmpTxt;//заменяем, если ответ "Да"
  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.FormCreate(Sender: TObject);
begin
NiceSetFrmStLocalisTemplate.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmStLocalisTemplate.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Описание локального статуса (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Описание локального статуса (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

ChBoxPenis.Checked:= True;
ChBoxScrotum.Checked:= True;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.FormShow(Sender: TObject);
begin
ChBoxPenisClick(Sender);
ChBoxScrotumClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.ChBoxPenisClick(Sender: TObject);
begin
Label1.Enabled:= ChBoxPenis.Checked;
Label2.Enabled:= ChBoxPenis.Checked;
Label3.Enabled:= ChBoxPenis.Checked;
Label4.Enabled:= ChBoxPenis.Checked;
Label5.Enabled:= ChBoxPenis.Checked;
Label6.Enabled:= ChBoxPenis.Checked;
Label7.Enabled:= ChBoxPenis.Checked;
Label8.Enabled:= ChBoxPenis.Checked;
Label9.Enabled:= ChBoxPenis.Checked;
Label10.Enabled:= ChBoxPenis.Checked;
Label31.Enabled:= ChBoxPenis.Checked;
Label32.Enabled:= ChBoxPenis.Checked;

CbBoxOstiumUrethra.Enabled:= ChBoxPenis.Checked;
CbBoxSpongiaUrethra.Enabled:= ChBoxPenis.Checked;
CbBoxSpongiaColor.Enabled:= ChBoxPenis.Checked;

CbBoxDischarge.Enabled:= ChBoxPenis.Checked;
CbBoxDischargeNature.Enabled:= ChBoxPenis.Checked;
CbBoxDischargeQuantity.Enabled:= ChBoxPenis.Checked;

CbBoxGlansPenis.Enabled:= ChBoxPenis.Checked;
CbBoxGlansInjuries.Enabled:= ChBoxPenis.Checked;
CbBoxGlansSpot.Enabled:= ChBoxPenis.Checked;

CbBoxPreputium.Enabled:= ChBoxPenis.Checked;
CbBoxPreputiumNature.Enabled:= ChBoxPenis.Checked;
CbBoxPreputiumFimos.Enabled:= ChBoxPenis.Checked;

if ChBoxPenis.Checked
  then
    begin
    //проверяем значения некоторых комбобоксов
    CbBoxOstiumUrethraChange(Sender);
    CbBoxDischargeChange(Sender);
    CbBoxGlansPenisChange(Sender);
    CbBoxPreputiumChange(Sender);
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.ChBoxScrotumClick(Sender: TObject);
begin
label11.Enabled:= ChBoxScrotum.Checked;
label12.Enabled:= ChBoxScrotum.Checked;
label13.Enabled:= ChBoxScrotum.Checked;
label14.Enabled:= ChBoxScrotum.Checked;
label15.Enabled:= ChBoxScrotum.Checked;
label16.Enabled:= ChBoxScrotum.Checked;
label17.Enabled:= ChBoxScrotum.Checked;
label18.Enabled:= ChBoxScrotum.Checked;
label19.Enabled:= ChBoxScrotum.Checked;
label20.Enabled:= ChBoxScrotum.Checked;
label21.Enabled:= ChBoxScrotum.Checked;
label22.Enabled:= ChBoxScrotum.Checked;
label23.Enabled:= ChBoxScrotum.Checked;
label24.Enabled:= ChBoxScrotum.Checked;
label25.Enabled:= ChBoxScrotum.Checked;
label26.Enabled:= ChBoxScrotum.Checked;
label27.Enabled:= ChBoxScrotum.Checked;
label28.Enabled:= ChBoxScrotum.Checked;
label29.Enabled:= ChBoxScrotum.Checked;
label30.Enabled:= ChBoxScrotum.Checked;
label33.Enabled:= ChBoxScrotum.Checked;
label34.Enabled:= ChBoxScrotum.Checked;
label35.Enabled:= ChBoxScrotum.Checked;
label36.Enabled:= ChBoxScrotum.Checked;

CbBoxTestisDext.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisDextDolor.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisDextSize.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisDextDensity.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisDextSurface.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisDextPath.Enabled:= ChBoxScrotum.Checked;

CbBoxTestisSin.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisSinDolor.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisSinSize.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisSinDensity.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisSinSurface.Enabled:= ChBoxScrotum.Checked;
CbBoxTestisSinPath.Enabled:= ChBoxScrotum.Checked;

CbBoxEpidDext.Enabled:= ChBoxScrotum.Checked;
CbBoxEpidDextPath.Enabled:= ChBoxScrotum.Checked;
CbBoxEpidDextDolor.Enabled:= ChBoxScrotum.Checked;
CbBoxEpidSin.Enabled:= ChBoxScrotum.Checked;
CbBoxEpidSinPath.Enabled:= ChBoxScrotum.Checked;
CbBoxEpidSinDolor.Enabled:= ChBoxScrotum.Checked;

CbBoxFunicDext.Enabled:= ChBoxScrotum.Checked;
CbBoxFunicDextVena.Enabled:= ChBoxScrotum.Checked;
CbBoxFunicSin.Enabled:= ChBoxScrotum.Checked;
CbBoxFunicSinVena.Enabled:= ChBoxScrotum.Checked;
CbBoxScrotum.Enabled:= ChBoxScrotum.Checked;
CbBoxScrotumInjuries.Enabled:= ChBoxScrotum.Checked;

if ChBoxScrotum.Checked
  then
    begin
    //проверяем значения некоторых комбобоксов
    CbBoxTestisDextChange(Sender);
    CbBoxTestisSinChange(Sender);
    CbBoxEpidDextChange(Sender);
    CbBoxEpidSinChange(Sender);
    CbBoxFunicDextChange(Sender);
    CbBoxFunicSinChange(Sender);
    CbBoxScrotumChange(Sender);
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxOstiumUrethraChange(Sender: TObject);
begin
Label2.Enabled:= (CbBoxOstiumUrethra.ItemIndex <> 0);
Label31.Enabled:= (CbBoxOstiumUrethra.ItemIndex <> 0);

CbBoxSpongiaUrethra.Enabled:= (CbBoxOstiumUrethra.ItemIndex <> 0);
CbBoxSpongiaColor.Enabled:= (CbBoxOstiumUrethra.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxDischargeChange(Sender: TObject);
begin
Label5.Enabled:= (CbBoxDischarge.ItemIndex <> 0);
Label6.Enabled:= (CbBoxDischarge.ItemIndex <> 0);

CbBoxDischargeNature.Enabled:= (CbBoxDischarge.ItemIndex <> 0);
CbBoxDischargeQuantity.Enabled:= (CbBoxDischarge.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxGlansPenisChange(Sender: TObject);
begin
Label7.Enabled:= (CbBoxGlansPenis.ItemIndex <> 0);
Label9.Enabled:= (CbBoxGlansPenis.ItemIndex <> 0);

CbBoxGlansInjuries.Enabled:= (CbBoxGlansPenis.ItemIndex <> 0);
CbBoxGlansSpot.Enabled:= (CbBoxGlansPenis.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxPreputiumChange(Sender: TObject);
begin
Label10.Enabled:= not (CbBoxPreputium.ItemIndex <> 1);
Label32.Enabled:= not (CbBoxPreputium.ItemIndex <> 1);

CbBoxPreputiumNature.Enabled:= not (CbBoxPreputium.ItemIndex <> 1);
CbBoxPreputiumFimos.Enabled:= not (CbBoxPreputium.ItemIndex <> 1);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxTestisDextChange(Sender: TObject);
begin
Label18.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
Label14.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
Label15.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
Label16.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
Label17.Enabled:= (CbBoxTestisDext.ItemIndex = 1);

CbBoxTestisDextDolor.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
CbBoxTestisDextSize.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
CbBoxTestisDextDensity.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
CbBoxTestisDextSurface.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
CbBoxTestisDextPath.Enabled:= (CbBoxTestisDext.ItemIndex = 1);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxTestisSinChange(Sender: TObject);
begin
Label20.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
Label21.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
Label22.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
Label23.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
Label24.Enabled:= (CbBoxTestisSin.ItemIndex = 1);

CbBoxTestisSinDolor.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
CbBoxTestisSinSize.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
CbBoxTestisSinDensity.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
CbBoxTestisSinSurface.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
CbBoxTestisSinPath.Enabled:= (CbBoxTestisSin.ItemIndex = 1);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxEpidDextChange(Sender: TObject);
begin
Label26.Enabled:= (CbBoxEpidDext.ItemIndex <> 0);
Label27.Enabled:= (CbBoxEpidDext.ItemIndex <> 0);

CbBoxEpidDextPath.Enabled:= (CbBoxEpidDext.ItemIndex <> 0);
CbBoxEpidDextDolor.Enabled:= (CbBoxEpidDext.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxEpidSinChange(Sender: TObject);
begin
Label29.Enabled:= (CbBoxEpidSin.ItemIndex <> 0);
Label30.Enabled:= (CbBoxEpidSin.ItemIndex <> 0);

CbBoxEpidSinPath.Enabled:= (CbBoxEpidSin.ItemIndex <> 0);
CbBoxEpidSinDolor.Enabled:= (CbBoxEpidSin.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxFunicDextChange(Sender: TObject);
begin
Label34.Enabled:= (CbBoxFunicDext.ItemIndex <> 0);
CbBoxFunicDextVena.Enabled:= (CbBoxFunicDext.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxFunicSinChange(Sender: TObject);
begin
Label36.Enabled:= (CbBoxFunicSin.ItemIndex <> 0);
CbBoxFunicSinVena.Enabled:= (CbBoxFunicSin.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.CbBoxScrotumChange(Sender: TObject);
begin
Label12.Enabled:= (CbBoxScrotum.ItemIndex <> 0);
CbBoxScrotumInjuries.Enabled:= (CbBoxScrotum.ItemIndex <> 0);
end;

//----------------------------------------------------------------------------

procedure TFrmStLocalisTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmStLocalisTemplate.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
