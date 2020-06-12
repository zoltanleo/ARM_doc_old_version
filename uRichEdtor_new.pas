unit uRichEdtor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, ImgList, PngImageList,
  XPStyleActnCtrls, ActnList, ActnMan, ActnMenus, ToolWin, ActnCtrls, StdActns,
  ExtActns, NiceSettings, StrUtils, Printers, RichEdit;

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
    StatusBar1: TStatusBar;
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
//    procedure RichEdtSimpleClick(Sender: TObject);
    procedure CbBoxFontNameChange(Sender: TObject);
    procedure RichEdtSimpleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CbBoxFontSizeChange(Sender: TObject);
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
    procedure ContactInfoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActCloseFileWithSaveExecute(Sender: TObject);
    procedure ActCloseFileWithOutSaveExecute(Sender: TObject);
    procedure RichEdtSimpleChange(Sender: TObject);
    procedure RichEdtSimpleClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetPosRichCaret(Sender: TObject);
    procedure PrintCommon(Sender: TRichEdit);
    procedure PrintSelectedText(Sender: TRichEdit);
    procedure SetChrFormat(Sender: TRichEdit; const ChrFmt: TCharacterFormat);
    procedure CommandManagerChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmSimpleEditor: TFrmSimpleEditor;

implementation

uses
  CommandPatternClasses,
  EditTypingCommand
//, VarAndrUnit //��� ��������������� ������� ����� ����������������
  ;

var RepStPos: Integer;//���������� ���������� ��� ������������ ������� ������

{$R *.dfm}

procedure TFrmSimpleEditor.ActCapitExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        SelText:= AnsiUpperCase(SelText)
      else
        Exit;
  end;
end;

procedure TFrmSimpleEditor.ActChrSubScriptExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then
    begin
      RichEdtSimple.SelAttributes.Size:= RichEdtSimple.SelAttributes.Size * 3 div 4;
      SetChrFormat(RichEdtSimple,CFM_Subscript);
    end
  else
    Exit;
end;

procedure TFrmSimpleEditor.ActChrSupraScriptExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then
    begin
      RichEdtSimple.SelAttributes.Size:= RichEdtSimple.SelAttributes.Size * 3 div 4;
      SetChrFormat(RichEdtSimple,CFM_Superscript);
    end
  else
    Exit;
end;

procedure TFrmSimpleEditor.ActCloseFileWithOutSaveExecute(Sender: TObject);
begin
RichEdtSimple.Modified:= False;
Close;
end;

procedure TFrmSimpleEditor.ActCloseFileWithSaveExecute(Sender: TObject);
begin
//SimpleREStr:= Trim(GetRTFText(RichEdtSimple));
RichEdtSimple.Modified:= False;
Close;
end;

procedure TFrmSimpleEditor.ActDecapitExecute(Sender: TObject);
begin
with RichEdtSimple do
  begin
    if SelLength <> 0
      then
        SelText:= AnsiLowerCase(SelText)
      else
        Exit;
  end;
end;

procedure TFrmSimpleEditor.ActDivStringExecute(Sender: TObject);
begin
RichEdtSimple.WordWrap:= ActDivString.Checked;//��������-��������� ������� ������
GetPosRichCaret(Sender);
end;

procedure TFrmSimpleEditor.ActFileNewExecute(Sender: TObject);
begin
  with RichEdtSimple do
    begin
      Modified:= False;
      Clear;
      SelStart:= 0;
      SelAttributes.Assign(DefAttributes);
    end;
end;

procedure TFrmSimpleEditor.ActFileOpenExecute(Sender: TObject);
begin
if FileOpenDlg.Execute then
  begin
    RichEdtSimple.Lines.LoadFromFile(FileOpenDlg.FileName);
  end;
end;

procedure TFrmSimpleEditor.ActFontBackgrndExecute(Sender: TObject);
var CurRow: Integer;//����� ������� ������
    Format: CHARFORMAT2;
begin
if ColorDlg.Execute then
  begin
    //�������� ����� ������� ������
    CurRow:= SendMessage(RichEdtSimple.Handle, EM_LINEFROMCHAR, RichEdtSimple.SelStart,0);
      with RichEdtSimple do
        begin
          //�������� ��� ������
          SelStart := SendMessage(Handle, EM_LINEINDEX,CurRow, 0);
          SelLength := Length(Lines[CurRow]);

          //��������� ��� ���������
          FillChar(Format, SizeOf(Format), 0);
          Format.cbSize := SizeOf(Format);
          Format.dwMask := CFM_BACKCOLOR;
          Format.crBackColor := ColorDlg.Color;
          Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
          SelLength:= 0;//������� ��������� � ������� ���������
        end;
  end;
end;

procedure TFrmSimpleEditor.ActFontChoiceExecute(Sender: TObject);
begin
if FontDlg.Execute then
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

procedure TFrmSimpleEditor.ActFontColorExecute(Sender: TObject);
begin
if ColorDlg.Execute then RichEdtSimple.SelAttributes.Color:= ColorDlg.Color;
end;

procedure TFrmSimpleEditor.ActFontForegrndExecute(Sender: TObject);//������ ��� ����������� ������
var Format: CHARFORMAT2;
begin
if ColorDlg.Execute then
   with Format do
     begin
      FillChar(Format, SizeOf(Format), 0);
      cbSize := SizeOf(Format);
      dwMask := CFM_BACKCOLOR;
      crBackColor := ColorDlg.Color;
      RichEdtSimple.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
     end;
end;

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
                SelAttributes.Size:= SelAttributes.Size - 1;
                CbBoxFontSize.Text:= IntToStr(SelAttributes.Size);
              end
            else
              begin
                Application.MessageBox('��������� ������ ������ ������� ������ � 6 �������',
                                                        '������������ �������� � �������',MB_ICONINFORMATION);
                Abort;
              end;
        end
      else
        Exit;
  end;
end;

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
                SelAttributes.Size:= SelAttributes.Size + 1;
                CbBoxFontSize.Text:= IntToStr(SelAttributes.Size);
              end                                                 
            else
              begin
                Application.MessageBox('��������� ������� ������ ������� ������ � 72 ������',
                                                              '������������ �������� � �������', MB_ICONINFORMATION);
                Abort;
              end;

        end
      else
        Exit;
  end;
end;

procedure TFrmSimpleEditor.ActInsertSymbolExecute(Sender: TObject);
begin
WinExec('charmap', SW_RESTORE);
if RichEdtSimple.CanFocus then RichEdtSimple.SetFocus;
end;

procedure TFrmSimpleEditor.ActPrintExecute(Sender: TObject);
begin
if RichEdtSimple.SelLength <> 0
  then // �������� �������
    begin
      PrnDlg.Options:= PrnDlg.Options + [poSelection];//�������� ����� � �������
      PrnDlg.PrintRange:= prSelection;//��������� ����� ����
    end
  else//��� ���������
    begin
      PrnDlg.Options:= PrnDlg.Options - [poSelection];
      PrnDlg.PrintRange:= prAllPages;
    end;

if PgStpDlg.Execute then
  if PrnDlg.Execute then
    begin
      if PrnDlg.PrintRange = prAllPages //���� �������� ��� ��������
        then
          PrintCommon(RichEdtSimple)
        else
          if PrnDlg.PrintRange = prSelection //���� �������� ���������� ��������
            then
              PrintSelectedText(RichEdtSimple)
            else
              Exit;  
    end;
end;

procedure TFrmSimpleEditor.ActRedoExecute(Sender: TObject);
begin
CommandManager.Redo;
end;

procedure TFrmSimpleEditor.ActReplaceTextExecute(Sender: TObject);
begin
ReplaceDlg.Execute;
end;

procedure TFrmSimpleEditor.ActSaveAsExecute(Sender: TObject);
var IntPos: Integer;
    FName: string;
    f: TextFile;
begin
if FileSaveDlg.Execute then
  begin
    IntPos:= Pos('.',Trim(FileSaveDlg.FileName));

    if IntPos = 0 //���� ��� ����� � ����� �����
      then
        FName:= Trim(FileSaveDlg.FileName)
      else
        FName:= LeftStr(Trim(FileSaveDlg.FileName),IntPos - 1);

    case FileSaveDlg.FilterIndex of
    1: begin
        if Application.MessageBox('�� ��������� ��������� ������ � ������� ��������� �������, ��� ��������� �������� � '
                      + '������ �������������� ������ (���������� �������, ������������, ��������� � ����.) ����������?',
                        '��������� ������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes then
          begin
            FName:= FName + '.txt';
            AssignFile(f,FName);//��������� ���������� ��� �����
            Rewrite(f);//������� ��������� ����
            Writeln(f,Trim(RichEdtSimple.Text));//����� ���� �����
            CloseFile(f);//��������� ����
          end;                                        
       end;

    2: begin
        FName:= FName + '.rtf';
        RichEdtSimple.Lines.SaveToFile(FName);
       end;
    end;
  end;
end;

procedure TFrmSimpleEditor.ActSearchTextExecute(Sender: TObject);
begin
FindDlg.Position:= Point(Self.Left + Self.Width div 4, Self.Top + Self.Height div 4);
FindDlg.Execute;
end;

procedure TFrmSimpleEditor.ActSelectAllExecute(Sender: TObject);
begin
RichEdtSimple.SelectAll;
end;

procedure TFrmSimpleEditor.ActUndoExecute(Sender: TObject);
begin
CommandManager.Undo;
end;

procedure TFrmSimpleEditor.CbBoxFontNameChange(Sender: TObject);
begin
with RichEdtSimple do
  begin
    SelAttributes.Name:= CbBoxFontName.Items[CbBoxFontName.ItemIndex];
    if CanFocus then SetFocus;
  end;
end;

procedure TFrmSimpleEditor.CbBoxFontNameDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  with CbBoxFontName.Canvas do
    begin
//      FillRect(rect);
//      Font.Name := CbBoxFontName.Items[index];
//      Font.Size := 0; // ������ ������ � �� ���������
//      TextOut(Rect.Left + 1, Rect.Top + 1, CbBoxFontName.Items[index]);
    end;
end;

procedure TFrmSimpleEditor.CbBoxFontNameMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
  with CbBoxFontName.Canvas do
    begin
//      Font.Name := CbBoxFontName.Items[index];
//      Font.Size := 0; // ������ ������ � �� ���������
//      Height := TextHeight(CbBoxFontName.Items[index]) + 2;
//      Height := TextHeight('Wg') - 1;
    end;
end;

procedure TFrmSimpleEditor.CbBoxFontSizeChange(Sender: TObject);
begin
RichEdtSimple.SelAttributes.Size:= StrToInt(CbBoxFontSize.Text);
if RichEdtSimple.CanFocus then RichEdtSimple.SetFocus;//���������� ����� � �������
end;

procedure TFrmSimpleEditor.CbBoxFontSizeKeyPress(Sender: TObject; var Key: Char);
begin
//�� �������� ������� ���-����, ����� ����
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #46) and (Key <> #13) then
  begin
    Application.MessageBox('�� ������ ������� ������ ����� �� 0 �� 9 !','������������ ������', MB_ICONINFORMATION);
    Key := #0;
  end;

if (Key = #13) then
    if RichEdtSimple.CanFocus then  RichEdtSimple.SetFocus;

end;

procedure TFrmSimpleEditor.CommandManagerChange(Sender: TObject);
begin
  ActUndo.Enabled := CommandManager.CanUndo;
  ActRedo.Enabled := CommandManager.CanRedo;
end;

procedure TFrmSimpleEditor.ContactInfoKeyPress(Sender: TObject; var Key: Char);
begin
  //��������� � "�������" ������� ������ ��������-�������� ������ � "Enter'�"
  if (Ord(Key) in [13,32..128]) or ((Key = #8) and (TRichEdit(Sender).Text <> ''))
    then
      begin
        CommandManager.AddCommand(TEditTypeCommand.Create(TRichEdit(Sender), Key),true);
        Key := #0;
      end;
end;

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

procedure TFrmSimpleEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NiceSetRichEdtSimpl.SaveSettings;
//====================================================================
// ��� ������������ � �������, ��� ��������������� ������� ����� �����������������
//SimpleREStr:= Trim(GetRTFText(RichEdtSimple));
//Close;
//====================================================================

end;

procedure TFrmSimpleEditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var NumID: Integer;
begin
CanClose:= True;//�������� ���� ��������� �� �������

if RichEdtSimple.Modified then
  begin
    NumID:= Application.MessageBox('����� � ��������� ��� �������. ������ ��������� ���������?', '���������� ������',
              MB_ICONINFORMATION + MB_YESNOCANCEL);
      case NumID of
        IDYes: //SimpleREStr:= Trim(GetRTFText(RichEdtSimple))
        ;
         IDNo: //SimpleREStr:= SimpleREStr;//��� "��������" �������� �� "�����" � ���� ��� �������
         ;
        else
          CanClose:= False;   
      end;

  end;
end;

procedure TFrmSimpleEditor.FormCreate(Sender: TObject);
begin
//====================================================================
// ��� ������������ � �������, ��� ��������������� ������� ����� �����������������
//RichEdtSimple.PlainText:= False;
//RichEdtSimple.Clear;
//RichEdtSimple.Text:= SimpleREStr;
//====================================================================

RichEdtSimple.Modified:= False;
CbBoxFontName.Items:= Screen.Fonts;//�������� ������ ������������� �������
NiceSetRichEdtSimpl.LoadSettings;//��������� ���������
ActDivStringExecute(Sender);//��������� �������������� ������� �����
RepStPos:= 0;

//������������� ��������� �������� �� �������
with RichEdtSimple do
  begin
    SelStart:= 0;
    SelAttributes.Name:= CbBoxFontName.Items[CbBoxFontName.ItemIndex];//��������� ����������� �����
    SelAttributes.Size:= StrToInt(CbBoxFontSize.Text);//��������� ����������� ������ ������
  end;

CommandManager.OnUpdateEvent := CommandManagerChange;//�������� "�����������" ��������   
end;

procedure TFrmSimpleEditor.GetPosRichCaret(Sender: TObject);
var
  X, Y: Integer;
  P: TPoint;
  ChRng: TCharRange;
begin
//PosY:= SendMessage(TRichEdit(Sender).Handle, EM_LINEFROMCHAR, TRichEdit(Sender).SelStart,0) + 1;
//PosX:= TRichEdit(Sender).SelStart - SendMessage(TRichEdit(Sender).Handle, EM_LINEINDEX,PosY,0) + 1;

//Y := RichEdtSimple.Perform(EM_LINEFROMCHAR, RichEdtSimple.SelStart, 0);
//X := RichEdtSimple.Perform(EM_LINEINDEX, Y, 0);
//
//inc(Y);
//
//X := RichEdtSimple.SelStart - X + 1;
//
//P:= Point(x,Y);
//SendMessage(RichEdtSimple.Handle, EM_EXGETSEL, 0, integer(@ChRng));
//x:= ChRng.cpMin;

P:= RichEdtSimple.CaretPos;

Self.Caption := 'X = ' + IntToStr(p.X) + ' : ' + 'Y = ' + IntToStr(p.Y);
//Self.Caption := 'X = ' + IntToStr(X) + ' : ' + 'Y = ' + IntToStr(Y);
end;

procedure TFrmSimpleEditor.PrintCommon(Sender: TRichEdit);
const MargOffset: Integer = 1200;
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
  //�������� ������ ������ �� ���������� ��������
  wPage:= GetDeviceCaps(Printer.Handle, PHYSICALWIDTH);
  hPage:= GetDeviceCaps(Printer.Handle, PHYSICALHEIGHT);

  //�������� ���������� �������� � ������
  xPPI:= GetDeviceCaps(Printer.Handle, LOGPIXELSX);
  yPPI:= GetDeviceCaps(Printer.Handle, LOGPIXELSY);

  //������������ ������ ������ �� �������� � ����� (������������ ������� ���������,
  //������ ����� ��������� ������ (point, ������ � ��������: Twentieth of a Point).)
  //���� ����� 1/567 ����������, ��� 1/1440 �����
  //����������� �������� ����� � ������� ���������� � ����������� �� ���������� ������.
  //��� ��������� ������ � ������ � ������ � ������: ���������� ��������� ������ � ������
  //����������� �� ����������. ����� ���������� �������� ����� �������� �� 1440.
  //��������, �� ����� ������� �������� 100 x 100 � ����������� 96 ����� �� ����.
  //����� ��� ������ � ������ 100/96*1440 x 100/96*1440, �.�. 1500x1500.

  wTwips:= MulDiv(wPage, 1440, xPPI);
  hTwips:= MulDiv(hPage, 1440, yPPI);

  //��������� ������ ������ � ������
  with PgRect do
    begin
      Left:= 0;
      Top:= 0;
      Right:= wTwips;
      Bottom:= hTwips
    end;

  //��������� ������ ������������� (��� ���������� ���������� �������) �������������� � ������
  //�.�. ��� �������� ���� (����� � �������) ��������� (����� ��������� ����� ��������� ��������),
  //�� ������ ��� (������ � ������) ��������� � 4 ���� ��� �������� �� ������ � �����
  with RendRect do
    begin //�������� ������� ��������� ����� 5 �� unprinted zone �� ��������� � �����������
      Left:= PgStpDlg.MarginLeft - MargOffset;
      Top:= PgStpDlg.MarginTop - MargOffset;
      Right:= PgRect.Right - (1440 * 4) + PgStpDlg.MarginRight - MargOffset;
      Bottom:= PgRect.Bottom - (1440 * 4) + PgStpDlg.MarginBottom - MargOffset;
    end;

  //������������� ��������� ������� ������ �� ��������
  PgOffset.mStart := 0;

  //���������� � �������������� ��������� ���� TFormatRange. �������� �� � �������
  //��� ����������� ���������� ������ ����� �������� ������� �� �������� chrg.cpMin
  //� chrg.cpMax. ����� ��������� �������� ���������� ������ (�������) � �����
  //����������� ������ (����� ���������� ���� ���������)
  with FRange do
    begin
       hdc:= Printer.Handle;
       hdcTarget:= Printer.Handle;
       chrg.cpMin:= PgOffset.mStart;
       chrg.cpMax:= -1;
    end;

  //����� ���������� ������, ����� ������� �������� ��������� ��������, ����������
  //������� ����� ������ � �������. ������ ����������� ������� �� ������ ����������,
  //������������ RichEdit (riched32.dll ��� riched20.dll). ����� ����� �������, ���
  //RichEditVersion > 2

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

  //�� ������ �������� ������� ������ ������
  SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);

  //�������� ����� �� ����� �������� � ������ ���� ��������, ����� �������, ����������
  //����������� ������ ��� ������� ���� ��������. ��� �������� ������ �� �������
  //TRichEdit ����������� ������-����� ���� ��������, ��� ����������. ��������� � ���
  //��� ���������� ��� ���� ��������, �� ���������������� ��� ��������� ������
  //���������� �������
  SaveDC(FRange.hdc);
  SetMapMode(FRange.hdc, MM_TEXT);
  xOffset := GetDeviceCaps(Printer.Handle, PHYSICALOFFSETX);
  yOffset := GetDeviceCaps(Printer.Handle, PHYSICALOFFSETY);
  xOffset := xOffset + MulDiv(1440 + 1440, xPPI, 1440);
  yOffset := yOffset + MulDiv(1440 + 1440, yPPI, 1440);
  SetViewportOrgEx(FRange.hdc, xOffset, yOffset, nil);

  //������ ������� � �������� ���������� �������, �� ����� ������ ��� ������ ���������� ��������
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
//    ShowMessage(Format('����� ���������� %d ������� ���������', [PgCount]));
    SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);
    RestoreDC(FRange.hdc, - 1);

    //��� ����� ������ � ������ �� ����� ����
    Printer.BeginDoc;
    FRange.hdc := Printer.Handle;
    FRange.hdcTarget := Printer.Handle;
    SaveDC(FRange.hdc);
    SetViewportOrgEx(FRange.hdc, xOffset, yOffset, nil);

    //������ ��������
    FirstPg := True;

    //� ���� ����� �������� �������� ���������� �������
    //��� �������� ��������
    CurPage := 0;  //Print from the first page
//    PgCount := 1;  //Only One page for testing

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

    //��������������� HDC �������� � �� � ����������� ��������� ������ ����� ���������
    RestoreDC(FRange.hdc, - 1);
    Printer.EndDoc;

    //����������� ����� TRichEdit � ������� ������� � �������� �������
    FRange.chrg.cpMin := SendMessage(TRichEdit(Sender).Handle, EM_FORMATRANGE, 0, 0);
    Finalize(FPageOffsets);
end;

procedure TFrmSimpleEditor.PrintSelectedText(Sender: TRichEdit);
const MargOffset: Integer = 1200;
var PrintArea, RichEdit_OutputArea: TRect;
    PrintResX, PrintResY, NextChar: Integer;
    fmtRange: TFormatRange;
    S: string;
begin
  if TRichEdit(Sender).SelLength = 0 then Exit;

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

        // Define a rectangle for the rich edit text. The height is set to the
        // maximum. But we need to convert from device units to twips,
        // 1 twip = 1/1440 inch or 1/20 point.
        RichEdit_OutputArea := Rect(
        PrintArea.Left * 1440 div PrintResX + PgStpDlg.MarginLeft div 2 - MargOffset,
        PrintArea.Top * 1440 div PrintResY + PgStpDlg.MarginTop div 2 - MargOffset,
        PrintArea.Right * 1440 div PrintResX - PgStpDlg.MarginRight div 2 + MargOffset,
        PrintArea.Bottom * 1440 div PrintResY - PgStpDlg.MarginBottom div 2 + MargOffset
        );

        // Tell rich edit to format its text to the printer. First set
        // up data record for message:
        fmtRange.hDC := Handle;            // printer handle
        fmtRange.hdcTarget := Handle;     // ditto
        fmtRange.rc := RichEdit_OutputArea;
        fmtRange.rcPage := Rect(0,0,Printer.PageWidth * 1440 div PrintResX, Printer.PageHeight * 1440 div PrintResY);

        // set range of characters to print to selection
        fmtRange.chrg.cpMin := TRichEdit(Sender).selstart;
        fmtRange.chrg.cpMax := TRichEdit(Sender).selStart + TRichEdit(Sender).sellength - 1;

        // remove characters that need not be printed from end of selection.
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

procedure TFrmSimpleEditor.ReplaceDlgClose(Sender: TObject);
begin
RepStPos:= 0;//�������� ����������, ����� � ����.��� ����� ������ �������;
end;

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

procedure TFrmSimpleEditor.ReplaceDlgReplace(Sender: TObject);
var FoundAt, StartPos, ToEnd: Integer;
    mySearchTypes : TSearchTypes;
begin
  with ReplaceDlg do
    begin
      if Trim(ReplaceText) = '' then
        begin
          Application.MessageBox('�� �� ����� ���������� ����� !','��������',MB_ICONINFORMATION);
          Abort;
        end;

      if frMatchCase in Options then
        mySearchTypes:= mySearchTypes + [stMatchCase];

      if frWholeWord in Options then
        mySearchTypes:= mySearchTypes + [stWholeWord];

      with RichEdtSimple do
         begin
          //���� ������ ������ ��������� ������
          if frReplace in Options then
            begin
              //StartPos:= RepStPos;//������ ������
              ToEnd:= Length(Trim(Text)) - RepStPos;//����� �������� ������
              FoundAt := FindText(ReplaceDlg.FindText, RepStPos, ToEnd, mySearchTypes);

              if FoundAt <> -1
                then
                  begin
                    SetFocus;
                    SelStart := FoundAt;
                    SelLength := Length(ReplaceDlg.FindText);
                    SelText:= ReplaceText;
                    RepStPos:= FoundAt + Length(ReplaceDlg.ReplaceText);
                  end
                else
                  Application.MessageBox(PChar('����� "' + ReplaceDlg.FindText + '" �� ������.'),
                                                          '����� ��������', MB_ICONINFORMATION);
            end;

          //���� ������ ������ ��������� ������
          if frReplaceAll in Options then
            begin
              StartPos:= 0;
              ToEnd:= Length(Text);//����� �������� ������
              FoundAt := FindText(ReplaceDlg.FindText, StartPos, ToEnd, mySearchTypes);//��������� ���� ������� ������ ��������� �����

              if FoundAt <> -1
                then
                  begin
                    if frMatchCase in Options
                      then //��� ����������������� ������
                        Text:= AnsiReplaceStr(Text,ReplaceDlg.FindText,ReplaceDlg.ReplaceText)
                      else //��� ������������������� ������
                        Text:= AnsiReplaceText(Text,ReplaceDlg.FindText,ReplaceDlg.ReplaceText);
                  end
                else
                  Application.MessageBox(PChar('����� "' + ReplaceDlg.FindText + '" �� ������.'),
                                                          '����� ��������', MB_ICONINFORMATION);
            end;
         end;
    end;
end;

procedure TFrmSimpleEditor.RichEdtSimpleChange(Sender: TObject);
begin
GetPosRichCaret(Sender);
end;

procedure TFrmSimpleEditor.RichEdtSimpleClick(Sender: TObject);
begin
GetPosRichCaret(Sender);
end;

procedure TFrmSimpleEditor.RichEdtSimpleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
GetPosRichCaret(Sender);
end;

procedure TFrmSimpleEditor.RichEdtSimpleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CbBoxFontName.ItemIndex:= CbBoxFontName.Items.IndexOf(RichEdtSimple.SelAttributes.Name);
CbBoxFontSize.Text:= IntToStr(RichEdtSimple.SelAttributes.Size);
end;

procedure TFrmSimpleEditor.SetChrFormat(Sender: TRichEdit; const ChrFmt: TCharacterFormat);
var
   // The CHARFORMAT structure contains information about
  // character formatting in a rich edit control.
  Format: TCharFormat;
 begin
   FillChar(Format, SizeOf(Format), 0);
   with Format do
     begin
       cbSize := SizeOf(Format);
       dwMask := CFM_OFFSET;

       // Character offset, in twips, from the baseline.
      // If the value of this member is positive,
      // the character is a superscript;
      // if it is negative, the character is a subscript.
       case ChrFmt of
         CFM_Superscript: yOffset := 60;
         CFM_Subscript: yOffset := -60;
         CFM_Normal: yOffset := 0;
       end;
     end;
   // The EM_SETCHARFORMAT message sets character formatting in a rich edit control.
  // SCF_SELECTION: Applies the formatting to the current selection 
  TRichEdit(Sender).Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));

end;

end.
