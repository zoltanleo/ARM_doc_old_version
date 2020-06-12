unit UrScopiaIrrigUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, NiceSettings, AppEvnts;

type
  TFrmUrScopiaIrrig = class(TForm)
    Label13: TLabel;
    Panel11: TPanel;
    PgCtrlUrScIrrig: TPageControl;
    BtnSave: TButton;
    BtnCancel: TButton;
    BtnPrev: TButton;
    BtnNext: TButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    CbBoxIrrigUrScAntTool_01: TComboBox;
    CbBoxIrrigUrScAntTool_02: TComboBox;
    CbBoxIrrigUrScAntTool_03: TComboBox;
    CbBoxIrrigUrScAntTool_04: TComboBox;
    GroupBox2: TGroupBox;
    CbBoxIrrigUrScAntOstium_01: TComboBox;
    CbBoxIrrigUrScAntOstium_02: TComboBox;
    CbBoxIrrigUrScAntOstium_03: TComboBox;
    GroupBox3: TGroupBox;
    CbBoxIrrigUrScAntMedium_01: TComboBox;
    CbBoxIrrigUrScAntMedium_02: TComboBox;
    GroupBox4: TGroupBox;
    CbBoxIrrigUrScAntScanne_01: TComboBox;
    CbBoxIrrigUrScAntScanne_02: TComboBox;
    CbBoxIrrigUrScAntScanne_03: TComboBox;
    CbBoxIrrigUrScAntScanne_04: TComboBox;
    CbBoxIrrigUrScAntScanne_05: TComboBox;
    GroupBox5: TGroupBox;
    CbBoxIrrigUrScAntPenal_01: TComboBox;
    CbBoxIrrigUrScAntPenal_02: TComboBox;
    CbBoxIrrigUrScAntPenal_03: TComboBox;
    CbBoxIrrigUrScAntPenal_04: TComboBox;
    GroupBox6: TGroupBox;
    CbBoxIrrigUrScAntBulb_01: TComboBox;
    CbBoxIrrigUrScAntBulb_02: TComboBox;
    CbBoxIrrigUrScAntBulb_03: TComboBox;
    GroupBox7: TGroupBox;
    CbBoxIrrigUrScAntMembr_01: TComboBox;
    CbBoxIrrigUrScAntMembr_02: TComboBox;
    GroupBox8: TGroupBox;
    CbBoxIrrigUrScAntCooper_01: TComboBox;
    CbBoxIrrigUrScAntCooper_02: TComboBox;
    CbBoxIrrigUrScAntCooper_03: TComboBox;
    CbBoxIrrigUrScAntCooper_04: TComboBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    CbBoxIrrigUrScPostMedium_01: TComboBox;
    CbBoxIrrigUrScPostMedium_02: TComboBox;
    CbBoxIrrigUrScPostMucous_01: TComboBox;
    CbBoxIrrigUrScPostMucous_02: TComboBox;
    CbBoxIrrigUrScPostMucous_03: TComboBox;
    GroupBox12: TGroupBox;
    CbBoxIrrigUrScPostCollic_01: TComboBox;
    CbBoxIrrigUrScPostCollic_02: TComboBox;
    CbBoxIrrigUrScPostCollic_03: TComboBox;
    CbBoxIrrigUrScPostCollic_04: TComboBox;
    CbBoxIrrigUrScPostCollic_05: TComboBox;
    CbBoxIrrigUrScPostDucts_01: TComboBox;
    CbBoxIrrigUrScPostDucts_02: TComboBox;
    CbBoxIrrigUrScPostDucts_03: TComboBox;
    CbBoxIrrigUrScPostDucts_04: TComboBox;
    CbBoxIrrigUrScPostMucous_04: TComboBox;
    CbBoxIrrigUrScPostMucous_05: TComboBox;
    CbBoxIrrigUrScPostMucous_06: TComboBox;
    GroupBox13: TGroupBox;
    CbBoxIrrigUrScPostMucous_07: TComboBox;
    CbBoxIrrigUrScPostMucous_08: TComboBox;
    CbBoxIrrigUrScPostVesic_01: TComboBox;
    CbBoxIrrigUrScPostVesic_06: TComboBox;
    CbBoxIrrigUrScPostVesic_04: TComboBox;
    CbBoxIrrigUrScPostVesic_05: TComboBox;
    CbBoxIrrigUrScPostVesic_07: TComboBox;
    CbBoxIrrigUrScPostCollic_06: TComboBox;
    CbBoxIrrigUrScPostCollic_07: TComboBox;
    CbBoxIrrigUrScPostCollic_08: TComboBox;
    CbBoxIrrigUrScPostVesic_02: TComboBox;
    CbBoxIrrigUrScPostVesic_03: TComboBox;
    CbBoxIrrigUrScAntPenal_05: TComboBox;
    CbBoxIrrigUrScAntPenal_06: TComboBox;
    DTPickUrScopiaIrrig: TDateTimePicker;
    Label1: TLabel;
    NiceSetFrmUrScopiaIrrig: TNiceSettings;
    AppEventsFrmUrScopiaIrrig: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure PgCtrlUrScIrrigChange(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure CbBoxIrrigUrScAntOstium_01Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntMedium_01Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntScanne_04Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntPenal_02Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntPenal_05Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntCooper_01Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntCooper_03Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostMedium_01Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostMucous_04Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostMucous_07Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostCollic_06Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostVesic_02Change(Sender: TObject);
    procedure CbBoxIrrigUrScAntMembr_01Change(Sender: TObject);
    procedure CbBoxIrrigUrScPostVesic_01Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmUrScopiaIrrigShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmUrScopiaIrrig: TFrmUrScopiaIrrig;

implementation

uses StatusPatUnit, VarAndrUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.FormCreate(Sender: TObject);
begin
NiceSetFrmUrScopiaIrrig.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmUrScopiaIrrig.LoadSettings;

PgCtrlUrScIrrig.ActivePageIndex:= 0;//выводим первую закладку
PgCtrlUrScIrrigChange(Sender);//проверяем кнопки

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.FormShow(Sender: TObject);
begin
//присваиваем комбам начальные значения
DTPickUrScopiaIrrig.DateTime:= VarUrScopiaIrrigDate;

CbBoxIrrigUrScAntTool_01.ItemIndex:= VarIrrigUrScAntTool_01;
CbBoxIrrigUrScAntTool_02.ItemIndex:= VarIrrigUrScAntTool_02;
CbBoxIrrigUrScAntTool_03.ItemIndex:= VarIrrigUrScAntTool_03;
CbBoxIrrigUrScAntTool_04.ItemIndex:= VarIrrigUrScAntTool_04;

CbBoxIrrigUrScAntOstium_01.ItemIndex:= VarIrrigUrScAntOstium_01;
CbBoxIrrigUrScAntOstium_02.ItemIndex:= VarIrrigUrScAntOstium_02;
CbBoxIrrigUrScAntOstium_03.ItemIndex:= VarIrrigUrScAntOstium_03;

CbBoxIrrigUrScAntMedium_01.ItemIndex:= VarIrrigUrScAntMedium_01;
CbBoxIrrigUrScAntMedium_02.ItemIndex:= VarIrrigUrScAntMedium_02;

CbBoxIrrigUrScAntScanne_01.ItemIndex:= VarIrrigUrScAntScanne_01;
CbBoxIrrigUrScAntScanne_02.ItemIndex:= VarIrrigUrScAntScanne_02;
CbBoxIrrigUrScAntScanne_03.ItemIndex:= VarIrrigUrScAntScanne_03;
CbBoxIrrigUrScAntScanne_04.ItemIndex:= VarIrrigUrScAntScanne_04;
CbBoxIrrigUrScAntScanne_05.ItemIndex:= VarIrrigUrScAntScanne_05;

CbBoxIrrigUrScAntPenal_01.ItemIndex:= VarIrrigUrScAntPenal_01;
CbBoxIrrigUrScAntPenal_02.ItemIndex:= VarIrrigUrScAntPenal_02;
CbBoxIrrigUrScAntPenal_03.ItemIndex:= VarIrrigUrScAntPenal_03;
CbBoxIrrigUrScAntPenal_04.ItemIndex:= VarIrrigUrScAntPenal_04;
CbBoxIrrigUrScAntPenal_05.ItemIndex:= VarIrrigUrScAntPenal_05;
CbBoxIrrigUrScAntPenal_06.ItemIndex:= VarIrrigUrScAntPenal_06;

CbBoxIrrigUrScAntBulb_01.ItemIndex:= VarIrrigUrScAntBulb_01;
CbBoxIrrigUrScAntBulb_02.ItemIndex:= VarIrrigUrScAntBulb_02;
CbBoxIrrigUrScAntBulb_03.ItemIndex:= VarIrrigUrScAntBulb_03;

CbBoxIrrigUrScAntMembr_01.ItemIndex:= VarIrrigUrScAntMembr_01;
CbBoxIrrigUrScAntMembr_02.ItemIndex:= VarIrrigUrScAntMembr_02;

CbBoxIrrigUrScAntCooper_01.ItemIndex:= VarIrrigUrScAntCooper_01;
CbBoxIrrigUrScAntCooper_02.ItemIndex:= VarIrrigUrScAntCooper_02;
CbBoxIrrigUrScAntCooper_03.ItemIndex:= VarIrrigUrScAntCooper_03;
CbBoxIrrigUrScAntCooper_04.ItemIndex:= VarIrrigUrScAntCooper_04;

CbBoxIrrigUrScPostMedium_01.ItemIndex:= VarIrrigUrScPostMedium_01;
CbBoxIrrigUrScPostMedium_02.ItemIndex:= VarIrrigUrScPostMedium_02;

CbBoxIrrigUrScPostMucous_01.ItemIndex:= VarIrrigUrScPostMucous_01;
CbBoxIrrigUrScPostMucous_02.ItemIndex:= VarIrrigUrScPostMucous_02;
CbBoxIrrigUrScPostMucous_03.ItemIndex:= VarIrrigUrScPostMucous_03;
CbBoxIrrigUrScPostMucous_04.ItemIndex:= VarIrrigUrScPostMucous_04;
CbBoxIrrigUrScPostMucous_05.ItemIndex:= VarIrrigUrScPostMucous_05;
CbBoxIrrigUrScPostMucous_06.ItemIndex:= VarIrrigUrScPostMucous_06;
CbBoxIrrigUrScPostMucous_07.ItemIndex:= VarIrrigUrScPostMucous_07;
CbBoxIrrigUrScPostMucous_08.ItemIndex:= VarIrrigUrScPostMucous_08;

CbBoxIrrigUrScPostCollic_01.ItemIndex:= VarIrrigUrScPostCollic_01;
CbBoxIrrigUrScPostCollic_02.ItemIndex:= VarIrrigUrScPostCollic_02;
CbBoxIrrigUrScPostCollic_03.ItemIndex:= VarIrrigUrScPostCollic_03;
CbBoxIrrigUrScPostCollic_04.ItemIndex:= VarIrrigUrScPostCollic_04;
CbBoxIrrigUrScPostCollic_05.ItemIndex:= VarIrrigUrScPostCollic_05;
CbBoxIrrigUrScPostCollic_06.ItemIndex:= VarIrrigUrScPostCollic_06;
CbBoxIrrigUrScPostCollic_07.ItemIndex:= VarIrrigUrScPostCollic_07;
CbBoxIrrigUrScPostCollic_08.ItemIndex:= VarIrrigUrScPostCollic_08;

CbBoxIrrigUrScPostDucts_01.ItemIndex:= VarIrrigUrScPostDucts_01;
CbBoxIrrigUrScPostDucts_02.ItemIndex:= VarIrrigUrScPostDucts_02;
CbBoxIrrigUrScPostDucts_03.ItemIndex:= VarIrrigUrScPostDucts_03;
CbBoxIrrigUrScPostDucts_04.ItemIndex:= VarIrrigUrScPostDucts_04;

CbBoxIrrigUrScPostVesic_01.ItemIndex:= VarIrrigUrScPostVesic_01;
CbBoxIrrigUrScPostVesic_02.ItemIndex:= VarIrrigUrScPostVesic_02;
CbBoxIrrigUrScPostVesic_03.ItemIndex:= VarIrrigUrScPostVesic_03;
CbBoxIrrigUrScPostVesic_04.ItemIndex:= VarIrrigUrScPostVesic_04;
CbBoxIrrigUrScPostVesic_05.ItemIndex:= VarIrrigUrScPostVesic_05;
CbBoxIrrigUrScPostVesic_06.ItemIndex:= VarIrrigUrScPostVesic_06;
CbBoxIrrigUrScPostVesic_07.ItemIndex:= VarIrrigUrScPostVesic_07;


CbBoxIrrigUrScAntOstium_01Change(Sender);
CbBoxIrrigUrScAntMedium_01Change(Sender);
CbBoxIrrigUrScAntScanne_04Change(Sender);
CbBoxIrrigUrScAntPenal_02Change(Sender);
CbBoxIrrigUrScAntPenal_05Change(Sender);
CbBoxIrrigUrScAntMembr_01Change(Sender);
CbBoxIrrigUrScAntCooper_01Change(Sender);
CbBoxIrrigUrScAntCooper_03Change(Sender);
CbBoxIrrigUrScPostMedium_01Change(Sender);
CbBoxIrrigUrScPostMucous_04Change(Sender);
CbBoxIrrigUrScPostMucous_07Change(Sender);
CbBoxIrrigUrScPostCollic_06Change(Sender);
CbBoxIrrigUrScPostVesic_01Change(Sender);

//если "рамка"-фокус на форме попадает на заголовок TTabSheet, то в VCL ActiveControll = TPageControl,
//если же вкладка в фокусе, а заголовок без рамки фокуса, то ActiveControll = TTabSheet.
//в первом случае клавиши-"стрелки" будут работать сами, во втором - их программно надо эмулировать
if PgCtrlUrScIrrig.ActivePage.CanFocus then PgCtrlUrScIrrig.ActivePage.SetFocus; //убираем фокус на вкладки
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.BtnSaveClick(Sender: TObject);
var SelLen: Integer;
    FullTxt, TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
        Parent:= FrmUrScopiaIrrig;
        PlainText:= False;
        Visible:=False;
      end;

    //добавляем заголовок
    FullTxt:= 'Протокол ирригационной уретроскопии' +
                    FormatDateTime(' (' + 'DD.MM.YY' + '):',DTPickUrScopiaIrrig.DateTime);

    SelLen:= Length(FullTxt);
(****************************************************************************)
    // --- описываем переднюю уретру

    case CbBoxIrrigUrScAntTool_04.ItemIndex of
      0: TmpTxt:= ' под местной анестезией препаратом "Инстиллагель"';
      1: TmpTxt:= ' под местной анестезией препаратом "Катеджель"';
      2: TmpTxt:= '';
    end;

    FullTxt:= FullTxt + TmpTxt;

    case CbBoxIrrigUrScAntTool_02.ItemIndex of
      0: TmpTxt:= '"Karl Storz"';
      1: TmpTxt:= '"Karl Wolf"';
      2: TmpTxt:= '"ABBA Оптимед"';
      3: TmpTxt:= '"Olympus"';
    end;

    FullTxt:= FullTxt + ' тубус уретроскопа марки ' + TmpTxt + ' № ';

    case CbBoxIrrigUrScAntTool_01.ItemIndex of
      0: TmpTxt:= '18 Ch';
      1: TmpTxt:= '19 Ch';
      2: TmpTxt:= '20 Ch';
      3: TmpTxt:= '21 Ch';
      4: TmpTxt:= '22 Ch';
    end;

    FullTxt:= FullTxt + TmpTxt;

    case CbBoxIrrigUrScAntTool_03.ItemIndex of
      0: TmpTxt:= '0';
      1: TmpTxt:= '5';
      2: TmpTxt:= '30';
      3: TmpTxt:= '70';
      4: TmpTxt:= '105';
      5: TmpTxt:= '120';
    end;

    FullTxt:= FullTxt + ' с оптикой ' + TmpTxt + ' градусов введен';

    if CbBoxIrrigUrScAntOstium_01.ItemIndex = 0
      then TmpTxt:= ' через неизмененное наружное отверстие уретры в полость '
                                                                      + 'ладьевидной ямки'
      else TmpTxt:= ' в полость ладьевидной ямки. Наружные губки уретры '
           + CbBoxIrrigUrScAntOstium_02.Items[CbBoxIrrigUrScAntOstium_02.ItemIndex] + ', '
           + CbBoxIrrigUrScAntOstium_03.Items[CbBoxIrrigUrScAntOstium_03.ItemIndex] + '.';

    FullTxt:= FullTxt + TmpTxt + #13#10 + '     Катетеризационная среда передней уретры '
      + CbBoxIrrigUrScAntMedium_01.Items[CbBoxIrrigUrScAntMedium_01.ItemIndex];

    if CbBoxIrrigUrScAntMedium_01.ItemIndex = 0
      then FullTxt:= FullTxt + '.'
      else FullTxt:= FullTxt + ' '
           + CbBoxIrrigUrScAntMedium_02.Items[CbBoxIrrigUrScAntMedium_02.ItemIndex] + '.';

    FullTxt:= FullTxt + ' Железы Сканне '
        + CbBoxIrrigUrScAntScanne_01.Items[CbBoxIrrigUrScAntScanne_01.ItemIndex] + ', '
        + CbBoxIrrigUrScAntScanne_02.Items[CbBoxIrrigUrScAntScanne_02.ItemIndex] + ', '
        + CbBoxIrrigUrScAntScanne_03.Items[CbBoxIrrigUrScAntScanne_03.ItemIndex] + ', '
        + CbBoxIrrigUrScAntScanne_04.Items[CbBoxIrrigUrScAntScanne_04.ItemIndex];

    if CbBoxIrrigUrScAntScanne_04.ItemIndex = 0
      then FullTxt:= FullTxt + '.'
      else FullTxt:= FullTxt + ' '
          + CbBoxIrrigUrScAntScanne_05.Items[CbBoxIrrigUrScAntScanne_05.ItemIndex] + '.';

    if CbBoxIrrigUrScAntPenal_02.ItemIndex = 0
      then TmpTxt:= 'сохранен'
      else TmpTxt:= 'слущен '
          + CbBoxIrrigUrScAntPenal_03.Items[CbBoxIrrigUrScAntPenal_03.ItemIndex] + ' '
          + CbBoxIrrigUrScAntPenal_04.Items[CbBoxIrrigUrScAntPenal_04.ItemIndex];

    FullTxt:= FullTxt + ' Пенальный отдел '
        + CbBoxIrrigUrScAntPenal_01.Items[CbBoxIrrigUrScAntPenal_01.ItemIndex] + ', '
        + 'эпителий слизистой ' + TmpTxt + ', '
        + CbBoxIrrigUrScAntPenal_05.Items[CbBoxIrrigUrScAntPenal_05.ItemIndex];

    if CbBoxIrrigUrScAntPenal_05.ItemIndex <> 1
      then FullTxt:= FullTxt + '.'
      else FullTxt:= FullTxt + ' '
        + CbBoxIrrigUrScAntPenal_06.Items[CbBoxIrrigUrScAntPenal_06.ItemIndex] + '.';

    if CbBoxIrrigUrScAntBulb_01.ItemIndex =0
      then TmpTxt:= 'сохранена'
      else TmpTxt:= 'деформирована';

    FullTxt:= FullTxt + ' Центральная фигура луковицы ' + TmpTxt + ', ';

    case CbBoxIrrigUrScAntBulb_02.ItemIndex of
      0: TmpTxt:= 'не изменены';
      1: TmpTxt:= 'утолщены';
      2: TmpTxt:= 'сглажены';
    end;

    FullTxt:= FullTxt + 'складки слизистой боковых стенок ' + TmpTxt + ', ';

    if CbBoxIrrigUrScAntBulb_03.ItemIndex = 0
      then FullTxt:= FullTxt + 'сходятся к мембранозному жому.'
      else FullTxt:= FullTxt + 'к мембранозному жому не сходятся.';

    FullTxt:= FullTxt + ' Мембранозный сфинктер '
      + CbBoxIrrigUrScAntMembr_02.Items[CbBoxIrrigUrScAntMembr_02.ItemIndex] + ', '
      + CbBoxIrrigUrScAntMembr_01.Items[CbBoxIrrigUrScAntMembr_01.ItemIndex] + '.';

    case CbBoxIrrigUrScAntCooper_01.ItemIndex of
      0: TmpTxt:= 'не изменены';
      1: TmpTxt:= 'сомкнуты';
      2: TmpTxt:= 'зияют';
    end;

    FullTxt:= FullTxt + ' Устья Куперовых желез ' + TmpTxt;

    if CbBoxIrrigUrScAntCooper_01.ItemIndex <> 0
      then FullTxt:= FullTxt + ', '
      + CbBoxIrrigUrScAntCooper_02.Items[CbBoxIrrigUrScAntCooper_02.ItemIndex];

    FullTxt:= FullTxt + ', '
      + CbBoxIrrigUrScAntCooper_03.Items[CbBoxIrrigUrScAntCooper_03.ItemIndex] ;

    if CbBoxIrrigUrScAntCooper_03.ItemIndex = 0
      then FullTxt:= FullTxt + '.'
      else FullTxt:= FullTxt + ', '
      + CbBoxIrrigUrScAntCooper_04.Items[CbBoxIrrigUrScAntCooper_04.ItemIndex] + '.';

    // --- описываем заднюю уретру
    if CbBoxIrrigUrScAntMembr_01.ItemIndex <> 4 then
      //если жом проходим для инструмента
      begin
        FullTxt:= FullTxt + #13#10 + '     Катетеризационная среда задней уретры '
          + CbBoxIrrigUrScPostMedium_01.Items[CbBoxIrrigUrScPostMedium_01.ItemIndex];      ;

        if CbBoxIrrigUrScPostMedium_01.ItemIndex <> 0
          then FullTxt:= FullTxt + ' ' + CbBoxIrrigUrScPostMedium_02.Items
                                            [CbBoxIrrigUrScPostMedium_02.ItemIndex];

        FullTxt:= FullTxt + '. Слизистая ' + CbBoxIrrigUrScPostMucous_01.Items
                [CbBoxIrrigUrScPostMucous_01.ItemIndex] + ', '
                + CbBoxIrrigUrScPostMucous_02.Items[CbBoxIrrigUrScPostMucous_02.ItemIndex]
                + ', при контакте  с инструментом ' + CbBoxIrrigUrScPostMucous_03.Items
                [CbBoxIrrigUrScPostMucous_03.ItemIndex] + ', ';

        case CbBoxIrrigUrScPostMucous_05.ItemIndex of
          0: TmpTxt:= 'лейкоплакии';
          1: TmpTxt:= 'малакоплакии';
          2: TmpTxt:= 'лейко- и малакоплакии';
        end;

        if CbBoxIrrigUrScPostMucous_04.ItemIndex = 0
          then FullTxt:= FullTxt + 'без очаговых изменений'
          else
            begin
              FullTxt:= FullTxt + 'имеются изменения в виде очагов ' + TmpTxt;

              case CbBoxIrrigUrScPostMucous_06.ItemIndex of
                0: TmpTxt:= 'по боковым стенкам с обеих сторон';
                1: TmpTxt:= 'преимущественно по правой боковой стенке';
                2: TmpTxt:= 'преимущественно по левой боковой стенке';
              end;

              FullTxt:= FullTxt + ' ' + TmpTxt;
            end;

        if CbBoxIrrigUrScPostMucous_07.ItemIndex = 0
          then FullTxt:= FullTxt + '.'
          else FullTxt:= FullTxt + ', ' + CbBoxIrrigUrScPostMucous_08.Items
            [CbBoxIrrigUrScPostMucous_08.ItemIndex]
            + ' визуализируются очаги ложного папилломатоза.';

        if CbBoxIrrigUrScPostCollic_03.ItemIndex = 0
          then TmpTxt:= 'не кровоточит'
          else TmpTxt:= 'кровоточит';

        FullTxt:= FullTxt + #13#10 + '     Семенной бугорок '
         + CbBoxIrrigUrScPostCollic_01.Items[CbBoxIrrigUrScPostCollic_01.ItemIndex] + ', '
         + CbBoxIrrigUrScPostCollic_02.Items[CbBoxIrrigUrScPostCollic_02.ItemIndex] + ', '
         + 'при контакте с инструментом ' + TmpTxt + ', '
         + CbBoxIrrigUrScPostCollic_04.Items[CbBoxIrrigUrScPostCollic_04.ItemIndex] + ', '
         + CbBoxIrrigUrScPostCollic_05.Items[CbBoxIrrigUrScPostCollic_05.ItemIndex];


         if CbBoxIrrigUrScPostCollic_08.ItemIndex = 2
          then
            begin
             case CbBoxIrrigUrScPostCollic_07.ItemIndex of
              0: TmpTxt:= 'определяются мягкие инфильтраты';
              1: TmpTxt:= 'определяются переходные инфильтраты';
              2: TmpTxt:= 'определяются твердые инфильтраты';
             end;
            end
          else
            begin
             case CbBoxIrrigUrScPostCollic_07.ItemIndex of
              0: TmpTxt:= 'определяется мягкий инфильтрат';
              1: TmpTxt:= 'определяется переходный инфильтрат';
              2: TmpTxt:= 'определяется твердый инфильтрат';
             end; 
            end;

         if CbBoxIrrigUrScPostCollic_06.ItemIndex = 0
          then FullTxt:= FullTxt + '.'
          else FullTxt:= FullTxt + ', ' + CbBoxIrrigUrScPostCollic_08.Items
                         [CbBoxIrrigUrScPostCollic_08.ItemIndex] + ' ' + TmpTxt + '.';

         case CbBoxIrrigUrScPostDucts_02.ItemIndex of
           0: TmpTxt:= 'не изменены';
           1: TmpTxt:= 'изменены по типу пролиферативного воспаления';
           2: TmpTxt:= 'изменены по типу перилиттреитов';
           3: TmpTxt:= 'изменены по типу закрытых аденитов';
         end;


         FullTxt:= FullTxt + #13#10 + '     Выводные протоки ацинусов железы '
           + CbBoxIrrigUrScPostDucts_01.Items[CbBoxIrrigUrScPostDucts_01.ItemIndex] + ', '
           + TmpTxt + ', при дотрагивании инструментом '
           + CbBoxIrrigUrScPostDucts_03.Items[CbBoxIrrigUrScPostDucts_03.ItemIndex];

         if CbBoxIrrigUrScPostDucts_03.ItemIndex = 2
          then
            begin
              case CbBoxIrrigUrScPostDucts_04.ItemIndex of
                0: TmpTxt:= ', наблюдается выделение секрета';
                1: TmpTxt:= ', выделение секрета не наблюдается';
              end;
             end
          else
            begin
              case CbBoxIrrigUrScPostDucts_04.ItemIndex of
                0: TmpTxt:= ' с выделением секрета';
                1: TmpTxt:= ' без выделения секрета';
              end;
            end;

         FullTxt:= FullTxt + TmpTxt + '.' + #13#10 + '     Мочевой пузырь';

         if CbBoxIrrigUrScPostVesic_01.ItemIndex <> 0
          then
            begin
              if CbBoxIrrigUrScPostVesic_02.ItemIndex = 0
                then TmpTxt:=','
                else TmpTxt:= CbBoxIrrigUrScPostVesic_03.Items
                                            [CbBoxIrrigUrScPostVesic_03.ItemIndex] + ',';

              FullTxt:= FullTxt + ': катетеризационная '
                + CbBoxIrrigUrScPostVesic_02.Items[CbBoxIrrigUrScPostVesic_02.ItemIndex]
                + ' ' + TmpTxt + ' '
                + CbBoxIrrigUrScPostVesic_05.Items[CbBoxIrrigUrScPostVesic_05.ItemIndex]
                + ', ';

              if CbBoxIrrigUrScPostVesic_04.ItemIndex <> 3
                then TmpTxt:= CbBoxIrrigUrScPostVesic_04.Items
                                                    [CbBoxIrrigUrScPostVesic_04.ItemIndex]
                else TmpTxt:= 'поверхность изменена по типу "булыжной мостовой"';

              FullTxt:= FullTxt + TmpTxt + ', '
                + CbBoxIrrigUrScPostVesic_06.Items[CbBoxIrrigUrScPostVesic_06.ItemIndex]
                + ', '
                + CbBoxIrrigUrScPostVesic_07.Items[CbBoxIrrigUrScPostVesic_07.ItemIndex]
                + '.';
             end
          else FullTxt:= FullTxt + ' без особенностей.';
      end;

    with TmpRE do
      begin
        Lines.Add(FullTxt);
        SelStart:= 0;
        SelLength:= SelLen;//выделяем "нужную" часть строки
        SelAttributes.Style:= [fsUnderline];//почеркиваем выделенный текст
        SelStart:= Length(Text);//курсор в конец текста
        SelLength:= 0;//уберем выделение
        SelAttributes.Assign(DefAttributes);//дефолтовые атрибуты
      end;{with TmpRE}
(****************************************************************************)

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextUrScopiaIrrig;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст протокола ирригационной уретроскопии
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextUrScopiaIrrig:= FullTxt //смело изменяем "форматную" текстовую переменную
      else//если что-то содержит
        if TextUrScopiaIrrig <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный текст протокола ирригаицонной ' +
               'уретроскопии сейчас будет заменен на вновь сформированный текст. ' +
               'Разрешить замену?',
               'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextUrScopiaIrrig:= FullTxt;//заменяем, если ответ "Да"

    //сохраняем содержимое контроллов в переменные
    VarUrScopiaIrrigDate:= DTPickUrScopiaIrrig.Date;

    VarIrrigUrScAntTool_01:= CbBoxIrrigUrScAntTool_01.ItemIndex;
    VarIrrigUrScAntTool_02:= CbBoxIrrigUrScAntTool_02.ItemIndex;
    VarIrrigUrScAntTool_03:= CbBoxIrrigUrScAntTool_03.ItemIndex;
    VarIrrigUrScAntTool_04:= CbBoxIrrigUrScAntTool_04.ItemIndex;

    VarIrrigUrScAntOstium_01:= CbBoxIrrigUrScAntOstium_01.ItemIndex;
    VarIrrigUrScAntOstium_02:= CbBoxIrrigUrScAntOstium_02.ItemIndex;
    VarIrrigUrScAntOstium_03:= CbBoxIrrigUrScAntOstium_03.ItemIndex;

    VarIrrigUrScAntMedium_01:= CbBoxIrrigUrScAntMedium_01.ItemIndex;
    VarIrrigUrScAntMedium_02:= CbBoxIrrigUrScAntMedium_02.ItemIndex;

    VarIrrigUrScAntScanne_01:= CbBoxIrrigUrScAntScanne_01.ItemIndex;
    VarIrrigUrScAntScanne_02:= CbBoxIrrigUrScAntScanne_02.ItemIndex;
    VarIrrigUrScAntScanne_03:= CbBoxIrrigUrScAntScanne_03.ItemIndex;
    VarIrrigUrScAntScanne_04:= CbBoxIrrigUrScAntScanne_04.ItemIndex;
    VarIrrigUrScAntScanne_05:= CbBoxIrrigUrScAntScanne_05.ItemIndex;

    VarIrrigUrScAntPenal_01:= CbBoxIrrigUrScAntPenal_01.ItemIndex;
    VarIrrigUrScAntPenal_02:= CbBoxIrrigUrScAntPenal_02.ItemIndex;
    VarIrrigUrScAntPenal_03:= CbBoxIrrigUrScAntPenal_03.ItemIndex;
    VarIrrigUrScAntPenal_04:= CbBoxIrrigUrScAntPenal_04.ItemIndex;
    VarIrrigUrScAntPenal_05:= CbBoxIrrigUrScAntPenal_05.ItemIndex;
    VarIrrigUrScAntPenal_06:= CbBoxIrrigUrScAntPenal_06.ItemIndex;

    VarIrrigUrScAntBulb_01:= CbBoxIrrigUrScAntBulb_01.ItemIndex;
    VarIrrigUrScAntBulb_02:= CbBoxIrrigUrScAntBulb_02.ItemIndex;
    VarIrrigUrScAntBulb_03:= CbBoxIrrigUrScAntBulb_03.ItemIndex;

    VarIrrigUrScAntMembr_01:= CbBoxIrrigUrScAntMembr_01.ItemIndex;
    VarIrrigUrScAntMembr_02:= CbBoxIrrigUrScAntMembr_02.ItemIndex;

    VarIrrigUrScAntCooper_01:= CbBoxIrrigUrScAntCooper_01.ItemIndex;
    VarIrrigUrScAntCooper_02:= CbBoxIrrigUrScAntCooper_02.ItemIndex;
    VarIrrigUrScAntCooper_03:= CbBoxIrrigUrScAntCooper_03.ItemIndex;
    VarIrrigUrScAntCooper_04:= CbBoxIrrigUrScAntCooper_04.ItemIndex;

    VarIrrigUrScPostMedium_01:= CbBoxIrrigUrScPostMedium_01.ItemIndex;
    VarIrrigUrScPostMedium_02:= CbBoxIrrigUrScPostMedium_02.ItemIndex;

    VarIrrigUrScPostMucous_01:= CbBoxIrrigUrScPostMucous_01.ItemIndex;
    VarIrrigUrScPostMucous_02:= CbBoxIrrigUrScPostMucous_02.ItemIndex;
    VarIrrigUrScPostMucous_03:= CbBoxIrrigUrScPostMucous_03.ItemIndex;
    VarIrrigUrScPostMucous_04:= CbBoxIrrigUrScPostMucous_04.ItemIndex;
    VarIrrigUrScPostMucous_05:= CbBoxIrrigUrScPostMucous_05.ItemIndex;
    VarIrrigUrScPostMucous_06:= CbBoxIrrigUrScPostMucous_06.ItemIndex;
    VarIrrigUrScPostMucous_07:= CbBoxIrrigUrScPostMucous_07.ItemIndex;
    VarIrrigUrScPostMucous_08:= CbBoxIrrigUrScPostMucous_08.ItemIndex;

    VarIrrigUrScPostCollic_01:= CbBoxIrrigUrScPostCollic_01.ItemIndex;
    VarIrrigUrScPostCollic_02:= CbBoxIrrigUrScPostCollic_02.ItemIndex;
    VarIrrigUrScPostCollic_03:= CbBoxIrrigUrScPostCollic_03.ItemIndex;
    VarIrrigUrScPostCollic_04:= CbBoxIrrigUrScPostCollic_04.ItemIndex;
    VarIrrigUrScPostCollic_05:= CbBoxIrrigUrScPostCollic_05.ItemIndex;
    VarIrrigUrScPostCollic_06:= CbBoxIrrigUrScPostCollic_06.ItemIndex;
    VarIrrigUrScPostCollic_07:= CbBoxIrrigUrScPostCollic_07.ItemIndex;
    VarIrrigUrScPostCollic_08:= CbBoxIrrigUrScPostCollic_08.ItemIndex;

    VarIrrigUrScPostDucts_01:= CbBoxIrrigUrScPostDucts_01.ItemIndex;
    VarIrrigUrScPostDucts_02:= CbBoxIrrigUrScPostDucts_02.ItemIndex;
    VarIrrigUrScPostDucts_03:= CbBoxIrrigUrScPostDucts_03.ItemIndex;
    VarIrrigUrScPostDucts_04:= CbBoxIrrigUrScPostDucts_04.ItemIndex;

    VarIrrigUrScPostVesic_01:= CbBoxIrrigUrScPostVesic_01.ItemIndex;
    VarIrrigUrScPostVesic_02:= CbBoxIrrigUrScPostVesic_02.ItemIndex;
    VarIrrigUrScPostVesic_03:= CbBoxIrrigUrScPostVesic_03.ItemIndex;
    VarIrrigUrScPostVesic_04:= CbBoxIrrigUrScPostVesic_04.ItemIndex;
    VarIrrigUrScPostVesic_05:= CbBoxIrrigUrScPostVesic_05.ItemIndex;
    VarIrrigUrScPostVesic_06:= CbBoxIrrigUrScPostVesic_06.ItemIndex;
    VarIrrigUrScPostVesic_07:= CbBoxIrrigUrScPostVesic_07.ItemIndex;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.AppEventsFrmUrScopiaIrrigShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"

    //отслеживаем "хоткеи" клавиш "туда-сюда"
    //запретим реагировать на хоткеи "стандартным" клавише-буквенным комбинациям на форме
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self)
      else
        if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
          then BtnNextClick(Self)
          else Handled:= False;
  end;
AppEventsFrmUrScopiaIrrig.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.PgCtrlUrScIrrigChange(Sender: TObject);
begin
if PgCtrlUrScIrrig.ActivePageIndex = 0
  then BtnPrev.Enabled:= False
  else BtnPrev.Enabled:= True;

if PgCtrlUrScIrrig.ActivePageIndex = Pred(PgCtrlUrScIrrig.PageCount)
  then BtnNext.Enabled:= False
  else BtnNext.Enabled:= True;

end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.BtnPrevClick(Sender: TObject);
begin
if PgCtrlUrScIrrig.ActivePageIndex > 0//если не первая страница
  then PgCtrlUrScIrrig.SelectNextPage(False);//движемся назад
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.BtnNextClick(Sender: TObject);
begin
if PgCtrlUrScIrrig.ActivePageIndex < Pred(PgCtrlUrScIrrig.PageCount)//если не последняя страница
  then PgCtrlUrScIrrig.SelectNextPage(True);//движемся вперед
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntOstium_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntOstium_01.ItemIndex = 0
  then
    begin
      CbBoxIrrigUrScAntOstium_02.Enabled:= False;
      CbBoxIrrigUrScAntOstium_03.Enabled:= False;
    end
  else
    begin
      CbBoxIrrigUrScAntOstium_02.Enabled:= True;
      CbBoxIrrigUrScAntOstium_03.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntMedium_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntMedium_01.ItemIndex = 0
  then CbBoxIrrigUrScAntMedium_02.Enabled:= False
  else CbBoxIrrigUrScAntMedium_02.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntScanne_04Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntScanne_04.ItemIndex = 0
  then CbBoxIrrigUrScAntScanne_05.Enabled:= False
  else CbBoxIrrigUrScAntScanne_05.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntPenal_02Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntPenal_02.ItemIndex = 0
  then
    begin
      CbBoxIrrigUrScAntPenal_03.Enabled:= False;
      CbBoxIrrigUrScAntPenal_04.Enabled:= False;
    end
  else
    begin
      CbBoxIrrigUrScAntPenal_03.Enabled:= True;
      CbBoxIrrigUrScAntPenal_04.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntPenal_05Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntPenal_05.ItemIndex <> 1
  then CbBoxIrrigUrScAntPenal_06.Enabled:= False
  else CbBoxIrrigUrScAntPenal_06.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntCooper_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntCooper_01.ItemIndex = 0
  then CbBoxIrrigUrScAntCooper_02.Enabled:= False
  else CbBoxIrrigUrScAntCooper_02.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntCooper_03Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntCooper_03.ItemIndex = 0
  then CbBoxIrrigUrScAntCooper_04.Enabled:= False
  else CbBoxIrrigUrScAntCooper_04.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostMedium_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostMedium_01.ItemIndex = 0
  then CbBoxIrrigUrScPostMedium_02.Enabled:= False
  else CbBoxIrrigUrScPostMedium_02.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostMucous_04Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostMucous_04.ItemIndex = 0
  then
    begin
      CbBoxIrrigUrScPostMucous_05.Enabled:= False;
      CbBoxIrrigUrScPostMucous_06.Enabled:= False;
    end
  else
    begin
      CbBoxIrrigUrScPostMucous_05.Enabled:= True;
      CbBoxIrrigUrScPostMucous_06.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostMucous_07Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostMucous_07.ItemIndex = 0
  then CbBoxIrrigUrScPostMucous_08.Enabled:= False
  else CbBoxIrrigUrScPostMucous_08.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostCollic_06Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostCollic_06.ItemIndex = 0
  then
    begin
      CbBoxIrrigUrScPostCollic_07.Enabled:= False;
      CbBoxIrrigUrScPostCollic_08.Enabled:= False;
    end
  else
    begin
      CbBoxIrrigUrScPostCollic_07.Enabled:= True;
      CbBoxIrrigUrScPostCollic_08.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostVesic_02Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostVesic_02.ItemIndex = 0
  then CbBoxIrrigUrScPostVesic_03.Enabled:= False
  else CbBoxIrrigUrScPostVesic_03.Enabled:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScAntMembr_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScAntMembr_01.ItemIndex = 4//если жом для инструмента не проходим
  then
    begin //скрываем вкладку и кнопки
      PgCtrlUrScIrrig.Pages[1].TabVisible:= False;
      BtnPrev.Visible:= False;
      BtnNext.Visible:= False;
      Label1.Visible:= True;
      CbBoxIrrigUrScAntMembr_01.Font.Color:= clRed;
    end
  else
    begin // показываем вкладку и кнопки
      PgCtrlUrScIrrig.Pages[1].TabVisible:= True;
      BtnPrev.Visible:= True;
      BtnNext.Visible:= True;
      Label1.Visible:= False;
      CbBoxIrrigUrScAntMembr_01.Font.Color:= clWindowText;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.CbBoxIrrigUrScPostVesic_01Change(
  Sender: TObject);
begin
if CbBoxIrrigUrScPostVesic_01.ItemIndex = 0
  then
    begin
      CbBoxIrrigUrScPostVesic_02.Enabled:= False;
      CbBoxIrrigUrScPostVesic_03.Enabled:= False;
      CbBoxIrrigUrScPostVesic_04.Enabled:= False;
      CbBoxIrrigUrScPostVesic_05.Enabled:= False;
      CbBoxIrrigUrScPostVesic_06.Enabled:= False;
      CbBoxIrrigUrScPostVesic_07.Enabled:= False;
    end
  else
    begin
      CbBoxIrrigUrScPostVesic_02.Enabled:= True;
      CbBoxIrrigUrScPostVesic_02Change(Sender);
      CbBoxIrrigUrScPostVesic_04.Enabled:= True;
      CbBoxIrrigUrScPostVesic_05.Enabled:= True;
      CbBoxIrrigUrScPostVesic_06.Enabled:= True;
      CbBoxIrrigUrScPostVesic_07.Enabled:= True;
    end;
end;

//----------------------------------------------------------------------------------

procedure TFrmUrScopiaIrrig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmUrScopiaIrrig.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
