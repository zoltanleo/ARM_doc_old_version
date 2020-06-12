unit uRichEdtor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, ImgList, PngImageList,
  XPStyleActnCtrls, ActnList, ActnMan, ActnMenus, ToolWin, ActnCtrls, StdActns,
  ExtActns, NiceSettings, StrUtils, Printers, RichEdit, AppEvnts;

type
   TCharacterFormat = (CFM_Superscript, CFM_Subscript, CFM_Normal);

   TPageOffset = record
     mStart, mEnd: Integer;
     rendRect: TRect;
  end;

  TFrmSimpleEditor = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActManager: TActionManager;
    PngImgListActMng: TPngImageList;
    PnlRichEdt: TPanel;
    StatusBarEdit: TStatusBar;
    RichEdtSimple: TRichEdit;
    ActPgStp: TFilePageSetup;
    FileOpenDlg: TOpenDialog;
    FileSaveDlg: TSaveDialog;
    FontDlg: TFontDialog;
    ColorDlg: TColorDialog;
    PrnDlg: TPrintDialog;
    FindDlg: TFindDialog;
    PgStpDlg: TPageSetupDialog;
    ActCutToClipbrd: TEditCut;
    ActCopyToClipbrd: TEditCopy;
    ActPasteToClipbrd: TEditPaste;
    ActSelectAll: TEditSelectAll;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    ActFileNew: TAction;
    ActCloseFileWithOutSave: TAction;
    ActCloseFileWithSave: TAction;
    ActPrint: TAction;
    ReplaceDlg: TReplaceDialog;
    ActFontChoice: TAction;
    ActFontColor: TAction;
    ActFontBackgrnd: TAction;
    ActFontForegrnd: TAction;
    ActInsertSymbol: TAction;
    ActFontSizeInc: TAction;
    ActFontSizeDec: TAction;
    ActCapit: TAction;
    ActDecapit: TAction;
    ActDivString: TAction;
    PnlToolBarMain: TPanel;
    PnlToolBarFile: TPanel;
    PnlToolBarCbBox: TPanel;
    ActionToolBar1: TActionToolBar;
    CbBoxFontName: TComboBox;
    CbBoxFontSize: TComboBox;
    PnlToolBarFont: TPanel;
    ActionToolBar2: TActionToolBar;
    NiceSetRichEdtSimpl: TNiceSettings;
    ActFileOpen: TAction;
    ActSaveAs: TAction;
    ActSearchText: TAction;
    ActReplaceText: TAction;
    ActChrSubScript: TAction;
    ActChrSupraScript: TAction;
    ActUndo: TAction;
    ActRedo: TAction;
    AppEventsRichEditSimple: TApplicationEvents;
    ActLineSpacing_1: TAction;
    ActLineSpacing_2: TAction;
    ActLineSpacing_3: TAction;
    procedure ActPrintExecute(Sender: TObject);
    procedure ActFileNewExecute(Sender: TObject);
    procedure CbBoxFontNameDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CbBoxFontNameMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActFileOpenExecute(Sender: TObject);
    procedure ActSaveAsExecute(Sender: TObject);
    procedure ActSearchTextExecute(Sender: TObject);
    procedure FindDlgFind(Sender: TObject);
    procedure ReplaceDlgReplace(Sender: TObject);
    procedure ActReplaceTextExecute(Sender: TObject);
    procedure ReplaceDlgFind(Sender: TObject);
    procedure ReplaceDlgClose(Sender: TObject);
    procedure ActDivStringExecute(Sender: TObject);
    procedure ActSelectAllExecute(Sender: TObject);
    procedure ActFontChoiceExecute(Sender: TObject);
    procedure RichEdtSimpleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbBoxFontNameChange(Sender: TObject);
    procedure RichEdtSimpleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CbBoxFontSizeKeyPress(Sender: TObject; var Key: Char);
    procedure ActFontColorExecute(Sender: TObject);
    procedure ActFontBackgrndExecute(Sender: TObject);
    procedure ActFontForegrndExecute(Sender: TObject);
    procedure ActFontSizeIncExecute(Sender: TObject);
    procedure ActFontSizeDecExecute(Sender: TObject);
    procedure ActCapitExecute(Sender: TObject);
    procedure ActDecapitExecute(Sender: TObject);
    procedure ActChrSupraScriptExecute(Sender: TObject);
    procedure ActChrSubScriptExecute(Sender: TObject);
    procedure ActInsertSymbolExecute(Sender: TObject);
    procedure ActUndoExecute(Sender: TObject);
    procedure ActRedoExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActCloseFileWithSaveExecute(Sender: TObject);
    procedure ActCloseFileWithOutSaveExecute(Sender: TObject);
    procedure RichEdtSimpleKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RichEdtSimpleMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure AppEventsRichEditSimpleHint(Sender: TObject);//отлавливаем хинты
    procedure AppEventsRichEditSimpleShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ActLineSpacing_1Execute(Sender: TObject);
    procedure ActLineSpacing_2Execute(Sender: TObject);
    procedure ActLineSpacing_3Execute(Sender: TObject);
    procedure ActCutToClipbrdExecute(Sender: TObject);
    procedure ActCopyToClipbrdExecute(Sender: TObject);
    procedure ActPasteToClipbrdExecute(Sender: TObject);
    procedure RichEditBold1Execute(Sender: TObject);
    procedure RichEditItalic1Execute(Sender: TObject);
    procedure RichEditUnderline1Execute(Sender: TObject);
    procedure RichEditStrikeOut1Execute(Sender: TObject);
    procedure RichEditAlignLeft1Execute(Sender: TObject);
    procedure RichEditAlignCenter1Execute(Sender: TObject);
    procedure RichEditAlignRight1Execute(Sender: TObject);
    procedure CbBoxFontSizeSelect(Sender: TObject);
  private
    { Private declarations }
    procedure GetPosRichCaret(Sender: TObject);
    procedure PrintCommon(Sender: TRichEdit);
    procedure PrintSelectedText(Sender: TRichEdit);
    procedure SetChrFormat(Sender: TRichEdit; const ChrFmt: TCharacterFormat);
    procedure SetLineSpacing(ARichEdit: TRichEdit; lineSpacing: Byte);
    procedure RefreshUndoRedoBtn(Sender: TObject);
    procedure AddAction(Sender: TObject);
    procedure UndoRedoInit(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmSimpleEditor: TFrmSimpleEditor;

implementation

uses
  MultipleUndo //подключаем модуль для множественного Undo/Redo
, VarAndrUnit //для самостоятельной отладки можно закомментировать
  , DMFIBUnit, MainAndrUnit;

var RepStPos, //внутренняя переменная для отслеживания позиции поиска
    UndoCounter, RedoCounter : Integer; //счетчики Undo/Redo
    FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActCapitExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        begin
          AddAction(Sender);
          SelText:= AnsiUpperCase(SelText);
        end
      else
        Exit;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActChrSubScriptExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then
    begin
      AddAction(Sender);
      RichEdtSimple.SelAttributes.Size:= RichEdtSimple.SelAttributes.Size * 3 div 4;
      SetChrFormat(RichEdtSimple,CFM_Subscript);
    end
  else
    Exit;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActChrSupraScriptExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then
    begin
      AddAction(Sender);
      RichEdtSimple.SelAttributes.Size:= RichEdtSimple.SelAttributes.Size * 3 div 4;
      SetChrFormat(RichEdtSimple,CFM_Superscript);
    end
  else
    Exit;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActCloseFileWithOutSaveExecute(Sender: TObject);
begin
RichEdtSimple.Modified:= False;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActCloseFileWithSaveExecute(Sender: TObject);
begin
SimpleREStr:= Trim(GetRTFText(RichEdtSimple));
RichEdtSimple.Modified:= False;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActCopyToClipbrdExecute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.CopyToClipboard;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActCutToClipbrdExecute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.CutToClipboard;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActDecapitExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        begin
          AddAction(Sender);
          SelText:= AnsiLowerCase(SelText);
        end
      else
        Exit;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActDivStringExecute(Sender: TObject);
begin
RichEdtSimple.WordWrap:= ActDivString.Checked;//включаем-отключаем перенос строки
GetPosRichCaret(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFileNewExecute(Sender: TObject);
var NumID: Integer;
begin
if RichEdtSimple.Modified
  then
    begin
      NumID:= Application.MessageBox('Текст в редакторе был изменен. Хотите сохранить изменения?', 'Сохранение данных',
                MB_ICONINFORMATION + MB_YESNOCANCEL);
        case NumID of
           IDYES: ActSaveAsExecute(Sender);//сначала сохраняем файл
        IDCANCEL: Exit;//молча уходим из процедуры
        end;
    end;

//оставшиеся два варианта (IDYES и IDNO) в лююбом случае предполагают "обнуление" рич-эдита    
with RichEdtSimple do
  begin
    Modified:= False;
    Clear;
    SelStart:= 0;
    SelAttributes.Assign(DefAttributes);

    //устанавливаем начальные параметры запоминаемых действий в буфере
    UndoRedoInit(Sender);
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFileOpenExecute(Sender: TObject);
var NumID: Integer;
begin
if RichEdtSimple.Modified
  then
    begin
      NumID:= Application.MessageBox('Текст в редакторе был изменен. Хотите сохранить изменения?', 'Сохранение данных',
                MB_ICONINFORMATION + MB_YESNOCANCEL);
        case NumID of
           IDYES: ActSaveAsExecute(Sender);//сначала сохраняем файл
        IDCANCEL: Exit;//молча уходим из процедуры
        end;
    end;

//оставшиеся два варианта (IDYES и IDNO) в лююбом случае предполагают открытие диалога
if FileOpenDlg.Execute then
  begin
   RichEdtSimple.Lines.LoadFromFile(FileOpenDlg.FileName);
   UndoRedoInit(Sender);//устанавливаем начальные параметры запоминаемых действий в буфере
  end;          
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontBackgrndExecute(Sender: TObject);
var CurRow: Integer;//номер текущей строки
    Format: CHARFORMAT2;
begin
if ColorDlg.Execute then
  begin
    AddAction(Sender);//запоминаем действие
    //получаем номер текущей строки
    CurRow:= SendMessage(RichEdtSimple.Handle, EM_LINEFROMCHAR, RichEdtSimple.SelStart,0);
      with RichEdtSimple do
        begin
          //выделяем всю строку
          SelStart := SendMessage(Handle, EM_LINEINDEX,CurRow, 0);
          SelLength := Length(Lines[CurRow]);

          //назначаем фон выделению
          FillChar(Format, SizeOf(Format), 0);
          Format.cbSize := SizeOf(Format);
          Format.dwMask := CFM_BACKCOLOR;
          Format.crBackColor := ColorDlg.Color;
          Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
          SelLength:= 0;//снимаем выделение и смотрим результат
        end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontChoiceExecute(Sender: TObject);
begin
if FontDlg.Execute then
  begin
    AddAction(Sender);//запоминаем действие
    with RichEdtSimple.SelAttributes do
      begin
        Name:= FontDlg.Font.Name;
        Color:= FontDlg.Font.Color;
        Size:= FontDlg.Font.Size;
        Style:= FontDlg.Font.Style;
        CbBoxFontName.ItemIndex:= CbBoxFontName.Items.IndexOf(Name);
        CbBoxFontSize.Text:= IntToStr(Size);
      end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontColorExecute(Sender: TObject);
begin
if ColorDlg.Execute then
  begin
    AddAction(Sender);//запоминаем действие
    RichEdtSimple.SelAttributes.Color:= ColorDlg.Color;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontForegrndExecute(Sender: TObject);//меняем фон выделенного текста
var Format: CHARFORMAT2;
begin
if ColorDlg.Execute then
  begin
    AddAction(Sender);//запоминаем действие
    with Format do
      begin
        FillChar(Format, SizeOf(Format), 0);
        cbSize := SizeOf(Format);
        dwMask := CFM_BACKCOLOR;
        crBackColor := ColorDlg.Color;
        RichEdtSimple.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
      end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontSizeDecExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        begin
          if SelAttributes.Size > 6
            then
              begin
                AddAction(Sender);//запоминаем действие
                SelAttributes.Size:= SelAttributes.Size - 1;
                CbBoxFontSize.Text:= IntToStr(SelAttributes.Size);
              end
            else
              begin
                Application.MessageBox('Достигнут нижний предел размера текста в 6 пунктов',
                                                        'Невыполнимая операция с текстом',MB_ICONINFORMATION);
                Abort;
              end;
        end
      else
        Exit;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActFontSizeIncExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        begin
          if SelAttributes.Size < 72
            then
              begin
                AddAction(Sender);//запоминаем действие
                SelAttributes.Size:= SelAttributes.Size + 1;
                CbBoxFontSize.Text:= IntToStr(SelAttributes.Size);
              end                                                 
            else
              begin
                Application.MessageBox('Достигнут верхний предел размера текста в 72 пункта',
                                                              'Невыполнимая операция с текстом', MB_ICONINFORMATION);
                Abort;
              end;

        end
      else
        Exit;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActInsertSymbolExecute(Sender: TObject);
begin
WinExec('charmap', SW_RESTORE);
if RichEdtSimple.CanFocus then RichEdtSimple.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActLineSpacing_1Execute(Sender: TObject);
begin
AddAction(Sender);//запоминаем действие
SetLineSpacing(RichEdtSimple, 3);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActLineSpacing_2Execute(Sender: TObject);
begin
AddAction(Sender);//запоминаем действие
SetLineSpacing(RichEdtSimple, 1);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActLineSpacing_3Execute(Sender: TObject);
begin
AddAction(Sender);//запоминаем действие
SetLineSpacing(RichEdtSimple, 2);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActPasteToClipbrdExecute(Sender: TObject);
begin
AddAction(Sender);//запоминаем действие
RichEdtSimple.PasteFromClipboard;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActPrintExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then // фрагмент выделен
    begin
      PrnDlg.Options:= PrnDlg.Options + [poSelection];//включаем опцию в диалоге
      PrnDlg.PrintRange:= prSelection;//переводим фокус туда
    end
  else//нет выделения
    begin
      PrnDlg.Options:= PrnDlg.Options - [poSelection];
      PrnDlg.PrintRange:= prAllPages;
    end;

if PgStpDlg.Execute then
  if PrnDlg.Execute then
    begin
      if PrnDlg.PrintRange = prAllPages //если печатаем все страницы
        then
          PrintCommon(RichEdtSimple)
        else
          if PrnDlg.PrintRange = prSelection //если печатаем выделенный фрагмент
            then
              PrintSelectedText(RichEdtSimple)
            else
              Exit;  
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActRedoExecute(Sender: TObject);
begin
MultipleUndo.LoadFromUndoBuffer(RichEdtSimple, False);
UndoCounter:= UndoCounter + 1;//увеличиваем счетчик
RefreshUndoRedoBtn(Sender);//перерисовываем кнопки
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActReplaceTextExecute(Sender: TObject);
begin
ReplaceDlg.Execute;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActSaveAsExecute(Sender: TObject);
var IntPos: Integer;
    FName: string;
    f: TextFile;
begin
if FileSaveDlg.Execute then
  begin
    IntPos:= Pos('.',Trim(FileSaveDlg.FileName));

    if IntPos = 0 //если нет точки в имени файла
      then
        FName:= Trim(FileSaveDlg.FileName)
      else
        FName:= LeftStr(Trim(FileSaveDlg.FileName),IntPos - 1);

    case FileSaveDlg.FilterIndex of
    1: begin
        if Application.MessageBox('Вы пытаетесь сохранить данные в простом текстовом формате, что неизбежно приведет к '
                      + 'потере форматирования текста (начертания шрифтов, выравнивания, выделения и проч.) Продолжить?',
                        'Возможная потеря данных', MB_ICONINFORMATION + MB_YESNO) = IDYes then
          begin
            FName:= FName + '.txt';
            AssignFile(f,FName);//присваяем переменной имя файла
            Rewrite(f);//создаем текстовый файл
            Writeln(f,Trim(RichEdtSimple.Text));//пишем туда текст
            CloseFile(f);//закрываем файл
          end;                                        
       end;

    2: begin
        FName:= FName + '.rtf';
        RichEdtSimple.Lines.SaveToFile(FName);
       end;
    end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActSearchTextExecute(Sender: TObject);
begin
FindDlg.Position:= Point(Self.Left + Self.Width div 4, Self.Top + Self.Height div 4);
FindDlg.Execute;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActSelectAllExecute(Sender: TObject);
begin
RichEdtSimple.SelectAll;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ActUndoExecute(Sender: TObject);
begin
MultipleUndo.LoadFromUndoBuffer(RichEdtSimple, True);//грузим предыдущее состояние

UndoCounter:= UndoCounter - 1;//уменьшаем счетчик
RefreshUndoRedoBtn(Sender);//перерисовываем кнопки
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.AddAction(Sender: TObject);
begin
MultipleUndo.SaveToUndoBuffer(RichEdtSimple);
UndoCounter:= UndoCounter + 1;//увеличиваем счетчик действий
if UndoCounter > RedoCounter
  then
    RedoCounter:= UndoCounter;

RefreshUndoRedoBtn(Sender);//перерисовываем кнопки
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.AppEventsRichEditSimpleHint(Sender: TObject);
begin
StatusBarEdit.Panels[2].Text := '   ' + Application.Hint;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.AppEventsRichEditSimpleShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then Close;
  end;
AppEventsRichEditSimple.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.CbBoxFontNameChange(Sender: TObject);
begin
with RichEdtSimple do
  begin
    AddAction(Sender);
    SelAttributes.Name:= CbBoxFontName.Items[CbBoxFontName.ItemIndex];
    if CanFocus then SetFocus;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.CbBoxFontNameDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  with CbBoxFontName.Canvas do
    begin
//      FillRect(rect);
//      Font.Name := CbBoxFontName.Items[index];
//      Font.Size := 0; // Размер шрифта – по умолчанию
//      TextOut(Rect.Left + 1, Rect.Top + 1, CbBoxFontName.Items[index]);
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.CbBoxFontNameMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
  with CbBoxFontName.Canvas do
    begin
//      Font.Name := CbBoxFontName.Items[index];
//      Font.Size := 0; // Размер шрифта – по умолчанию
//      Height := TextHeight(CbBoxFontName.Items[index]) + 2;
//      Height := TextHeight('Wg') - 1;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.CbBoxFontSizeKeyPress(Sender: TObject; var Key: Char);
begin
//не позволим вводить что-либо, кроме цифр
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #46) and (Key <> #13) then
  begin
    Application.MessageBox('Вы можете вводить только цифры от 0 до 9 !','Некорректные данные', MB_ICONINFORMATION);
    Key := #0;
  end;

if (Key = #13) then CbBoxFontSizeSelect(Sender);
//  begin
//    if RichEdtSimple.SelLength > 0
//      then
//        AddAction(Sender);
//    RichEdtSimple.SelAttributes.Size:= StrToInt(CbBoxFontSize.Text);
//    if RichEdtSimple.CanFocus then  RichEdtSimple.SetFocus;
//  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.CbBoxFontSizeSelect(Sender: TObject);
begin
if RichEdtSimple.SelLength > 0
  then
    AddAction(Sender);
RichEdtSimple.SelAttributes.Size:= StrToInt(CbBoxFontSize.Text);
if RichEdtSimple.CanFocus then  RichEdtSimple.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.FindDlgFind(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
    mySearchTypes : TSearchTypes;
begin
  with RichEdtSimple do
    begin
      if frMatchCase in FindDlg.Options then
         mySearchTypes := mySearchTypes + [stMatchCase];

      if frWholeWord in FindDlg.Options then
         mySearchTypes := mySearchTypes + [stWholeWord];

      if SelLength <> 0
        then
          StartPos := SelStart + SelLength
        else
          StartPos := 0;

      ToEnd := Length(Text) - StartPos;
      FoundAt := FindText(FindDlg.FindText, StartPos, ToEnd, mySearchTypes);

      if FoundAt <> -1 then
        begin
          SetFocus;
          SelStart := FoundAt;
          SelLength := Length(FindDlg.FindText);
        end
      else
        Beep;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//запоминаем параметры
NiceSetRichEdtSimpl.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var NumID: Integer;
begin
CanClose:= True;//разрешим окну закрыться по дефолту

if RichEdtSimple.Modified then
  begin
    NumID:= Application.MessageBox('Текст в редакторе был изменен. Хотите сохранить изменения?', 'Сохранение данных',
              MB_ICONINFORMATION + MB_YESNOCANCEL);
      case NumID of
        IDYes:
                SimpleREStr:= Trim(GetRTFText(RichEdtSimple))
        ;
         IDNo:
                //SimpleREStr:= SimpleREStr//это "ненужная" заглушка от "дырок" в коде при отладке
         ;
        else
          CanClose:= False;
      end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.FormCreate(Sender: TObject);
begin
//====================================================================
// код используется в проекте, при самостоятельной отладке можно закомментрировать
RichEdtSimple.PlainText:= False;
RichEdtSimple.Clear;
RichEdtSimple.Text:= SimpleREStr;
//====================================================================

//===================  для отладки в тестовом проекте ==================
//  try
//    RichEdtSimple.Lines.LoadFromFile('longstrings.txt');
//  except
//    //
//  end;
//===================  для отладки в тестовом проекте ==================

RichEdtSimple.Modified:= False;
CbBoxFontName.Items:= Screen.Fonts;//получаем список установленных шрифтов
NiceSetRichEdtSimpl.RegKey:= NiceSetRegKeyPath;
NiceSetRichEdtSimpl.LoadSettings;//загружаем настройки
ActDivStringExecute(Sender);//проверяем автоматический перенос строк
RepStPos:= 0;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Редактирование данных (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Редактирование данных (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//устанавливаем некоторые значения по дефолту
with RichEdtSimple do
  begin
    SelStart:= 0;
    SelAttributes.Name:= CbBoxFontName.Items[CbBoxFontName.ItemIndex];//последний примененный шрифт
    SelAttributes.Size:= StrToInt(CbBoxFontSize.Text);//последний примененный размер шрифта
  end;

FocusFlag:= True;

//устанавливаем начальные параметры запоминаемых действий в буфере
UndoRedoInit(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.FormResize(Sender: TObject);
begin
GetPosRichCaret(Sender);
RichEdtSimple.Refresh;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.GetPosRichCaret(Sender: TObject);
var
  X, Y: Integer;
begin
X:= RichEdtSimple.CaretPos.X + 1;
Y:= RichEdtSimple.CaretPos.Y + 1;

with StatusBarEdit do
  begin
    Panels[0].Text:= 'cтр ' + IntToStr(Y) + ' : поз ' + IntToStr(X);

    if RichEdtSimple.Modified
      then
        Panels[1].Text:= 'ИЗМЕН'
      else
        Panels[1].Text:= 'НЕ ИЗМЕН';
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.PrintCommon(Sender: TRichEdit);//печать всего текста
const MargOffset: Integer = 2900;
var wPage, hPage, xPPI, yPPI, wTwips, hTwips,
             LastOffset, CurPage, PgCount,
                            xOffset, yOffset: integer;
    PgRect, RendRect: TRect;
    PgOffset: TPageOffset;
    FRange: TFormatRange;
    FPageOffsets: array of TPageOffset;
//    TextLenEx: TGetTextLengthEx;
    FirstPg: boolean;
begin
  //получаем размер бумаги из устройства принтера
  wPage:= GetDeviceCaps(Printer.Handle, PHYSICALWIDTH);
  hPage:= GetDeviceCaps(Printer.Handle, PHYSICALHEIGHT);

  //получаем разрешение принтера в дюймах
  xPPI:= GetDeviceCaps(Printer.Handle, LOGPIXELSX);
  yPPI:= GetDeviceCaps(Printer.Handle, LOGPIXELSY);

  //конвертируем размер бумаги из пикселов в твипы (типографская единица измерения,
  //равная одной двадцатой пункта (point, отсюда и название: Twentieth of a Point).)
  //Твип равен 1/567 сантиметра, или 1/1440 дюйма
  //Соотношение размеров твипа и пиксела изменяется в зависимости от разрешения экрана.
  //Как перевести размер в дюймах в размер в твипах: необходимо разделить ширину и высоту
  //изображения на разрешение. Затем полученные значения нужно умножить на 1440.
  //Например, мы имеем рисунок размером 100 x 100 с разрешением 96 точек на дюйм.
  //Тогда его размер в твипах 100/96*1440 x 100/96*1440, т.е. 1500x1500.

  wTwips:= MulDiv(wPage, 1440, xPPI);
  hTwips:= MulDiv(hPage, 1440, yPPI);

  //сохраняем размер бумаги в твипах
  with PgRect do
    begin
      Left:= 0;
      Top:= 0;
      Right:= wTwips;
      Bottom:= hTwips
    end;

  //вычисляем размер рассчитанного (для заполнения печатаемым текстом) прямоугольника в твипах
  //т.к. два дюймовых поля (левое и верхнее) неизменны (можно настроить через параметры страницы),
  //то другие два (правое и нижнее) уменьшаем в 4 раза при переводе из дюймов в твипы
  with RendRect do
    begin //отступы тупо подобраны эмпирическим путем, без какого-либо научного обоснования ;-)
      Left:= PgStpDlg.MarginLeft * 11 div 19 - MargOffset + 20;
      Top:= PgStpDlg.MarginTop * 11 div 20 - MargOffset + 20;
      Right:= PgRect.Right - (1440 * 4) + MargOffset * 12 div 11 - PgStpDlg.MarginRight * 3 div 5;
      Bottom:= PgRect.Bottom - (1440 * 4) +  MargOffset * 9 div 10 - PgStpDlg.MarginBottom * 7 div 20;
    end;

  //устанавливаем начальную позицию печати на странице
  PgOffset.mStart := 0;

  //определяем и инициализируем структуру типа TFormatRange. Передаем ее в ричэдит
  //для определения количества текста между позицией курсора на странице chrg.cpMin
  //и chrg.cpMax. Также указываем контекст устройства печати (принтер) и объем
  //печатаемого текста (между указанными выше границами)
  with FRange do
    begin
       hdc:= Printer.Handle;
       hdcTarget:= Printer.Handle;
       chrg.cpMin:= PgOffset.mStart;
       chrg.cpMax:= -1;
    end;

  //чтобы определить момент, когда принтер печатает последнюю страницу, необходимо
  //заранее объем текста в ричэдит. Способ определения зависит от версии библиотеки,
  //используемой RichEdit (riched32.dll или riched20.dll). Здесь будем считать, что
  //RichEditVersion < 2

//  if RichEditVersion >= 2
//    then
//      begin
//        with TextLenEx do
//          begin
//             flags := GTL_DEFAULT;
//             codepage := CP_ACP;
//          end;
//        LastOffset := SendMessage(TRichEdit(Sender).Handle, EM_GETTEXTLENGTHEX, wParam(@TextLenEx), 0);
//      end
//    else
      LastOffset := SendMessage(TRichEdit(Sender).Handle, WM_GETTEXTLENGTH, 0, 0);

  //на всякий пожарный очистим формат буфера
  SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);

  //принтеры часто не могут напечать у самого края страницы, иными словами, существует
  //минимальный отступ для каждого края страницы. При отправке печати на принтер
  //TRichEdit высчитывает верхне-левый угол страницы, как непечатный. Поскольку у нас
  //уже определены два края страницы, мы предположительно уже находимся внутри
  //печатаемой области
  SaveDC(FRange.hdc);
  SetMapMode(FRange.hdc, MM_TEXT);
  xOffset := GetDeviceCaps(Printer.Handle, PHYSICALOFFSETX);
  yOffset := GetDeviceCaps(Printer.Handle, PHYSICALOFFSETY);
  xOffset := xOffset + MulDiv(1440 + 1440, xPPI, 1440);
  yOffset := yOffset + MulDiv(1440 + 1440, yPPI, 1440);
  SetViewportOrgEx(FRange.hdc, xOffset, yOffset, nil);

  //строим таблицы с записями печатаемых страниц, по одной записи для каждой печатаемой страницы
  while ((FRange.chrg.cpMin <> -1) and (FRange.chrg.cpMin < LastOffset)) do
    begin
      FRange.rc := RendRect;
      FRange.rcPage := PgRect;
      PgOffset.mStart := FRange.chrg.cpMin;
      FRange.chrg.cpMin := SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, Longint(@FRange));
      PgOffset.mEnd := FRange.chrg.cpMin - 1;
      PgOffset.RendRect := FRange.rc;

      if High(FPageOffsets) = -1
        then
          SetLength(FPageOffsets, 1)
        else
          SetLength(FPageOffsets, Length(FPageOffsets) + 1);
      FPageOffsets[High(FPageOffsets)] := PgOffset
    end;

    PgCount := Length(FPageOffsets);
//    ShowMessage(Format('Будет напечатано %d страниц документа', [PgCount]));
    SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);
    RestoreDC(FRange.hdc, - 1);

    //все почти готово к печати на самом деле
    Printer.BeginDoc;
    FRange.hdc := Printer.Handle;
    FRange.hdcTarget := Printer.Handle;
    SaveDC(FRange.hdc);
    SetViewportOrgEx(FRange.hdc, xOffset, yOffset, nil);

    //теперь печатаем
    FirstPg := True;

    //в этом месте выбираем диапазон печатаемых страниц
    //тут значения тестовые
    CurPage := 0;  //Print from the first page

    while (CurPage < PgCount) do
      begin
        if FirstPg
          then
            FirstPg := False
          else
            Printer.NewPage;

        SetViewportOrgEx(FRange.hdc, xOffset, yOffset, nil);
        FRange.rc := FPageOffsets[CurPage].RendRect;
        FRange.rcPage := PgRect;
        FRange.chrg.cpMin := FPageOffsets[CurPage].mStart;
        FRange.chrg.cpMax := FPageOffsets[CurPage].mEnd;
        FRange.chrg.cpMin := SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 1, Longint(@FRange));
        Inc(CurPage);
      end;

    //восстанавливаем HDC принтера в ОС и заканчиваем процедуру печати этого документа
    RestoreDC(FRange.hdc, - 1);
    Printer.EndDoc;

    //форматируем буфер TRichEdit и очищаем таблицы с записями страниц
    FRange.chrg.cpMin := SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);
    Finalize(FPageOffsets);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.PrintSelectedText(Sender: TRichEdit);//печать выделенного текста
const MargOffset: Integer = 1400;
var PrintArea, RichEdit_OutputArea: TRect;
    PrintResX, PrintResY, NextChar: Integer;
    fmtRange: TFormatRange;
    S: string;
begin
  Printer.BeginDoc;
  try
    with Printer.Canvas do
      begin
        PrintResX:= GetDeviceCaps(Handle, LOGPIXELSX);
        PrintResY:= GetDeviceCaps(Handle, LOGPIXELSY);
        PrintArea:= Rect(
        PrintResX,
        PrintResY,
        Printer.PageWidth - PrintResX,
        Printer.PageHeight - PrintResY
        );

        // Определяем прямоугольник для текста RichEdit'а. Высота устанавливается
        // максимальной. Также необходимо конвертировать разрешение экрана в твипы
        //(печатная единица): 1 твип = 1/1440 дюйма или 1/20 точки
        RichEdit_OutputArea := Rect(
        PrintArea.Left * 1440 div PrintResX + PgStpDlg.MarginLeft div 2 - MargOffset - 20,
        PrintArea.Top * 1440 div PrintResY + PgStpDlg.MarginTop div 2 - MargOffset - 20,
        PrintArea.Right * 1440 div PrintResX - PgStpDlg.MarginRight div 2 + MargOffset,
        PrintArea.Bottom * 1440 div PrintResY - PgStpDlg.MarginBottom div 2 + MargOffset
        );

        // Сообщим ричэдиту, чтобы он переформатировал текст для принтера.
        // Сначала подготовим данные для сообщения
        fmtRange.hDC := Handle;            // printer handle
        fmtRange.hdcTarget := Handle;     // ditto
        fmtRange.rc := RichEdit_OutputArea;
        fmtRange.rcPage := Rect(0,0,Printer.PageWidth * 1440 div PrintResX, Printer.PageHeight * 1440 div PrintResY);

        //установим границы печати выделенных символов
        fmtRange.chrg.cpMin := TRichEdit(Sender).selstart;
        fmtRange.chrg.cpMax := TRichEdit(Sender).selStart + TRichEdit(Sender).sellength - 1;

        //удалим непечатаемые символы в конце выделения
        // failing to do so screws up the repeat loop below.
        S := TRichEdit(Sender).SelText;

        while (fmtRange.chrg.cpMax > 0) and (S[fmtRange.chrg.cpMax] <= ' ') do
          Dec(fmtRange.chrg.cpMax);

        repeat
          // Render the text
          NextChar := TRichEdit(Sender).Perform(EM_FORMATRANGE, 1, Longint(@fmtRange));

          if NextChar < fmtRange.chrg.cpMax then
            begin
              // more text to print
              printer.newPage;
              fmtRange.chrg.cpMin := NextChar;
            end; { If }
        until NextChar >= fmtRange.chrg.cpMax;

        // Free cached information
        TRichEdit(Sender).Perform(EM_FORMATRANGE, 0, 0);
      end;
  finally
    Printer.EndDoc;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RefreshUndoRedoBtn(Sender: TObject);
begin
ActUndo.Enabled:= (UndoCounter > 0);
ActRedo.Enabled:= ((RedoCounter - UndoCounter) > 0);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ReplaceDlgClose(Sender: TObject);
begin
RepStPos:= 0;//обнулим переменную, чтобы в след.раз поиск начать сначала;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ReplaceDlgFind(Sender: TObject);
var FoundAt, StartPos, ToEnd: Integer;
    mySearchTypes : TSearchTypes;
begin
  with RichEdtSimple do
    begin
      if frMatchCase in ReplaceDlg.Options then
         mySearchTypes := mySearchTypes + [stMatchCase];

      if frWholeWord in ReplaceDlg.Options then
         mySearchTypes := mySearchTypes + [stWholeWord];

      if SelLength <> 0 then
        StartPos := SelStart + SelLength
      else
        StartPos := 0;

      ToEnd := Length(Text) - StartPos;
      FoundAt := FindText(ReplaceDlg.FindText, StartPos, ToEnd, mySearchTypes);
      if FoundAt <> -1 then
        begin
          SetFocus;
          SelStart := FoundAt;
          SelLength := Length(ReplaceDlg.FindText);
        end
      else
        Beep;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.ReplaceDlgReplace(Sender: TObject);
var FoundAt, StartPos, ToEnd: Integer;
    mySearchTypes : TSearchTypes;
begin
  with ReplaceDlg do
    begin
      if Trim(ReplaceText) = '' then
        begin
          Application.MessageBox('Вы не ввели заменяющий текст !','Внимание',MB_ICONINFORMATION);
          Abort;
        end;

      if frMatchCase in Options then
        mySearchTypes:= mySearchTypes + [stMatchCase];

      if frWholeWord in Options then
        mySearchTypes:= mySearchTypes + [stWholeWord];

      with RichEdtSimple do
         begin
          //если нажата кнопка пошаговой замены
          if frReplace in Options then
            begin
              //StartPos:= RepStPos;//начало поиска
              ToEnd:= Length(Trim(Text)) - RepStPos;//длина искомого текста
              FoundAt := FindText(ReplaceDlg.FindText, RepStPos, ToEnd, mySearchTypes);

              if FoundAt <> -1
                then
                  begin
                    //запоминаем производимое действие
                    AddAction(Sender);

                    SetFocus;
                    SelStart := FoundAt;
                    SelLength := Length(ReplaceDlg.FindText);
                    SelText:= ReplaceText;
                    RepStPos:= FoundAt + Length(ReplaceDlg.ReplaceText);
                  end
                else
                  Application.MessageBox(PChar('Текст "' + ReplaceDlg.FindText + '" не найден.'),
                                                          'Поиск завершен', MB_ICONINFORMATION);
            end;

          //если нажата кнопка тотальной замены
          if frReplaceAll in Options then
            begin
              StartPos:= 0;
              ToEnd:= Length(Text);//длина искомого текста
              FoundAt := FindText(ReplaceDlg.FindText, StartPos, ToEnd, mySearchTypes);//проверяем факт наличия такого вхождения строк

              if FoundAt <> -1
                then
                  begin
                    //запоминаем производимое действие
                    AddAction(Sender);

                    if frMatchCase in Options
                      then //для регистрозависимой замены
                        Text:= AnsiReplaceStr(Text,ReplaceDlg.FindText,ReplaceDlg.ReplaceText)
                      else //для регистроНЕзависимой замены
                        Text:= AnsiReplaceText(Text,ReplaceDlg.FindText,ReplaceDlg.ReplaceText);
                  end
                else
                  Application.MessageBox(PChar('Текст "' + ReplaceDlg.FindText + '" не найден.'),
                                                          'Поиск завершен', MB_ICONINFORMATION);
            end;
         end;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditAlignCenter1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.Paragraph.Alignment:= taCenter;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditAlignLeft1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.Paragraph.Alignment:= taLeftJustify;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditAlignRight1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.Paragraph.Alignment:= taRightJustify;
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditBold1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.SelAttributes.Style:= [fsBold];
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditItalic1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.SelAttributes.Style:= [fsItalic];
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditStrikeOut1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.SelAttributes.Style:= [fsStrikeOut];
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEditUnderline1Execute(Sender: TObject);
begin
AddAction(Sender);
RichEdtSimple.SelAttributes.Style:= [fsUnderline];
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEdtSimpleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
GetPosRichCaret(Sender);

//запоминаем действия при перемещении курсора
if (Key = VK_SPACE) or (Key = VK_RETURN) or (Key = VK_BACK) or (Key = VK_CLEAR) or (Key = VK_DELETE)
  then
    AddAction(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEdtSimpleKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
GetPosRichCaret(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEdtSimpleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CbBoxFontName.ItemIndex:= CbBoxFontName.Items.IndexOf(RichEdtSimple.SelAttributes.Name);
CbBoxFontSize.Text:= IntToStr(RichEdtSimple.SelAttributes.Size);
GetPosRichCaret(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.RichEdtSimpleMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
GetPosRichCaret(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.SetChrFormat(Sender: TRichEdit; const ChrFmt: TCharacterFormat);
var // CHARFORMAT  - это запись, содержащая информацию о формате символа в рич-эдите
  Format: TCharFormat;
begin
FillChar(Format, SizeOf(Format), 0);
  with Format do
    begin
     cbSize := SizeOf(Format);
     dwMask := CFM_OFFSET;

     //смещение символа (в твипах) от базовой линии
     //при положительных значениях символ смещается кверху,
     //при отрицательных - книзу от базовой линии
     case ChrFmt of
       CFM_Superscript: yOffset := 60;
       CFM_Subscript: yOffset := -60;
       CFM_Normal: yOffset := 0;
     end;
  end;

//сообщение EM_SETCHARFORMAT устанавливает форматирование символа в рич-эдите
//сообщение SCF_SELECTION - применяет форматирование в текущем выделении
TRichEdit(Sender).Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.SetLineSpacing(ARichEdit: TRichEdit; lineSpacing: Byte);
var pf2: ParaFormat2;
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(PARAFORMAT2);
  pf2.dwMask := PFM_LINESPACING;
  pf2.bLineSpacingRule := lineSpacing;
  SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, Longint(@pf2));
end;

//----------------------------------------------------------------------------

procedure TFrmSimpleEditor.UndoRedoInit(Sender: TObject);
begin
MultipleUndo.Initialize(200);
UndoCounter:= 0;//обнуляем счетчик
RedoCounter:= 0;//обнуляем счетчик

//очищаем буфер запоминаемых действий
MultipleUndo.Clear;

RefreshUndoRedoBtn(Sender);//перерисовываем кнопки
end;

end.
