unit uFrmAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, AppEvnts;

type
  TFrmAbout = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblMail: TLabel;
    BtnClose: TButton;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    AppEventsFrmAbout: TApplicationEvents;
    Lbl1: TLabel;
    LblHome: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure AppEventsFrmAboutShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LblHomeMouseEnter(Sender: TObject);
    procedure LblHomeMouseLeave(Sender: TObject);
    procedure LblMailMouseEnter(Sender: TObject);
    procedure LblMailMouseLeave(Sender: TObject);
    procedure LblMailClick(Sender: TObject);
    procedure LblHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmAbout: TFrmAbout;

implementation

uses
  VarAndrUnit;

var FocusFlag: Boolean;
    OldCurs: TCursor;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmAbout.AppEventsFrmAboutShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) or (GetKeyState(VK_RETURN) < 0) then Close;
  end;

AppEventsFrmAbout.CancelDispatch;  
end;

//----------------------------------------------------------------------------

procedure TFrmAbout.BtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFrmAbout.FormCreate(Sender: TObject);
begin
FocusFlag:= True;

with Self do
  case ApplCurVersInfo of
    20: Caption:= 'О программе (portable-версия)';
    21: Caption:= 'О программе (multiuser-версия)';
    else
      Caption:= 'О программе';
  end;
end;

procedure TFrmAbout.FormShow(Sender: TObject);
begin
//Label4.Caption:= Sto_GetFmtFileVersion(Application.ExeName);
Label4.Caption:= Sto_GetFmtFileVersion(Application.ExeName,'%d.%d.%.2d  build %d');
end;

//----------------------------------------------------------------------------

procedure TFrmAbout.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

procedure TFrmAbout.LblHomeClick(Sender: TObject);
begin
Sto_OpenWebSite('http://leybabronstain.narod.ru/');
end;

procedure TFrmAbout.LblHomeMouseEnter(Sender: TObject);
begin
OldCurs:= Screen.Cursor;//запоминаем дефолтовый курсор
Screen.Cursor:= crHandPoint;//меняем его на "руку"
end;

procedure TFrmAbout.LblHomeMouseLeave(Sender: TObject);
begin
Screen.Cursor:= OldCurs;//возвращаем прежний вид
end;

procedure TFrmAbout.LblMailClick(Sender: TObject);
begin
Sto_OpenMail('leybabronstain@yandex.ru');
end;

procedure TFrmAbout.LblMailMouseEnter(Sender: TObject);
begin
OldCurs:= Screen.Cursor;//запоминаем дефолтовый курсор
Screen.Cursor:= crHandPoint;//меняем его на "руку"
end;

procedure TFrmAbout.LblMailMouseLeave(Sender: TObject);
begin
Screen.Cursor:= OldCurs;//возвращаем прежний вид
end;

//----------------------------------------------------------------------------

end.
