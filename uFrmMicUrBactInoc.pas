unit uFrmMicUrBactInoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, NiceSettings, Mask, DBCtrlsEh, AppEvnts;

type
  TFrmMicUrBactInoc = class(TForm)
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    DTPickMicUrBactInocDate: TDateTimePicker;
    Panel17: TPanel;
    Panel2: TPanel;
    Label18: TLabel;
    Label20: TLabel;
    Panel4: TPanel;
    RdBtn_UrBactInoc_R1_01: TRadioButton;
    RdBtn_UrBactInoc_S1_01: TRadioButton;
    Panel5: TPanel;
    RdBtn_UrBactInoc_R1_02: TRadioButton;
    RdBtn_UrBactInoc_S1_02: TRadioButton;
    Panel6: TPanel;
    RdBtn_UrBactInoc_R1_03: TRadioButton;
    RdBtn_UrBactInoc_S1_03: TRadioButton;
    Panel7: TPanel;
    RdBtn_UrBactInoc_R1_04: TRadioButton;
    RdBtn_UrBactInoc_S1_04: TRadioButton;
    Panel8: TPanel;
    RdBtn_UrBactInoc_R1_05: TRadioButton;
    RdBtn_UrBactInoc_S1_05: TRadioButton;
    Panel1: TPanel;
    EdtExtra1: TEdit;
    EdtExtra2: TEdit;
    Panel37: TPanel;
    ChkBoxUrBactInoc: TCheckBox;
    ChkBoxMicBactInoc: TCheckBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmMicUrBactInoc: TNiceSettings;
    NumEdtUrBactInoc: TDBNumberEditEh;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    NumEdtMicBactInoc: TDBNumberEditEh;
    Label27: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Panel9: TPanel;
    RdBtn_UrBactInoc_R1_06: TRadioButton;
    RdBtn_UrBactInoc_S1_06: TRadioButton;
    Panel10: TPanel;
    RdBtn_UrBactInoc_R1_07: TRadioButton;
    RdBtn_UrBactInoc_S1_07: TRadioButton;
    Panel11: TPanel;
    RdBtn_UrBactInoc_R1_08: TRadioButton;
    RdBtn_UrBactInoc_S1_08: TRadioButton;
    Panel12: TPanel;
    RdBtn_UrBactInoc_R1_09: TRadioButton;
    RdBtn_UrBactInoc_S1_09: TRadioButton;
    Panel13: TPanel;
    RdBtn_UrBactInoc_R1_10: TRadioButton;
    RdBtn_UrBactInoc_S1_10: TRadioButton;
    Panel14: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Panel15: TPanel;
    RdBtn_UrBactInoc_R2_10: TRadioButton;
    RdBtn_UrBactInoc_S2_10: TRadioButton;
    Panel16: TPanel;
    RdBtn_UrBactInoc_R2_09: TRadioButton;
    RdBtn_UrBactInoc_S2_09: TRadioButton;
    Panel18: TPanel;
    RdBtn_UrBactInoc_R2_08: TRadioButton;
    RdBtn_UrBactInoc_S2_08: TRadioButton;
    Panel19: TPanel;
    RdBtn_UrBactInoc_R2_07: TRadioButton;
    RdBtn_UrBactInoc_S2_07: TRadioButton;
    Panel20: TPanel;
    RdBtn_UrBactInoc_R2_06: TRadioButton;
    RdBtn_UrBactInoc_S2_06: TRadioButton;
    Panel38: TPanel;
    RdBtn_UrBactInoc_R2_05: TRadioButton;
    RdBtn_UrBactInoc_S2_05: TRadioButton;
    Panel40: TPanel;
    RdBtn_UrBactInoc_R2_04: TRadioButton;
    RdBtn_UrBactInoc_S2_04: TRadioButton;
    Panel41: TPanel;
    RdBtn_UrBactInoc_R2_03: TRadioButton;
    RdBtn_UrBactInoc_S2_03: TRadioButton;
    Panel42: TPanel;
    RdBtn_UrBactInoc_R2_02: TRadioButton;
    RdBtn_UrBactInoc_S2_02: TRadioButton;
    Panel43: TPanel;
    RdBtn_UrBactInoc_R2_01: TRadioButton;
    RdBtn_UrBactInoc_S2_01: TRadioButton;
    EdtExtra1Ur_Val1: TEdit;
    EdtExtra2Ur_Val1: TEdit;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Panel21: TPanel;
    RdBtn_MicBactInoc_R1_01: TRadioButton;
    RdBtn_MicBactInoc_S1_01: TRadioButton;
    Panel22: TPanel;
    RdBtn_MicBactInoc_R1_02: TRadioButton;
    RdBtn_MicBactInoc_S1_02: TRadioButton;
    Panel23: TPanel;
    RdBtn_MicBactInoc_R1_03: TRadioButton;
    RdBtn_MicBactInoc_S1_03: TRadioButton;
    Panel24: TPanel;
    RdBtn_MicBactInoc_R1_04: TRadioButton;
    RdBtn_MicBactInoc_S1_04: TRadioButton;
    Panel25: TPanel;
    RdBtn_MicBactInoc_R1_05: TRadioButton;
    RdBtn_MicBactInoc_S1_05: TRadioButton;
    Panel26: TPanel;
    RdBtn_MicBactInoc_R1_06: TRadioButton;
    RdBtn_MicBactInoc_S1_06: TRadioButton;
    Panel27: TPanel;
    RdBtn_MicBactInoc_R1_07: TRadioButton;
    RdBtn_MicBactInoc_S1_07: TRadioButton;
    Panel28: TPanel;
    RdBtn_MicBactInoc_R1_08: TRadioButton;
    RdBtn_MicBactInoc_S1_08: TRadioButton;
    Panel29: TPanel;
    RdBtn_MicBactInoc_R1_09: TRadioButton;
    RdBtn_MicBactInoc_S1_09: TRadioButton;
    Panel30: TPanel;
    RdBtn_MicBactInoc_R1_10: TRadioButton;
    RdBtn_MicBactInoc_S1_10: TRadioButton;
    Panel31: TPanel;
    Panel32: TPanel;
    RdBtn_MicBactInoc_R2_10: TRadioButton;
    RdBtn_MicBactInoc_S2_10: TRadioButton;
    Panel33: TPanel;
    RdBtn_MicBactInoc_R2_09: TRadioButton;
    RdBtn_MicBactInoc_S2_09: TRadioButton;
    Panel34: TPanel;
    RdBtn_MicBactInoc_R2_08: TRadioButton;
    RdBtn_MicBactInoc_S2_08: TRadioButton;
    Panel35: TPanel;
    RdBtn_MicBactInoc_R2_07: TRadioButton;
    RdBtn_MicBactInoc_S2_07: TRadioButton;
    Panel36: TPanel;
    RdBtn_MicBactInoc_R2_06: TRadioButton;
    RdBtn_MicBactInoc_S2_06: TRadioButton;
    Panel39: TPanel;
    RdBtn_MicBactInoc_R2_05: TRadioButton;
    RdBtn_MicBactInoc_S2_05: TRadioButton;
    Panel44: TPanel;
    RdBtn_MicBactInoc_R2_04: TRadioButton;
    RdBtn_MicBactInoc_S2_04: TRadioButton;
    Panel45: TPanel;
    RdBtn_MicBactInoc_R2_03: TRadioButton;
    RdBtn_MicBactInoc_S2_03: TRadioButton;
    Panel46: TPanel;
    RdBtn_MicBactInoc_R2_02: TRadioButton;
    RdBtn_MicBactInoc_S2_02: TRadioButton;
    Panel47: TPanel;
    RdBtn_MicBactInoc_R2_01: TRadioButton;
    RdBtn_MicBactInoc_S2_01: TRadioButton;
    EdtExtra1Mic_Val1: TEdit;
    EdtExtra2Mic_Val1: TEdit;
    EdtExtra1Ur_Val2: TEdit;
    EdtExtra2Ur_Val2: TEdit;
    EdtExtra1Mic_Val2: TEdit;
    EdtExtra2Mic_Val2: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    ChkBoxDrug_01: TCheckBox;
    ChkBoxDrug_02: TCheckBox;
    ChkBoxDrug_03: TCheckBox;
    ChkBoxDrug_04: TCheckBox;
    ChkBoxDrug_05: TCheckBox;
    ChkBoxDrug_06: TCheckBox;
    ChkBoxDrug_07: TCheckBox;
    ChkBoxDrug_08: TCheckBox;
    ChkBoxDrug_09: TCheckBox;
    ChkBoxDrug_10: TCheckBox;
    AppEventsFrmMicUrBactInoc: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChkBoxUrBactInocClick(Sender: TObject);
    procedure ChkBoxMicBactInocClick(Sender: TObject);
    procedure ChkBoxDrug_01Click(Sender: TObject);
    procedure ChkBoxDrug_02Click(Sender: TObject);
    procedure ChkBoxDrug_03Click(Sender: TObject);
    procedure ChkBoxDrug_04Click(Sender: TObject);
    procedure ChkBoxDrug_05Click(Sender: TObject);
    procedure ChkBoxDrug_06Click(Sender: TObject);
    procedure ChkBoxDrug_07Click(Sender: TObject);
    procedure ChkBoxDrug_08Click(Sender: TObject);
    procedure ChkBoxDrug_09Click(Sender: TObject);
    procedure ChkBoxDrug_10Click(Sender: TObject);
    procedure NumEdtUrBactInocChange(Sender: TObject);
    procedure NumEdtMicBactInocChange(Sender: TObject);
    procedure AppEventsFrmMicUrBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function GetCheckedRdBtn(L_RdBtn,R_RdBtn: TRadioButton): Integer;
    function CheckValueRdBtn_and_ChkBox(ChkRdBtn1, ChkRdBtn2: TRadioButton;ChkBox: TCheckBox): Integer;
    function GetSuscStr(out L, Index: Integer; ChkRdBtn1, ChkRdBtn2: TRadioButton): String;
    procedure CheckItTwoRdBtn(const AInt: Integer; L_RdBtn,R_RdBtn: TRadioButton);
    procedure TestingAllChecks(Sender: TObject);
    procedure FmtTxtInTmpRchEdt(ARichEdit: TRichEdit; const CurStart, SelEnd, Index: Integer; TxtStr: String);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmMicUrBactInoc: TFrmMicUrBactInoc;

implementation

uses
  VarAndrUnit, DMFIBUnit, MainAndrUnit;
var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmMicUrBactInoc.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.FormCreate(Sender: TObject);
begin
NiceSetFrmMicUrBactInoc.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmMicUrBactInoc.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Бак.посев на уреаплазму/микоплазму (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Бак.посев на уреаплазму/микоплазму (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


//присваиваем контроллам значения переменных
DTPickMicUrBactInocDate.Date:= VarMicUrBactInocDate;

ChkBoxUrBactInoc.Checked:= IntConvertBool(VarChkUrBactInocPathogen);
NumEdtUrBactInoc.Value:= VarNumEdtUrBactInoc;

CheckItTwoRdBtn(VarUrPathogen1_01,RdBtn_UrBactInoc_R1_01,RdBtn_UrBactInoc_S1_01);
CheckItTwoRdBtn(VarUrPathogen1_02,RdBtn_UrBactInoc_R1_02,RdBtn_UrBactInoc_S1_02);
CheckItTwoRdBtn(VarUrPathogen1_03,RdBtn_UrBactInoc_R1_03,RdBtn_UrBactInoc_S1_03);
CheckItTwoRdBtn(VarUrPathogen1_04,RdBtn_UrBactInoc_R1_04,RdBtn_UrBactInoc_S1_04);
CheckItTwoRdBtn(VarUrPathogen1_05,RdBtn_UrBactInoc_R1_05,RdBtn_UrBactInoc_S1_05);
CheckItTwoRdBtn(VarUrPathogen1_06,RdBtn_UrBactInoc_R1_06,RdBtn_UrBactInoc_S1_06);
CheckItTwoRdBtn(VarUrPathogen1_07,RdBtn_UrBactInoc_R1_07,RdBtn_UrBactInoc_S1_07);
CheckItTwoRdBtn(VarUrPathogen1_08,RdBtn_UrBactInoc_R1_08,RdBtn_UrBactInoc_S1_08);
CheckItTwoRdBtn(VarUrPathogen1_09,RdBtn_UrBactInoc_R1_09,RdBtn_UrBactInoc_S1_09);
CheckItTwoRdBtn(VarUrPathogen1_10,RdBtn_UrBactInoc_R1_10,RdBtn_UrBactInoc_S1_10);

CheckItTwoRdBtn(VarUrPathogen2_01,RdBtn_UrBactInoc_R2_01,RdBtn_UrBactInoc_S2_01);
CheckItTwoRdBtn(VarUrPathogen2_02,RdBtn_UrBactInoc_R2_02,RdBtn_UrBactInoc_S2_02);
CheckItTwoRdBtn(VarUrPathogen2_03,RdBtn_UrBactInoc_R2_03,RdBtn_UrBactInoc_S2_03);
CheckItTwoRdBtn(VarUrPathogen2_04,RdBtn_UrBactInoc_R2_04,RdBtn_UrBactInoc_S2_04);
CheckItTwoRdBtn(VarUrPathogen2_05,RdBtn_UrBactInoc_R2_05,RdBtn_UrBactInoc_S2_05);
CheckItTwoRdBtn(VarUrPathogen2_06,RdBtn_UrBactInoc_R2_06,RdBtn_UrBactInoc_S2_06);
CheckItTwoRdBtn(VarUrPathogen2_07,RdBtn_UrBactInoc_R2_07,RdBtn_UrBactInoc_S2_07);
CheckItTwoRdBtn(VarUrPathogen2_08,RdBtn_UrBactInoc_R2_08,RdBtn_UrBactInoc_S2_08);
CheckItTwoRdBtn(VarUrPathogen2_09,RdBtn_UrBactInoc_R2_09,RdBtn_UrBactInoc_S2_09);
CheckItTwoRdBtn(VarUrPathogen2_10,RdBtn_UrBactInoc_R2_10,RdBtn_UrBactInoc_S2_10);


ChkBoxMicBactInoc.Checked:= IntConvertBool(VarChkMicBactInocPathogen);
NumEdtMicBactInoc.Value:= VarNumEdtMicBactInoc;

CheckItTwoRdBtn(VarMicPathogen1_01,RdBtn_MicBactInoc_R1_01,RdBtn_MicBactInoc_S1_01);
CheckItTwoRdBtn(VarMicPathogen1_02,RdBtn_MicBactInoc_R1_02,RdBtn_MicBactInoc_S1_02);
CheckItTwoRdBtn(VarMicPathogen1_03,RdBtn_MicBactInoc_R1_03,RdBtn_MicBactInoc_S1_03);
CheckItTwoRdBtn(VarMicPathogen1_04,RdBtn_MicBactInoc_R1_04,RdBtn_MicBactInoc_S1_04);
CheckItTwoRdBtn(VarMicPathogen1_05,RdBtn_MicBactInoc_R1_05,RdBtn_MicBactInoc_S1_05);
CheckItTwoRdBtn(VarMicPathogen1_06,RdBtn_MicBactInoc_R1_06,RdBtn_MicBactInoc_S1_06);
CheckItTwoRdBtn(VarMicPathogen1_07,RdBtn_MicBactInoc_R1_07,RdBtn_MicBactInoc_S1_07);
CheckItTwoRdBtn(VarMicPathogen1_08,RdBtn_MicBactInoc_R1_08,RdBtn_MicBactInoc_S1_08);
CheckItTwoRdBtn(VarMicPathogen1_09,RdBtn_MicBactInoc_R1_09,RdBtn_MicBactInoc_S1_09);
CheckItTwoRdBtn(VarMicPathogen1_10,RdBtn_MicBactInoc_R1_10,RdBtn_MicBactInoc_S1_10);

CheckItTwoRdBtn(VarMicPathogen2_01,RdBtn_MicBactInoc_R2_01,RdBtn_MicBactInoc_S2_01);
CheckItTwoRdBtn(VarMicPathogen2_02,RdBtn_MicBactInoc_R2_02,RdBtn_MicBactInoc_S2_02);
CheckItTwoRdBtn(VarMicPathogen2_03,RdBtn_MicBactInoc_R2_03,RdBtn_MicBactInoc_S2_03);
CheckItTwoRdBtn(VarMicPathogen2_04,RdBtn_MicBactInoc_R2_04,RdBtn_MicBactInoc_S2_04);
CheckItTwoRdBtn(VarMicPathogen2_05,RdBtn_MicBactInoc_R2_05,RdBtn_MicBactInoc_S2_05);
CheckItTwoRdBtn(VarMicPathogen2_06,RdBtn_MicBactInoc_R2_06,RdBtn_MicBactInoc_S2_06);
CheckItTwoRdBtn(VarMicPathogen2_07,RdBtn_MicBactInoc_R2_07,RdBtn_MicBactInoc_S2_07);
CheckItTwoRdBtn(VarMicPathogen2_08,RdBtn_MicBactInoc_R2_08,RdBtn_MicBactInoc_S2_08);
CheckItTwoRdBtn(VarMicPathogen2_09,RdBtn_MicBactInoc_R2_09,RdBtn_MicBactInoc_S2_09);
CheckItTwoRdBtn(VarMicPathogen2_10,RdBtn_MicBactInoc_R2_10,RdBtn_MicBactInoc_S2_10);

if Trim(VarStrMicUrExtra1) = ''
  then EdtExtra1.Text:= 'свое значение'
  else EdtExtra1.Text:= Trim(VarStrMicUrExtra1);

if Trim(VarStrMicUrExtra2) = ''
  then EdtExtra2.Text:= 'свое значение'
  else EdtExtra2.Text:= Trim(VarStrMicUrExtra2);

if Trim(VarStrExtra1Ur_Val1) = ''
  then EdtExtra1Ur_Val1.Clear
  else EdtExtra1Ur_Val1.Text:= Trim(VarStrExtra1Ur_Val1);

if Trim(VarStrExtra1Ur_Val2) = ''
  then EdtExtra1Ur_Val2.Clear
  else EdtExtra1Ur_Val2.Text:= Trim(VarStrExtra1Ur_Val2);

if Trim(VarStrExtra2Ur_Val1) = ''
  then EdtExtra2Ur_Val1.Clear
  else EdtExtra2Ur_Val1.Text:= Trim(VarStrExtra2Ur_Val1);

if Trim(VarStrExtra2Ur_Val2) = ''
  then EdtExtra2Ur_Val2.Clear
  else EdtExtra2Ur_Val2.Text:= Trim(VarStrExtra2Ur_Val2);

if Trim(VarStrExtra1Mic_Val1) = ''
  then EdtExtra1Mic_Val1.Clear
  else EdtExtra1Mic_Val1.Text:= Trim(VarStrExtra1Mic_Val1);

if Trim(VarStrExtra1Mic_Val2) = ''
  then EdtExtra1Mic_Val2.Clear
  else EdtExtra1Mic_Val2.Text:= Trim(VarStrExtra1Mic_Val2);

if Trim(VarStrExtra2Mic_Val1) = ''
  then EdtExtra2Mic_Val1.Clear
  else EdtExtra2Mic_Val1.Text:= Trim(VarStrExtra2Mic_Val1);

if Trim(VarStrExtra2Mic_Val2) = ''
  then EdtExtra2Mic_Val2.Clear
  else EdtExtra2Mic_Val2.Text:= Trim(VarStrExtra2Mic_Val2);

ChkBoxDrug_01.Checked:= IntConvertBool(VarChkMicUrDrug_01);
ChkBoxDrug_02.Checked:= IntConvertBool(VarChkMicUrDrug_02);
ChkBoxDrug_03.Checked:= IntConvertBool(VarChkMicUrDrug_03);
ChkBoxDrug_04.Checked:= IntConvertBool(VarChkMicUrDrug_04);
ChkBoxDrug_05.Checked:= IntConvertBool(VarChkMicUrDrug_05);
ChkBoxDrug_06.Checked:= IntConvertBool(VarChkMicUrDrug_06);
ChkBoxDrug_07.Checked:= IntConvertBool(VarChkMicUrDrug_07);
ChkBoxDrug_08.Checked:= IntConvertBool(VarChkMicUrDrug_08);
ChkBoxDrug_09.Checked:= IntConvertBool(VarChkMicUrDrug_09);
ChkBoxDrug_10.Checked:= IntConvertBool(VarChkMicUrDrug_10);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.FormResize(Sender: TObject);
begin
{}
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.FormShow(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.BtnSaveClick(Sender: TObject);
var BegCurPos, EndCurPos, //начало и конец выделения
    Index, //условный номер выбранного радиобутона
    counter: Integer;//счетчик для внутренних нужд
    TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TmpRE:= TRichEdit.CreateParented(Self.Handle);

//отключим доп.поля для препаратов,если они отмечены, но не используются
if ChkBoxDrug_09.Checked then
  ChkBoxDrug_09.Checked:= not ((AnsiLowerCase(Trim(EdtExtra1.Text)) = 'название препарата') or
                                                                                     (Trim(EdtExtra1.Text) = ''));
if ChkBoxDrug_10.Checked then
  ChkBoxDrug_10.Checked:= not ((AnsiLowerCase(Trim(EdtExtra2.Text)) = 'название препарата') or
                                                                                     (Trim(EdtExtra2.Text) = ''));

  try
    TmpTxt:= 'Бак.посев на уреаплазму/микоплазму ('+ FormatDateTime('DD.MM.YY', DTPickMicUrBactInocDate.DateTime)
                                                                                                           + '): ';


    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
        Lines.Add(TmpTxt);
        SelStart:= 0;
        SelLength:= Length(Trim(TmpTxt));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= Length(Trim(TmpTxt));
        SelAttributes.Assign(DefAttributes);
      end;

    if ChkBoxUrBactInoc.Checked then
      begin
        //если ни один из препаратов не отмечен при довольно высокой концентрации инфекта, то предупредим об этом
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked) and NumEdtUrBactInoc.Value > 3) then
          begin
            Application.MessageBox('Вы не отметили чувствительность уреаплазмы ни к одному из препаратов!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
            Exit;
          end;

        //если не указаны дозы препаратов, то напомним об этом
        if (ChkBoxDrug_09.Checked) and (RdBtn_UrBactInoc_R1_09.Checked or RdBtn_UrBactInoc_S1_09.Checked) then
          begin
            if Trim(EdtExtra1Ur_Val1.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна уреаплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra1Ur_Val1.CanFocus then EdtExtra1Ur_Val1.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_09.Checked) and (RdBtn_UrBactInoc_R2_09.Checked or RdBtn_UrBactInoc_S2_09.Checked) then
          begin
            if Trim(EdtExtra1Ur_Val2.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна уреаплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra1Ur_Val2.CanFocus then EdtExtra1Ur_Val2.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_10.Checked) and (RdBtn_UrBactInoc_R1_10.Checked or RdBtn_UrBactInoc_S1_10.Checked) then
          begin
            if Trim(EdtExtra2Ur_Val1.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна уреаплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra2Ur_Val1.CanFocus then EdtExtra2Ur_Val1.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_10.Checked) and (RdBtn_UrBactInoc_R2_10.Checked or RdBtn_UrBactInoc_S2_10.Checked) then
          begin
            if Trim(EdtExtra2Ur_Val2.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна уреаплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra2Ur_Val2.CanFocus then EdtExtra2Ur_Val2.SetFocus;
                Exit;
              end;
          end;

        //если дозы указаны, то скорректируем единицы измерения
        if (Pos('мг',AnsiLowerCase(EdtExtra1Ur_Val1.Text)) = 0) and (Trim(EdtExtra1Ur_Val1.Text) <> '')
          then EdtExtra1Ur_Val1.Text:= Trim(EdtExtra1Ur_Val1.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra2Ur_Val1.Text)) = 0) and (Trim(EdtExtra2Ur_Val1.Text) <> '')
          then EdtExtra2Ur_Val1.Text:= Trim(EdtExtra2Ur_Val1.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra1Ur_Val2.Text)) = 0) and (Trim(EdtExtra1Ur_Val2.Text) <> '')
          then EdtExtra1Ur_Val2.Text:= Trim(EdtExtra1Ur_Val2.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra2Ur_Val2.Text)) = 0) and (Trim(EdtExtra2Ur_Val2.Text) <> '')
          then EdtExtra2Ur_Val2.Text:= Trim(EdtExtra2Ur_Val2.Text) + ' мг';



        //проверяем, помечен ли хоть один радиобутон
        counter:= 0;
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_01,RdBtn_UrBactInoc_S1_01,ChkBoxDrug_01);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_02,RdBtn_UrBactInoc_S1_02,ChkBoxDrug_02);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_03,RdBtn_UrBactInoc_S1_03,ChkBoxDrug_03);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_04,RdBtn_UrBactInoc_S1_04,ChkBoxDrug_04);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_05,RdBtn_UrBactInoc_S1_05,ChkBoxDrug_05);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_06,RdBtn_UrBactInoc_S1_06,ChkBoxDrug_06);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_07,RdBtn_UrBactInoc_S1_07,ChkBoxDrug_07);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_08,RdBtn_UrBactInoc_S1_08,ChkBoxDrug_08);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_09,RdBtn_UrBactInoc_S1_09,ChkBoxDrug_09);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R1_10,RdBtn_UrBactInoc_S1_10,ChkBoxDrug_10);

        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_01,RdBtn_UrBactInoc_S2_01,ChkBoxDrug_01);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_02,RdBtn_UrBactInoc_S2_02,ChkBoxDrug_02);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_03,RdBtn_UrBactInoc_S2_03,ChkBoxDrug_03);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_04,RdBtn_UrBactInoc_S2_04,ChkBoxDrug_04);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_05,RdBtn_UrBactInoc_S2_05,ChkBoxDrug_05);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_06,RdBtn_UrBactInoc_S2_06,ChkBoxDrug_06);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_07,RdBtn_UrBactInoc_S2_07,ChkBoxDrug_07);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_08,RdBtn_UrBactInoc_S2_08,ChkBoxDrug_08);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_09,RdBtn_UrBactInoc_S2_09,ChkBoxDrug_09);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_UrBactInoc_R2_10,RdBtn_UrBactInoc_S2_10,ChkBoxDrug_10);

        TmpTxt:= '1. выявлена Ur.urealyticum в конц. 10^' + VarToStr(NumEdtUrBactInoc.Value) + ' КОЕ/мл.';

        BegCurPos:= Length(TmpRE.Text) + Length('1. выявлена ');
        EndCurPos:= Length(Trim('Ur.urealyticum'));

        if NumEdtUrBactInoc.Value > 3 then
          begin
            //если панель с радиокнопками включена и отмечен хоть один радиобутон, то дополняем текст
            if counter > 0 then
              TmpTxt:= LeftStr(TmpTxt,Length(TmpTxt) -1) + ' с чувствительностью к следующим препаратам:';

            //добавляем текст с выделением названия возбудителя жирным шрифтом
            with TmpRE do
              begin
                Lines.Add(TmpTxt);
                SelStart:= BegCurPos;
                SelLength:= EndCurPos;
                SelAttributes.Style:= [fsBold];
                SelStart:= Length(Trim(TmpTxt));
                SelAttributes.Assign(DefAttributes);
                Lines.Add('');
              end;

            counter:= 0;

            //если препарат отмечен и выбрано хоть одно значение радиобутона, то вносим его в список
            if (ChkBoxDrug_01.Checked) and (RdBtn_UrBactInoc_R1_01.Checked or RdBtn_UrBactInoc_S1_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* тетрациклин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_01,RdBtn_UrBactInoc_S1_01);
                BegCurPos:= BegCurPos + Length('* тетрациклин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_UrBactInoc_R1_02.Checked or RdBtn_UrBactInoc_S1_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_02,RdBtn_UrBactInoc_S1_02);
                BegCurPos:= BegCurPos + Length('* доксициклин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_UrBactInoc_R1_03.Checked or RdBtn_UrBactInoc_S1_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_03,RdBtn_UrBactInoc_S1_03);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_UrBactInoc_R1_04.Checked or RdBtn_UrBactInoc_S1_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* джозамицин (2 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_04,RdBtn_UrBactInoc_S1_04);
                BegCurPos:= BegCurPos + Length('* джозамицин (2 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_UrBactInoc_R1_05.Checked or RdBtn_UrBactInoc_S1_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_05,RdBtn_UrBactInoc_S1_05);
                BegCurPos:= BegCurPos + Length('* эритромицин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_UrBactInoc_R1_06.Checked or RdBtn_UrBactInoc_S1_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* офлоксацин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_06,RdBtn_UrBactInoc_S1_06);
                BegCurPos:= BegCurPos + Length('* офлоксацин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_UrBactInoc_R1_07.Checked or RdBtn_UrBactInoc_S1_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* кларитромицин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_07,RdBtn_UrBactInoc_S1_07);
                BegCurPos:= BegCurPos + Length('* кларитромицин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_UrBactInoc_R1_08.Checked or RdBtn_UrBactInoc_S1_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин (0,12 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_08,RdBtn_UrBactInoc_S1_08);
                BegCurPos:= BegCurPos + Length('* азитромицин (0,12 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_UrBactInoc_R1_09.Checked or RdBtn_UrBactInoc_S1_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Ur_Val1.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_09,RdBtn_UrBactInoc_S1_09);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Ur_Val1.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_UrBactInoc_R1_10.Checked or RdBtn_UrBactInoc_S1_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Ur_Val1.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R1_10,RdBtn_UrBactInoc_S1_10);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Ur_Val1.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            //добавим строку-пробел, если есть хоть одна строка
            if counter > 0 then TmpRE.Lines.Add('');

            //продолжаем проверять чувствительность к другим дозам препаратов
            if (ChkBoxDrug_01.Checked) and (RdBtn_UrBactInoc_R2_01.Checked or RdBtn_UrBactInoc_S2_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* тетрациклин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_01,RdBtn_UrBactInoc_S2_01);
                BegCurPos:= BegCurPos + Length('* тетрациклин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_UrBactInoc_R2_02.Checked or RdBtn_UrBactInoc_S2_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_02,RdBtn_UrBactInoc_S2_02);
                BegCurPos:= BegCurPos + Length('* доксициклин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_UrBactInoc_R2_03.Checked or RdBtn_UrBactInoc_S2_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин (2 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_03,RdBtn_UrBactInoc_S2_03);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин (2 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_UrBactInoc_R2_04.Checked or RdBtn_UrBactInoc_S2_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* джозамицин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_04,RdBtn_UrBactInoc_S2_04);
                BegCurPos:= BegCurPos + Length('* джозамицин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_UrBactInoc_R2_05.Checked or RdBtn_UrBactInoc_S2_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_05,RdBtn_UrBactInoc_S2_05);
                BegCurPos:= BegCurPos + Length('* эритромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_UrBactInoc_R2_06.Checked or RdBtn_UrBactInoc_S2_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* офлоксацин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_06,RdBtn_UrBactInoc_S2_06);
                BegCurPos:= BegCurPos + Length('* офлоксацин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_UrBactInoc_R2_07.Checked or RdBtn_UrBactInoc_S2_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* кларитромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_07,RdBtn_UrBactInoc_S2_07);
                BegCurPos:= BegCurPos + Length('* кларитромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_UrBactInoc_R2_08.Checked or RdBtn_UrBactInoc_S2_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_08,RdBtn_UrBactInoc_S2_08);
                BegCurPos:= BegCurPos + Length('* азитромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_UrBactInoc_R2_09.Checked or RdBtn_UrBactInoc_S2_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Ur_Val2.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_09,RdBtn_UrBactInoc_S2_09);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Ur_Val2.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_UrBactInoc_R2_10.Checked or RdBtn_UrBactInoc_S2_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Ur_Val2.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_UrBactInoc_R2_10,RdBtn_UrBactInoc_S2_10);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Ur_Val2.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;
          end{if NumEdtUrBactInoc.Value > 3 then}

        else //концентрация возбудителя 1000 КОЕ/мл и ниже
          //добавляем текст с выделением названия возбудителя жирным шрифтом
          with TmpRE do
            begin
              Lines.Add(TmpTxt);
              SelStart:= BegCurPos;
              SelLength:= EndCurPos;
              SelAttributes.Style:= [fsBold];
              SelStart:= Length(Trim(TmpTxt));
              SelAttributes.Assign(DefAttributes);
            end;
      end;{if ChkBoxUrBactInoc.Checked then}

    if ChkBoxMicBactInoc.Checked then
      begin
        //если ни один из препаратов не отмечен при довольно высокой концентрации инфекта, то предупредим об этом
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked) and NumEdtMicBactInoc.Value > 3) then
          begin
            Application.MessageBox('Вы не отметили чувствительность микоплазмы ни к одному из препаратов!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
            Exit;
          end;

        //если не указаны дозы препаратов, то напомним об этом
        if (ChkBoxDrug_09.Checked) and (RdBtn_MicBactInoc_R1_09.Checked or RdBtn_MicBactInoc_S1_09.Checked) then
          begin
            if Trim(EdtExtra1Mic_Val1.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна микоплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra1Mic_Val1.CanFocus then EdtExtra1Mic_Val1.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_09.Checked) and (RdBtn_MicBactInoc_R2_09.Checked or RdBtn_MicBactInoc_S2_09.Checked) then
          begin
            if Trim(EdtExtra1Mic_Val2.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна микоплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra1Mic_Val2.CanFocus then EdtExtra1Mic_Val2.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_10.Checked) and (RdBtn_MicBactInoc_R1_10.Checked or RdBtn_MicBactInoc_S1_10.Checked) then
          begin
            if Trim(EdtExtra2Mic_Val1.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна микоплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra2Mic_Val1.CanFocus then EdtExtra2Mic_Val1.SetFocus;
                Exit;
              end;
          end;

        if (ChkBoxDrug_10.Checked) and (RdBtn_MicBactInoc_R2_10.Checked or RdBtn_MicBactInoc_S2_10.Checked) then
          begin
            if Trim(EdtExtra2Mic_Val2.Text) = '' then
              begin
                Application.MessageBox('Вы не указали дозировку препарата, к которому чувствительна микоплазма!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
                if EdtExtra2Mic_Val2.CanFocus then EdtExtra2Mic_Val2.SetFocus;
                Exit;
              end;
          end;

        //если дозы указаны, то скорректируем единицы измерения
        if (Pos('мг',AnsiLowerCase(EdtExtra1Mic_Val1.Text)) = 0) and (Trim(EdtExtra1Mic_Val1.Text) <> '')
          then EdtExtra1Mic_Val1.Text:= Trim(EdtExtra1Mic_Val1.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra2Mic_Val1.Text)) = 0) and (Trim(EdtExtra2Mic_Val1.Text) <> '')
          then EdtExtra2Mic_Val1.Text:= Trim(EdtExtra2Mic_Val1.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra1Mic_Val2.Text)) = 0) and (Trim(EdtExtra1Mic_Val2.Text) <> '')
          then EdtExtra1Mic_Val2.Text:= Trim(EdtExtra1Mic_Val2.Text) + ' мг';

        if (Pos('мг',AnsiLowerCase(EdtExtra2Mic_Val2.Text)) = 0) and (Trim(EdtExtra2Mic_Val2.Text) <> '')
          then EdtExtra2Mic_Val2.Text:= Trim(EdtExtra2Mic_Val2.Text) + ' мг';

        //проверяем, помечен ли хоть один радиобутон
        counter:= 0;
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_01,RdBtn_MicBactInoc_S1_01,ChkBoxDrug_01);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_02,RdBtn_MicBactInoc_S1_02,ChkBoxDrug_02);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_03,RdBtn_MicBactInoc_S1_03,ChkBoxDrug_03);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_04,RdBtn_MicBactInoc_S1_04,ChkBoxDrug_04);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_05,RdBtn_MicBactInoc_S1_05,ChkBoxDrug_05);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_06,RdBtn_MicBactInoc_S1_06,ChkBoxDrug_06);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_07,RdBtn_MicBactInoc_S1_07,ChkBoxDrug_07);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_08,RdBtn_MicBactInoc_S1_08,ChkBoxDrug_08);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_09,RdBtn_MicBactInoc_S1_09,ChkBoxDrug_09);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R1_10,RdBtn_MicBactInoc_S1_10,ChkBoxDrug_10);

        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_01,RdBtn_MicBactInoc_S2_01,ChkBoxDrug_01);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_02,RdBtn_MicBactInoc_S2_02,ChkBoxDrug_02);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_03,RdBtn_MicBactInoc_S2_03,ChkBoxDrug_03);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_04,RdBtn_MicBactInoc_S2_04,ChkBoxDrug_04);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_05,RdBtn_MicBactInoc_S2_05,ChkBoxDrug_05);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_06,RdBtn_MicBactInoc_S2_06,ChkBoxDrug_06);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_07,RdBtn_MicBactInoc_S2_07,ChkBoxDrug_07);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_08,RdBtn_MicBactInoc_S2_08,ChkBoxDrug_08);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_09,RdBtn_MicBactInoc_S2_09,ChkBoxDrug_09);
        counter:= counter + CheckValueRdBtn_and_ChkBox(RdBtn_MicBactInoc_R2_10,RdBtn_MicBactInoc_S2_10,ChkBoxDrug_10);

        if ChkBoxUrBactInoc.Checked then TmpRE.Lines.Add('');

        TmpTxt:= '2. выявлена M.hominis в конц. 10^' + VarToStr(NumEdtMicBactInoc.Value) + ' КОЕ/мл.';

        BegCurPos:= Length(TmpRE.Text) + Length('2. выявлена ');
        EndCurPos:= Length(Trim('M.hominis'));

        if NumEdtMicBactInoc.Value > 3 then
          begin
            //если панель с радиокнопками включена и отмечен хоть один радиобутон, то дополняем текст
            if counter > 0 then
              TmpTxt:= LeftStr(TmpTxt,Length(TmpTxt) -1) + ' с чувствительностью к следующим препаратам:';

            //добавляем текст с выделением названия возбудителя жирным шрифтом
            with TmpRE do
              begin
                Lines.Add(TmpTxt);
                SelStart:= BegCurPos;
                SelLength:= EndCurPos;
                SelAttributes.Style:= [fsBold];
                SelStart:= Length(Trim(TmpTxt));
                SelAttributes.Assign(DefAttributes);
                Lines.Add('');
              end;

            counter:= 0;

            //если препарат отмечен и выбрано хоть одно значение радиобутона, то вносим его в список
            if (ChkBoxDrug_01.Checked) and (RdBtn_MicBactInoc_R1_01.Checked or RdBtn_MicBactInoc_S1_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* тетрациклин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_01,RdBtn_MicBactInoc_S1_01);
                BegCurPos:= BegCurPos + Length('* тетрациклин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_MicBactInoc_R1_02.Checked or RdBtn_MicBactInoc_S1_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_02,RdBtn_MicBactInoc_S1_02);
                BegCurPos:= BegCurPos + Length('* доксициклин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_MicBactInoc_R1_03.Checked or RdBtn_MicBactInoc_S1_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_03,RdBtn_MicBactInoc_S1_03);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_MicBactInoc_R1_04.Checked or RdBtn_MicBactInoc_S1_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* джозамицин (2 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_04,RdBtn_MicBactInoc_S1_04);
                BegCurPos:= BegCurPos + Length('* джозамицин (2 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_MicBactInoc_R1_05.Checked or RdBtn_MicBactInoc_S1_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_05,RdBtn_MicBactInoc_S1_05);
                BegCurPos:= BegCurPos + Length('* эритромицин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_MicBactInoc_R1_06.Checked or RdBtn_MicBactInoc_S1_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* офлоксацин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_06,RdBtn_MicBactInoc_S1_06);
                BegCurPos:= BegCurPos + Length('* офлоксацин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_MicBactInoc_R1_07.Checked or RdBtn_MicBactInoc_S1_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* кларитромицин (1 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_07,RdBtn_MicBactInoc_S1_07);
                BegCurPos:= BegCurPos + Length('* кларитромицин (1 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_MicBactInoc_R1_08.Checked or RdBtn_MicBactInoc_S1_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин (0,12 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_08,RdBtn_MicBactInoc_S1_08);
                BegCurPos:= BegCurPos + Length('* азитромицин (0,12 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_MicBactInoc_R1_09.Checked or RdBtn_MicBactInoc_S1_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Mic_Val1.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_09,RdBtn_MicBactInoc_S1_09);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Mic_Val1.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_MicBactInoc_R1_10.Checked or RdBtn_MicBactInoc_S1_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Mic_Val1.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R1_10,RdBtn_MicBactInoc_S1_10);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Mic_Val1.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
                counter:= counter + 1;
              end;

            //добавим строку-пробел, если есть хоть одна строка
            if counter > 0 then TmpRE.Lines.Add('');

            //продолжаем проверять чувствительность к другим дозам препаратов
            if (ChkBoxDrug_01.Checked) and (RdBtn_MicBactInoc_R2_01.Checked or RdBtn_MicBactInoc_S2_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* тетрациклин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_01,RdBtn_MicBactInoc_S2_01);
                BegCurPos:= BegCurPos + Length('* тетрациклин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_MicBactInoc_R2_02.Checked or RdBtn_MicBactInoc_S2_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_02,RdBtn_MicBactInoc_S2_02);
                BegCurPos:= BegCurPos + Length('* доксициклин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_MicBactInoc_R2_03.Checked or RdBtn_MicBactInoc_S2_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_03,RdBtn_MicBactInoc_S2_03);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_MicBactInoc_R2_04.Checked or RdBtn_MicBactInoc_S2_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* джозамицин (8 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_04,RdBtn_MicBactInoc_S2_04);
                BegCurPos:= BegCurPos + Length('* джозамицин (8 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_MicBactInoc_R2_05.Checked or RdBtn_MicBactInoc_S2_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_05,RdBtn_MicBactInoc_S2_05);
                BegCurPos:= BegCurPos + Length('* эритромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_MicBactInoc_R2_06.Checked or RdBtn_MicBactInoc_S2_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* офлоксацин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_06,RdBtn_MicBactInoc_S2_06);
                BegCurPos:= BegCurPos + Length('* офлоксацин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_MicBactInoc_R2_07.Checked or RdBtn_MicBactInoc_S2_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* кларитромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_07,RdBtn_MicBactInoc_S2_07);
                BegCurPos:= BegCurPos + Length('* кларитромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_MicBactInoc_R2_08.Checked or RdBtn_MicBactInoc_S2_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин (4 мг) - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_08,RdBtn_MicBactInoc_S2_08);
                BegCurPos:= BegCurPos + Length('* азитромицин (4 мг) - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_MicBactInoc_R2_09.Checked or RdBtn_MicBactInoc_S2_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Mic_Val2.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_09,RdBtn_MicBactInoc_S2_09);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' (' + EdtExtra1Mic_Val2.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_MicBactInoc_R2_10.Checked or RdBtn_MicBactInoc_S2_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Mic_Val2.Text + ') - '
                                      + GetSuscStr(EndCurPos,Index,RdBtn_MicBactInoc_R2_10,RdBtn_MicBactInoc_S2_10);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' (' + EdtExtra2Mic_Val2.Text + ') - ');//начало выделения
                FmtTxtInTmpRchEdt(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;
          end{if NumEdtMicBactInoc.Value > 3 then}

        else //концентрация возбудителя 1000 КОЕ/мл и ниже
          //добавляем текст с выделением названия возбудителя жирным шрифтом
          with TmpRE do
            begin
              Lines.Add(TmpTxt);
              SelStart:= BegCurPos;
              SelLength:= EndCurPos;
              SelAttributes.Style:= [fsBold];
              SelStart:= Length(Trim(TmpTxt));
              SelAttributes.Assign(DefAttributes);
            end;
      end;{if ChkBoxMicBactInoc.Checked then}


    //если ни одна из галок не помечена, то пишем о стерильности посева
    if not( ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked)
      then
        TmpRE.Lines.Add('- бак.посев стерилен');

  //==================================================================================
    //передаем форматированный текст в строку
    TmpTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextMicUrBactInoc;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст бак.посева
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextMicUrBactInoc:= TmpTxt //смело изменяем его через переменную TextMicUrBactInoc
      else//если что-то содержит
        if TextMicUrBactInoc <> TmpTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный результат исследования бактериального посева' +
                         ' отделяемого на уреаплазму/микоплазму сейчас будет заменен на вновь сформированный' +
                          ' текст. Разрешить замену?', 'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMicUrBactInoc:= TmpTxt;//заменяем, если ответ "Да"


    //сохраняем переменные
    VarMicUrBactInocDate:= DTPickMicUrBactInocDate.Date;
    VarChkUrBactInocPathogen:= BoolConvertInt(ChkBoxUrBactInoc.Checked);
    VarNumEdtUrBactInoc:= NumEdtUrBactInoc.Value;

    VarUrPathogen1_01:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_01,RdBtn_UrBactInoc_S1_01);
    VarUrPathogen1_02:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_02,RdBtn_UrBactInoc_S1_02);
    VarUrPathogen1_03:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_03,RdBtn_UrBactInoc_S1_03);
    VarUrPathogen1_04:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_04,RdBtn_UrBactInoc_S1_04);
    VarUrPathogen1_05:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_05,RdBtn_UrBactInoc_S1_05);
    VarUrPathogen1_06:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_06,RdBtn_UrBactInoc_S1_06);
    VarUrPathogen1_07:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_07,RdBtn_UrBactInoc_S1_07);
    VarUrPathogen1_08:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_08,RdBtn_UrBactInoc_S1_08);
    VarUrPathogen1_09:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_09,RdBtn_UrBactInoc_S1_09);
    VarUrPathogen1_10:= GetCheckedRdBtn(RdBtn_UrBactInoc_R1_10,RdBtn_UrBactInoc_S1_10);

    VarUrPathogen2_01:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_01,RdBtn_UrBactInoc_S2_01);
    VarUrPathogen2_02:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_02,RdBtn_UrBactInoc_S2_02);
    VarUrPathogen2_03:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_03,RdBtn_UrBactInoc_S2_03);
    VarUrPathogen2_04:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_04,RdBtn_UrBactInoc_S2_04);
    VarUrPathogen2_05:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_05,RdBtn_UrBactInoc_S2_05);
    VarUrPathogen2_06:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_06,RdBtn_UrBactInoc_S2_06);
    VarUrPathogen2_07:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_07,RdBtn_UrBactInoc_S2_07);
    VarUrPathogen2_08:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_08,RdBtn_UrBactInoc_S2_08);
    VarUrPathogen2_09:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_09,RdBtn_UrBactInoc_S2_09);
    VarUrPathogen2_10:= GetCheckedRdBtn(RdBtn_UrBactInoc_R2_10,RdBtn_UrBactInoc_S2_10);

    VarChkMicBactInocPathogen:= BoolConvertInt(ChkBoxMicBactInoc.Checked);
    VarNumEdtMicBactInoc:= NumEdtMicBactInoc.Value;

    VarMicPathogen1_01:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_01,RdBtn_MicBactInoc_S1_01);
    VarMicPathogen1_02:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_02,RdBtn_MicBactInoc_S1_02);
    VarMicPathogen1_03:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_03,RdBtn_MicBactInoc_S1_03);
    VarMicPathogen1_04:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_04,RdBtn_MicBactInoc_S1_04);
    VarMicPathogen1_05:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_05,RdBtn_MicBactInoc_S1_05);
    VarMicPathogen1_06:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_06,RdBtn_MicBactInoc_S1_06);
    VarMicPathogen1_07:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_07,RdBtn_MicBactInoc_S1_07);
    VarMicPathogen1_08:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_08,RdBtn_MicBactInoc_S1_08);
    VarMicPathogen1_09:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_09,RdBtn_MicBactInoc_S1_09);
    VarMicPathogen1_10:= GetCheckedRdBtn(RdBtn_MicBactInoc_R1_10,RdBtn_MicBactInoc_S1_10);

    VarMicPathogen2_01:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_01,RdBtn_MicBactInoc_S2_01);
    VarMicPathogen2_02:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_02,RdBtn_MicBactInoc_S2_02);
    VarMicPathogen2_03:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_03,RdBtn_MicBactInoc_S2_03);
    VarMicPathogen2_04:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_04,RdBtn_MicBactInoc_S2_04);
    VarMicPathogen2_05:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_05,RdBtn_MicBactInoc_S2_05);
    VarMicPathogen2_06:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_06,RdBtn_MicBactInoc_S2_06);
    VarMicPathogen2_07:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_07,RdBtn_MicBactInoc_S2_07);
    VarMicPathogen2_08:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_08,RdBtn_MicBactInoc_S2_08);
    VarMicPathogen2_09:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_09,RdBtn_MicBactInoc_S2_09);
    VarMicPathogen2_10:= GetCheckedRdBtn(RdBtn_MicBactInoc_R2_10,RdBtn_MicBactInoc_S2_10);

    VarStrMicUrExtra1:= Trim(EdtExtra1.Text);
    VarStrMicUrExtra2:= Trim(EdtExtra2.Text);
    VarStrExtra1Ur_Val1:= Trim(EdtExtra1Ur_Val1.Text);
    VarStrExtra1Ur_Val2:= Trim(EdtExtra1Ur_Val2.Text);
    VarStrExtra2Ur_Val1:= Trim(EdtExtra2Ur_Val1.Text);
    VarStrExtra2Ur_Val2:= Trim(EdtExtra2Ur_Val2.Text);
    VarStrExtra1Mic_Val1:= Trim(EdtExtra1Mic_Val1.Text);
    VarStrExtra1Mic_Val2:= Trim(EdtExtra1Mic_Val2.Text);
    VarStrExtra2Mic_Val1:= Trim(EdtExtra2Mic_Val1.Text);
    VarStrExtra2Mic_Val2:= Trim(EdtExtra2Mic_Val2.Text);

    VarChkMicUrDrug_01:= BoolConvertInt(ChkBoxDrug_01.Checked);
    VarChkMicUrDrug_02:= BoolConvertInt(ChkBoxDrug_02.Checked);
    VarChkMicUrDrug_03:= BoolConvertInt(ChkBoxDrug_03.Checked);
    VarChkMicUrDrug_04:= BoolConvertInt(ChkBoxDrug_04.Checked);
    VarChkMicUrDrug_05:= BoolConvertInt(ChkBoxDrug_05.Checked);
    VarChkMicUrDrug_06:= BoolConvertInt(ChkBoxDrug_06.Checked);
    VarChkMicUrDrug_07:= BoolConvertInt(ChkBoxDrug_07.Checked);
    VarChkMicUrDrug_08:= BoolConvertInt(ChkBoxDrug_08.Checked);
    VarChkMicUrDrug_09:= BoolConvertInt(ChkBoxDrug_09.Checked);
    VarChkMicUrDrug_10:= BoolConvertInt(ChkBoxDrug_10.Checked);

  finally
    TmpRE.Free;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.AppEventsFrmMicUrBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;
AppEventsFrmMicUrBactInoc.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//проставляем свойства Checked в радиобутонах в зависимости от величины константы
procedure TFrmMicUrBactInoc.CheckItTwoRdBtn(const AInt: Integer; L_RdBtn, R_RdBtn: TRadioButton);
begin
if AInt = 1
  then L_RdBtn.Checked:= True
  else
    begin
      if AInt= 2
        then R_RdBtn.Checked:= True
        else
          begin
            L_RdBtn.Checked:= False;
            R_RdBtn.Checked:= False;
          end;
    end;
end;

//----------------------------------------------------------------------------
//процедура проверяет все чеки контроллов и отображает их доступность соответственно
procedure TFrmMicUrBactInoc.TestingAllChecks(Sender: TObject);
begin
//названия препаратов
ChkBoxDrug_01.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_02.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_03.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_04.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_05.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_06.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_07.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_08.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_09.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);
ChkBoxDrug_10.Enabled:= (ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked);

EdtExtra1.Enabled:= ((ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked) and ChkBoxDrug_09.Checked);
EdtExtra2.Enabled:= ((ChkBoxUrBactInoc.Checked or ChkBoxMicBactInoc.Checked) and ChkBoxDrug_10.Checked);

//надписи
Label10.Enabled:= ChkBoxUrBactInoc.Checked;
Label18.Enabled:= ChkBoxUrBactInoc.Checked;
Label20.Enabled:= ChkBoxUrBactInoc.Checked;

Label30.Enabled:= ChkBoxUrBactInoc.Checked;
Label31.Enabled:= ChkBoxUrBactInoc.Checked;
Label32.Enabled:= ChkBoxUrBactInoc.Checked;

Label21.Enabled:= ChkBoxMicBactInoc.Checked;
Label22.Enabled:= ChkBoxMicBactInoc.Checked;
Label23.Enabled:= ChkBoxMicBactInoc.Checked;

Label49.Enabled:= ChkBoxMicBactInoc.Checked;
Label50.Enabled:= ChkBoxMicBactInoc.Checked;
Label51.Enabled:= ChkBoxMicBactInoc.Checked;

//название возбудителей
Label19.Enabled:= ChkBoxUrBactInoc.Checked;
NumEdtUrBactInoc.Enabled:= ChkBoxUrBactInoc.Checked;
Label25.Enabled:= ChkBoxUrBactInoc.Checked;

Label26.Enabled:= ChkBoxMicBactInoc.Checked;
NumEdtMicBactInoc.Enabled:= ChkBoxMicBactInoc.Checked;
Label27.Enabled:= ChkBoxMicBactInoc.Checked;

//панель с уреаплазмой
RdBtn_UrBactInoc_R1_01.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_01.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));
Label11.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_02.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_02.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));
Label12.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_03.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_03.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));
Label13.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_04.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_04.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));
Label14.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_05.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_05.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));
Label15.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_06.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_06.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));
Label24.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_07.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_07.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));
Label28.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_08.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_08.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));
Label29.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_09.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_09.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));
EdtExtra1Ur_Val1.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R1_10.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S1_10.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));
EdtExtra2Ur_Val1.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));

//-----------------------
RdBtn_UrBactInoc_R2_01.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_01.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));
Label33.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_02.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_02.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));
Label34.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_03.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_03.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));
Label35.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_04.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_04.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));
Label36.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_05.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_05.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));
Label37.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_06.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_06.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));
Label38.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_07.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_07.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));
Label39.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_08.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_08.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));
Label40.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_09.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_09.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));
EdtExtra1Ur_Val2.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtUrBactInoc.Value > 3));

RdBtn_UrBactInoc_R2_10.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));
RdBtn_UrBactInoc_S2_10.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));
EdtExtra2Ur_Val2.Enabled:= (ChkBoxUrBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtUrBactInoc.Value > 3));

//панель с микоплазмой
RdBtn_MicBactInoc_R1_01.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_01.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));
Label41.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_02.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_02.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));
Label42.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_03.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_03.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));
Label43.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_04.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_04.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));
Label44.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_05.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_05.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));
Label45.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_06.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_06.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));
Label46.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_07.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_07.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));
Label47.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_08.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_08.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));
Label48.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_09.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_09.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));
EdtExtra1Mic_Val1.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R1_10.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S1_10.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));
EdtExtra2Mic_Val1.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));

//--------------
RdBtn_MicBactInoc_R2_01.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_01.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));
Label52.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_01.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_02.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_02.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));
Label53.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_02.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_03.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_03.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));
Label54.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_03.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_04.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_04.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));
Label55.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_04.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_05.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_05.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));
Label56.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_05.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_06.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_06.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));
Label57.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_06.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_07.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_07.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));
Label58.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_07.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_08.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_08.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));
Label59.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_08.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_09.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_09.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));
EdtExtra1Mic_Val2.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_09.Checked and (NumEdtMicBactInoc.Value > 3));

RdBtn_MicBactInoc_R2_10.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));
RdBtn_MicBactInoc_S2_10.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));
EdtExtra2Mic_Val2.Enabled:= (ChkBoxMicBactInoc.Checked and ChkBoxDrug_10.Checked and (NumEdtMicBactInoc.Value > 3));

end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxUrBactInocClick(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxMicBactInocClick(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_01Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_01.Checked then
  begin
    RdBtn_UrBactInoc_R1_01.Checked:= False;
    RdBtn_UrBactInoc_S1_01.Checked:= False;
    RdBtn_UrBactInoc_R2_01.Checked:= False;
    RdBtn_UrBactInoc_S2_01.Checked:= False;

    RdBtn_MicBactInoc_R1_01.Checked:= False;
    RdBtn_MicBactInoc_S1_01.Checked:= False;
    RdBtn_MicBactInoc_R2_01.Checked:= False;
    RdBtn_MicBactInoc_S2_01.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_02Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_02.Checked then
  begin
    RdBtn_UrBactInoc_R1_02.Checked:= False;
    RdBtn_UrBactInoc_S1_02.Checked:= False;
    RdBtn_UrBactInoc_R2_02.Checked:= False;
    RdBtn_UrBactInoc_S2_02.Checked:= False;

    RdBtn_MicBactInoc_R1_02.Checked:= False;
    RdBtn_MicBactInoc_S1_02.Checked:= False;
    RdBtn_MicBactInoc_R2_02.Checked:= False;
    RdBtn_MicBactInoc_S2_02.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_03Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_03.Checked then
  begin
    RdBtn_UrBactInoc_R1_03.Checked:= False;
    RdBtn_UrBactInoc_S1_03.Checked:= False;
    RdBtn_UrBactInoc_R2_03.Checked:= False;
    RdBtn_UrBactInoc_S2_03.Checked:= False;

    RdBtn_MicBactInoc_R1_03.Checked:= False;
    RdBtn_MicBactInoc_S1_03.Checked:= False;
    RdBtn_MicBactInoc_R2_03.Checked:= False;
    RdBtn_MicBactInoc_S2_03.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_04Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_04.Checked then
  begin
    RdBtn_UrBactInoc_R1_04.Checked:= False;
    RdBtn_UrBactInoc_S1_04.Checked:= False;
    RdBtn_UrBactInoc_R2_04.Checked:= False;
    RdBtn_UrBactInoc_S2_04.Checked:= False;

    RdBtn_MicBactInoc_R1_04.Checked:= False;
    RdBtn_MicBactInoc_S1_04.Checked:= False;
    RdBtn_MicBactInoc_R2_04.Checked:= False;
    RdBtn_MicBactInoc_S2_04.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_05Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_05.Checked then
  begin
    RdBtn_UrBactInoc_R1_05.Checked:= False;
    RdBtn_UrBactInoc_S1_05.Checked:= False;
    RdBtn_UrBactInoc_R2_05.Checked:= False;
    RdBtn_UrBactInoc_S2_05.Checked:= False;

    RdBtn_MicBactInoc_R1_05.Checked:= False;
    RdBtn_MicBactInoc_S1_05.Checked:= False;
    RdBtn_MicBactInoc_R2_05.Checked:= False;
    RdBtn_MicBactInoc_S2_05.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_06Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_06.Checked then
  begin
    RdBtn_UrBactInoc_R1_06.Checked:= False;
    RdBtn_UrBactInoc_S1_06.Checked:= False;
    RdBtn_UrBactInoc_R2_06.Checked:= False;
    RdBtn_UrBactInoc_S2_06.Checked:= False;

    RdBtn_MicBactInoc_R1_06.Checked:= False;
    RdBtn_MicBactInoc_S1_06.Checked:= False;
    RdBtn_MicBactInoc_R2_06.Checked:= False;
    RdBtn_MicBactInoc_S2_06.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_07Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_07.Checked then
  begin
    RdBtn_UrBactInoc_R1_07.Checked:= False;
    RdBtn_UrBactInoc_S1_07.Checked:= False;
    RdBtn_UrBactInoc_R2_07.Checked:= False;
    RdBtn_UrBactInoc_S2_07.Checked:= False;

    RdBtn_MicBactInoc_R1_07.Checked:= False;
    RdBtn_MicBactInoc_S1_07.Checked:= False;
    RdBtn_MicBactInoc_R2_07.Checked:= False;
    RdBtn_MicBactInoc_S2_07.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_08Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_08.Checked then
  begin
    RdBtn_UrBactInoc_R1_08.Checked:= False;
    RdBtn_UrBactInoc_S1_08.Checked:= False;
    RdBtn_UrBactInoc_R2_08.Checked:= False;
    RdBtn_UrBactInoc_S2_08.Checked:= False;

    RdBtn_MicBactInoc_R1_08.Checked:= False;
    RdBtn_MicBactInoc_S1_08.Checked:= False;
    RdBtn_MicBactInoc_R2_08.Checked:= False;
    RdBtn_MicBactInoc_S2_08.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_09Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_09.Checked then
  begin
    RdBtn_UrBactInoc_R1_09.Checked:= False;
    RdBtn_UrBactInoc_S1_09.Checked:= False;
    RdBtn_UrBactInoc_R2_09.Checked:= False;
    RdBtn_UrBactInoc_S2_09.Checked:= False;

    RdBtn_MicBactInoc_R1_09.Checked:= False;
    RdBtn_MicBactInoc_S1_09.Checked:= False;
    RdBtn_MicBactInoc_R2_09.Checked:= False;
    RdBtn_MicBactInoc_S2_09.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.ChkBoxDrug_10Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_10.Checked then
  begin
    RdBtn_UrBactInoc_R1_10.Checked:= False;
    RdBtn_UrBactInoc_S1_10.Checked:= False;
    RdBtn_UrBactInoc_R2_10.Checked:= False;
    RdBtn_UrBactInoc_S2_10.Checked:= False;

    RdBtn_MicBactInoc_R1_10.Checked:= False;
    RdBtn_MicBactInoc_S1_10.Checked:= False;
    RdBtn_MicBactInoc_R2_10.Checked:= False;
    RdBtn_MicBactInoc_S2_10.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.NumEdtUrBactInocChange(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.NumEdtMicBactInocChange(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------
//возвращает цифру в зависимости от отмеченного радиобутона
function TFrmMicUrBactInoc.GetCheckedRdBtn(L_RdBtn, R_RdBtn: TRadioButton): Integer;
begin
if L_RdBtn.Checked
  then Result:= 1
  else
    begin
      if R_RdBtn.Checked
        then Result:= 2
        else Result:= 0;
    end;
end;

//----------------------------------------------------------------------------
//функция проверяет, отмечен ли чекбокс и любой из радиобутонов на соответствующей панели
function TFrmMicUrBactInoc.CheckValueRdBtn_and_ChkBox(ChkRdBtn1,
  ChkRdBtn2: TRadioButton; ChkBox: TCheckBox): Integer;
begin
Result:= 0;
if ChkBox.Checked and (ChkRdBtn1.Checked or ChkRdBtn2.Checked) then Result:= 1;
end;

//----------------------------------------------------------------------------
//возвращаем строковое значение выбранного радиобутона (Result), где
//L - длина строки
//Index - условный номер выбранного радиобутона
function TFrmMicUrBactInoc.GetSuscStr(out L, Index: Integer; ChkRdBtn1, ChkRdBtn2: TRadioButton): String;
begin
if ChkRdBtn1.Checked
  then
    begin
      Result:= 'устойчивый';
      Index:= 1;
    end
  else
    begin
      Result:= 'чувствительный';
      Index:= 3;
    end;

L:= Length(Result);
end;

//----------------------------------------------------------------------------

procedure TFrmMicUrBactInoc.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//добавляем и форматируем текст в рич-эдите, где
//CurStart - начало выделения
//SelEnd - длина выделения
//Index - условный индекс, влияющий на параметры выделения
//TxtStr - добавляемая строка
procedure TFrmMicUrBactInoc.FmtTxtInTmpRchEdt(ARichEdit: TRichEdit;
                                                      const CurStart, SelEnd, Index: Integer; TxtStr: String);
begin
with ARichEdit do
      begin
        PlainText:= False;
        Lines.Add(TxtStr + ';');//добавляем строку
        SelStart:= CurStart;
        SelLength:= SelEnd;
        with SelAttributes do //красим выделенную строку
          begin
            case Index of
              1: Color:= clWindowText;
              2: Color:= clMaroon;
              3: begin
                  Color:= clRed;
                  Style:= [fsBold];
                 end;
            end;{case}
          end;{with SelAttributes do}
        SelStart:= Length(Text);//курсор в конец текста
        SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
      end;{with TRichEdit(Sender) do}
end;

end.
