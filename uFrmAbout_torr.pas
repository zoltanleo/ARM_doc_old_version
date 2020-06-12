unit uFrmAbout_torr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AppEvnts, jpeg, ExtCtrls;

type
  TFrmAbout_torrent = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image1: TImage;
    Label6: TLabel;
    AppEventsFrmAbout_torr: TApplicationEvents;
    BtnClose: TButton;
    Label7: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    LblMail: TLabel;
    Lbl1: TLabel;
    LblHome: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AppEventsFrmAbout_torrShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LblMailClick(Sender: TObject);
    procedure LblMailMouseLeave(Sender: TObject);
    procedure LblMailMouseEnter(Sender: TObject);
    procedure LblHomeMouseLeave(Sender: TObject);
    procedure LblHomeMouseEnter(Sender: TObject);
    procedure LblHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmAbout_torrent: TFrmAbout_torrent;

implementation

uses
  VarAndrUnit;

var FocusFlag: Boolean;
    OldCurs: TCursor;
{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmAbout_torrent.AppEventsFrmAbout_torrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) or (GetKeyState(VK_RETURN) < 0) then Close;
  end;

AppEventsFrmAbout_torr.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmAbout_torrent.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmAbout_torrent.FormCreate(Sender: TObject);
begin
FocusFlag:= True;

with Self do
  case ApplCurVersInfo of
    10: Caption:= 'О программе (portable-версия)';
    11: Caption:= 'О программе (multiuser-версия)';
    else
      Caption:= 'О программе';
  end;
end;

procedure TFrmAbout_torrent.FormShow(Sender: TObject);
begin
//Label4.Caption:= Sto_GetFmtFileVersion(Application.ExeName) + ' (специально для www.rutracker.org)';
Label4.Caption:= Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d  build %d') + ' (специально для www.rutracker.org)';
end;

//----------------------------------------------------------------------------

procedure TFrmAbout_torrent.LblHomeClick(Sender: TObject);
begin
Sto_OpenWebSite('http://leybabronstain.narod.ru/');
end;

procedure TFrmAbout_torrent.LblHomeMouseEnter(Sender: TObject);
begin
OldCurs:= Screen.Cursor;//запоминаем дефолтовый курсор
Screen.Cursor:= crHandPoint;//меняем его на "руку"
end;

procedure TFrmAbout_torrent.LblHomeMouseLeave(Sender: TObject);
begin
Screen.Cursor:= OldCurs;//возвращаем прежний вид
end;

procedure TFrmAbout_torrent.LblMailClick(Sender: TObject);
begin
Sto_OpenMail('leybabronstain@yandex.ru');
end;

procedure TFrmAbout_torrent.LblMailMouseEnter(Sender: TObject);
begin
OldCurs:= Screen.Cursor;//запоминаем дефолтовый курсор
Screen.Cursor:= crHandPoint;//меняем его на "руку"
end;

procedure TFrmAbout_torrent.LblMailMouseLeave(Sender: TObject);
begin
Screen.Cursor:= OldCurs;//возвращаем прежний вид
end;

procedure TFrmAbout_torrent.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
end;

//----------------------------------------------------------------------------

end.
