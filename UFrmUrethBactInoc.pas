unit UFrmUrethBactInoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, NiceSettings, ExtCtrls, ComCtrls, Mask, DBCtrlsEh, AppEvnts;

type
  TFrmUrethBactInoc = class(TForm)
    GroupBox1: TGroupBox;
    BtnCancel: TButton;
    BtnSave: TButton;
    NiceSetFrmUrethBactInoc: TNiceSettings;
    Label16: TLabel;
    DTPickUrethBactInocDate: TDateTimePicker;
    Panel17: TPanel;
    Label1: TLabel;
    Label17: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    RdBtn_R1_01: TRadioButton;
    EdtPathogen1: TEdit;
    EdtPathogen2: TEdit;
    RdBtn_I1_01: TRadioButton;
    RdBtn_S1_01: TRadioButton;
    Panel5: TPanel;
    RdBtn_R1_02: TRadioButton;
    RdBtn_I1_02: TRadioButton;
    RdBtn_S1_02: TRadioButton;
    Panel6: TPanel;
    RdBtn_R1_03: TRadioButton;
    RdBtn_I1_03: TRadioButton;
    RdBtn_S1_03: TRadioButton;
    Panel7: TPanel;
    RdBtn_R1_04: TRadioButton;
    RdBtn_I1_04: TRadioButton;
    RdBtn_S1_04: TRadioButton;
    Panel8: TPanel;
    RdBtn_R1_05: TRadioButton;
    RdBtn_I1_05: TRadioButton;
    RdBtn_S1_05: TRadioButton;
    Panel9: TPanel;
    RdBtn_R1_06: TRadioButton;
    RdBtn_I1_06: TRadioButton;
    RdBtn_S1_06: TRadioButton;
    Panel10: TPanel;
    RdBtn_R1_07: TRadioButton;
    RdBtn_I1_07: TRadioButton;
    RdBtn_S1_07: TRadioButton;
    Panel11: TPanel;
    RdBtn_R1_08: TRadioButton;
    RdBtn_I1_08: TRadioButton;
    RdBtn_S1_08: TRadioButton;
    Panel12: TPanel;
    RdBtn_R1_09: TRadioButton;
    RdBtn_I1_09: TRadioButton;
    RdBtn_S1_09: TRadioButton;
    Panel13: TPanel;
    RdBtn_R1_10: TRadioButton;
    RdBtn_I1_10: TRadioButton;
    RdBtn_S1_10: TRadioButton;
    Panel14: TPanel;
    RdBtn_R1_11: TRadioButton;
    RdBtn_I1_11: TRadioButton;
    RdBtn_S1_11: TRadioButton;
    Panel15: TPanel;
    RdBtn_R1_12: TRadioButton;
    RdBtn_I1_12: TRadioButton;
    RdBtn_S1_12: TRadioButton;
    Panel16: TPanel;
    RdBtn_R1_13: TRadioButton;
    RdBtn_I1_13: TRadioButton;
    RdBtn_S1_13: TRadioButton;
    Panel18: TPanel;
    RdBtn_R1_14: TRadioButton;
    RdBtn_I1_14: TRadioButton;
    RdBtn_S1_14: TRadioButton;
    Panel19: TPanel;
    RdBtn_R1_15: TRadioButton;
    RdBtn_I1_15: TRadioButton;
    RdBtn_S1_15: TRadioButton;
    Panel20: TPanel;
    RdBtn_R1_16: TRadioButton;
    RdBtn_I1_16: TRadioButton;
    RdBtn_S1_16: TRadioButton;
    ChkBoxPathogen1: TCheckBox;
    ChkBoxPathogen2: TCheckBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Panel21: TPanel;
    RdBtn_R2_01: TRadioButton;
    RdBtn_I2_01: TRadioButton;
    RdBtn_S2_01: TRadioButton;
    Panel22: TPanel;
    RdBtn_R2_02: TRadioButton;
    RdBtn_I2_02: TRadioButton;
    RdBtn_S2_02: TRadioButton;
    Panel23: TPanel;
    RdBtn_R2_03: TRadioButton;
    RdBtn_I2_03: TRadioButton;
    RdBtn_S2_03: TRadioButton;
    Panel24: TPanel;
    RdBtn_R2_04: TRadioButton;
    RdBtn_I2_04: TRadioButton;
    RdBtn_S2_04: TRadioButton;
    Panel25: TPanel;
    RdBtn_R2_05: TRadioButton;
    RdBtn_I2_05: TRadioButton;
    RdBtn_S2_05: TRadioButton;
    Panel26: TPanel;
    RdBtn_R2_06: TRadioButton;
    RdBtn_I2_06: TRadioButton;
    RdBtn_S2_06: TRadioButton;
    Panel27: TPanel;
    RdBtn_R2_07: TRadioButton;
    RdBtn_I2_07: TRadioButton;
    RdBtn_S2_07: TRadioButton;
    Panel28: TPanel;
    RdBtn_R2_08: TRadioButton;
    RdBtn_I2_08: TRadioButton;
    RdBtn_S2_08: TRadioButton;
    Panel29: TPanel;
    RdBtn_R2_09: TRadioButton;
    RdBtn_I2_09: TRadioButton;
    RdBtn_S2_09: TRadioButton;
    Panel30: TPanel;
    RdBtn_R2_10: TRadioButton;
    RdBtn_I2_10: TRadioButton;
    RdBtn_S2_10: TRadioButton;
    Panel31: TPanel;
    RdBtn_R2_11: TRadioButton;
    RdBtn_I2_11: TRadioButton;
    RdBtn_S2_11: TRadioButton;
    Panel32: TPanel;
    RdBtn_R2_12: TRadioButton;
    RdBtn_I2_12: TRadioButton;
    RdBtn_S2_12: TRadioButton;
    Panel33: TPanel;
    RdBtn_R2_13: TRadioButton;
    RdBtn_I2_13: TRadioButton;
    RdBtn_S2_13: TRadioButton;
    Panel34: TPanel;
    RdBtn_R2_14: TRadioButton;
    RdBtn_I2_14: TRadioButton;
    RdBtn_S2_14: TRadioButton;
    Panel35: TPanel;
    RdBtn_R2_15: TRadioButton;
    RdBtn_I2_15: TRadioButton;
    RdBtn_S2_15: TRadioButton;
    Panel36: TPanel;
    RdBtn_R2_16: TRadioButton;
    RdBtn_I2_16: TRadioButton;
    RdBtn_S2_16: TRadioButton;
    Panel37: TPanel;
    Panel38: TPanel;
    EdtExtra1: TEdit;
    EdtExtra2: TEdit;
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
    ChkBoxDrug_11: TCheckBox;
    ChkBoxDrug_12: TCheckBox;
    ChkBoxDrug_13: TCheckBox;
    ChkBoxDrug_14: TCheckBox;
    ChkBoxDrug_15: TCheckBox;
    ChkBoxDrug_16: TCheckBox;
    Label2: TLabel;
    NumEdtUreth1: TDBNumberEditEh;
    Label25: TLabel;
    Label3: TLabel;
    NumEdtUreth2: TDBNumberEditEh;
    Label4: TLabel;
    Panel1: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    AppEventsFrmUrethBactInoc: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChkBoxPathogen1Click(Sender: TObject);
    procedure ChkBoxPathogen2Click(Sender: TObject);
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
    procedure ChkBoxDrug_11Click(Sender: TObject);
    procedure ChkBoxDrug_12Click(Sender: TObject);
    procedure ChkBoxDrug_13Click(Sender: TObject);
    procedure ChkBoxDrug_14Click(Sender: TObject);
    procedure ChkBoxDrug_15Click(Sender: TObject);
    procedure ChkBoxDrug_16Click(Sender: TObject);
    procedure NumEdtUreth1Change(Sender: TObject);
    procedure NumEdtUreth2Change(Sender: TObject);
    procedure AppEventsFrmUrethBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function CheckActiveRdBtn(ChkRdBtn1,ChkRdBtn2,ChkRdBtn3: TRadioButton): Integer;
    function GetSusceptStr(out L, Index: Integer; ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton): String;
    function CheckItRdBtn_and_ChkBox(ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton;ChkBox: TCheckBox): Integer;
    procedure CheckItRdBtn(const AInt: Integer; ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton);
    procedure TestingAllChecks(Sender: TObject);
    procedure FmtTxtInTmpRichEdit(ARichEdit: TRichEdit; const CurStart, SelEnd, Index: Integer;
                                                                                                  TxtStr: String);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmUrethBactInoc: TFrmUrethBactInoc;

implementation

uses
  VarAndrUnit, DMFIBUnit, MainAndrUnit;

var
  FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmUrethBactInoc.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.FormCreate(Sender: TObject);
begin
NiceSetFrmUrethBactInoc.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmUrethBactInoc.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Бак.посев из уретры (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Бак.посев из уретры (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//присваиваем переменным значения
DTPickUrethBactInocDate.Date:= VarUrethBactInocDate;

ChkBoxPathogen1.Checked:= IntConvertBool(VarChkUrethPathogen1);
CheckItRdBtn(VarUreth_Pathogen1_01,RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
CheckItRdBtn(VarUreth_Pathogen1_02,RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
CheckItRdBtn(VarUreth_Pathogen1_03,RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
CheckItRdBtn(VarUreth_Pathogen1_04,RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
CheckItRdBtn(VarUreth_Pathogen1_05,RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
CheckItRdBtn(VarUreth_Pathogen1_06,RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
CheckItRdBtn(VarUreth_Pathogen1_07,RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
CheckItRdBtn(VarUreth_Pathogen1_08,RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
CheckItRdBtn(VarUreth_Pathogen1_09,RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
CheckItRdBtn(VarUreth_Pathogen1_10,RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
CheckItRdBtn(VarUreth_Pathogen1_11,RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
CheckItRdBtn(VarUreth_Pathogen1_12,RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
CheckItRdBtn(VarUreth_Pathogen1_13,RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
CheckItRdBtn(VarUreth_Pathogen1_14,RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
CheckItRdBtn(VarUreth_Pathogen1_15,RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
CheckItRdBtn(VarUreth_Pathogen1_16,RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);

ChkBoxPathogen2.Checked:= IntConvertBool(VarChkUrethPathogen2);
CheckItRdBtn(VarUreth_Pathogen2_01,RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
CheckItRdBtn(VarUreth_Pathogen2_02,RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
CheckItRdBtn(VarUreth_Pathogen2_03,RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
CheckItRdBtn(VarUreth_Pathogen2_04,RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
CheckItRdBtn(VarUreth_Pathogen2_05,RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
CheckItRdBtn(VarUreth_Pathogen2_06,RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
CheckItRdBtn(VarUreth_Pathogen2_07,RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
CheckItRdBtn(VarUreth_Pathogen2_08,RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
CheckItRdBtn(VarUreth_Pathogen2_09,RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
CheckItRdBtn(VarUreth_Pathogen2_10,RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
CheckItRdBtn(VarUreth_Pathogen2_11,RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
CheckItRdBtn(VarUreth_Pathogen2_12,RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
CheckItRdBtn(VarUreth_Pathogen2_13,RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
CheckItRdBtn(VarUreth_Pathogen2_14,RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
CheckItRdBtn(VarUreth_Pathogen2_15,RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
CheckItRdBtn(VarUreth_Pathogen2_16,RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);

ChkBoxDrug_01.Checked:= IntConvertBool(VarChkUrethDrug_01);
ChkBoxDrug_02.Checked:= IntConvertBool(VarChkUrethDrug_02);
ChkBoxDrug_03.Checked:= IntConvertBool(VarChkUrethDrug_03);
ChkBoxDrug_04.Checked:= IntConvertBool(VarChkUrethDrug_04);
ChkBoxDrug_05.Checked:= IntConvertBool(VarChkUrethDrug_05);
ChkBoxDrug_06.Checked:= IntConvertBool(VarChkUrethDrug_06);
ChkBoxDrug_07.Checked:= IntConvertBool(VarChkUrethDrug_07);
ChkBoxDrug_08.Checked:= IntConvertBool(VarChkUrethDrug_08);
ChkBoxDrug_09.Checked:= IntConvertBool(VarChkUrethDrug_09);
ChkBoxDrug_10.Checked:= IntConvertBool(VarChkUrethDrug_10);
ChkBoxDrug_11.Checked:= IntConvertBool(VarChkUrethDrug_11);
ChkBoxDrug_12.Checked:= IntConvertBool(VarChkUrethDrug_12);
ChkBoxDrug_13.Checked:= IntConvertBool(VarChkUrethDrug_13);
ChkBoxDrug_14.Checked:= IntConvertBool(VarChkUrethDrug_14);
ChkBoxDrug_15.Checked:= IntConvertBool(VarChkUrethDrug_15);
ChkBoxDrug_16.Checked:= IntConvertBool(VarChkUrethDrug_16);

NumEdtUreth1.Value:= VarNumEdtUrethBact1;
NumEdtUreth2.Value:= VarNumEdtUrethBact2;

if Trim(VarStrUrethPathogen1) = ''
  then EdtPathogen1.Text:= 'название инфекта'
  else EdtPathogen1.Text:= Trim(VarStrUrethPathogen1);

if Trim(VarStrUrethPathogen2) = ''
  then EdtPathogen2.Text:= 'название инфекта'
  else EdtPathogen2.Text:= Trim(VarStrUrethPathogen2);

if Trim(VarStrUrethExtra1) = ''
  then EdtExtra1.Text:= 'название препарата'
  else EdtExtra1.Text:= Trim(VarStrUrethExtra1);

if Trim(VarStrUrethExtra2) = ''
  then EdtExtra2.Text:= 'название препарата'
  else EdtExtra2.Text:= Trim(VarStrUrethExtra2);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.FormResize(Sender: TObject);
begin
{}
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.FormShow(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.BtnSaveClick(Sender: TObject);
var BegCurPos, EndCurPos, //начало и конец выделения
    Index, //условный номер выбранного радиобутона
    counter: Integer;//счетчик для внутренних нужд
    TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
TmpRE:= TRichEdit.CreateParented(Self.Handle);

//отключим доп.поля для препаратов,если они отмечены, но не используются
if ChkBoxDrug_15.Checked then
  ChkBoxDrug_15.Checked:= not ((AnsiLowerCase(Trim(EdtExtra1.Text)) = 'название препарата') or
                                                                                     (Trim(EdtExtra1.Text) = ''));
if ChkBoxDrug_16.Checked then
  ChkBoxDrug_16.Checked:= not ((AnsiLowerCase(Trim(EdtExtra2.Text)) = 'название препарата') or
                                                                                     (Trim(EdtExtra2.Text) = ''));

with TmpRE do
  begin
    PlainText:= False;
    Visible:= False;
  end;
  try

    TmpTxt:= 'Бак.посев отделяемого из уретры ('+
                                           FormatDateTime('DD.MM.YY', DTPickUrethBactInocDate.DateTime) + '): ';
    with TmpRE do
      begin
        Lines.Add(TmpTxt);
        SelStart:= 0;
        SelLength:= Length(Trim(TmpTxt));
        SelAttributes.Style:= [fsUnderline];
        SelStart:= Length(Trim(TmpTxt));
        SelAttributes.Assign(DefAttributes);
      end;


    if ChkBoxPathogen1.Checked then
      begin
        if (Trim(EdtPathogen1.Text) = '') or (Trim(EdtPathogen1.Text) = 'название инфекта')  then
          begin
            Application.MessageBox('Вы не ввели название обнаруженного возбудителя!','Неполные данные',
                                                                                              MB_ICONINFORMATION);
            if EdtPathogen1.CanFocus then EdtPathogen1.SetFocus;
            Exit;
          end;

        //если ни один из препаратов не отмечен при довольно высокой концентрации инфекта, то предупредим об этом
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked or ChkBoxDrug_11.Checked or ChkBoxDrug_12.Checked or
                        ChkBoxDrug_13.Checked or ChkBoxDrug_14.Checked or ChkBoxDrug_15.Checked or
                          ChkBoxDrug_16.Checked)) and NumEdtUreth1.Value > 3 then
          begin
            Application.MessageBox('Вы не отметили чувствительность инфекта ни к одному из препаратов!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
            Exit;
          end;

        counter:= 0;
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01,ChkBoxDrug_01);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02,ChkBoxDrug_02);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03,ChkBoxDrug_03);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04,ChkBoxDrug_04);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05,ChkBoxDrug_05);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06,ChkBoxDrug_06);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07,ChkBoxDrug_07);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08,ChkBoxDrug_08);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09,ChkBoxDrug_09);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10,ChkBoxDrug_10);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11,ChkBoxDrug_11);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12,ChkBoxDrug_12);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13,ChkBoxDrug_13);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14,ChkBoxDrug_14);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15,ChkBoxDrug_15);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16,ChkBoxDrug_16);



        TmpTxt:= '1. выявлен возбудитель ' + Trim(EdtPathogen1.Text) + ' в конц. 10^'
        + VarToStr(NumEdtUreth1.Value) + ' КОЕ/мл.';

        BegCurPos:= Length(TmpRE.Text) + Length('1. выявлен возбудитель ');
        EndCurPos:= Length(Trim(EdtPathogen1.Text));

        if NumEdtUreth1.Value > 3 then
          begin
            //если панель с рабоикнопками включена и отмечен хоть один радиобутон, то дополняем текст
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

            //если препарат отмечен и выбрано хоть одно значение радиобутона, то вносим его в список
            if (ChkBoxDrug_01.Checked) and (RdBtn_R1_01.Checked or RdBtn_I1_01.Checked or RdBtn_S1_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ампициллин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
                BegCurPos:= BegCurPos + Length('* ампициллин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_R1_02.Checked or RdBtn_I1_02.Checked or RdBtn_S1_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* аугментин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
                BegCurPos:= BegCurPos + Length('* аугментин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_R1_03.Checked or RdBtn_I1_03.Checked or RdBtn_S1_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* оксациллин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
                BegCurPos:= BegCurPos + Length('* оксациллин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_R1_04.Checked or RdBtn_I1_04.Checked or RdBtn_S1_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефазолин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
                BegCurPos:= BegCurPos + Length('* цефазолин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_R1_05.Checked or RdBtn_I1_05.Checked or RdBtn_S1_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефотаксим - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
                BegCurPos:= BegCurPos + Length('* цефотаксим - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_R1_06.Checked or RdBtn_I1_06.Checked or RdBtn_S1_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефтазидим - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
                BegCurPos:= BegCurPos + Length('* цефтазидим - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_R1_07.Checked or RdBtn_I1_07.Checked or RdBtn_S1_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефоперазон - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
                BegCurPos:= BegCurPos + Length('* цефоперазон - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_R1_08.Checked or RdBtn_I1_08.Checked or RdBtn_S1_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* гентамицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
                BegCurPos:= BegCurPos + Length('* гентамицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_R1_09.Checked or RdBtn_I1_09.Checked or RdBtn_S1_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* амикацин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
                BegCurPos:= BegCurPos + Length('* амикацин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_R1_10.Checked or RdBtn_I1_10.Checked or RdBtn_S1_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
                BegCurPos:= BegCurPos + Length('* эритромицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_11.Checked) and (RdBtn_R1_11.Checked or RdBtn_I1_11.Checked or RdBtn_S1_11.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
                BegCurPos:= BegCurPos + Length('* азитромицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_12.Checked) and (RdBtn_R1_12.Checked or RdBtn_I1_12.Checked or RdBtn_S1_12.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
                BegCurPos:= BegCurPos + Length('* доксициклин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_13.Checked) and (RdBtn_R1_13.Checked or RdBtn_I1_13.Checked or RdBtn_S1_13.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_14.Checked) and (RdBtn_R1_14.Checked or RdBtn_I1_14.Checked or RdBtn_S1_14.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* нитрофурантоин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
                BegCurPos:= BegCurPos + Length('* нитрофурантоин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_15.Checked) and (RdBtn_R1_15.Checked or RdBtn_I1_15.Checked or RdBtn_S1_15.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra1.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_16.Checked) and (RdBtn_R1_16.Checked or RdBtn_I1_16.Checked or RdBtn_S1_16.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra2.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;
          end
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
      end;{if ChkBoxPathogen1.Checked...then}

    if ChkBoxPathogen2.Checked then
      begin
        if (Trim(EdtPathogen2.Text) = '') or (Trim(EdtPathogen2.Text) = 'название инфекта')  then
          begin
            Application.MessageBox('Вы не ввели название обнаруженного возбудителя!','Неполные данные',
                                                                                              MB_ICONINFORMATION);
            if EdtPathogen2.CanFocus then EdtPathogen2.SetFocus;
            Exit;
          end;

        //если ни один из препаратов не отмечен при довольно высокой концентрации инфекта, то предупредим об этом
        if (not(ChkBoxDrug_01.Checked or ChkBoxDrug_02.Checked or ChkBoxDrug_03.Checked or
                  ChkBoxDrug_04.Checked or ChkBoxDrug_05.Checked or ChkBoxDrug_06.Checked or
                    ChkBoxDrug_07.Checked or ChkBoxDrug_08.Checked or ChkBoxDrug_09.Checked or
                      ChkBoxDrug_10.Checked or ChkBoxDrug_11.Checked or ChkBoxDrug_12.Checked or
                        ChkBoxDrug_13.Checked or ChkBoxDrug_14.Checked or ChkBoxDrug_15.Checked or
                          ChkBoxDrug_16.Checked)) and NumEdtUreth2.Value > 3 then
          begin
            Application.MessageBox('Вы не отметили чувствительность инфекта ни к одному из препаратов!',
                                                                            'Неполные данные', MB_ICONINFORMATION);
            Exit;
          end;

        counter:= 0;
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01,ChkBoxDrug_01);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02,ChkBoxDrug_02);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03,ChkBoxDrug_03);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04,ChkBoxDrug_04);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05,ChkBoxDrug_05);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06,ChkBoxDrug_06);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07,ChkBoxDrug_07);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08,ChkBoxDrug_08);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09,ChkBoxDrug_09);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10,ChkBoxDrug_10);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11,ChkBoxDrug_11);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12,ChkBoxDrug_12);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13,ChkBoxDrug_13);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14,ChkBoxDrug_14);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15,ChkBoxDrug_15);
        counter:= counter + CheckItRdBtn_and_ChkBox(RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16,ChkBoxDrug_16);

        if ChkBoxPathogen1.Checked then TmpRE.Lines.Add('');//добавим пустую строку, если уже есть один возбудитель

        TmpTxt:= '2. выявлен возбудитель ' + Trim(EdtPathogen2.Text) + ' в конц. 10^'
        + VarToStr(NumEdtUreth2.Value) + ' КОЕ/мл.';

        BegCurPos:= Length(TmpRE.Text) + Length('2. выявлен возбудитель ');
        EndCurPos:= Length(Trim(EdtPathogen2.Text));

        if NumEdtUreth2.Value > 3 then
          begin
            //если панель с рабоикнопками включена и отмечен хоть один радиобутон, то дополняем текст
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

            //если препарат отмечен и выбрано хоть одно значение радиобутона, то вносим его в список
            if (ChkBoxDrug_01.Checked) and (RdBtn_R2_01.Checked or RdBtn_I2_01.Checked or RdBtn_S2_01.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ампициллин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
                BegCurPos:= BegCurPos + Length('* ампициллин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_02.Checked) and (RdBtn_R2_02.Checked or RdBtn_I2_02.Checked or RdBtn_S2_02.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* аугментин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
                BegCurPos:= BegCurPos + Length('* аугментин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_03.Checked) and (RdBtn_R2_03.Checked or RdBtn_I2_03.Checked or RdBtn_S2_03.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* оксациллин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
                BegCurPos:= BegCurPos + Length('* оксациллин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_04.Checked) and (RdBtn_R2_04.Checked or RdBtn_I2_04.Checked or RdBtn_S2_04.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефазолин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
                BegCurPos:= BegCurPos + Length('* цефазолин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_05.Checked) and (RdBtn_R2_05.Checked or RdBtn_I2_05.Checked or RdBtn_S2_05.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефотаксим - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
                BegCurPos:= BegCurPos + Length('* цефотаксим - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_06.Checked) and (RdBtn_R2_06.Checked or RdBtn_I2_06.Checked or RdBtn_S2_06.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефтазидим - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
                BegCurPos:= BegCurPos + Length('* цефтазидим - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_07.Checked) and (RdBtn_R2_07.Checked or RdBtn_I2_07.Checked or RdBtn_S2_07.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* цефоперазон - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
                BegCurPos:= BegCurPos + Length('* цефоперазон - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_08.Checked) and (RdBtn_R2_08.Checked or RdBtn_I2_08.Checked or RdBtn_S2_08.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* гентамицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
                BegCurPos:= BegCurPos + Length('* гентамицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_09.Checked) and (RdBtn_R2_09.Checked or RdBtn_I2_09.Checked or RdBtn_S2_09.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* амикацин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
                BegCurPos:= BegCurPos + Length('* амикацин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_10.Checked) and (RdBtn_R2_10.Checked or RdBtn_I2_10.Checked or RdBtn_S2_10.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* эритромицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
                BegCurPos:= BegCurPos + Length('* эритромицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_11.Checked) and (RdBtn_R2_11.Checked or RdBtn_I2_11.Checked or RdBtn_S2_11.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* азитромицин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
                BegCurPos:= BegCurPos + Length('* азитромицин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_12.Checked) and (RdBtn_R2_12.Checked or RdBtn_I2_12.Checked or RdBtn_S2_12.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* доксициклин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
                BegCurPos:= BegCurPos + Length('* доксициклин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_13.Checked) and (RdBtn_R2_13.Checked or RdBtn_I2_13.Checked or RdBtn_S2_13.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ципрофлоксацин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
                BegCurPos:= BegCurPos + Length('* ципрофлоксацин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_14.Checked) and (RdBtn_R2_14.Checked or RdBtn_I2_14.Checked or RdBtn_S2_14.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* нитрофурантоин - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
                BegCurPos:= BegCurPos + Length('* нитрофурантоин - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_15.Checked) and (RdBtn_R2_15.Checked or RdBtn_I2_15.Checked or RdBtn_S2_15.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra1.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra1.Text) + ' - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;

            if (ChkBoxDrug_16.Checked) and (RdBtn_R2_16.Checked or RdBtn_I2_16.Checked or RdBtn_S2_16.Checked) then
              begin
                BegCurPos:= Length(TmpRE.Text);//запоминаем позицию начала строки
                TmpTxt:= '* ' + AnsiLowerCase(Trim(EdtExtra2.Text)) + ' - '
                                          + GetSusceptStr(EndCurPos,Index,RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);
                BegCurPos:= BegCurPos + Length('* ' + Trim(EdtExtra2.Text) + ' - ');//начало выделения
                FmtTxtInTmpRichEdit(TmpRE,BegCurPos,EndCurPos,Index,TmpTxt);//добавляем форматированную строку
              end;
          end
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
      end;{if ChkBoxPathogen2.Checked...then}

      if ((not ChkBoxPathogen1.Checked) and (not ChkBoxPathogen2.Checked))
        then
          TmpRE.Lines.Add('- бак.посев стерилен.');
          
  //==================================================================================
    //передаем форматированный текст в строку
    TmpTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextUrethBactInoc;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст бак.посева
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextUrethBactInoc:= TmpTxt //смело изменяем его через переменную TextUrethBactInoc
      else//если что-то содержит
        if TextUrethBactInoc <> TmpTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный результат исследования бактериального посева' +
                 ' отделяемого из уретры на микрофлору сейчас будет заменен на вновь сформированный' +
                 ' текст. Разрешить замену?', 'Изменение данных',
                                               MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextUrethBactInoc:= TmpTxt;//заменяем, если ответ "Да"
                //сохраняем переменные

    VarUrethBactInocDate:= DTPickUrethBactInocDate.Date;

    VarChkUrethPathogen1:= BoolConvertInt(ChkBoxPathogen1.Checked);
    VarUreth_Pathogen1_01:= CheckActiveRdBtn(RdBtn_R1_01,RdBtn_I1_01,RdBtn_S1_01);
    VarUreth_Pathogen1_02:= CheckActiveRdBtn(RdBtn_R1_02,RdBtn_I1_02,RdBtn_S1_02);
    VarUreth_Pathogen1_03:= CheckActiveRdBtn(RdBtn_R1_03,RdBtn_I1_03,RdBtn_S1_03);
    VarUreth_Pathogen1_04:= CheckActiveRdBtn(RdBtn_R1_04,RdBtn_I1_04,RdBtn_S1_04);
    VarUreth_Pathogen1_05:= CheckActiveRdBtn(RdBtn_R1_05,RdBtn_I1_05,RdBtn_S1_05);
    VarUreth_Pathogen1_06:= CheckActiveRdBtn(RdBtn_R1_06,RdBtn_I1_06,RdBtn_S1_06);
    VarUreth_Pathogen1_07:= CheckActiveRdBtn(RdBtn_R1_07,RdBtn_I1_07,RdBtn_S1_07);
    VarUreth_Pathogen1_08:= CheckActiveRdBtn(RdBtn_R1_08,RdBtn_I1_08,RdBtn_S1_08);
    VarUreth_Pathogen1_09:= CheckActiveRdBtn(RdBtn_R1_09,RdBtn_I1_09,RdBtn_S1_09);
    VarUreth_Pathogen1_10:= CheckActiveRdBtn(RdBtn_R1_10,RdBtn_I1_10,RdBtn_S1_10);
    VarUreth_Pathogen1_11:= CheckActiveRdBtn(RdBtn_R1_11,RdBtn_I1_11,RdBtn_S1_11);
    VarUreth_Pathogen1_12:= CheckActiveRdBtn(RdBtn_R1_12,RdBtn_I1_12,RdBtn_S1_12);
    VarUreth_Pathogen1_13:= CheckActiveRdBtn(RdBtn_R1_13,RdBtn_I1_13,RdBtn_S1_13);
    VarUreth_Pathogen1_14:= CheckActiveRdBtn(RdBtn_R1_14,RdBtn_I1_14,RdBtn_S1_14);
    VarUreth_Pathogen1_15:= CheckActiveRdBtn(RdBtn_R1_15,RdBtn_I1_15,RdBtn_S1_15);
    VarUreth_Pathogen1_16:= CheckActiveRdBtn(RdBtn_R1_16,RdBtn_I1_16,RdBtn_S1_16);

    VarChkUrethPathogen2:= BoolConvertInt(ChkBoxPathogen2.Checked);
    VarUreth_Pathogen2_01:= CheckActiveRdBtn(RdBtn_R2_01,RdBtn_I2_01,RdBtn_S2_01);
    VarUreth_Pathogen2_02:= CheckActiveRdBtn(RdBtn_R2_02,RdBtn_I2_02,RdBtn_S2_02);
    VarUreth_Pathogen2_03:= CheckActiveRdBtn(RdBtn_R2_03,RdBtn_I2_03,RdBtn_S2_03);
    VarUreth_Pathogen2_04:= CheckActiveRdBtn(RdBtn_R2_04,RdBtn_I2_04,RdBtn_S2_04);
    VarUreth_Pathogen2_05:= CheckActiveRdBtn(RdBtn_R2_05,RdBtn_I2_05,RdBtn_S2_05);
    VarUreth_Pathogen2_06:= CheckActiveRdBtn(RdBtn_R2_06,RdBtn_I2_06,RdBtn_S2_06);
    VarUreth_Pathogen2_07:= CheckActiveRdBtn(RdBtn_R2_07,RdBtn_I2_07,RdBtn_S2_07);
    VarUreth_Pathogen2_08:= CheckActiveRdBtn(RdBtn_R2_08,RdBtn_I2_08,RdBtn_S2_08);
    VarUreth_Pathogen2_09:= CheckActiveRdBtn(RdBtn_R2_09,RdBtn_I2_09,RdBtn_S2_09);
    VarUreth_Pathogen2_10:= CheckActiveRdBtn(RdBtn_R2_10,RdBtn_I2_10,RdBtn_S2_10);
    VarUreth_Pathogen2_11:= CheckActiveRdBtn(RdBtn_R2_11,RdBtn_I2_11,RdBtn_S2_11);
    VarUreth_Pathogen2_12:= CheckActiveRdBtn(RdBtn_R2_12,RdBtn_I2_12,RdBtn_S2_12);
    VarUreth_Pathogen2_13:= CheckActiveRdBtn(RdBtn_R2_13,RdBtn_I2_13,RdBtn_S2_13);
    VarUreth_Pathogen2_14:= CheckActiveRdBtn(RdBtn_R2_14,RdBtn_I2_14,RdBtn_S2_14);
    VarUreth_Pathogen2_15:= CheckActiveRdBtn(RdBtn_R2_15,RdBtn_I2_15,RdBtn_S2_15);
    VarUreth_Pathogen2_16:= CheckActiveRdBtn(RdBtn_R2_16,RdBtn_I2_16,RdBtn_S2_16);

    VarChkUrethDrug_01:= BoolConvertInt(ChkBoxDrug_01.Checked);
    VarChkUrethDrug_02:= BoolConvertInt(ChkBoxDrug_02.Checked);
    VarChkUrethDrug_03:= BoolConvertInt(ChkBoxDrug_03.Checked);
    VarChkUrethDrug_04:= BoolConvertInt(ChkBoxDrug_04.Checked);
    VarChkUrethDrug_05:= BoolConvertInt(ChkBoxDrug_05.Checked);
    VarChkUrethDrug_06:= BoolConvertInt(ChkBoxDrug_06.Checked);
    VarChkUrethDrug_07:= BoolConvertInt(ChkBoxDrug_07.Checked);
    VarChkUrethDrug_08:= BoolConvertInt(ChkBoxDrug_08.Checked);
    VarChkUrethDrug_09:= BoolConvertInt(ChkBoxDrug_09.Checked);
    VarChkUrethDrug_10:= BoolConvertInt(ChkBoxDrug_10.Checked);
    VarChkUrethDrug_11:= BoolConvertInt(ChkBoxDrug_11.Checked);
    VarChkUrethDrug_12:= BoolConvertInt(ChkBoxDrug_12.Checked);
    VarChkUrethDrug_13:= BoolConvertInt(ChkBoxDrug_13.Checked);
    VarChkUrethDrug_14:= BoolConvertInt(ChkBoxDrug_14.Checked);
    VarChkUrethDrug_15:= BoolConvertInt(ChkBoxDrug_15.Checked);
    VarChkUrethDrug_16:= BoolConvertInt(ChkBoxDrug_16.Checked);

    VarStrUrethPathogen1:= Trim(EdtPathogen1.Text);
    VarStrUrethPathogen2:= Trim(EdtPathogen2.Text);
    VarStrUrethExtra1:= Trim(EdtExtra1.Text);
    VarStrUrethExtra2:= Trim(EdtExtra2.Text);

    VarNumEdtUrethBact1:= NumEdtUreth1.Value;
    VarNumEdtUrethBact2:= NumEdtUreth2.Value;

  finally
    TmpRE.Free;
  end;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.AppEventsFrmUrethBactInocShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;
AppEventsFrmUrethBactInoc.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//помечает радиобутон в зависимости от константы
procedure TFrmUrethBactInoc.CheckItRdBtn(const AInt: Integer; ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton);
begin
  case AInt of
    1: begin
         ChkRdBtn1.Checked:= True;
         ChkRdBtn2.Checked:= False;
         ChkRdBtn3.Checked:= False;
       end;
    2: begin
         ChkRdBtn1.Checked:= False;
         ChkRdBtn2.Checked:= True;
         ChkRdBtn3.Checked:= False;
       end;
    3: begin
         ChkRdBtn1.Checked:= False;
         ChkRdBtn2.Checked:= False;
         ChkRdBtn3.Checked:= True;
       end;
  else
    begin;
      ChkRdBtn1.Checked:= False;
      ChkRdBtn2.Checked:= False;
      ChkRdBtn3.Checked:= False;
    end;
  end;
end;

//----------------------------------------------------------------------------
//возвращает целое значение в зависимости от помеченности радиобутона
function TFrmUrethBactInoc.CheckActiveRdBtn(ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton): Integer;
begin
if ChkRdBtn1.Checked
  then Result:= 1
  else
    begin
      if ChkRdBtn2.Checked
        then Result:= 2
        else
          begin
            if ChkRdBtn3.Checked
              then Result:= 3
              else Result:= 0;
          end;
    end;
end;

//----------------------------------------------------------------------------
//процедура проверяет все чеки контроллов и отображает их доступность соответственно
procedure TFrmUrethBactInoc.TestingAllChecks(Sender: TObject);
begin
//названия препаратов
ChkBoxDrug_01.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_02.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_03.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_04.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_05.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_06.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_07.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_08.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_09.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_10.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_11.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_12.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_13.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_14.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_15.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
ChkBoxDrug_16.Enabled:= (ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked);
EdtExtra1.Enabled:= ((ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked) and ChkBoxDrug_15.Checked);
EdtExtra2.Enabled:= ((ChkBoxPathogen1.Checked or ChkBoxPathogen2.Checked) and ChkBoxDrug_16.Checked);

//название возбудителей
EdtPathogen1.Enabled:= ChkBoxPathogen1.Checked;
Label2.Enabled:= ChkBoxPathogen1.Checked;
NumEdtUreth1.Enabled:= ChkBoxPathogen1.Checked;
Label25.Enabled:= ChkBoxPathogen1.Checked;

EdtPathogen2.Enabled:= ChkBoxPathogen2.Checked;
Label3.Enabled:= ChkBoxPathogen2.Checked;
NumEdtUreth2.Enabled:= ChkBoxPathogen2.Checked;
Label4.Enabled:= ChkBoxPathogen2.Checked;

//панель с контроллами слева
Label18.Enabled:= ChkBoxPathogen1.Checked;
Label19.Enabled:= ChkBoxPathogen1.Checked;
Label20.Enabled:= ChkBoxPathogen1.Checked;

RdBtn_R1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_01.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_02.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_03.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_04.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_05.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_06.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_07.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_08.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_09.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_10.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_11.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_12.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_13.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_14.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_15.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth1.Value > 3));

RdBtn_R1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth1.Value > 3));
RdBtn_I1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth1.Value > 3));
RdBtn_S1_16.Enabled:= (ChkBoxPathogen1.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth1.Value > 3));

//панель с контроллами справа
Label21.Enabled:= ChkBoxPathogen2.Checked;
Label22.Enabled:= ChkBoxPathogen2.Checked;
Label23.Enabled:= ChkBoxPathogen2.Checked;

RdBtn_R2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_01.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_01.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_02.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_02.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_03.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_03.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_04.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_04.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_05.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_05.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_06.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_06.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_07.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_07.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_08.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_08.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_09.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_09.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_10.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_10.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_11.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_11.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_12.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_12.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_13.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_13.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_14.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_14.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_15.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_15.Checked and (NumEdtUreth2.Value > 3));

RdBtn_R2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth2.Value > 3));
RdBtn_I2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth2.Value > 3));
RdBtn_S2_16.Enabled:= (ChkBoxPathogen2.Checked and ChkBoxDrug_16.Checked and (NumEdtUreth2.Value > 3));        
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxPathogen1Click(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxPathogen2Click(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_01Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_01.Checked then
  begin
    RdBtn_R1_01.Checked:= False;
    RdBtn_I1_01.Checked:= False;
    RdBtn_S1_01.Checked:= False;

    RdBtn_R2_01.Checked:= False;
    RdBtn_I2_01.Checked:= False;
    RdBtn_S2_01.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_02Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_02.Checked then
  begin
    RdBtn_R1_02.Checked:= False;
    RdBtn_I1_02.Checked:= False;
    RdBtn_S1_02.Checked:= False;

    RdBtn_R2_02.Checked:= False;
    RdBtn_I2_02.Checked:= False;
    RdBtn_S2_02.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_03Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_03.Checked then
  begin
    RdBtn_R1_03.Checked:= False;
    RdBtn_I1_03.Checked:= False;
    RdBtn_S1_03.Checked:= False;

    RdBtn_R2_03.Checked:= False;
    RdBtn_I2_03.Checked:= False;
    RdBtn_S2_03.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_04Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_04.Checked then
  begin
    RdBtn_R1_04.Checked:= False;
    RdBtn_I1_04.Checked:= False;
    RdBtn_S1_04.Checked:= False;

    RdBtn_R2_04.Checked:= False;
    RdBtn_I2_04.Checked:= False;
    RdBtn_S2_04.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_05Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_05.Checked then
  begin
    RdBtn_R1_05.Checked:= False;
    RdBtn_I1_05.Checked:= False;
    RdBtn_S1_05.Checked:= False;

    RdBtn_R2_05.Checked:= False;
    RdBtn_I2_05.Checked:= False;
    RdBtn_S2_05.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_06Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_06.Checked then
  begin
    RdBtn_R1_06.Checked:= False;
    RdBtn_I1_06.Checked:= False;
    RdBtn_S1_06.Checked:= False;

    RdBtn_R2_06.Checked:= False;
    RdBtn_I2_06.Checked:= False;
    RdBtn_S2_06.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_07Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_07.Checked then
  begin
    RdBtn_R1_07.Checked:= False;
    RdBtn_I1_07.Checked:= False;
    RdBtn_S1_07.Checked:= False;

    RdBtn_R2_07.Checked:= False;
    RdBtn_I2_07.Checked:= False;
    RdBtn_S2_07.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_08Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_08.Checked then
  begin
    RdBtn_R1_08.Checked:= False;
    RdBtn_I1_08.Checked:= False;
    RdBtn_S1_08.Checked:= False;

    RdBtn_R2_08.Checked:= False;
    RdBtn_I2_08.Checked:= False;
    RdBtn_S2_08.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_09Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_09.Checked then
  begin
    RdBtn_R1_09.Checked:= False;
    RdBtn_I1_09.Checked:= False;
    RdBtn_S1_09.Checked:= False;

    RdBtn_R2_09.Checked:= False;
    RdBtn_I2_09.Checked:= False;
    RdBtn_S2_09.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_10Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_10.Checked then
  begin
    RdBtn_R1_10.Checked:= False;
    RdBtn_I1_10.Checked:= False;
    RdBtn_S1_10.Checked:= False;

    RdBtn_R2_10.Checked:= False;
    RdBtn_I2_10.Checked:= False;
    RdBtn_S2_10.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_11Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_11.Checked then
  begin
    RdBtn_R1_11.Checked:= False;
    RdBtn_I1_11.Checked:= False;
    RdBtn_S1_11.Checked:= False;

    RdBtn_R2_11.Checked:= False;
    RdBtn_I2_11.Checked:= False;
    RdBtn_S2_11.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_12Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_12.Checked then
  begin
    RdBtn_R1_12.Checked:= False;
    RdBtn_I1_12.Checked:= False;
    RdBtn_S1_12.Checked:= False;

    RdBtn_R2_12.Checked:= False;
    RdBtn_I2_12.Checked:= False;
    RdBtn_S2_12.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_13Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_13.Checked then
  begin
    RdBtn_R1_13.Checked:= False;
    RdBtn_I1_13.Checked:= False;
    RdBtn_S1_13.Checked:= False;

    RdBtn_R2_13.Checked:= False;
    RdBtn_I2_13.Checked:= False;
    RdBtn_S2_13.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_14Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_14.Checked then
  begin
    RdBtn_R1_14.Checked:= False;
    RdBtn_I1_14.Checked:= False;
    RdBtn_S1_14.Checked:= False;

    RdBtn_R2_14.Checked:= False;
    RdBtn_I2_14.Checked:= False;
    RdBtn_S2_14.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_15Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_15.Checked then
  begin
    RdBtn_R1_15.Checked:= False;
    RdBtn_I1_15.Checked:= False;
    RdBtn_S1_15.Checked:= False;

    RdBtn_R2_15.Checked:= False;
    RdBtn_I2_15.Checked:= False;
    RdBtn_S2_15.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.ChkBoxDrug_16Click(Sender: TObject);
begin
TestingAllChecks(Sender);
if not ChkBoxDrug_16.Checked then
  begin
    RdBtn_R1_16.Checked:= False;
    RdBtn_I1_16.Checked:= False;
    RdBtn_S1_16.Checked:= False;

    RdBtn_R2_16.Checked:= False;
    RdBtn_I2_16.Checked:= False;
    RdBtn_S2_16.Checked:= False;
  end;
end;

//----------------------------------------------------------------------------
//добавляем и форматируем текст в рич-эдите, где
//CurStart - начало выделения
//SelEnd - длина выделения
//Index - условный индекс, влияющий на параметры выделения
//TxtStr - добавляемая строка
procedure TFrmUrethBactInoc.FmtTxtInTmpRichEdit(ARichEdit: TRichEdit;
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

//----------------------------------------------------------------------------
//возвращаем строковое значение выбранного радиобутона (Result), где
//L - длина строки
//Index - условный номер выбранного радиобутона
function TFrmUrethBactInoc.GetSusceptStr(out L, Index: Integer; ChkRdBtn1,
                                                                    ChkRdBtn2, ChkRdBtn3: TRadioButton): String;
begin
if ChkRdBtn1.Checked
  then
    begin
      Result:= 'устойчивый';
      Index:= 0;
    end
  else
    begin
      if ChkRdBtn2.Checked
        then
          begin
            Result:= 'умеренно устойчивый';
            Index:= 2;
          end
        else
          begin
            Result:= 'чувствительный';
            Index:= 3;
          end;
    end;
  L:= Length(Result);
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//функция проверяет, отмечен ли чекбокс и любой из радиобутонов на соответствующей панели
function TFrmUrethBactInoc.CheckItRdBtn_and_ChkBox(ChkRdBtn1, ChkRdBtn2, ChkRdBtn3: TRadioButton;
                                                                                      ChkBox: TCheckBox): Integer;
begin
Result:= 0;
if ChkBox.Checked and (ChkRdBtn1.Checked or ChkRdBtn2.Checked or ChkRdBtn2.Checked) then Result:= 1;
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.NumEdtUreth1Change(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmUrethBactInoc.NumEdtUreth2Change(Sender: TObject);
begin
TestingAllChecks(Sender);
end;

//----------------------------------------------------------------------------

end.
