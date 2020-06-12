unit TblDrugsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DB,
  Menus, EhLibFIB, NiceSettings, PngSpeedButton, PngBitBtn, MemTableDataEh,
  MemTableEh, DataDriverEh, FIBDataSet, pFIBDataSet, frxClass, frxGZip,
  frxRich, frxDBSet, fs_idbrtti, fs_ipascal, fs_iinterpreter, AppEvnts, XPStyleActnCtrls, ActnList, ActnMan;

type
  TFrmTblDrugs = class(TForm)
    PnlCaption: TPanel;
    PnlEdtTblDrug: TPanel;
    PnlBtnBar: TPanel;
    LblCapt: TLabel;
    BtnCancel: TButton;
    BtnSave: TButton;
    BtnClose: TButton;
    EdtDrugNamePill: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtDrugDose: TEdit;
    Label3: TLabel;
    EdtDrugUse: TEdit;
    Label4: TLabel;
    EdtDrugCure: TEdit;
    Label5: TLabel;
    CbBoxDrugInput: TComboBox;
    Label6: TLabel;
    BtnChoice: TButton;
    CbBoxDrugMethod: TComboBox;
    Label7: TLabel;
    LblWarning: TLabel;
    PpMnuTblDrug: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NiceSetFrmTblDrugs: TNiceSettings;
    Label8: TLabel;
    BtnHlp: TButton;
    BtnPrintRecipe: TButton;
    Panel1: TPanel;
    DSetChoiceDrug: TpFIBDataSet;
    DSMTETblDrug: TDataSource;
    dsdTblDrug: TDataSetDriverEh;
    MTETblDrug: TMemTableEh;
    dsdChoiceDrug: TDataSetDriverEh;
    MTEChoiceDrug: TMemTableEh;
    DSMTEChoiceDrug: TDataSource;
    DSetReportRecipe: TpFIBDataSet;
    PnlViewGridGeneral: TPanel;
    PnlViewTblDrug: TPanel;
    Lbl2: TLabel;
    SpBtnDrugDelete: TSpeedButton;
    SpBtnDrugEdit: TSpeedButton;
    SpBtnDrugAdd: TSpeedButton;
    Lbl1: TLabel;
    DBGridTblDrug: TDBGridEh;
    PnlChoiceTblDrug: TPanel;
    DBGridChoiceDrug: TDBGridEh;
    BtnFwdOne: TButton;
    BtnFwdAll: TButton;
    BtnRtnOne: TButton;
    BtnRtnAll: TButton;
    PnlChoiceDocClin: TPanel;
    CbBoxInfoDoc: TComboBox;
    Label9: TLabel;
    DSetReportDoc: TpFIBDataSet;
    frxDBDataset1: TfrxDBDataset;
    LblEmptyDocWarning: TLabel;
    BitBtnEdtTblDoc: TBitBtn;
    BtnRichFmtRecipe: TButton;
    BtnRichFmtDrugNote: TButton;
    RichEditDrugNote: TRichEdit;
    RichEditDrugRecipe: TRichEdit;
    AppEventsDrug: TApplicationEvents;
    BtnDrugInfo: TButton;
    CbBoxPrintFmt: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpBtnDrugAddClick(Sender: TObject);
    procedure SpBtnDrugEditClick(Sender: TObject);
    procedure SpBtnDrugDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnChoiceClick(Sender: TObject);
    procedure DBGridTblDrugDblClick(Sender: TObject);
    procedure EdtDrugNamePillChange(Sender: TObject);
    procedure DBGridTblDrugDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure DBGridTblDrugCellClick(Column: TColumnEh);
    procedure BtnPrintRecipeClick(Sender: TObject);
    procedure DBGridTblDrugDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridTblDrugDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceDrugDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridChoiceDrugDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridChoiceDrugDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BtnFwdOneClick(Sender: TObject);
    procedure BtnFwdAllClick(Sender: TObject);
    procedure BtnRtnOneClick(Sender: TObject);
    procedure BtnRtnAllClick(Sender: TObject);
    procedure BitBtnEdtTblDocClick(Sender: TObject);
    procedure CbBoxInfoDocChange(Sender: TObject);
    procedure BtnRichFmtRecipeClick(Sender: TObject);
    procedure BtnRichFmtDrugNoteClick(Sender: TObject);
    procedure AppEventsDrugShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnDrugInfoClick(Sender: TObject);
    procedure CbBoxPrintFmtChange(Sender: TObject);
    procedure BtnHlpClick(Sender: TObject);
  private
    { Private declarations }
    procedure BtnEdtRecOn(Sender: TObject);
    procedure BtnEdtRecOff(Sender: TObject);
    procedure ActivatingControlls(Sender: TObject);
    procedure SwitchOnOffBtn(Sender: TObject);
    procedure FillCbBoxDoctorByData(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmTblDrugs: TFrmTblDrugs;

implementation

uses VarAndrUnit, StatusPatUnit, DMFIBUnit, MainAndrUnit, StrUtils, uFrmRichTxtShow;

var DrugSendTag: Integer;//промежуточное число для индентификации
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormCreate(Sender: TObject);
var FrmLongWidth: Integer;//полная ширина формы
begin
NiceSetFrmTblDrugs.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmTblDrugs.LoadSettings;

FrmLongWidth:= Self.Width;//запомним ширину формы в DesignTime

//если форма открыта для просмотра без права выбора, то "укорачиваем" ее
if not DrugChoiceBtn
  then
    begin
      Self.Width:= FrmLongWidth - PnlChoiceTblDrug.Width;//укорачиваем форму
      Self.Caption:= 'Справочник лекарственных средств';
    end
  else //иначе все отображаем, как в Design Time
    begin
      Self.Width:= FrmLongWidth;

      //рисуем заголовок в зависимости от пола
      if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
        then //если это мужчина
            Self.Caption:= 'Выбор препаратов (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
        else //если это женщина
            Self.Caption:= 'Выбор препаратов (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
    end;

PnlChoiceTblDrug.Visible:= DrugChoiceBtn;//показываем эту панельку в зависимости от значения флага
FocusFlag:= True;

//пока прячем часть кнопок
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

FillCbBoxDoctorByData(Sender);//заполняем комб с докторами
FormResize(Sender);//перерисовываем надписи на форме
CbBoxPrintFmtChange(Sender);//запоминаем формат текущего отчета
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.ActivatingControlls(Sender: TObject);
begin
//переоткрываем все источники данных
DMFIB.DSetDrugs.FullRefresh;
DSetChoiceDrug.FullRefresh;

if MTETblDrug.Active then MTETblDrug.Close;
MTETblDrug.Open;

if MTEChoiceDrug.Active then MTEChoiceDrug.Close;
MTEChoiceDrug.Open;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmTblDrugs.SaveSettings;

if DMFIB.DSetDrugs.Active then DMFIB.DSetDrugs.Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormShow(Sender: TObject);
begin
FrmTblDrugs.Caption:= 'Справочник препаратов';
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.FormResize(Sender: TObject);
begin
LblCapt.Left:= (PnlCaption.Width - LblCapt.Width) div 2;//центрируем заголовок

with LblWarning do
  begin
    Parent:= DBGridTblDrug;
    Left:= (DBGridTblDrug.Width - LblWarning.Width) div 2;//центрируем предупреждение
    Top:= DBGridTblDrug.Height div 2; //центрируем предупреждение по высоте
  end;

with LblEmptyDocWarning do
  begin
    Parent:= CbBoxInfoDoc;
    Left:= CbBoxInfoDoc.Left + 5;
    Top:= (CbBoxInfoDoc.Height - Height) div 2;
  end;
  
BtnCancel.Left:= BtnClose.Left;
BtnSave.Left:= BtnChoice.Left;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnEdtRecOff(Sender: TObject);
begin
PnlEdtTblDrug.Visible:= True;
PnlViewTblDrug.Enabled:= False;
PnlChoiceDocClin.Visible:= False;//прячем панель с доктором

//отключаем и "обесцвечиваем" кнопки редактирования
BtnClose.Visible:= False;
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

SpBtnDrugAdd.Enabled:= False;
SpBtnDrugEdit.Enabled:= False;
SpBtnDrugDelete.Enabled:= False;

BtnFwdOne.Enabled:= False;
BtnFwdAll.Enabled:= False;
BtnRtnOne.Enabled:= False;
BtnRtnAll.Enabled:= False;

//показываем кнопки изменений
BtnSave.Visible:= True;
BtnCancel.Visible:= True;

if TblDrugFlag
  then LblCapt.Caption:= 'Добавьте в справочник новый препарат'//нажата кнопка "Добавить"
  else LblCapt.Caption:= 'Отредактируйте данные о препарате';//нажата кнопка "Редактировать"

//"обесцветим" гриды
FrmMainProg.SwitchGrid(DBGridTblDrug, False);
FrmMainProg.SwitchGrid(DBGridChoiceDrug, False);

LblWarning.Font.Color:= clGray;
FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnEdtRecOn(Sender: TObject);
begin
LblCapt.Caption:= 'Справочник медикаментов';//название заголовка
PnlEdtTblDrug.Visible:= False;//прячем панель редактирования
PnlViewTblDrug.Enabled:= True;//включаем панель с таблицей
PnlChoiceDocClin.Visible:= True;//показываем панель с доктором

LblWarning.Font.Color:= clRed;
FormResize(Sender);

//прячем кнопки изменений
BtnSave.Visible:= False;
BtnCancel.Visible:= False;

//включаем кнопки редактирования
BtnClose.Visible:= True;
BtnChoice.Visible:= False;
BtnPrintRecipe.Visible:= False;
BtnDrugInfo.Visible:= False;
CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;

SpBtnDrugAdd.Enabled:= True;

//множ.выбор добавим, если форма открыта для выбора
if DrugChoiceBtn
  then DBGridTblDrug.Options:= DBGridTblDrug.Options + [dgMultiSelect]
  else DBGridTblDrug.Options:= DBGridTblDrug.Options - [dgMultiSelect];

Lbl1.Visible:= DrugChoiceBtn;//покажем совет, если будем выбирать
Lbl2.Visible:= DrugChoiceBtn;//покажем совет, если будем выбирать

ActivatingControlls(Sender);//переоткрываем все наборы
SwitchOnOffBtn(Sender);//контроллируем отображение кнопок

with DMFIB,DSetDrugs do
  begin
    LblWarning.Visible:= IsEmpty;//спрячем предупреждение
    FrmMainProg.SwitchGrid(DBGridTblDrug, not IsEmpty);
    FrmMainProg.SwitchGrid(DBGridChoiceDrug, not IsEmpty);
  end;                                                                 

if DBGridTblDrug.CanFocus then
  begin
    DBGridTblDrug.SetFocus;//если можно, фокус на грид

    //включаем автосортировку по алфавиту
//    DBGridTblDrug.Columns[0].Title.SortMarker:= smUpEh;
//    DBGridTblDrug.Columns[0].Title.SetNextSortMarkerValue(False);
//    DBGridTblDrug.DefaultApplySorting;
  end;

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugAddClick(Sender: TObject);
begin
TblDrugFlag:= True;
BtnEdtRecOff(Sender);

EdtDrugNamePill.Clear;
EdtDrugDose.Clear;
EdtDrugUse.Clear;
EdtDrugCure.Clear;
CbBoxDrugInput.ItemIndex:= 0;
RichEditDrugNote.Text:= 'Сюда можно ввести дополнительные сведения о препарате.'
                        + #13#10 + 'Это поле не является обязательным для заполнения.';
RichEditDrugRecipe.Text:= 'Сюда можно ввести "рецептурный" текст для препарата, что позволит распечатывать '
                        + 'готовые рецептурные бланки и экономить время.'
                        + #13#10 + 'Это поле не является обязательным для заполнения.';
if EdtDrugNamePill.CanFocus then EdtDrugNamePill.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugEditClick(Sender: TObject);
var msDrugNote, msDrugRecipe: TMemoryStream;
begin
TblDrugFlag:= False;
BtnEdtRecOff(Sender);

with DMFIB.DSetDrugs do
  begin
    Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//сопоставим курсор с гридом 
    EdtDrugNamePill.Text:= Trim(FieldByName('DrugNamePill').AsString);
    EdtDrugDose.Text:= Trim(FieldByName('DrugDose').AsString);
    EdtDrugUse.Text:= Trim(FieldByName('DrugUse').AsString);
    EdtDrugCure.Text:= Trim(FieldByName('DrugCure').AsString);
    CbBoxDrugInput.ItemIndex:= FieldByName('DrugInput').AsInteger;
    CbBoxDrugMethod.ItemIndex:= FieldByName('DrugMethod').AsInteger;

    msDrugNote:= TMemoryStream.Create;
    msDrugRecipe:= TMemoryStream.Create;

    try
      TBlobField(FN('DrugNote')).SaveToStream(msDrugNote);
      msDrugNote.Position:= 0;
      RichEditDrugNote.Lines.LoadFromStream(msDrugNote);

      TBlobField(FN('DRUGRECIPE')).SaveToStream(msDrugRecipe);
      msDrugRecipe.Position:= 0;
      RichEditDrugRecipe.Lines.LoadFromStream(msDrugRecipe);

    finally
      msDrugNote.Free;
      msDrugRecipe.Free;
    end;{try..finally}
  end;{with}

//если рич-эдиты пустые, то введем туда подсказки
if Trim(RichEditDrugNote.Text) = '' then
  RichEditDrugNote.Text:= 'Сюда можно ввести дополнительные сведения о препарате.'
                        + #13#10 + 'Это поле не является обязательным для заполнения.';

if Trim(RichEditDrugRecipe.Text) = '' then
  RichEditDrugRecipe.Text:= 'Сюда можно ввести "рецептурный" текст для препарата, что позволит распечатывать '
                          + 'готовые рецептурные бланки и экономить время.'
                          + #13#10 + 'Это поле не является обязательным для заполнения.';

if EdtDrugNamePill.CanFocus then EdtDrugNamePill.SetFocus;        
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.SpBtnDrugDeleteClick(Sender: TObject);
begin
if Application.MessageBox('Вы уверены, что хотите удалить препарат из справочника?',
                          'Внимание!', MB_ICONINFORMATION + MB_YESNO)= IDNo
  then
    Exit
  else
    try
      if DMFIB.DSetDrugs.IsEmpty then Exit;
      DMFIB.DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//сопоставляем курсор с гридом
      DMFIB.DSetDrugs.Delete;
    except
      Application.MessageBox(Pchar(ErrorMsg),'Ошибка удаления данных',MB_ICONINFORMATION);
    end;

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetDrugs.Modified then DMFIB.DSetDrugs.Cancel;
BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnSaveClick(Sender: TObject);
var msDrugNote, msDrugRecipe: TMemoryStream;
begin
//контроллируем отсутствие "пустых" записей
if (Trim(EdtDrugNamePill.Text) = '') or (Trim(EdtDrugDose.Text) = '')
                      or (Trim(EdtDrugUse.Text) = '') or (Trim(EdtDrugCure.Text) = '')
  then
    begin
      if Application.MessageBox('Сведения о препарате введены не полностью. Будете '
                              + 'заполнять?', 'Неполные данные',
                              MB_ICONINFORMATION + MB_YESNO) = IDNo
        then BtnCancelClick(Sender)
        else
            with FrmMainProg do
              begin
                if Trim(EdtDrugNamePill.Text) = '' then CheckEdtEmpty(EdtDrugNamePill,
                                   'Вы не ввели наименование лекарственного препарата!');

                if Trim(EdtDrugDose.Text) = '' then CheckEdtEmpty(EdtDrugDose,
                                      'Вы не ввели дозировку лекарственного препарата!');

                if Trim(EdtDrugUse.Text) = '' then CheckEdtEmpty(EdtDrugUse,
                                            'Вы не указали кратность приема препарата!');
                if Trim(EdtDrugCure.Text) = '' then CheckEdtEmpty(EdtDrugCure,
                                         'Вы не указали длительность приема препарата!');
              end;
      Exit;
    end;

with DMFIB,DSetDrugs do
  try
    if (State = dsBrowse)
      then //если набор в режиме чтения
        begin
          if TblDrugFlag //флаг помечен
            then Insert //добавляем запись
            else Edit;  // редактируем запись
        end;

    FieldByName('DrugNamePill').AsString:= Trim(EdtDrugNamePill.Text);
    FieldByName('DrugDose').AsString:= Trim(EdtDrugDose.Text);
    FieldByName('DrugUse').AsString:= Trim(EdtDrugUse.Text);
    FieldByName('DrugCure').AsString:= Trim(EdtDrugCure.Text);
    FieldByName('DrugInput').AsInteger:= CbBoxDrugInput.ItemIndex;
    FieldByName('DrugMethod').AsInteger:= CbBoxDrugMethod.ItemIndex;

    msDrugNote:= TMemoryStream.Create;
    msDrugRecipe:= TMemoryStream.Create;

    try
      if (Trim(RichEditDrugNote.Text) = '') //если в ричэдите текста нет или он содержит
                or (LeftStr(Trim(RichEditDrugNote.Text),32) = 'Сюда можно ввести дополнительные')//этот текст
        then //об-null-яем поле
          FN('DrugNote').Clear
        else // иначе пишем в него RTF-текст
          begin
            RichEditDrugNote.Lines.SaveToStream(msDrugNote);
            msDrugNote.Position:= 0;
            TBlobField(FN('DrugNote')).LoadFromStream(msDrugNote);
          end;

      if (Trim(RichEditDrugRecipe.Text) = '') //если в ричэдите текста нет или он содержит
                or (LeftStr(Trim(RichEditDrugRecipe.Text),31) = 'Сюда можно ввести "рецептурный"')//этот текст
        then
          FN('DRUGRECIPE').Clear
        else
          begin
            RichEditDrugRecipe.Lines.SaveToStream(msDrugRecipe);
            msDrugRecipe.Position:= 0;
            TBlobField(FN('DRUGRECIPE')).LoadFromStream(msDrugRecipe);
          end;

    finally
      msDrugNote.Free;
      msDrugRecipe.Free;
    end;{try..finally}

    if DSetDrugs.Modified then DSetDrugs.Post;
  except
    if DSetDrugs.Modified then DSetDrugs.Cancel;
    Application.MessageBox(Pchar(ErrorMsg),'Ошибка сохранения данных',MB_ICONINFORMATION);
  end;{try..except}

BtnEdtRecOn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------
//просмотр сведений о препарате
procedure TFrmTblDrugs.BtnDrugInfoClick(Sender: TObject);
begin
  //проверимся на всякий случай
  if MTETblDrug.IsEmpty then Exit;

  // если поле со сведениями не заполнено, то предупредим об этом и дадим право выбора
  with DMFIB do
    begin
      DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//сопоставим курсор в сетке с набором
      if Trim(DSetDrugs.FN('DRUGNOTE').AsString) = ''
        then
          begin
            if Application.MessageBox(PChar('Аннотация к препарату "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) +
                '" в базе данных отсутствует. Хотите ввести ее сейчас ?'),
                'Недостаточно данных', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  SpBtnDrugEditClick(Sender);//программно нажимаем кнопку редактирования
                  if RichEditDrugNote.CanFocus then RichEditDrugNote.SetFocus;
                end;
          end
        else //поле с аннотацией к препарату не пустое
          begin
            SimpleREStr:= Trim(DSetDrugs.FN('DRUGNOTE').AsString);//запоминаем отображаемый текст
            if Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) <> ''
              then
                CaptionREStr:= 'Аннотация к препарату "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) + '"'
              else
                CaptionREStr:= 'Название препарата отсутствует';
                
            with TFrmRichTxtShow.Create(Self) do //создаем смотровую форму
              try
                ShowModal;
              finally
                Free;
              end;

            if DBGridTblDrug.CanFocus then DBGridTblDrug.SetFocus;//возвращаем фокус в грид
          end;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugCellClick(Column: TColumnEh);
begin
// не позволяем юзеру редактировать или удалять препарат из таблицы,
// если "работает" множественный выбор
//SpBtnDrugEdit.Enabled:= (DBGridTblDrug.SelectedRows.Count = 1);
//SpBtnDrugDelete.Enabled:= (DBGridTblDrug.SelectedRows.Count = 1);

SwitchOnOffBtn(Self);//проверим кнопки
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnChoiceClick(Sender: TObject);
var j,k: Integer;
    sj,sk: String;
    FullTxt: AnsiString;
    TmpRE: TRichEdit;
begin
// ---> если ничего не выбрано (подстраховка)
if DBGridChoiceDrug.DataSource.DataSet.RecordCount = 0
  then
    begin
      if Application.MessageBox('Не выбрано ни одной строки. Для выбора перенесите препараты из таблицы слева '
                  + 'в таблицу справа кнопками, расположенными между ними, или перетащите мышкой. Для '
                  + 'множественного выбора препаратов в левой таблице удерживайте нажатой клавишу <Ctrl>. '
                  + 'Хотите повторить попытку?', 'Внимание', MB_ICONINFORMATION + MB_YESNO) = IDYes
        then
          Exit //вернемся в форму
        else
          begin
           Close;
           Exit;
          end; //закроем форму
    end;

// ---> если выбрано не меньше одной строки
FullTxt:= '';
sj:= '';
sk:= '';

TmpRE:= TRichEdit.CreateParented(Self.Handle);
with TmpRE do
  try
    PlainText:= False;
    Visible:= False;

    Lines.Add('Лечение: ');
    SelStart:= 0;
    SelLength:= Length(Trim('Лечение: '));
    SelAttributes.Style:= [fsUnderline];
    SelStart:= SelLength;
    SelAttributes.Assign(DefAttributes);


    //"складываем" выбранные строки в рич-эдит
   // for i:= 0 to DBGridChoiceDrug.DataSource.DataSet.RecordCount - 1 do
   MTEChoiceDrug.First;

   while not MTEChoiceDrug.Eof do
     begin
        //формируем строку
        with MTEChoiceDrug do
          begin
            //анализируем поле и подставляем соответствующее значение комба
            j:= FieldByName('DrugInput').AsInteger;
            case j of
              0: sj:= ' внутрь';
              1: sj:= ' ректально';
              2: sj:= ' п/к';
              3: sj:= ' в/м';
              4: sj:= ' в/в';
              5: sj:= ' наружно';
              else sj:= '';
            end;{case}

            k:= FieldByName('DrugMethod').AsInteger;
            case k of
              0: begin
                  if (j <> 0)
                    then sk:= ''
                    else sk:= ' (вне зависимости от приема пищи)';
                 end;
              1: sk:= ' (за 1 час до еды)';
              2: sk:= ' (через 2 часа после еды)';
              3: sk:= ' (за 1 час до еды или через 2 часа после еды)';
              4: sk:= ' (во время или после еды)';
              5: sk:= ' (на ночь)';
              6: sk:= ' (на ночь, натощак) ';
              7: sk:= ' (за 30-60 мин до полового акта) ';
            else sk:= '';
            end;


            FullTxt:= '- ' + Trim(FieldByName('DrugNamePill').AsString) + ' '
                    + Trim(FieldByName('DrugDose').AsString) + ' x '
                    + Trim(FieldByName('DrugUse').AsString) + ' '
                    + Trim(FieldByName('DrugCure').AsString) + sj + sk;
          end;
        Lines.Add(FullTxt);//добавляем строку в рич-эдит
        MTEChoiceDrug.Next;
     end;

    //передаем форматированный текст в строку
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextDrugs;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст списка медикаментов
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextDrugs:= FullTxt //смело изменяем "форматную" текстовую переменную
      else//если что-то содержит
        if TextDrugs <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенный текст медикаментозного лечения ' +
               'сейчас будет заменен на вновь сформированный текст. Разрешить замену?',
               'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextDrugs:= FullTxt;//заменяем, если ответ "Да"
  finally
    Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDblClick(Sender: TObject);
begin
//SpBtnDrugEditClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.EdtDrugNamePillChange(Sender: TObject);
begin
UpFirstChar(EdtDrugNamePill);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridTblDrug.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridTblDrug.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridTblDrug.Canvas.Brush.Color:= clMoneyGreen;
		DBGridTblDrug.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridTblDrug.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

//----------------------------------------------------------------------------
//печать рецепта для препарата
procedure TFrmTblDrugs.BtnPrintRecipeClick(Sender: TObject);
var TmpTxt,DrugFPath,DrugFileName: string;
begin
  //проверимся на всякий случай
  if MTETblDrug.IsEmpty then Exit;

  // если поле с рецептурой не заполнено, то предупредим об этом и дадим право выбора
  with DMFIB do
    begin
      DSetDrugs.Locate('ID_DRUGS',MTETblDrug['ID_DRUGS'],[]);//сопоставим курсор в сетке с набором
      if Trim(DSetDrugs.FN('DRUGRECIPE').AsString) = ''
        then
          begin
            if Application.MessageBox(PChar('Для препарата "' + Trim(DSetDrugs.FN('DRUGNAMEPILL').AsString) +
                '" поле с рецептурой пока не заполнено. Хотите заполнить его сейчас ?'),
                'Некорректные данные', MB_ICONINFORMATION + MB_YESNO) = IDYes
              then
                begin
                  SpBtnDrugEditClick(Sender);//программно нажимаем кнопку редактирования
                  if RichEditDrugRecipe.CanFocus then RichEditDrugRecipe.SetFocus;
                  Exit;
                end
              else
                Exit;//просто выйдем из процедуры
          end{if Trim(FN('DRUGRECIPE').AsString) = '' .. then}
        else
          begin
            //проверяем наличие необходимых для заполнения бланка рецепта сведений
            if DSetTotalPat.IsEmpty then
              begin
                Application.MessageBox('В рецепте должно быть указаны данные пациента. В вашей базе данных '
                + 'пациентов нет совсем !','Некорректные данные', MB_ICONINFORMATION);
                Exit;
              end;

            if DSetReportDoc.IsEmpty then
              begin
                if Application.MessageBox('В рецепте должны быть указаны данные доктора, выписавшего препарат. '
                  + 'Хотите добавить врача ?','Некорректные данные',MB_ICONINFORMATION + MB_YESNO) = IDYes
                  then
                    BitBtnEdtTblDocClick(Sender);//программно нажимаем на кнопку добавления докторов
                Exit;
              end;

            //если благополучно прошли все проверки, то выводим на печать бланк, предварительно открыв датасет
            with DSetReportRecipe do
              begin
                if Active then Close;//закроем набор

                Prepare;//отпрепарируем запрос

                //сопоставим запись в наборе с докторами с фамилией доктора в комбе
                DSetReportDoc.Locate(Trim('SHORT_DOCINFO'),Trim(CbBoxInfoDoc.Text),[]);

                //заполняем параметры запроса
                ParamByName('prmID_DR').Value:= DSetDrugs.FN('ID_DRUGS').Value;
                ParamByName('prmID_DOC').Value:= DSetReportDoc.FN('ID_DOCTOR').Value;
                ParamByName('prmID_ANK').Value:= DSetTotalPat.FN('ID_ANKETA').Value;

                Open;
              end;

//              ReportRecipe.ShowReport(True);//показываем бланк рецепта
                case DrugSendTag of
                  45014: DrugFileName:= 'Recipe_a4.fr3';
                  45015: DrugFileName:= 'Recipe_a5.fr3';
                end;

                DrugFPath:= ExtractFilePath(Application.ExeName) + '\Reports\' + DrugFileName;

                //если файл существует
                if FileExists(DrugFPath)
                  then //открываем отчет
                    begin
                      FrmMainProg.frxHTMLExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxODTExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxPDFExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;
                      FrmMainProg.frxRTFExport.FileName:= DSetReportRecipe.FN('REPORT_DRUG').AsString;

                      if not DirectoryExists(ReportInitDir) then ForceDirectories(ReportInitDir);

                      FrmMainProg.frxHTMLExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxODTExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxPDFExport.DefaultPath:= ReportInitDir;
                      FrmMainProg.frxRTFExport.DefaultPath:= ReportInitDir;

                      FrmMainProg.MainReport.LoadFromFile(DrugFPath);
                      FrmMainProg.MainReport.ShowReport;
                    end
                  else //выходим из процедуры с предупреждением
                    begin
                      TmpTxt:= 'Отсутствует необходимый файл отчета "' + DrugFileName + '" ! Возможно, '
                      + 'он был ошибочно удален или переименован. Скопируйте этот файл из папки с архивом в папку '
                      + '\Reports\ в основном каталоге программы и попробуйте запустить отчет заново.';
                      Application.MessageBox(PChar(TmpTxt), 'Ошибка доступа к файлу', MB_ICONINFORMATION);
                      Exit;
                    end;

          end;{if Trim(FN('DRUGRECIPE').AsString) = '' .. else}
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridChoiceDrug)
                          and DrugChoiceBtn //и форма открыта для множ.выбора
    then Accept:= True
    else Accept:= False;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridTblDrugDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridChoiceDrug then
    begin
      DBGridTblDrug.DataSource.DataSet.DisableControls;
      DBGridChoiceDrug.DataSource.DataSet.DisableControls;
      DBGridTblDrug.SaveBookmark;
      if DBGridChoiceDrug.Selection.SelectionType = gstRecordBookmarks then

        for i := 0 to DBGridChoiceDrug.SelectedRows.Count-1 do
          begin
            DBGridChoiceDrug.DataSource.DataSet.Bookmark := DBGridChoiceDrug.SelectedRows[I];
            DBGridTblDrug.DataSource.DataSet.Append;
            DBGridTblDrug.DataSource.DataSet.Edit;

            for j := 0 to DBGridTblDrug.DataSource.DataSet.FieldCount-1 do
              DBGridTblDrug.DataSource.DataSet.Fields[j].Value := DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value;

            DBGridTblDrug.DataSource.DataSet.Post;
          end
      else
        if DBGridChoiceDrug.Selection.SelectionType = gstAll then
          begin
            DBGridChoiceDrug.DataSource.DataSet.First;

            while  not DBGridChoiceDrug.DataSource.DataSet.EOF do
              begin
                DBGridTblDrug.DataSource.DataSet.Append;
                DBGridTblDrug.DataSource.DataSet.Edit;

                for j := 0 to DBGridTblDrug.DataSource.DataSet.FieldCount-1 do
                  DBGridTblDrug.DataSource.DataSet.Fields[j].Value := DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value;

                DBGridTblDrug.DataSource.DataSet.Post;
                DBGridChoiceDrug.DataSource.DataSet.Delete;
              end;
            DBGridChoiceDrug.Selection.Clear;
          end;
      DBGridTblDrug.RestoreBookmark;
      DBGridChoiceDrug.SelectedRows.Delete;
      DBGridChoiceDrug.DataSource.DataSet.Refresh;
      DBGridChoiceDrug.DataSource.DataSet.EnableControls;
      DBGridTblDrug.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,j:Integer;
begin
  if Source = DBGridTblDrug then
    begin
      DBGridChoiceDrug.DataSource.DataSet.DisableControls;
      DBGridTblDrug.DataSource.DataSet.DisableControls;
      DBGridChoiceDrug.SaveBookmark;

      if DBGridTblDrug.Selection.SelectionType = gstRecordBookmarks
        then
          for i := 0 to DBGridTblDrug.SelectedRows.Count-1 do
            begin
              DBGridTblDrug.DataSource.DataSet.Bookmark := DBGridTblDrug.SelectedRows[I];
              DBGridChoiceDrug.DataSource.DataSet.Append;
              DBGridChoiceDrug.DataSource.DataSet.Edit;

              for j := 0 to DBGridChoiceDrug.DataSource.DataSet.FieldCount-1 do
                DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value := DBGridTblDrug.DataSource.DataSet.Fields[j].Value;

              DBGridChoiceDrug.DataSource.DataSet.Post;
            end
        else
          if DBGridTblDrug.Selection.SelectionType = gstAll then
            begin
              DBGridTblDrug.DataSource.DataSet.First;
              while  not DBGridTblDrug.DataSource.DataSet.EOF do
                begin
                  DBGridChoiceDrug.DataSource.DataSet.Append;
                  DBGridChoiceDrug.DataSource.DataSet.Edit;

                  for j := 0 to DBGridChoiceDrug.DataSource.DataSet.FieldCount-1 do
                    DBGridChoiceDrug.DataSource.DataSet.Fields[j].Value := DBGridTblDrug.DataSource.DataSet.Fields[j].Value;

                  DBGridChoiceDrug.DataSource.DataSet.Post;
                  DBGridTblDrug.DataSource.DataSet.Delete;
                end;
              DBGridTblDrug.Selection.Clear;
            end;

      DBGridChoiceDrug.RestoreBookmark;
      DBGridTblDrug.SelectedRows.Delete;
      DBGridTblDrug.DataSource.DataSet.Refresh;
      DBGridTblDrug.DataSource.DataSet.EnableControls;
      DBGridChoiceDrug.DataSource.DataSet.EnableControls;
    end;
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = DBGridTblDrug)
      and DrugChoiceBtn //и форма открыта для множ.выбора
  then Accept:= True
  else Accept:= False;
end;

//----------------------------------------------------------------------------
//включаем-отключаем кнопки
procedure TFrmTblDrugs.SwitchOnOffBtn(Sender: TObject);
begin
if DrugChoiceBtn
  then //множественный выбор
    begin
      BtnFwdOne.Enabled:= (DBGridTblDrug.DataSource.DataSet.RecordCount > 0);
      BtnFwdAll.Enabled:= (DBGridTblDrug.DataSource.DataSet.RecordCount > 0);

      BtnRtnOne.Enabled:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);
      BtnRtnAll.Enabled:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);

      //отображаем кнопку выбора соответственно наличию записей в гриде выбранных записей
      //при условии, что форма открыта для выбора (в отдельной процедуре)
      //+ отображаем кнопки печати рецепта и сведений о препарате, если выбран только один препарат и есть в базе хоть один пациент
      //и хоть один доктор и сама табля не пустая
      BtnChoice.Visible:= (DBGridChoiceDrug.DataSource.DataSet.RecordCount > 0);
      BtnPrintRecipe.Visible:= ((DBGridTblDrug.SelectedRows.Count = 1) and (not MTETblDrug.IsEmpty) and
                                              (not DMFIB.DSetTotalPat.IsEmpty) and (not DMFIB.DSetDoctor.IsEmpty));
      BtnDrugInfo.Visible:= ((DBGridTblDrug.SelectedRows.Count = 1) and (not MTETblDrug.IsEmpty) and
                                              (not DMFIB.DSetTotalPat.IsEmpty) and (not DMFIB.DSetDoctor.IsEmpty));
      CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;
    end
  else //единичный выбор
    begin
      BtnFwdOne.Enabled:= False;
      BtnFwdAll.Enabled:= False;

      BtnRtnOne.Enabled:= False;
      BtnRtnAll.Enabled:= False;

      BtnChoice.Visible:= False;
      BtnPrintRecipe.Visible:= ((not MTETblDrug.IsEmpty) and (not DMFIB.DSetTotalPat.IsEmpty)
                                                                              and (not DMFIB.DSetDoctor.IsEmpty));
      BtnDrugInfo.Visible:= ((not MTETblDrug.IsEmpty) and (not DMFIB.DSetTotalPat.IsEmpty)
                                                                              and (not DMFIB.DSetDoctor.IsEmpty));
      CbBoxPrintFmt.Visible:= BtnPrintRecipe.Visible;
    end;

//кнопки редактирования и удаления записей из грида будут доступны, если грид не пустой
//и количество выбранных записей в текущий момент не больше одной
SpBtnDrugEdit.Enabled:= ((DBGridTblDrug.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblDrug.SelectedRows.Count > 1)));
SpBtnDrugDelete.Enabled:= ((DBGridTblDrug.DataSource.DataSet.RecordCount > 0)
                                                               and (not (DBGridTblDrug.SelectedRows.Count > 1)));
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.DBGridChoiceDrugDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if DBGridChoiceDrug.DataSource.DataSet.RecNo mod 2 = 1
	then DBGridChoiceDrug.Canvas.Brush.Color:= clCream;

	// Восстанавливаем выделение текущей позиции курсора
	if  gdSelected in State
	then
    begin
		DBGridChoiceDrug.Canvas.Brush.Color:= clMoneyGreen;
		DBGridChoiceDrug.Canvas.Font.Color := clWindowText;
	  end;
	// Просим GRID перерисоваться самому
	DBGridChoiceDrug.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnFwdOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridTblDrug,DBGridChoiceDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnHlpClick(Sender: TObject);
begin
CallMyDocByHlpContext(BtnHlp,HlpCtxDrugs);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnFwdAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridTblDrug,DBGridChoiceDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRtnOneClick(Sender: TObject);
begin
FrmMainProg.BtnMoveSelectedRows(DBGridChoiceDrug,DBGridTblDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRtnAllClick(Sender: TObject);
begin
FrmMainProg.BtnMoveAllRows(DBGridChoiceDrug,DBGridTblDrug);
SwitchOnOffBtn(Sender);
end;

//----------------------------------------------------------------------------
//заполняем комб с докторами
procedure TFrmTblDrugs.FillCbBoxDoctorByData(Sender: TObject);
begin
//освежим таблю с докторами
DSetReportDoc.FullRefresh;

//заполним комб с докторами
CbBoxInfoDoc.Clear;

LblEmptyDocWarning.Visible:= DSetReportDoc.IsEmpty;
LblEmptyDocWarning.Invalidate;//перерисуем надпись

CbBoxInfoDoc.Enabled:= not DSetReportDoc.IsEmpty;

//если набор с докторами пустой
if DSetReportDoc.IsEmpty
  then
    Exit//выйдем из процедуры
  else//если же не пустой
    begin
      DSetReportDoc.First;
      //заполняем комб с докторами значениями из табли
      while not DSetReportDoc.Eof do
        begin
          CbBoxInfoDoc.Items.Add(Trim(DSetReportDoc.FN('SHORT_DOCINFO').AsString));
          DSetReportDoc.Next;
        end;

      //пытаемся отобразить в комбе доктора, запомненного в "глобальной" переменной
      DSetReportDoc.Locate('ID_DOCTOR',VarID_Tbl_Doctor,[]);
      if CbBoxInfoDoc.Items.IndexOf(DSetReportDoc.FN('SHORT_DOCINFO').AsString) >= 0//если такой имеется
        then //показываем его в комбе по умолчанию
          CbBoxInfoDoc.ItemIndex:= CbBoxInfoDoc.Items.IndexOf(DSetReportDoc.FN('SHORT_DOCINFO').AsString)
        else //иначе, первого попавшегося
          CbBoxInfoDoc.ItemIndex:= 0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.AppEventsDrugShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //имитируем нажатие "горячих" клавиш
    if DrugChoiceBtn then //если форма открыта для выбора
      begin
        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then
              begin
                DBGridTblDrug.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
                BtnFwdOneClick(Self);
              end;

        if (GetKeyState(VK_RIGHT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then BtnFwdAllClick(Self);

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
          then
            begin
              DBGridChoiceDrug.DataSource.DataSet.CursorPosChanged;//сделаем текущую запись "выделенной"
              BtnRtnOneClick(Self);
            end;

        if (GetKeyState(VK_LEFT) < 0) and (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0)
          and not(PnlEdtTblDrug.Visible) //иначе в режиме редактирования работают кнопки перемещения записей
            then BtnRtnAllClick(Self);
      end;

    //анализируем ситуацию на форме, реагируем клавишами по-разному
    if PnlEdtTblDrug.Visible
      then //если находимся в режиме редактирования
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);
          if (GetKeyState(VK_RETURN) < 0) then //если жмем <Enter>
            begin
              if BtnRichFmtDrugNote.Focused //если фокус на кнопке вызова форматирования аннотации
                then
                  BtnRichFmtDrugNoteClick(Self) //жмем ее
                else
                  begin
                    if BtnRichFmtRecipe.Focused //если фокус на кнопке вызова форматирования рецептурной прописи
                      then
                        BtnRichFmtRecipeClick(Self); //жмем ее
                  end;
            end;

          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);// сохраняем изменения в записи
        end
      else
        begin
          if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
          if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then
            begin
              if BtnChoice.Visible //если кнопка выбора не спрятана
                then
                  BtnChoiceClick(Self)
                else
                  BtnCloseClick(Self);
            end;
        end;

    //горячие клавиши для
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('P')) < 0) and BtnPrintRecipe.Visible then BtnPrintRecipeClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('I')) < 0) and BtnDrugInfo.Visible then BtnDrugInfoClick(Self);

    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('N')) < 0) and SpBtnDrugAdd.Enabled then SpBtnDrugAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('E')) < 0) and SpBtnDrugEdit.Enabled then SpBtnDrugEditClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('D')) < 0) and SpBtnDrugDelete.Enabled then SpBtnDrugDeleteClick(Self);
  end;

//чтобы другие формы не реагировали по этому событию
AppEventsDrug.CancelDispatch;
end;

//----------------------------------------------------------------------------
//кнопка редактирования списка докторов
procedure TFrmTblDrugs.BitBtnEdtTblDocClick(Sender: TObject);
begin
//вызываем справочник с докторами
FrmMainProg.ActTblDoctorExecute(Sender);

//заполняем ЛукАпКомбоБокс заново
FillCbBoxDoctorByData(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.CbBoxInfoDocChange(Sender: TObject);
begin
DSetReportDoc.Locate(Trim('SHORT_DOCINFO'),Trim(CbBoxInfoDoc.Text),[]);
VarID_Tbl_Doctor:= DSetReportDoc.FN('ID_DOCTOR').AsInteger;//запоминаем ID доктора в текущем наборе
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.CbBoxPrintFmtChange(Sender: TObject);
begin
case CbBoxPrintFmt.ItemIndex of
  0 : DrugSendTag:= 45015;//формат А5
  1 : DrugSendTag:= 45014;//формат А4
end;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRichFmtRecipeClick(Sender: TObject);
begin
RichEditDrugRecipe.Text:= FrmStatusPat.CallSimpleRichEditor(RichEditDrugRecipe);
RichEditDrugRecipe.Refresh;
end;

//----------------------------------------------------------------------------

procedure TFrmTblDrugs.BtnRichFmtDrugNoteClick(Sender: TObject);
begin
RichEditDrugNote.Text:= FrmStatusPat.CallSimpleRichEditor(RichEditDrugNote);
RichEditDrugNote.Refresh;
end;

//----------------------------------------------------------------------------

end.
