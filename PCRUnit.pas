unit PCRUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmPCR = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Bevel1: TBevel;
    DTPickPCRDate: TDateTimePicker;
    ChBoxGn: TCheckBox;
    ChBoxTr: TCheckBox;
    ChBoxChlam: TCheckBox;
    ChBoxMhom: TCheckBox;
    ChBoxMgen: TCheckBox;
    ChBoxUr: TCheckBox;
    ChBoxGard: TCheckBox;
    ChBoxCMV: TCheckBox;
    ChBoxVHS: TCheckBox;
    ChBoxPHV: TCheckBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    RdBtnYesChlam: TRadioButton;
    LblChlam: TLabel;
    RdBtnNoChlam: TRadioButton;
    RdBtnYesMhom: TRadioButton;
    LblMhom: TLabel;
    RdBtnNoMhom: TRadioButton;
    RdBtnYesMgen: TRadioButton;
    LblMgen: TLabel;
    RdBtnNoMgen: TRadioButton;
    RdBtnYesUr: TRadioButton;
    LblUr: TLabel;
    RdBtnNoUr: TRadioButton;
    LblGard: TLabel;
    RdBtnNoGard: TRadioButton;
    RdBtnYesTr: TRadioButton;
    LblTr: TLabel;
    RdBtnNoTr: TRadioButton;
    RdBtnYesGn: TRadioButton;
    LblGn: TLabel;
    RdBtnNoGn: TRadioButton;
    RdBtnYesCMV: TRadioButton;
    LblCMV: TLabel;
    RdBtnNoCMV: TRadioButton;
    RdBtnYesVHS: TRadioButton;
    LblVHS: TLabel;
    RdBtnNoVHS: TRadioButton;
    RdBtnYesPHV: TRadioButton;
    LblPHV: TLabel;
    RdBtnNoPHV: TRadioButton;
    Panel11: TPanel;
    RdBtnYesGard: TRadioButton;
    NiceSetFrmPCR: TNiceSettings;
    Panel12: TPanel;
    LblTub: TLabel;
    RdBtnNoTub: TRadioButton;
    RdBtnYesTub: TRadioButton;
    ChBoxTub: TCheckBox;
    ChBoxCand: TCheckBox;
    Panel13: TPanel;
    LblCand: TLabel;
    RdBtnNoCand: TRadioButton;
    RdBtnYesCand: TRadioButton;
    ChBoxPHVhigh: TCheckBox;
    Panel14: TPanel;
    LblPHVhigh: TLabel;
    RdBtnNoPHVhigh: TRadioButton;
    RdBtnYesPHVhigh: TRadioButton;
    AppEventsFrmPCR: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChBoxChlamClick(Sender: TObject);
    procedure ChBoxMhomClick(Sender: TObject);
    procedure ChBoxMgenClick(Sender: TObject);
    procedure ChBoxUrClick(Sender: TObject);
    procedure ChBoxGardClick(Sender: TObject);
    procedure ChBoxTrClick(Sender: TObject);
    procedure ChBoxGnClick(Sender: TObject);
    procedure ChBoxCMVClick(Sender: TObject);
    procedure ChBoxVHSClick(Sender: TObject);
    procedure ChBoxPHVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChBoxTubClick(Sender: TObject);
    procedure ChBoxCandClick(Sender: TObject);
    procedure ChBoxPHVhighClick(Sender: TObject);
    procedure AppEventsFrmPCRShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function DefineParamString(Sender: TRadioButton; TmpStr: String; out BegCurPos, Index: Integer): String;
    procedure RdBtnDefineState(Sender: TRadioButton; const VarIntRez: Integer);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmPCR: TFrmPCR;

implementation

uses VarAndrUnit, StatusPatUnit, MainAndrUnit, DMFIBUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmPCR.FormShow(Sender: TObject);
begin
DTPickPCRDate.DateTime:= VarPCRDate;//устанавливаем дату анализа

//устанавливаем состояние чек-боксов
ChBoxChlam.Checked:= IntConvertBool(VarChlamAn);
ChBoxMhom.Checked:= IntConvertBool(VarMicHomAn);
ChBoxMgen.Checked:= IntConvertBool(VarMicGenAn);
ChBoxUr.Checked:= IntConvertBool(VarUrAn);
ChBoxGard.Checked:= IntConvertBool(VarGardAn);
ChBoxTr.Checked:= IntConvertBool(VarTrAn);
ChBoxGn.Checked:= IntConvertBool(VarGnAn);
ChBoxCMV.Checked:= IntConvertBool(VarCMVAn);
ChBoxVHS.Checked:= IntConvertBool(VarVHSAn);
ChBoxPHV.Checked:= IntConvertBool(VarPHVAn);
ChBoxPHVhigh.Checked:= IntConvertBool(VarPHVAnHigh);
ChBoxTub.Checked:= IntConvertBool(VarTubAn);
ChBoxCand.Checked:= IntConvertBool(VarCandAn);

//помечаем соответственно радиокнопки
RdBtnDefineState(RdBtnYesChlam,VarChlamRez);
RdBtnDefineState(RdBtnYesMhom,VarMicHomRez);
RdBtnDefineState(RdBtnYesMgen,VarMicGenRez);
RdBtnDefineState(RdBtnYesUr,VarUrRez);
RdBtnDefineState(RdBtnYesGard,VarGardRez);
RdBtnDefineState(RdBtnYesTr,VarTrRez);
RdBtnDefineState(RdBtnYesGn,VarGnRez);
RdBtnDefineState(RdBtnYesCMV,VarCMVRez);
RdBtnDefineState(RdBtnYesVHS,VarVHSRez);
RdBtnDefineState(RdBtnYesPHV,VarPHVRez);
RdBtnDefineState(RdBtnYesPHVhigh,VarPHVRezHigh);
RdBtnDefineState(RdBtnYesTub,VarTubRez);
RdBtnDefineState(RdBtnYesCand,VarCandRez);

//проверяем чек-боксы
ChBoxChlamClick(Sender);
ChBoxMhomClick(Sender);
ChBoxMgenClick(Sender);
ChBoxUrClick(Sender);
ChBoxGardClick(Sender);
ChBoxTrClick(Sender);
ChBoxGnClick(Sender);
ChBoxCMVClick(Sender);
ChBoxVHSClick(Sender);
ChBoxPHVClick(Sender);
ChBoxPHVhighClick(Sender);
ChBoxTubClick(Sender);
ChBoxCandClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//сохраняем изменения
procedure TFrmPCR.BtnSaveClick(Sender: TObject);
var Index, //целочисленная переменная для собственных нужд
    BegCurPos, EndCurPos : Integer;//начало и конец выделения
    FullTxt: AnsiString;
    TmpRE: TRichEdit;//виртуальный RichEdit
begin
//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);//если хозяином потом будет форма
  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    //пишем заголовок
    FullTxt:= 'ПЦР-диагностика (' + FormatDateTime('DD.MM.YY', DTPickPCRDate.Date) + '):';
    TmpRE.Lines.Add(FullTxt);
    EndCurPos:= Length(FullTxt);
    TmpRE.Lines.Add('');

    //--- хламидии ---
    VarChlamAn:= BoolConvertInt(ChBoxChlam.Checked);
    if VarChlamAn = 1
      then
        begin
          VarChlamRez:= BoolConvertInt(RdBtnYesChlam.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesChlam, 'Chl.trachomatis', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarChlamRez:= VarChlamAn;

    //--- микоплазма хоминис ---
    VarMicHomAn:= BoolConvertInt(ChBoxMhom.Checked);
    if VarMicHomAn = 1
      then
        begin
          VarMicHomRez:= BoolConvertInt(RdBtnYesMhom.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesMhom, 'M.hominis', BegCurPos, Index);
          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarMicHomRez:= VarMicHomAn;

    //--- микоплазма гениталиум ---
    VarMicGenAn:= BoolConvertInt(ChBoxMgen.Checked);
    if VarMicGenAn = 1
      then
        begin
          VarMicGenRez:= BoolConvertInt(RdBtnYesMgen.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesMgen, 'M.genitalium', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarMicGenRez:= VarMicGenAn;

    //--- уреаплазма ---
    VarUrAn:= BoolConvertInt(ChBoxUr.Checked);
    if VarUrAn = 1
      then
        begin
          VarUrRez:= BoolConvertInt(RdBtnYesUr.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesUr, 'Ur.urealyticum', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarUrRez:= VarUrAn;

    //--- гарднерелла ---
    VarGardAn:= BoolConvertInt(ChBoxGard.Checked);
    if VarGardAn = 1
      then
        begin
          VarGardRez:= BoolConvertInt(RdBtnYesGard.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesGard, 'Gard.vaginalis', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarGardRez:= VarGardAn;

    //--- туберкулез ---
    VarTubAn:= BoolConvertInt(ChBoxTub.Checked);
    if VarTubAn = 1
      then
        begin
          VarTubRez:= BoolConvertInt(RdBtnYesTub.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesTub, 'Mb.tuberculosis', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarTubRez:= VarTubAn;

    //--- трихомонада ---
    VarTrAn:= BoolConvertInt(ChBoxTr.Checked);
    if VarTrAn = 1
      then
        begin
          VarTrRez:= BoolConvertInt(RdBtnYesTr.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesTr, 'Tr.vaginalis', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarTrRez:= VarTrAn;

    //--- гонококк ---
    VarGnAn:= BoolConvertInt(ChBoxGn.Checked);
    if VarGnAn = 1
      then
        begin
          VarGnRez:= BoolConvertInt(RdBtnYesGn.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesGn, 'N.gonorrhoeae', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarGnRez:= VarGnAn;

    //--- цитомегаловирус ---
    VarCMVAn:= BoolConvertInt(ChBoxCMV.Checked);
    if VarCMVAn = 1
      then
        begin
          VarCMVRez:= BoolConvertInt(RdBtnYesCMV.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesCMV, 'Citomegalovirus', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarCMVRez:= VarCMVAn;

    //--- герпес ---
    VarVHSAn:= BoolConvertInt(ChBoxVHS.Checked);
    if VarVHSAn = 1
      then
        begin
          VarVHSRez:= BoolConvertInt(RdBtnYesVHS.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesVHS, 'Герпес 1,2 тип', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarVHSRez:= VarVHSAn;

    //--- вирус папилломы ---
    VarPHVAn:= BoolConvertInt(ChBoxPHV.Checked);
    if VarPHVAn = 1
      then
        begin
          VarPHVRez:= BoolConvertInt(RdBtnYesPHV.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesPHV, 'Вирус папилломы человека',
                                                                           BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarPHVRez:= VarPHVAn;

    //--- вирус папилломы высокого и среднего онкогенного действия ---
    VarPHVAnHigh:= BoolConvertInt(ChBoxPHVhigh.Checked);
    if VarPHVAnHigh = 1
      then
        begin
          VarPHVRezHigh:= BoolConvertInt(RdBtnYesPHVhigh.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesPHVhigh, 'ВПЧ (выс.и сред.онкоген. действия)',
                                                                           BegCurPos, Index);
          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarPHVRezHigh:= VarPHVAnHigh;

    //--- кандида ---
    VarCandAn:= BoolConvertInt(ChBoxCand.Checked);
    if VarCandAn = 1
      then
        begin
          VarCandRez:= BoolConvertInt(RdBtnYesCand.Checked);
          //предопределяем константы
          FullTxt:= DefineParamString(RdBtnYesCand, 'Candida', BegCurPos, Index);

          //форматируем текст в рич-эдите
          FormatTextInTempRichEdit(TmpRE, BegCurPos,Index,FullTxt);
        end
      else VarCandRez:= VarCandRez;

    //сравниваем, содержит ли рич-эдит еще что-нибудь, кроме заголовка
    FullTxt:= Trim(TmpRE.Text);
    if Length(FullTxt) > EndCurPos //если содержит, то форматируем
      then
        with TmpRE do
          begin
            SelStart:= 0;
            SelLength:= EndCurPos;
            SelAttributes.Style:= [fsUnderline];
            SelStart:= EndCurPos;
            SelAttributes.Assign(DefAttributes);
          end
      else //иначе чистим
        TmpRE.Clear;

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextPCR;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст анализа ПЦР
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextPCR:= FullTxt //смело изменяем его через переменную TextIFA
      else//если что-то содержит
        if TextPCR <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенные результаты исследования мазка' +
                 ' из уретры методом ПЦР сейчас будет заменены на вновь сформированный' +
                 ' текст. Разрешить замену?', 'Изменение данных',
                                               MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextPCR:= FullTxt;//заменяем, если ответ "Да"

    VarPCRDate:= DTPickPCRDate.Date;
  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.AppEventsFrmPCRShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;
AppEventsFrmPCR.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//процедура устанавливает/отменяет пометку радиокнопки в зависимости от
//значения константы VarIntRez
procedure TFrmPCR.RdBtnDefineState(Sender: TRadioButton; const VarIntRez: Integer);
begin
if VarIntRez = 1
  then TRadioButton(Sender).Checked:= True
  else TRadioButton(Sender).Checked:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxChlamClick(Sender: TObject);
begin
  RdBtnYesChlam.Enabled:= ChBoxChlam.Checked;
  RdBtnNoChlam.Enabled:= ChBoxChlam.Checked;
  LblChlam.Enabled:= ChBoxChlam.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxMhomClick(Sender: TObject);
begin
  RdBtnYesMhom.Enabled:= ChBoxMhom.Checked;
  RdBtnNoMhom.Enabled:= ChBoxMhom.Checked;
  LblMhom.Enabled:= ChBoxMhom.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxMgenClick(Sender: TObject);
begin
  RdBtnYesMgen.Enabled:= ChBoxMgen.Checked;
  RdBtnNoMgen.Enabled:= ChBoxMgen.Checked;
  LblMgen.Enabled:= ChBoxMgen.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxUrClick(Sender: TObject);
begin
  RdBtnYesUr.Enabled:= ChBoxUr.Checked;
  RdBtnNoUr.Enabled:= ChBoxUr.Checked;
  LblUr.Enabled:= ChBoxUr.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxGardClick(Sender: TObject);
begin
  RdBtnYesGard.Enabled:= ChBoxGard.Checked;
  RdBtnNoGard.Enabled:= ChBoxGard.Checked;
  LblGard.Enabled:= ChBoxGard.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxTrClick(Sender: TObject);
begin
  RdBtnYesTr.Enabled:= ChBoxTr.Checked;
  RdBtnNoTr.Enabled:= ChBoxTr.Checked;
  LblTr.Enabled:= ChBoxTr.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxGnClick(Sender: TObject);
begin
  RdBtnYesGn.Enabled:= ChBoxGn.Checked;
  RdBtnNoGn.Enabled:= ChBoxGn.Checked;
  LblGn.Enabled:= ChBoxGn.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxCMVClick(Sender: TObject);
begin
  RdBtnYesCMV.Enabled:= ChBoxCMV.Checked;
  RdBtnNoCMV.Enabled:= ChBoxCMV.Checked;
  LblCMV.Enabled:= ChBoxCMV.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxVHSClick(Sender: TObject);
begin
  RdBtnYesVHS.Enabled:= ChBoxVHS.Checked;
  RdBtnNoVHS.Enabled:= ChBoxVHS.Checked;
  LblVHS.Enabled:= ChBoxVHS.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxPHVClick(Sender: TObject);
begin
  RdBtnYesPHV.Enabled:= ChBoxPHV.Checked;
  RdBtnNoPHV.Enabled:= ChBoxPHV.Checked;
  LblPHV.Enabled:= ChBoxPHV.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxPHVhighClick(Sender: TObject);
begin
  RdBtnYesPHVhigh.Enabled:= ChBoxPHVhigh.Checked;
  RdBtnNoPHVhigh.Enabled:= ChBoxPHVhigh.Checked;
  LblPHVhigh.Enabled:= ChBoxPHVhigh.Checked;
end;


//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxTubClick(Sender: TObject);
begin
  RdBtnYesTub.Enabled:= ChBoxTub.Checked;
  RdBtnNoTub.Enabled:= ChBoxTub.Checked;
  LblTub.Enabled:= ChBoxTub.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.ChBoxCandClick(Sender: TObject);
begin
 RdBtnYesCand.Enabled:= ChBoxCand.Checked;
  RdBtnNoCand.Enabled:= ChBoxCand.Checked;
  LblCand.Enabled:= ChBoxCand.Checked;

end;

//----------------------------------------------------------------------------

(*****************************************************************************)
(*   Функция задает "выходные" параметры передаваемой в нее строки, где      *)
(* BegCurPos - номер позиции курсора выделяемой строки                       *)
(* Index - номер цвета, в который потом будет раскрашена выделенная  часть   *)
(* строки                                                                    *)
(* TmpStr - сформированная в зависимости от свойства Checked Sender'a строка *)
(*                                                                           *)
(* Указанные параметры будут переданы далее для последующей обработки        *)
(* в другую процедуру                                                        *)
(*****************************************************************************)

function TFrmPCR.DefineParamString(Sender: TRadioButton; TmpStr: String;
                                                  out BegCurPos, Index: Integer): String;
begin
Result:= Trim(TmpStr + ' - ДНК не обнаружена;');
BegCurPos:= 18;
Index:= 0;//строка будет синей clNavy

if Sender.Checked
  then
    begin
      Result:= Trim(TmpStr + ' - ДНК обнаружена;');
      BegCurPos:= 15;
      Index:= 3;//строка будет красной clRed
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.FormCreate(Sender: TObject);
begin
NiceSetFrmPCR.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmPCR.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'ПЦР исследования (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'ПЦР исследования (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmPCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmPCR.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
