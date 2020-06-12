unit MazUrethWomanUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings;

type
  TFrmMazUrethWoman = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    label1: TLabel;
    Label6: TLabel;
    DTPickMazUr: TDateTimePicker;
    EdtLeu: TEdit;
    CbBoxGn: TComboBox;
    CbBoxTr: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel11: TPanel;
    CbBoxFlora: TComboBox;
    Label8: TLabel;
    CbBoxEpit: TComboBox;
    Label9: TLabel;
    CbBoxKeyCell: TComboBox;
    Label10: TLabel;
    CbBoxCand: TComboBox;
    Label7: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    EdtEr: TEdit;
    NiceSetFrmMazUrethWoman: TNiceSettings;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMazUrethWoman: TFrmMazUrethWoman;

implementation

uses StatusPatUnit, VarAndrUnit;


{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//начало и конец выделени€
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
        Parent:= FrmMazUrethWoman;
        PlainText:= False;
        Visible:= False;
      end;

    //пишем заголовок
    FullTxt:= 'ћазок из уретры (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
    EndCurPos:= Length(Trim(FullTxt));

    if Trim(EdtLeu.Text) <> '' then
      FullTxt:= FullTxt + 'Leu = ' + WriteSymbolToEndString(EdtLeu.Text,'') + ' в п/зр, ';

    if Trim(EdtEr.Text) <> '' then
        FullTxt:= FullTxt + TmpTxt + 'Er = ' +
                                    WriteSymbolToEndString(EdtEr.Text,'') + ' в п/зр, ';

    case CbBoxGn.ItemIndex of
    0: TmpTxt:= Trim(CbBoxGn.Items[CbBoxGn.ItemIndex]);
    1: TmpTxt:= 'диплококки внутриклеточно';
    2: TmpTxt:= 'диплококки внеклеточно';
    3: TmpTxt:= 'диплококки внутри - и внеклеточно';
    end;{case..of}

    FullTxt:= FullTxt + 'Gn - ' + TmpTxt + ', ';

    case CbBoxTr.ItemIndex of
    0: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    1: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    2: TmpTxt:= 'обнаружены сомнительные клетки';
    3: TmpTxt:= 'обнаружены подозрительные клетки';
    4: TmpTxt:= 'обнаружены морфологически измененные формы';
    5: TmpTxt:= 'обнаружены разрушенные формы';
    end;{case..of}


    FullTxt:= FullTxt + 'Tr - ' + TmpTxt + ', ';
    FullTxt:= FullTxt + 'флора - ' + Trim(CbBoxFlora.Items[CbBoxFlora.ItemIndex]) + ', ';
    FullTxt:= FullTxt + 'эпит. - ' + Trim(CbBoxEpit.Items[CbBoxEpit.ItemIndex]) + ', ';

    if CbBoxKeyCell.ItemIndex <> 0
      then TmpTxt:= '"ключевые" клетки - обнаружены, '
      else TmpTxt:= '';

    FullTxt:= FullTxt + TmpTxt;

    if CbBoxCand.ItemIndex <> 0
      then TmpTxt:= 'candida ' + Trim(CbBoxCand.Items[CbBoxCand.ItemIndex])+ '.'
      else TmpTxt:= '';

    FullTxt:= FullTxt + TmpTxt;

    FullTxt:= WriteSymbolToEndString(Trim(FullTxt),'.');

    //добавл€ем текст в рич-эдит
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

    //добавл€ем в переменную уже "форматированный" текст
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//чистим ненужный эдит
    TmpRE.Text:= TextMazUr;//деформатируем имеющийс€ дл€ сравнени€

    //анализируем имеющийс€ текст мазка из уретры
    if Trim(TmpRE.Text) = ''
      then //если рич-эдит был пустой
        TextMazUr:= FullTxt //смело измен€ем "форматную" текстовую переменную
      else//если что-то содержит
        if TextMazUr <> FullTxt //если новый текст отличаетс€ от старого
          then
            if Application.MessageBox('–анее введенные результаты мазка из уретры' +
            ' сейчас будут заменены на вновь сформированный текст. –азрешить' +
            ' замену?', '»зменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMazUr:= FullTxt;//замен€ем, если ответ "ƒа"

    //сохран€ем переменные
    VarMazUrethraDate:= DTPickMazUr.Date;
    VarMazUrLeu:= Trim(EdtLeu.Text);
    VarMazUrEr:= Trim(EdtEr.Text);
    VarMazUrGn:= CbBoxGn.ItemIndex;
    VarMazUrTr:= CbBoxTr.ItemIndex;
    VarMazUrFlora:= CbBoxFlora.ItemIndex;
    VarMazUrEpit:= CbBoxEpit.ItemIndex;
    VarMazUrKeyCell:= CbBoxKeyCell.ItemIndex;
    VarMazUrCand:= CbBoxCand.ItemIndex;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.FormCreate(Sender: TObject);
begin
//грузим параметры формы
NiceSetFrmMazUrethWoman.LoadSettings;

DTPickMazUr.DateTime:= VarMazUrethraDate;
EdtLeu.Text:= Trim(VarMazUrLeu);
EdtEr.Text:= Trim(VarMazUrEr);
CbBoxGn.ItemIndex:= VarMazUrGn;
CbBoxTr.ItemIndex:= VarMazUrTr;
CbBoxFlora.ItemIndex:= VarMazUrFlora;
CbBoxEpit.ItemIndex:= VarMazUrEpit;
CbBoxKeyCell.ItemIndex:= VarMazUrKeyCell;
CbBoxCand.ItemIndex:= VarMazUrCand;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//выгружаем параметры формы
NiceSetFrmMazUrethWoman.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
