unit MKBUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, StrUtils, JvExComCtrls, JvDBTreeView, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, NiceSettings, AppEvnts;

type
  TFrmMKBView = class(TForm)
    TreeViewMKB: TJvDBTreeView;
    BtnClose: TButton;
    BtnGet: TButton;
    NiceSetFrmMKBView: TNiceSettings;
    AppEventsFrmMKB: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGetClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure AppEventsFrmMKBShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmMKBView: TFrmMKBView;

implementation

uses TblDsUnit, VarAndrUnit, DMFIBUnit, StatusPatUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMKBView.FormCreate(Sender: TObject);
begin
NiceSetFrmMKBView.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmMKBView.LoadSettings;

FocusFlag:= True;
DMFIB.DSetMKB_10.FullRefresh;
end;

//----------------------------------------------------------------------------

procedure TFrmMKBView.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmMKBView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DMFIB.DSetMKB_10.Active then DMFIB.DSetMKB_10.Close;

//сохран€ем параметры формы
NiceSetFrmMKBView.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmMKBView.BtnGetClick(Sender: TObject);
var TmpStr: String;
begin
TmpStr:= '';
  if Pos(' ', TreeViewMKB.Selected.Text) <> 0
    then
      begin
        DsNumb:=
            Trim(LeftStr(TreeViewMKB.Selected.Text, Pos(' ', TreeViewMKB.Selected.Text)));

        //приведем регистр строки к виду, как в предложении
        TmpStr:= Trim(RightStr(TreeViewMKB.Selected.Text,
                Length(TreeViewMKB.Selected.Text) - Pos(' ', TreeViewMKB.Selected.Text)));

        DsName:= AnsiUpperCase(LeftStr(TmpStr, 1)) +
                                    AnsiLowerCase(RightStr(TmpStr, Length(TmpStr) - 1));
      end;

//сохран€ем номер(ID) бол€чки по ћ Ѕ-10
MKB_IDNUMBER:= Trim(IntToStr(DMFIB.DSetMKB_10.FN('VALUES_UID').AsInteger));

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMKBView.AppEventsFrmMKBShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCloseClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) and BtnGet.Enabled then BtnGetClick(Self);
  end;
AppEventsFrmMKB.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmMKBView.BtnCloseClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

end.
