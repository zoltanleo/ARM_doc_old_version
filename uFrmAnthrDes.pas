unit uFrmAnthrDes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, NiceSettings, ExtCtrls, AppEvnts;

type
  TFrmAnthrDes = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmAnthrDes: TNiceSettings;
    GroupBox1: TGroupBox;
    ChkBoxAnthrIBS: TCheckBox;
    ChkBoxAnthrGastricUlcer: TCheckBox;
    ChkBoxAnthrDuodenUlcer: TCheckBox;
    ChkBoxAnthrCholecyst: TCheckBox;
    ChkBoxAnthrPyelonephr: TCheckBox;
    ChkBoxAnthrCystitis: TCheckBox;
    ChkBoxAnthrProstatit: TCheckBox;
    ChkBoxAnthrAdnexitis: TCheckBox;
    ChkBoxAnthrEndometrit: TCheckBox;
    ChkBoxAnthrGastritis: TCheckBox;
    ChkBoxAnthrHypertension: TCheckBox;
    ChkBoxAnthrPancreat: TCheckBox;
    ChkBoxAnthrOther: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmAnthrDes: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmAnthrDesShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmAnthrDes: TFrmAnthrDes;

implementation

uses StatusPatUnit, VarAndrUnit, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.FormCreate(Sender: TObject);
begin
NiceSetFrmAnthrDes.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmAnthrDes.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Соматика в анамнезе (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Соматика в анамнезе (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

ChkBoxAnthrProstatit.Enabled:= (DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
ChkBoxAnthrAdnexitis.Enabled:= not(DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);
ChkBoxAnthrEndometrit.Enabled:= not(DMFIB.DSetAnketa.FN('SEX').AsInteger = 1);

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmAnthrDes.SaveSettings;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxAnthrIBS.Checked and
    not ChkBoxAnthrGastricUlcer.Checked and
    not ChkBoxAnthrDuodenUlcer.Checked and
    not ChkBoxAnthrCholecyst.Checked and
    not ChkBoxAnthrPyelonephr.Checked and
    not ChkBoxAnthrCystitis.Checked and
    not ChkBoxAnthrProstatit.Checked and
    not ChkBoxAnthrAdnexitis.Checked and
    not ChkBoxAnthrEndometrit.Checked and
    not ChkBoxAnthrGastritis.Checked and
    not ChkBoxAnthrHypertension.Checked and
    not ChkBoxAnthrPancreat.Checked and
    not ChkBoxAnthrOther.Checked
      then
        begin
          Application.MessageBox('Вы должны отметить хотя бы одно сопутствующее заболевание !',
                                                         'Некорректные данные', MB_ICONINFORMATION);
          if ChkBoxAnthrIBS.CanFocus then ChkBoxAnthrIBS.SetFocus;

          Exit;
        end;

TmpStr:= 'В анамнезе: ';

if ChkBoxAnthrIBS.Checked then TmpStr:= TmpStr + 'ИБС, ';
if ChkBoxAnthrGastricUlcer.Checked then TmpStr:= TmpStr + 'язвенная болезнь желудка, ';
if ChkBoxAnthrDuodenUlcer.Checked then TmpStr:= TmpStr + 'язвенная болезнь 12 п.к., ';
if ChkBoxAnthrCholecyst.Checked then TmpStr:= TmpStr + 'хрон.холецистит, ';
if ChkBoxAnthrPyelonephr.Checked then TmpStr:= TmpStr + 'хрон.пиелонефрит, ';
if ChkBoxAnthrCystitis.Checked then TmpStr:= TmpStr + 'хрон.цистит, ';
if ChkBoxAnthrProstatit.Checked then TmpStr:= TmpStr + 'хрон.простатит, ';
if ChkBoxAnthrAdnexitis.Checked then TmpStr:= TmpStr + 'хрон.аднексит, ';
if ChkBoxAnthrEndometrit.Checked then TmpStr:= TmpStr + 'хрон.метроэндометрит, ';
if ChkBoxAnthrHypertension.Checked then TmpStr:= TmpStr + 'гиперт.болезнь, ';
if ChkBoxAnthrGastritis.Checked then TmpStr:= TmpStr + 'хрон.гастрит, ';
if ChkBoxAnthrPancreat.Checked then TmpStr:= TmpStr + 'хрон.панкреатит, ';
if ChkBoxAnthrOther.Checked then TmpStr:= TmpStr + '(!!!_ОПИСАТЬ_!!!), ';

//обрезаем запятую и ставим точку в конце
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//анализируем имеющийся текст детского анамнеза
if Trim(TextAnamAnthrDes) = ''
  then //если рич-эдит был пустой
    TextAnamAnthrDes:= TmpStr //смело изменяем его через переменную TmpStr
  else//если что-то содержит
    if TextAnamAnthrDes <> TmpStr //если новый текст отличается от старого
      then
        if Application.MessageBox('Ранее введенные данные о сопутствующих заболеваниях' +
             ' сейчас будут заменены на вновь сформированный текст. Разрешить замену?',
             'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamAnthrDes:= TmpStr;//заменяем, если ответ "Да"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.AppEventsFrmAnthrDesShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if FocusFlag then
    begin
      if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
    end;
//"спрячем" нажатие кнопарей от других форм
AppEventsFrmAnthrDes.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmAnthrDes.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

end.
