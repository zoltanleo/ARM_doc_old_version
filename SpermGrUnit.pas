unit SpermGrUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, MsgSplash, ExtDlgs,
  NiceSettings, AppEvnts, fib;

type
  TFrmSpermGr = class(TForm)
    PgCtrlSperm: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    EdtSpermVolume: TEdit;
    EdtSpermColor: TEdit;
    EdtSperm_pH: TEdit;
    EdtSpermViscosity: TEdit;
    EdtSpermFluid: TEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Panel2: TPanel;
    EdtSpermLeu: TEdit;
    EdtSpermEr: TEdit;
    EdtSpermLipoidSoma: TEdit;
    EdtSpermAgglut: TEdit;
    EdtSpermAggreg: TEdit;
    EdtSpermEpitel: TEdit;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Panel3: TPanel;
    EdtSpermAbstinence: TEdit;
    EdtSpermConcentr: TEdit;
    EdtSpermTotal: TEdit;
    EdtSpermFastForwMove: TEdit;
    EdtSpermSlowForwMove: TEdit;
    EdtSpermRollMove: TEdit;
    EdtSpermStaticMove: TEdit;
    Label33: TLabel;
    DTPickSpermGr: TDateTimePicker;
    Panel11: TPanel;
    Label34: TLabel;
    BtnPrev: TButton;
    BtnNext: TButton;
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    CbBoxSpermGrResult: TComboBox;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    EdtKrugNotice: TEdit;
    Label56: TLabel;
    Panel5: TPanel;
    EdtKrugNorma: TEdit;
    EdtKrugCapCoarse: TEdit;
    EdtKrugCapSlight: TEdit;
    EdtKrugCollumCoarse: TEdit;
    EdtKrugCollumSlight: TEdit;
    EdtKrugBrush: TEdit;
    EdtKrugSpermCell: TEdit;
    EdtKrugYoungCell: TEdit;
    EdtKrugMorphIndex: TEdit;
    EdtKrugCapSpecif: TEdit;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DTPickKrug: TDateTimePicker;
    Panel4: TPanel;
    Label60: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label61: TLabel;
    DTPickSpermBiochemic: TDateTimePicker;
    Panel6: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    EdtSpermBiochemicFruct: TEdit;
    EdtSpermBiochemicGlyc: TEdit;
    Label64: TLabel;
    Panel7: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DTPickMAR: TDateTimePicker;
    Panel8: TPanel;
    Label68: TLabel;
    EdtMAR: TEdit;
    Panel9: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DTPickSpermVital: TDateTimePicker;
    Panel10: TPanel;
    Label72: TLabel;
    EdtSpermVitalTest: TEdit;
    Label73: TLabel;
    EdtSpermVitalHOS: TEdit;
    Panel12: TPanel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    BtnSpermFotos: TButton;
    BtnKrugFotos: TButton;
    BtnBiochemFotos: TButton;
    BtnMARFotos: TButton;
    BtnSpermvitaFotos: TButton;
    OpenPictDialog: TOpenPictureDialog;
    NiceSetFrmSpermGr: TNiceSettings;
    AppEventsFrmSpermGr: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure PgCtrlSpermChange(Sender: TObject);
    procedure EdtSpermVolumeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermColorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSperm_pHKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermViscosityKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermFluidKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermLeuKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermErKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermLipoidSomaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermAgglutKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermAggregKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermEpitelKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermAbstinenceKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermConcentrKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermFastForwMoveKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermSlowForwMoveKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermRollMoveKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermStaticMoveKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugNormaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugCapCoarseKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugCapSlightKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugCapSpecifKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugCollumCoarseKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugCollumSlightKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugBrushKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugSpermCellKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugYoungCellKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKrugMorphIndexKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermBiochemicFructKeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtSpermBiochemicGlycKeyPress(Sender: TObject;
      var Key: Char);
    procedure EdtMARKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermVitalTestKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSpermVitalHOSKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSpermFotosClick(Sender: TObject);
    procedure BtnKrugFotosClick(Sender: TObject);
    procedure BtnBiochemFotosClick(Sender: TObject);
    procedure BtnMARFotosClick(Sender: TObject);
    procedure BtnSpermvitaFotosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmSpermGrShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    function AGetRichStringFromRE(ARichEdit: TRichEdit; var ACurPos,BCurPos: Integer): String;
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmSpermGr: TFrmSpermGr;

implementation

uses VarAndrUnit, StatusPatUnit, MainAndrUnit, DMFIBUnit,
  uImgSpermForos, uImgKrugFotos, uImgBiochemFotos, uImgMARFotos,
  uImgSpermVitalFotos, MaskUtils, StrUtils;

var FocusFlag: Boolean;  

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmSpermGr.FormCreate(Sender: TObject);
begin
NiceSetFrmSpermGr.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmSpermGr.LoadSettings;

Self.Caption:= 'Исследования эякулята (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

PgCtrlSperm.ActivePageIndex:= 0;//фокус на первую вкладку
BtnNext.Enabled:= True;//показываем кнопку "далее"
BtnPrev.Enabled:= False;//прячем кнопку "назад"

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.FormShow(Sender: TObject);
begin
//грузим переменные в контроллы
//--- спермограмма ---
DTPickSpermGr.DateTime:= VarSpermDate;

EdtSpermVolume.Text:= VarSpermVolume;
EdtSpermColor.Text:= VarSpermColor;
EdtSperm_pH.Text:= VarSperm_pH;
EdtSpermViscosity.Text:= VarSpermViscosity;
EdtSpermFluid.Text:= VarSpermFluid;

EdtSpermLeu.Text:= VarSpermLeu;
EdtSpermEr.Text:= VarSpermEr;
EdtSpermLipoidSoma.Text:= VarSpermLipoidSoma;
EdtSpermAgglut.Text:= VarSpermAgglut;
EdtSpermAggreg.Text:= VarSpermAggreg;
EdtSpermEpitel.Text:= VarSpermEpitel;

EdtSpermAbstinence.Text:= VarSpermAbstinence;
EdtSpermConcentr.Text:= VarSpermConcentr;
EdtSpermTotal.Text:= VarSpermTotal;

EdtSpermFastForwMove.Text:= VarSpermFastForwMove;
EdtSpermSlowForwMove.Text:= VarSpermSlowForwMove;
EdtSpermRollMove.Text:= VarSpermRollMove;
EdtSpermStaticMove.Text:= VarSpermStaticMove;

CbBoxSpermGrResult.ItemIndex:= VarSpermReport;

// --- тест Крюгера ---
DTPickKrug.DateTime:= VarKrugDate;

EdtKrugNorma.Text:= VarKrugNorma;
EdtKrugCapCoarse.Text:= VarKrugCapCoarse;
EdtKrugCapSlight.Text:= VarKrugCapSlight;
EdtKrugCapSpecif.Text:= VarKrugCapSpecif;
EdtKrugCollumCoarse.Text:= VarKrugCollumCoarse;
EdtKrugCollumSlight.Text:= VarKrugCollumSlight;
EdtKrugBrush.Text:= VarKrugBrush;
EdtKrugSpermCell.Text:= VarKrugSpermCell;
EdtKrugYoungCell.Text:= VarKrugYoungCell;
EdtKrugMorphIndex.Text:= VarKrugMorphIndex;
EdtKrugNotice.Text:= VarKrugNotice;


// --- биохимия эякулята ---
DTPickSpermBiochemic.DateTime:= VarSpermBiochemicDate;

EdtSpermBiochemicFruct.Text:= VarSpermBiochemicFruct;
EdtSpermBiochemicGlyc.Text:= VarSpermBiochemicGlyc;

// --- MAR-тест ---
DTPickMAR.DateTime:= VarMARDate;
EdtMAR.Text:= VarMAR;

// --- витальное окрашивание спермиев---
DTPickSpermVital.DateTime:= VarSpermVitalDate;

EdtSpermVitalTest.Text:= VarSpermVitalTest;
EdtSpermVitalHOS.Text:= VarSpermVitalHOS;

//назначаем фокус
if DTPickSpermGr.CanFocus then DTPickSpermGr.SetFocus;

//если "рамка"-фокус на форме попадает на заголовок TTabSheet, то в VCL ActiveControll = TPageControl,
//если же вкладка в фокусе, а заголовок без рамки фокуса, то ActiveControll = TTabSheet.
//в первом случае клавиши-"стрелки" будут работать сами, во втором - их программно надо эмулировать
if PgCtrlSperm.ActivePage.CanFocus then PgCtrlSperm.ActivePage.SetFocus; //убираем фокус на вкладки
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnPrevClick(Sender: TObject);
begin
if PgCtrlSperm.ActivePageIndex > 0//если не первая страница
  then PgCtrlSperm.SelectNextPage(False);//движемся назад
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnNextClick(Sender: TObject);
begin
if PgCtrlSperm.ActivePageIndex < Pred(PgCtrlSperm.PageCount)//если не последняя страница
  then PgCtrlSperm.SelectNextPage(True);//движемся вперед
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnSaveClick(Sender: TObject);
var counter,
    BegCurPos, EndCurPos: Integer;//начало и конец выделения
    SrcTxt, DestTxt, TmpText: String;
    TmpRE, DestRE: TRichEdit;
begin
counter:= 0;

//грузим содержимое контроллов в переменные
//--- спермограмма ---
VarSpermDate:= DTPickSpermGr.Date;

VarSpermVolume:= Trim(EdtSpermVolume.Text);
VarSpermColor:= Trim(EdtSpermColor.Text);
VarSperm_pH:= Trim(EdtSperm_pH.Text);
VarSpermViscosity:= Trim(EdtSpermViscosity.Text);
VarSpermFluid:= Trim(EdtSpermFluid.Text);

VarSpermLeu:= Trim(EdtSpermLeu.Text);
VarSpermEr:= Trim(EdtSpermEr.Text);
VarSpermLipoidSoma:= Trim(EdtSpermLipoidSoma.Text);
VarSpermAgglut:= Trim(EdtSpermAgglut.Text);
VarSpermAggreg:= Trim(EdtSpermAggreg.Text);
VarSpermEpitel:= Trim(EdtSpermEpitel.Text);

VarSpermAbstinence:= Trim(EdtSpermAbstinence.Text);
VarSpermConcentr:= Trim(EdtSpermConcentr.Text);
VarSpermTotal:= Trim(EdtSpermTotal.Text);

VarSpermFastForwMove:= Trim(EdtSpermFastForwMove.Text);
VarSpermSlowForwMove:= Trim(EdtSpermSlowForwMove.Text);
VarSpermRollMove:= Trim(EdtSpermRollMove.Text);
VarSpermStaticMove:= Trim(EdtSpermStaticMove.Text);

VarSpermReport:= CbBoxSpermGrResult.ItemIndex;

// --- тест Крюгера ---
VarKrugDate:= DTPickKrug.Date;

VarKrugNorma:= Trim(EdtKrugNorma.Text);
VarKrugCapCoarse:= Trim(EdtKrugCapCoarse.Text);
VarKrugCapSlight:= Trim(EdtKrugCapSlight.Text);
VarKrugCapSpecif:= Trim(EdtKrugCapSpecif.Text);
VarKrugCollumCoarse:= Trim(EdtKrugCollumCoarse.Text);
VarKrugCollumSlight:= Trim(EdtKrugCollumSlight.Text);
VarKrugBrush:= Trim(EdtKrugBrush.Text);
VarKrugSpermCell:= Trim(EdtKrugSpermCell.Text);
VarKrugYoungCell:= Trim(EdtKrugYoungCell.Text);
VarKrugMorphIndex:= Trim(EdtKrugMorphIndex.Text);
VarKrugNotice:= Trim(EdtKrugNotice.Text);


// --- биохимия эякулята ---
VarSpermBiochemicDate:= DTPickSpermBiochemic.Date;

VarSpermBiochemicFruct:= Trim(EdtSpermBiochemicFruct.Text);
VarSpermBiochemicGlyc:= Trim(EdtSpermBiochemicGlyc.Text);

// --- MAR-тест ---
VarMARDate:= DTPickMAR.Date;
VarMAR:= Trim(EdtMAR.Text);

// --- витальное окрашивание спермиев---
VarSpermVitalDate:= DTPickSpermVital.Date;

VarSpermVitalTest:= Trim(EdtSpermVitalTest.Text);
VarSpermVitalHOS:= Trim(EdtSpermVitalHOS.Text);

//формируем и пишем Мемо-поля
TmpRE:= TRichEdit.CreateParented(Self.Handle);
DestRE:= TRichEdit.CreateParented(Self.Handle);
DMFIB.DSetTmpBlobVisit.Edit;

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    with DestRE do
      begin
        PlainText:= False;
        Visible:= False;
        Clear;
      end;

     //************ формируем текст спермограммы **************
     with TmpRE do
       begin
        Clear;
        TmpText:= 'Исследование эякулята (' + FormatDateTime('DD.MM.YY', DTPickSpermGr.Date) + '): ';
        Lines.Add(TmpText);
        BegCurPos:= 0;
        EndCurPos:= Length(Trim(TmpText));
        Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
        Lines.Add('');

        //---------------------------------------------
        TmpText:= 'Физические свойства: ';
        BegCurPos:= Length(Text);
        EndCurPos:= Length(Trim(TmpText));

        if Trim(EdtSpermVolume.Text) <> '' then TmpText:= TmpText + #13#10 +
                                   'Объем эякулята - ' + Trim(EdtSpermVolume.Text) + ' мл [2-6 мл]';
        if Trim(EdtSpermColor.Text) <> '' then TmpText:= TmpText + #13#10 +
                                              'Цвет - ' + Trim(EdtSpermColor.Text) + ' [молоч-бел]';
        if Trim(EdtSperm_pH.Text) <> '' then TmpText:= TmpText + #13#10 +
                                                  'pH - ' + Trim(EdtSperm_pH.Text) + ' [7,2 - 7,8]';
        if Trim(EdtSpermViscosity.Text) <> '' then TmpText:= TmpText + #13#10 +
                                      'Вязкость - ' + Trim(EdtSpermViscosity.Text) + ' мм [4-7 мм]';
        if Trim(EdtSpermFluid.Text) <> '' then TmpText:= TmpText + #13#10 +
                                   'Разжижение -  ' + Trim(EdtSpermFluid.Text) + ' мин [до 60 мин]';
        //если любое из полей не пустое, то добавляем значение
        if Length(Trim(TmpText)) <> EndCurPos then
          begin
            Lines.Add(TmpText);
            Lines.Add('');
            Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
          end;

        //------------------------------------------------
        TmpText:= 'Микроскопия: ';
        BegCurPos:= Length(Text);
        EndCurPos:= Length(Trim(TmpText));

        if Trim(EdtSpermLeu.Text) <> '' then TmpText:= TmpText + #13#10 +
                                     'Leu = ' + Trim(EdtSpermLeu.Text) + ' млн/мл [менее 1 млн/мл]';
        if Trim(EdtSpermEr.Text) <> '' then TmpText:= TmpText + #13#10 +
                                                      'Er - ' + Trim(EdtSpermEr.Text) + ' [отсут.]';
        if Trim(EdtSpermLipoidSoma.Text) <> '' then TmpText:= TmpText + #13#10 +
                               'Липоидные тельца - ' + Trim(EdtSpermLipoidSoma.Text) + ' [немного]';
        if Trim(EdtSpermAgglut.Text) <> '' then TmpText:= TmpText + #13#10 +
                         'Агглютинация сперматозиодов - ' + Trim(EdtSpermAgglut.Text) + ' [отсут.]';
        if Trim(EdtSpermAggreg.Text) <> '' then TmpText:= TmpText + #13#10 +
                            'Агрегация сперматозоидов - ' + Trim(EdtSpermAggreg.Text) + ' [отсут.]';
        if Trim(EdtSpermEpitel.Text) <> '' then TmpText:= TmpText + #13#10 +
                                                          'Эпителий - ' + Trim(EdtSpermEpitel.Text);

        //если любое из полей не пустое, то добавляем значение
        if Length(Trim(TmpText)) <> EndCurPos then
          begin
            Lines.Add(TmpText);
            Lines.Add('');
            Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
          end;

        //---------------------------------------------------
        TmpText:= 'Основные показатели: ';
        BegCurPos:= Length(Text);
        EndCurPos:= Length(Trim(TmpText));

        if Trim(EdtSpermAbstinence.Text) <> '' then TmpText:= TmpText + #13#10 +
                             'Время воздержания - ' + Trim(EdtSpermAbstinence.Text) + ' сут.[3-4 сут.]';
        if Trim(EdtSpermConcentr.Text) <> '' then TmpText:= TmpText + #13#10 +
                                   'Концентрация сперматозоидов - ' + Trim(EdtSpermConcentr.Text) +
                                   ' млн/мл [15 млн/мл и более]';
        if Trim(EdtSpermTotal.Text) <> '' then TmpText:= TmpText + #13#10 +
                        'Количество в порции - ' + Trim(EdtSpermTotal.Text) + ' млн [более 39 млн]';
        if Trim(EdtSpermFastForwMove.Text) <> '' then TmpText:= TmpText + #13#10 +
             'а) с поступ. движением - ' + Trim(EdtSpermFastForwMove.Text) + ' % [ a+b > 32%]';
        if Trim(EdtSpermSlowForwMove.Text) <> '' then TmpText:= TmpText + #13#10 +
           'b) с медл.поступ. движением - ' + Trim(EdtSpermSlowForwMove.Text) + ' % ';
        if Trim(EdtSpermRollMove.Text) <> '' then TmpText:= TmpText + #13#10 +
                         'c) с непоступ.движением - ' + Trim(EdtSpermRollMove.Text) + ' % [ a+b+c > 40%]';
        if Trim(EdtSpermStaticMove.Text) <> '' then TmpText:= TmpText + #13#10 +
                 'd) неподвижные сперматозоиды - ' + Trim(EdtSpermStaticMove.Text) + ' % [ < 60 %]';
        //если любое из полей не пустое, то добавляем значение

        if Length(Trim(TmpText)) <> EndCurPos then
          begin
            Lines.Add(TmpText);
            Lines.Add('');
            Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
          end;
       end;

    //если cтрока содержит не только заголовок, то формируем текст и сохраняем в БД
    if Length(Trim(TmpRE.Text)) <> Length('ИССЛЕДОВАНИЕ ЭЯКУЛЯТА (' +
                                            FormatDateTime('DD.MM.YY', DTPickSpermGr.Date) + '):')
      then
        begin
          TmpText:= 'ЗАКЛЮЧЕНИЕ: ';
          BegCurPos:= Length(TmpRE.Text);
          EndCurPos:= Length(Trim(TmpText));
          TmpText:= TmpText +
                 WriteSymbolToEndString(CbBoxSpermGrResult.Items[CbBoxSpermGrResult.ItemIndex],'.');
          TmpRE.Lines.Add(TmpText);
          Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERM')).AsString:= GetRTFText(TmpRE);

          DestRE.Text:= GetRTFText(TmpRE);//сохраняем текущий текст "про запас"
          counter:= counter + 1;//делаем об этом отметку
        end
      else
        TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERM')).Clear;

     //*********** формируем текст теста Крюгера *************
     with TmpRE do
       begin
        Clear;
        TmpText:= 'Исследование морфологии спермиев (тест Крюгера)(' +
                                                FormatDateTime('DD.MM.YY', DTPickKrug.Date) + '): ';
        Lines.Add(TmpText);
        BegCurPos:= 0;
        EndCurPos:= Length(Trim(TmpText));
        Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
        Lines.Add('');

        TmpText:= 'Нормальные формы: ';
        if Trim(EdtKrugNorma.Text) <> ''
          then TmpText:= TmpText + '          ' + Trim(EdtKrugNorma.Text) + ' % [ норма >= 4 %]'
          else TmpText:= TmpText + '          знач. не опред.';

        TmpText:= TmpText +#13#10 + #13#10 + 'Патология головки: ' + #13#10
                                                     + '               - грубая                   ';
        if Trim(EdtKrugCapCoarse.Text) <> ''
          then TmpText:= TmpText + Trim(EdtKrugCapCoarse.Text) + ' %'
          else TmpText:= TmpText + 'знач. не опред.';

        TmpText:= TmpText + #13#10 +  '               - легкая                   ';
        if Trim(EdtKrugCapSlight.Text) <> ''
          then TmpText:= TmpText + Trim(EdtKrugCapSlight.Text) + ' %'
          else TmpText:= TmpText + 'знач. не опред.';

        TmpText:= TmpText + #13#10 +  '               - специфическая    ';
        if Trim(EdtKrugCapSpecif.Text) <> ''
          then TmpText:= TmpText + Trim(EdtKrugCapSpecif.Text) + ' %'
          else TmpText:= TmpText + 'знач. не опред.';

        TmpText:= TmpText + #13#10 + #13#10 +  'Патология шейки: ' + #13#10
                                                     + '                - грубая                  ';
        if Trim(EdtKrugCollumCoarse.Text) <> ''
          then TmpText:= TmpText + Trim(EdtKrugCollumCoarse.Text) + ' %'
          else TmpText:= TmpText + 'знач. не опред.';

        TmpText:= TmpText + #13#10 +  '                - легкая                  ';
        if Trim(EdtKrugCollumSlight.Text) <> ''
          then TmpText:= TmpText + Trim(EdtKrugCollumSlight.Text) + ' %'
          else TmpText:= TmpText + 'знач. не опред.';

        TmpText:= TmpText + #13#10 + #13#10 +  'Патология хвоста: ';
        if Trim(EdtKrugBrush.Text) <> ''
          then TmpText:= TmpText + '               ' + Trim(EdtKrugBrush.Text) + ' %'
          else TmpText:= TmpText + '               знач. не опред.';

        TmpText:= TmpText + #13#10 +  'Клетки сперматогенеза: ';
        if Trim(EdtKrugSpermCell.Text) <> ''
          then TmpText:= TmpText + '    ' + Trim(EdtKrugSpermCell.Text) + ' %'
          else TmpText:= TmpText + '    знач. не опред.';

        TmpText:= TmpText + #13#10 +  'Юные формы: ';
        if Trim(EdtKrugYoungCell.Text) <> ''
          then TmpText:= TmpText + '                       ' + Trim(EdtKrugYoungCell.Text) + ' %'
          else TmpText:= TmpText + '                       знач. не опред.';

        TmpText:= TmpText + #13#10 +  'Морфологический индекс: ';
        if Trim(EdtKrugMorphIndex.Text) <> ''
          then TmpText:= TmpText + '  ' + Trim(EdtKrugMorphIndex.Text) + ' % [ норма >= 4 %]'
          else TmpText:= TmpText + '  знач. не опред.';

       //если все поля пустые
       if (Trim(EdtKrugNorma.Text) = '')
        and (Trim(EdtKrugCapCoarse.Text) = '')
          and (Trim(EdtKrugCapSlight.Text) = '')
            and (Trim(EdtKrugCapSpecif.Text) = '')
              and (Trim(EdtKrugCollumCoarse.Text) = '')
                and (Trim(EdtKrugCollumSlight.Text) = '')
                  and (Trim(EdtKrugBrush.Text) = '')
                    and (Trim(EdtKrugSpermCell.Text) = '')
                      and (Trim(EdtKrugYoungCell.Text) = '')
                        and (Trim(EdtKrugMorphIndex.Text) = '')
        then //очищаем поле
          TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_KRUG')).Clear
        else // иначе пишем значения
          begin
            if (Trim(EdtKrugNotice.Text) <> '') then
              begin
                TmpText:= TmpText + #13#10 + #13#10;
                BegCurPos:= Length(Text) + Length(TmpText);
                EndCurPos:= Length('Особые отметки:');
                TmpText:= TmpText + 'Особые отметки: '
                  + WriteSymbolToEndString(Trim(EdtKrugNotice.Text),'.');
              end;

            TmpRE.Lines.Add(TmpText);
            Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
            TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_KRUG')).AsString:= GetRTFText(TmpRE);

            if counter > 0 then DestRE.Lines.Add('');//добавим пустую строку
            SrcTxt:= Trim(GetRTFText(DestRE));
            DestTxt:= Trim(GetRTFText(TmpRE));
            DestRE.Text:= LeftStr(SrcTxt,Length(SrcTxt) - 1) + RightStr(DestTxt,Length(DestTxt) -1);
            counter:= counter + 1;
          end;
       end;

     //*********** формируем текст биохимии эякулята *************
     with TmpRE do
       begin
         Clear;
         TmpText:= 'Биохимическое исследование эякулята (' +
                                      FormatDateTime('DD.MM.YY', DTPickSpermBiochemic.Date) + '): ';
         BegCurPos:= 0;
         EndCurPos:= Length(Trim(TmpText));
         Lines.Add(TmpText);
         Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
         Lines.Add('');

         TmpText:= '                 -- фруктоза: ';
         if Trim(EdtSpermBiochemicFruct.Text) <> ''
           then TmpText:= TmpText + '     ' +
             Trim(EdtSpermBiochemicFruct.Text) + ' мкмоль [не менее 13 мкмоль, весь объем эякулята]'
           else TmpText:= TmpText + '     знач. не опред.';

         TmpText:= TmpText + #13#10 + '-- альфа-гликозидаза: ';
         if Trim(EdtSpermBiochemicGlyc.Text) <> ''
           then TmpText:= TmpText + '     ' +
             Trim(EdtSpermBiochemicGlyc.Text) + ' ME [20 МЕ и более в эякуляте]'
           else TmpText:= TmpText + '     знач. не опред.';

         if (Trim(EdtSpermBiochemicFruct.Text) = '') and (Trim(EdtSpermBiochemicGlyc.Text) = '')
           then
             TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERMBIOCHEMIC')).Clear
           else
             begin
               TmpRE.Lines.Add(TmpText);
               TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERMBIOCHEMIC')).AsString:= GetRTFText(TmpRE);

                if counter > 0 then DestRE.Lines.Add('');//добавим пустую строку
                SrcTxt:= Trim(GetRTFText(DestRE));
                DestTxt:= Trim(GetRTFText(TmpRE));
                DestRE.Text:= LeftStr(SrcTxt,Length(SrcTxt) - 1) + RightStr(DestTxt,Length(DestTxt) -1);
                counter:= counter + 1;
             end;
       end;

     //*********** формируем текст MAR-теста *************
     with TmpRE do
       begin
         Clear;
         TmpText:= 'Прямой MAR-тест Ig G (' + FormatDateTime('DD.MM.YY', DTPickMAR.Date) + '): ';
         BegCurPos:= 0;
         EndCurPos:= Length(Trim(TmpText));
         Lines.Add(TmpText);
         Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
         Lines.Add('');

         if Trim(EdtMAR.Text) <> ''
          then
            begin
              TmpText:= '-- процент связывания:     ' + Trim(EdtMAR.Text) +
              ' %  |  норма < 10%' + #13#10 + '                      спермиев               |  '+
              '"серая" зона 11%-39%' + #13#10 +
                             '                                                      |  полож. 40%';
              Lines.Add(TmpText);
              TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_MAR')).AsString:= GetRTFText(TmpRE);

              if counter > 0 then DestRE.Lines.Add('');//добавим пустую строку
              SrcTxt:= Trim(GetRTFText(DestRE));
              DestTxt:= Trim(GetRTFText(TmpRE));
              DestRE.Text:= LeftStr(SrcTxt,Length(SrcTxt) - 1) + RightStr(DestTxt,Length(DestTxt) -1);
              counter:= counter + 1;
            end
          else
            TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_MAR')).Clear;
       end;

     //*********** исследование жизнеспособности сперматозоидов *************
     with TmpRE do
       begin
         Clear;
         TmpText:= 'Исследование жизнеспособности сперматозоидов ('
                                        + FormatDateTime('DD.MM.YY', DTPickSpermVital.Date) + '): ';
         BegCurPos:= 0;
         EndCurPos:= Length(Trim(TmpText));
         Lines.Add(TmpText);
         Text:= AGetRichStringFromRE(TmpRE,BegCurPos,EndCurPos);
         Lines.Add('');

         if (Trim(EdtSpermVitalTest.Text) = '') and (Trim(EdtSpermVitalHOS.Text) = '')
          then
            TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERMVITAL')).Clear
          else
            begin
              TmpText:= '-- тест суправит. окрашивания      ';
              if Trim(EdtSpermVitalTest.Text) <> ''
                then TmpText:= TmpText + Trim(EdtSpermVitalTest.Text) + ' % [ норма > 75 %]'
                else TmpText:= TmpText + 'знач. не опред.';

              TmpText:= TmpText + #13#10 + '                       (эозин-нигрозин)'+ #13#10
                                                           + '    -- гипоосмотический стресс      ';
              if Trim(EdtSpermVitalHOS.Text) <> ''
                then TmpText:= TmpText + Trim(EdtSpermVitalHOS.Text) + ' % [ норма > 60 %]'
                else TmpText:= TmpText + 'знач. не опред.';
              TmpText:= TmpText + #13#10 + '                спермиев (HOS-тест)';

              Lines.Add(TmpText);
              TBlobField(DMFIB.DSetTmpBlobVisit.FN('TMP_SPERMVITAL')).AsString:= GetRTFText(TmpRE);

              if counter > 0 then DestRE.Lines.Add('');//добавим пустую строку
              SrcTxt:= Trim(GetRTFText(DestRE));
              DestTxt:= Trim(GetRTFText(TmpRE));
              DestRE.Text:= LeftStr(SrcTxt,Length(SrcTxt) - 1) + RightStr(DestTxt,Length(DestTxt) -1);
            end;
       end;

(**************************************************************************************)

     //присвоим текст эдита строке для корректного сравнения со строковой переменной
     TmpText:= Trim(GetRTFText(DestRE));

     DestRE.Clear;//чистим ненужный эдит
     DestRE.Text:= TextSperm;//деформатируем имеющийся для сравнения

     //анализируем имеющийся текст анализа эякулята
     if Trim(DestRE.Text) = ''
       then //если рич-эдит был пустой
         TextSperm:= TmpText//смело изменяем его через переменную TextSperm
       else//если что-то содержит
         if TextSperm <> TmpText//если новый текст отличается от старого
           then
             if Application.MessageBox('Ранее введенные результаты исследования эякулята' +
             ' сейчас будет заменены на вновь сформированный текст. Разрешить' +
             ' замену?', 'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
               then TextSperm:= TmpText;//заменяем, если ответ "Да"
  finally
    TmpRE.Free;
    DestRE.Free;
  end;

  try
    if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Post;
  except
    on E:EFIBError do
    begin
      if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
      Application.MessageBox(Pchar(E.Message),'Ошибка сохранения данных',MB_ICONINFORMATION);
    end;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.PgCtrlSpermChange(Sender: TObject);
begin
if PgCtrlSperm.ActivePageIndex = 0
  then BtnPrev.Enabled:= False
  else BtnPrev.Enabled:= True;

if PgCtrlSperm.ActivePageIndex = Pred(PgCtrlSperm.PageCount)
  then BtnNext.Enabled:= False
  else BtnNext.Enabled:= True;
end;

//----------------------------------------------------------------------------
{$region ' key pressed procedure heading block '}
procedure TFrmSpermGr.EdtSpermVolumeKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> ',') and (Key <> '-') and (Key <> #8) and (Key <> #32) and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только цифры от 0 до 9, запятую, пробел '
      + 'и дефис!   ', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermColorKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < 'А') or (Key > 'я')) and (Key <> '-') and (Key <> #8) and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только символы русского алфавита '
      + 'и дефис!   ', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSperm_pHKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> '-') and (Key <> #8) and (Key <> #32)
                                                       and (Key <> ',') and (Key <> '.') and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только десятичные дроби, пробел '
      + 'и дефис!   ', 'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermViscosityKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

procedure TFrmSpermGr.EdtSpermFluidKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key > #64) and (Key < #123) and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы не можете вводить символы латинского алфавита!   ',
      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermLeuKeyPress(Sender: TObject; var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermErKeyPress(Sender: TObject; var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermLipoidSomaKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermAgglutKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermAggregKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermEpitelKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermAbstinenceKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermConcentrKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermFastForwMoveKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and (Key <> ',') and (Key <> '.')  and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('Вы можете вводить только цифры от 0 до 9, запятую или точку !   ',
      'Ввод некорректного значения!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermSlowForwMoveKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermRollMoveKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermStaticMoveKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugNormaKeyPress(Sender: TObject; var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugCapCoarseKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugCapSlightKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugCapSpecifKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugCollumCoarseKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugCollumSlightKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugBrushKeyPress(Sender: TObject; var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugSpermCellKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugYoungCellKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtKrugMorphIndexKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermBiochemicFructKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermBiochemicGlycKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFluidKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtMARKeyPress(Sender: TObject; var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermVitalTestKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.EdtSpermVitalHOSKeyPress(Sender: TObject;
  var Key: Char);
begin
EdtSpermFastForwMoveKeyPress(Sender,Key);
end;
{$endregion}
//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnSpermFotosClick(Sender: TObject);
begin
with TFrmImgSpermFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnKrugFotosClick(Sender: TObject);
begin
with TFrmImgKrugFotos.Create(nil) do
  try
    ShowModal
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.AppEventsFrmSpermGrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"

    //отслеживаем "хоткеи" клавиш "туда-сюда"
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
      then BtnNextClick(Self);

    //отследим, чтобы сочетания клавиш "не попали" в OnKeyPress эдитов, вызвав исключение
    Handled:= True;
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('S')) < 0)
      then BtnSpermFotosClick(Self)
      else
        if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('K')) < 0)
          then BtnKrugFotosClick(Self)
          else
            if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('B')) < 0)
              then BtnBiochemFotosClick(Self)
              else
                if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('M')) < 0)
                  then BtnMARFotosClick(Self)
                  else
                    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0)
                      then BtnSpermvitaFotosClick(Self)
                      else Handled:= False;
  end;
AppEventsFrmSpermGr.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnBiochemFotosClick(Sender: TObject);
begin
with TFrmImgBiochemFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnMARFotosClick(Sender: TObject);
begin
with TFrmImgMARFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.BtnSpermvitaFotosClick(Sender: TObject);
begin
with TFrmImgSpermVitalFotos.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

//----------------------------------------------------------------------------

function TFrmSpermGr.AGetRichStringFromRE(ARichEdit: TRichEdit;
  var ACurPos,BCurPos: Integer): String;
begin
  with ARichEdit do
  begin
    SelStart:= ACurPos;
    SelLength:= BCurPos;
    SelAttributes.Style:= [fsUnderline];
    SelStart:= ACurPos;//курсор в конец выделения
    SelAttributes.Assign(DefAttributes);
  end;
Result:= GetRTFText(ARichEdit);
end;

//----------------------------------------------------------------------------

procedure TFrmSpermGr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmSpermGr.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
