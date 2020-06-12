unit MazProstUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmMazProst = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    DTPickMazProst: TDateTimePicker;
    EdtLeu: TEdit;
    CbBoxLZ: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel11: TPanel;
    Label9: TLabel;
    EdtEr: TEdit;
    Label11: TLabel;
    Label10: TLabel;
    CbBoxGn: TComboBox;
    Label12: TLabel;
    CbBoxTr: TComboBox;
    Label5: TLabel;
    CbBoxBekht: TComboBox;
    Label6: TLabel;
    CbBoxFlora: TComboBox;
    CbBoxSperm: TComboBox;
    NiceSetFrmMazProst: TNiceSettings;
    Label8: TLabel;
    EdtEpit: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdtMFag: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    EdtAmil: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edt_pH: TEdit;
    Label19: TLabel;
    Panel2: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    AppEventsFrmMazPr: TApplicationEvents;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
    
  end;

var
  FrmMazProst: TFrmMazProst;

implementation

uses StatusPatUnit, VarAndrUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMazProst.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//начало и конец выделения
    FullTxt, TmpTxt: String;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//создаем и конфигурируем временный рич-эдит
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmMazProst;
        PlainText:= False;
        Visible:= False;
      end;

    //пишем заголовок
    FullTxt:= 'Мазок СПЖ (' + FormatDateTime('DD.MM.YY', DTPickMazProst.Date) + '): ';
    EndCurPos:= Length(Trim(FullTxt));

    if Trim(EdtLeu.Text) <> '' then
      FullTxt:= FullTxt + 'Leu = ' + WriteSymbolToEndString(EdtLeu.Text,'') + ' в п/зр; ';

    if Trim(EdtEr.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + 'Er = ' + WriteSymbolToEndString(EdtEr.Text,'') + ' в п/зр; ';

    if Trim(EdtEpit.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + 'эпит. ' + WriteSymbolToEndString(EdtEpit.Text,'') + ' в п/зр; ';

    FullTxt:= FullTxt + 'лецит.зерна ' + Trim(CbBoxLZ.Text) + '; ';

    if Trim(EdtMFag.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + 'макрофаги ' + WriteSymbolToEndString(EdtMFag.Text,'') + ' в п/зр; ';

    FullTxt:= FullTxt + 'кристаллы Бетхера ' + TmpTxt + Trim(CbBoxBekht.Text) + '; ';

    if Trim(EdtAmil.Text) <> '' then
      FullTxt:= FullTxt + TmpTxt + 'амил.конкр. ' + WriteSymbolToEndString(EdtAmil.Text,'') + ' в п/зр; ';

    case CbBoxTr.ItemIndex of
    0: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    1: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    2: TmpTxt:= 'обнаружены сомнительные клетки';
    3: TmpTxt:= 'обнаружены подозрительные клетки';
    4: TmpTxt:= 'обнаружены морфологически измененные формы';
    5: TmpTxt:= 'обнаружены разрушенные формы';
    end;{case..of}

    FullTxt:= FullTxt + 'Tr - ' + TmpTxt + '; ';

    case CbBoxGn.ItemIndex of
    0: TmpTxt:= Trim(CbBoxGn.Items[CbBoxGn.ItemIndex]);
    1: TmpTxt:= 'диплококки внутриклеточно';
    2: TmpTxt:= 'диплококки внеклеточно';
    3: TmpTxt:= 'диплококки внутри - и внеклеточно';
    end;{case..of}

    FullTxt:= FullTxt + 'Gn - ' + TmpTxt + '; ';
    FullTxt:= FullTxt + 'флора - ' + Trim(CbBoxFlora.Text) + '; ';

    if Trim(Edt_pH.Text) <> '' then
      FullTxt:= FullTxt + 'pH = ' + Trim(Edt_pH.Text) + '; ';

    if CbBoxSperm.ItemIndex > 0
      then FullTxt:= FullTxt + 'sperm ' + Trim(CbBoxSperm.Text) + '; ';

    FullTxt:= WriteSymbolToEndString(Trim(FullTxt),'.');

    //добавляем текст в рич-эдит
    TmpRE.Lines.Add(FullTxt);

    //форматируем заголовок
    with TmpRE do
      begin
        SelStart:= 0;
        SelLength:= EndCurPos;
        SelAttributes.Style:= [fsUnderline];
        SelStart:= EndCurPos;
        SelAttributes.Assign(DefAttributes);
      end;

    //добавляем в переменную уже "форматированный" текст
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextMazProst;//деформатируем имеющийся для сравнения

    //анализируем имеющийся текст мазка из уретры
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextMazProst:= FullTxt ////смело изменяем "форматную" текстовую переменную
      else//если что-то содержит
        if TextMazProst <> FullTxt //если новый текст отличается от старого
          then
            if Application.MessageBox('Ранее введенные результаты мазка сока простаты' +
            ' сейчас будут заменены на вновь сформированный текст. Разрешить' +
            ' замену?', 'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMazProst:= FullTxt;//заменяем, если ответ "Да"

    //сохраняем переменные
    VarMazProstDate:= DTPickMazProst.Date;
    VarMazProstLeu:= Trim(EdtLeu.Text);
    VarMazProstEr:= Trim(EdtEr.Text);
    VarMazProstGn:= CbBoxGn.ItemIndex;
    VarMazProstTr:= CbBoxTr.ItemIndex;
    VarMazProstFlora:= CbBoxFlora.ItemIndex;
    VarMazProstLZ:= CbBoxLZ.ItemIndex;
    VarMazProstBekht:= CbBoxBekht.ItemIndex;
    VarMazProstSperm:= CbBoxSperm.ItemIndex;
    VarMazProstEpit:= Trim(EdtEpit.Text);
    VarMazProstMFag:= Trim(EdtMFag.Text);
    VarMazProstAmil:= Trim(EdtAmil.Text);
    VarMazProst_pH:= Trim(Edt_pH.Text);
  finally
    TmpRE.Free;
  end;{try..finally}
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.AppEventsFrmMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;
AppEventsFrmMazPr.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormShow(Sender: TObject);
begin
//сопоставляем значения переменных и контроллов

DTPickMazProst.DateTime:= VarMazProstDate;
EdtLeu.Text:= Trim(VarMazProstLeu);
EdtEr.Text:= Trim(VarMazProstEr);
CbBoxGn.ItemIndex:= VarMazProstGn;
CbBoxTr.ItemIndex:= VarMazProstTr;
CbBoxFlora.ItemIndex:= VarMazProstFlora;
CbBoxLZ.ItemIndex:= VarMazProstLZ;
CbBoxBekht.ItemIndex:= VarMazProstBekht;
CbBoxSperm.ItemIndex:= VarMazProstSperm;
EdtEpit.Text:= Trim(VarMazProstEpit);
EdtMFag.Text:= Trim(VarMazProstMFag);
EdtAmil.Text:= Trim(VarMazProstAmil);
Edt_pH.Text:= Trim(VarMazProst_pH);
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormCreate(Sender: TObject);
begin
NiceSetFrmMazProst.RegKey:= NiceSetRegKeyPath;
//загружаем параметры формы
NiceSetFrmMazProst.LoadSettings;
Self.Caption:= 'Мазок СПЖ (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';
FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmMazProst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//выгружаем параметры формы
NiceSetFrmMazProst.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
