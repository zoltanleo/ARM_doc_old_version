unit uShowFullImg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NiceSettings, VarAndrUnit;

type
  TfrmShowFullImg = class(TForm)
    pnlImg: TPanel;
    pnlBtn: TPanel;
    btnClose: TButton;
    scrboxFull: TScrollBox;
    imgFull: TImage;
    NiceSetfrmShowFullImg: TNiceSettings;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShowFullImg: TfrmShowFullImg;

implementation


{$R *.dfm}

procedure TfrmShowFullImg.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmShowFullImg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  //сохраняем параметры формы
  NiceSetfrmShowFullImg.SaveSettings;
end;

procedure TfrmShowFullImg.FormCreate(Sender: TObject);
begin
  NiceSetfrmShowFullImg.RegKey:= NiceSetRegKeyPath;
  //грузим параметры формы
  NiceSetfrmShowFullImg.LoadSettings;
  DoubleBuffered:= True;
  KeyPreview:= True;
  Caption:= '';

  scrboxFull.BorderStyle:= bsNone;

  with pnlImg do
  begin
    Caption:= '';
    BevelOuter:= bvNone;
  end;

  with pnlBtn do
  begin
    Caption:= '';
    BevelOuter:= bvNone;
  end;

end;

procedure TfrmShowFullImg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(ord(VK_ESCAPE)) then Self.Close;
end;

end.
