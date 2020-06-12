unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, PngImageList, StdCtrls;

type
  TFrmSender = (fsMainForm);
  TfrmSplash = class(TForm)
    MyTimer: TTimer;
    pnlBottom: TPanel;
    btnMsg: TButton;
    pnlTop: TPanel;
    LblMsg: TLabel;
    ImgAnim: TImage;
    ImgLstAnim_32: TPngImageList;
    procedure MyTimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMsgClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
    FNumFrame,
    FDotCount: Integer;
    StartInitSplash,
    DotTick,
    FrameTick,
    DotInt,
    FrameInt: Cardinal;
    FInMsgStr: string;
    FBtnMsgStr: string;
    FFrmCaptStr: string;
    FImgList: TPngImageList;
    FTextMsgHeight: Integer;
    FBorderInterval: Integer;
    FInitLblMsgHeight: Integer;
    procedure SetInMsgStr(const Value: string);
    procedure SetImgList(const Value: TPngImageList);
    procedure SetTextMsgHeight(const Value: Integer);
    procedure SetBtnMsgStr(const Value: string);
    procedure SetFrmCaptStr(const Value: string);
  public
    { Public declarations }
    property InMsgStr: string read FInMsgStr write SetInMsgStr;
    property BtnMsgStr: string read FBtnMsgStr write SetBtnMsgStr;
    property FrmCaptStr: string read FFrmCaptStr write SetFrmCaptStr;
    property ImgList: TPngImageList read FImgList write SetImgList;
    property TextMsgHeight: Integer read FTextMsgHeight write SetTextMsgHeight;
  end;

var
  frmSplash: TfrmSplash;

implementation

uses
  VarAndrUnit;

{$R *.dfm}

procedure TfrmSplash.btnMsgClick(Sender: TObject);
begin
  //чтобы витуально не нажимать эту кнопку
  if pnlBottom.Visible then
  begin
    IsFinishedThread:= True;
    IsThreadExecuteAbort:= True;
    FrmSenderModalResult:= mrNone;
  end;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmSplash.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= IsFinishedThread;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  LblMsg.Caption:= '';
  FInitLblMsgHeight:= LblMsg.Height;//запоминаем изначальную высоту Label
  FBorderInterval:= pnlTop.Height - LblMsg.Top - LblMsg.Height;//запоминаем зазор между нижними границами Label и plnTop
  LblMsg.Transparent:= True;
  pnlBottom.Caption:= '';
  pnlBottom.Visible:= True;
  pnlBottom.BevelOuter:= bvNone;
  pnlTop.Caption:= '';
  pnlTop.BevelOuter:= bvNone;
  Self.Resize;

  FInMsgStr:= '';
  FFrmCaptStr:= '';
  FBtnMsgStr:= 'Отмена(Esc)';


  DoubleBuffered:= True;
  FDotCount:= 1;//счетчик точек в строке
  FNumFrame:= 0;//номер текущей картинки TImageList

  StartInitSplash:= GetTickCount;
  DotTick:= GetTickCount;
  FrameTick:= GetTickCount;
  DotInt:= 500;
  FrameInt:= 60;
  MyTimer.Interval:= 60;
  FImgList:= ImgLstAnim_32;
  ImgAnim.Height:= FImgList.Height;
  ImgAnim.Width:= FImgList.Width;
  MyTimer.Enabled:= True;
end;

procedure TfrmSplash.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (GetKeyState(VK_ESCAPE) <> 0) then  btnMsgClick(Sender);
end;

procedure TfrmSplash.FormResize(Sender: TObject);
begin
  if pnlBottom.Visible
    then
      Self.ClientHeight:= pnlTop.Height + pnlBottom.Height
    else
      Self.ClientHeight:= pnlTop.Height;
end;

procedure TfrmSplash.MyTimerTimer(Sender: TObject);
const
  delta: Integer = 15;
begin
  if btnMsg.Caption <> Trim(BtnMsgStr) then btnMsg.Caption:= Trim(BtnMsgStr);
  if Self.Caption <> FrmCaptStr then Self.Caption:= FrmCaptStr;


  //анализируем высоту отображаемого текста
  if TextMsgHeight <> (LblMsg.Height + delta) then
  begin
    LblMsg.Height:= TextMsgHeight + delta;
    pnlTop.Height:= LblMsg.Top + LblMsg.Height + FBorderInterval;
    Self.Resize;
  end;

  //показываем кнопку отмены, если с момента запуска сплэша прошло более 3 сек
  //и панелька еще не видна
//  if ((GetTickCount-StartInitSplash) > 3000) and (not pnlBottom.Visible) then
//  begin
//    pnlBottom.Visible:= True;
//    Self.Resize;
//  end;

  if (GetTickCount - DotTick) > DotInt then
    begin
      DotTick:= GetTickCount;
      case FDotCount of
        1: LblMsg.Caption := InMsgStr;
        2: LblMsg.Caption := InMsgStr + ' .';
        3: LblMsg.Caption := InMsgStr + ' ..';
        4: LblMsg.Caption := InMsgStr + ' ...';
      end;
      Inc(FDotCount);
      if FDotCount > 4 then FDotCount:=1;
    end;

  if (GetTickCount - FrameTick) > FrameInt then
  begin
    FrameTick:= GetTickCount;

    //если список пуст, то будет отображаться статичная иконка приложения
    if FImgList.Count = 0
      then
        ImgAnim.Picture.Icon:= Application.Icon
      else
        FImgList.GetIcon(FNumFrame, ImgAnim.Picture.Icon);

    Inc(FNumFrame);
    ImgAnim.Repaint;
    //начинаем с первой картинки, если добрались до последней
    if FNumFrame > pred(FImgList.Count) then FNumFrame:= 0;
  end;
end;

procedure TfrmSplash.SetBtnMsgStr(const Value: string);
begin
  if FBtnMsgStr <> Value then FBtnMsgStr := Value;
end;

procedure TfrmSplash.SetFrmCaptStr(const Value: string);
begin
  if FFrmCaptStr <> Value then FFrmCaptStr := Value;
end;

procedure TfrmSplash.SetImgList(const Value: TPngImageList);
begin
  if FImgList <> Value then FImgList := Value;
end;

procedure TfrmSplash.SetInMsgStr(const Value: string);
begin
  if FInMsgStr <> Value then  FInMsgStr := Value;
end;

procedure TfrmSplash.SetTextMsgHeight(const Value: Integer);
begin
  if FTextMsgHeight <> Value then FTextMsgHeight := Value;
end;

end.
