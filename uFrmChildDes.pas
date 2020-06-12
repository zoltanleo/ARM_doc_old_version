unit uFrmChildDes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, ExtCtrls, AppEvnts;

type
  TFrmChildDes = class(TForm)
    NiceSetFrmChildDes: TNiceSettings;
    BtnSave: TButton;
    BtnCancel: TButton;
    GroupBox1: TGroupBox;
    ChkBoxChldMeasles: TCheckBox;
    ChkBoxChldRubella: TCheckBox;
    ChkBoxChldMumps: TCheckBox;
    ChkBoxChldChickenpox: TCheckBox;
    ChkBoxChldScarlat: TCheckBox;
    ChkBoxChldErythema: TCheckBox;
    ChkBoxChldTonzil: TCheckBox;
    ChkBoxChldChoopCoach: TCheckBox;
    ChkBoxChldDipht: TCheckBox;
    ChkBoxChldHerpes: TCheckBox;
    ChkBoxChldPoliomyel: TCheckBox;
    ChkBoxChldHepatitA: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmChildDes: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmChildDesShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmChildDes: TFrmChildDes;

implementation

uses StatusPatUnit, VarAndrUnit, StrUtils, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;
{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmChildDes.FormCreate(Sender: TObject);
begin
NiceSetFrmChildDes.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmChildDes.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Детские болезни (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Детские болезни (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmChildDes.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxChldMeasles.Checked and
    not ChkBoxChldRubella.Checked and
    not ChkBoxChldMumps.Checked and
    not ChkBoxChldChickenpox.Checked and
    not ChkBoxChldScarlat.Checked and
    not ChkBoxChldErythema.Checked and
    not ChkBoxChldTonzil.Checked and
    not ChkBoxChldChoopCoach.Checked and
    not ChkBoxChldDipht.Checked and
    not ChkBoxChldHerpes.Checked and
    not ChkBoxChldPoliomyel.Checked and
    not ChkBoxChldHepatitA.Checked
      then
        begin
          Application.MessageBox('Вы должны отметить хотя бы одну перенесенную детскую инфекцию !',
                                                         'Некорректные данные', MB_ICONINFORMATION);
          if ChkBoxChldMeasles.CanFocus then ChkBoxChldMeasles.SetFocus;
          Exit;
        end;

if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then
    TmpStr:= 'Со слов, в детстве перенес '
  else
    TmpStr:= 'Со слов, в детстве перенесла ';

if ChkBoxChldMeasles.Checked then TmpStr:= TmpStr + 'корь, ';
if ChkBoxChldRubella.Checked then TmpStr:= TmpStr + 'краснуху, ';
if ChkBoxChldMumps.Checked then TmpStr:= TmpStr + 'свинку, ';
if ChkBoxChldChickenpox.Checked then TmpStr:= TmpStr + 'ветрянку, ';
if ChkBoxChldScarlat.Checked then TmpStr:= TmpStr + 'скарлатину, ';
if ChkBoxChldErythema.Checked then TmpStr:= TmpStr + 'инфекционную эритему, ';
if ChkBoxChldTonzil.Checked then TmpStr:= TmpStr + 'частые ангины, ';
if ChkBoxChldChoopCoach.Checked then TmpStr:= TmpStr + 'коклюш, ';
if ChkBoxChldDipht.Checked then TmpStr:= TmpStr + 'дифтерию, ';
if ChkBoxChldHerpes.Checked then TmpStr:= TmpStr + 'частый герпес, ';
if ChkBoxChldPoliomyel.Checked then TmpStr:= TmpStr + 'полиомиелит, ';
if ChkBoxChldHepatitA.Checked then TmpStr:= TmpStr + 'гепатит А, ';

//обрезаем запятую и ставим точку в конце
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr)) - 1) + '.';

//анализируем имеющийся текст детского анамнеза
if Trim(TextAnamChldDes) = ''
  then //если рич-эдит был пустой
    TextAnamChldDes:= TmpStr //смело изменяем его через переменную TmpStr
  else//если что-то содержит
    if TextAnamChldDes <> TmpStr //если новый текст отличается от старого
      then
        if Application.MessageBox('Ранее введенные данные о перенесенных детских инфекциях' +
             ' сейчас будут заменены на вновь сформированный текст. Разрешить замену?',
             'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamChldDes:= TmpStr;//заменяем, если ответ "Да"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.AppEventsFrmChildDesShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;

//"спрячем" нажатие кнопарей от других форм
AppEventsFrmChildDes.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmChildDes.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

end.
