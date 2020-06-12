unit uFrmRichTxtShow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, NiceSettings, AppEvnts, Printers, RichEdit;

type
   TPageOffset = record
     mStart, mEnd: Integer;
     rendRect: TRect;
  end;
type
  TFrmRichTxtShow = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnClose: TButton;
    RichEdtShowTxt: TRichEdit;
    NiceSetFrmRichTxtShow: TNiceSettings;
    AppEventsRichShowTxt: TApplicationEvents;
    BtnPrintAnnot: TButton;
    prnDlgAnnot: TPrintDialog;
    PgStpDlgAnnot: TPageSetupDialog;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsRichShowTxtShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnPrintAnnotClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrintCommon(Sender: TRichEdit);
    procedure PrintSelectedText(Sender: TRichEdit);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmRichTxtShow: TFrmRichTxtShow;

implementation

uses
  VarAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.AppEventsRichShowTxtShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
  end;
AppEventsRichShowTxt.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.BtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRichTxtShow.BtnPrintAnnotClick(Sender: TObject);
begin
if RichEdtShowTxt.SelLength <> 0
  then // �������� �������
    begin
      prnDlgAnnot.Options:= prnDlgAnnot.Options + [poSelection];//�������� ����� � �������
      prnDlgAnnot.PrintRange:= prSelection;//��������� ����� ����
    end
  else//��� ���������
    begin
      prnDlgAnnot.Options:= prnDlgAnnot.Options - [poSelection];
      prnDlgAnnot.PrintRange:= prAllPages;
    end;

if PgStpDlgAnnot.Execute then
  if prnDlgAnnot.Execute then
    begin
      if prnDlgAnnot.PrintRange = prAllPages //���� �������� ��� ��������
        then
          PrintCommon(RichEdtShowTxt)
        else
          if prnDlgAnnot.PrintRange = prSelection //���� �������� ���������� ��������
            then
              PrintSelectedText(RichEdtShowTxt)
            else
              Exit;  
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NiceSetFrmRichTxtShow.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.FormCreate(Sender: TObject);
begin
NiceSetFrmRichTxtShow.RegKey:= NiceSetRegKeyPath;
NiceSetFrmRichTxtShow.LoadSettings;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.FormResize(Sender: TObject);
begin
RichEdtShowTxt.Refresh;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.FormShow(Sender: TObject);
begin
Self.Caption:= CaptionREStr;
RichEdtShowTxt.Text:= SimpleREStr;
RichEdtShowTxt.Refresh;
end;

//----------------------------------------------------------------------------

procedure TFrmRichTxtShow.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

procedure TFrmRichTxtShow.PrintCommon(Sender: TRichEdit);
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
    begin //������� ���� ��������� ������������ �����, ��� ������-���� �������� ����������� ;-)
      Left:= PgStpDlgAnnot.MarginLeft * 11 div 19 - MargOffset + 20;
      Top:= PgStpDlgAnnot.MarginTop * 11 div 20 - MargOffset + 20;
      Right:= PgRect.Right - (1440 * 4) + MargOffset * 12 div 11 - PgStpDlgAnnot.MarginRight * 3 div 5;
      Bottom:= PgRect.Bottom - (1440 * 4) +  MargOffset * 9 div 10 - PgStpDlgAnnot.MarginBottom * 7 div 20;
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

procedure TFrmRichTxtShow.PrintSelectedText(Sender: TRichEdit);
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

        // ���������� ������������� ��� ������ RichEdit'�. ������ ���������������
        // ������������. ����� ���������� �������������� ���������� ������ � �����
        //(�������� �������): 1 ���� = 1/1440 ����� ��� 1/20 �����
        RichEdit_OutputArea := Rect(
        PrintArea.Left * 1440 div PrintResX + PgStpDlgAnnot.MarginLeft div 2 - MargOffset - 20,
        PrintArea.Top * 1440 div PrintResY + PgStpDlgAnnot.MarginTop div 2 - MargOffset - 20,
        PrintArea.Right * 1440 div PrintResX - PgStpDlgAnnot.MarginRight div 2 + MargOffset,
        PrintArea.Bottom * 1440 div PrintResY - PgStpDlgAnnot.MarginBottom div 2 + MargOffset
        );

        // ������� ��������, ����� �� ���������������� ����� ��� ��������.
        // ������� ���������� ������ ��� ���������
        fmtRange.hDC := Handle;            // printer handle
        fmtRange.hdcTarget := Handle;     // ditto
        fmtRange.rc := RichEdit_OutputArea;
        fmtRange.rcPage := Rect(0,0,Printer.PageWidth * 1440 div PrintResX, Printer.PageHeight * 1440 div PrintResY);

        //��������� ������� ������ ���������� ��������
        fmtRange.chrg.cpMin := TRichEdit(Sender).selstart;
        fmtRange.chrg.cpMax := TRichEdit(Sender).selStart + TRichEdit(Sender).sellength - 1;

        //������ ������������ ������� � ����� ���������
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

end.
