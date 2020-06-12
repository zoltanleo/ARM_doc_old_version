unit uFrmZPPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StrUtils, StdCtrls, AppEvnts, ExtCtrls;

type
  TFrmZPPP = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmZPPP: TNiceSettings;
    GroupBox1: TGroupBox;
    ChkBoxZPPPChl: TCheckBox;
    ChkBoxZPPPMic: TCheckBox;
    ChkBoxZPPPUreap: TCheckBox;
    ChkBoxZPPPGard: TCheckBox;
    ChkBoxZPPPTrich: TCheckBox;
    ChkBoxZPPPGn: TCheckBox;
    ChkBoxZPPPLues: TCheckBox;
    ChkBoxZPPPCand: TCheckBox;
    ChkBoxZPPPpvi: TCheckBox;
    ChkBoxZPPPHerp: TCheckBox;
    ChkBoxZPPPCMV: TCheckBox;
    Panel1: TPanel;
    AppEventsFrmZPPP: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure AppEventsFrmZPPPShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmZPPP: TFrmZPPP;

implementation

uses StatusPatUnit, VarAndrUnit, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmZPPP.FormCreate(Sender: TObject);
begin
NiceSetFrmZPPP.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmZPPP.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Перенесенные ИППП (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Перенесенные ИППП (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmZPPP.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if  not ChkBoxZPPPChl.Checked and
    not ChkBoxZPPPMic.Checked and
    not ChkBoxZPPPUreap.Checked and
    not ChkBoxZPPPGard.Checked and
    not ChkBoxZPPPTrich.Checked and
    not ChkBoxZPPPGn.Checked and
    not ChkBoxZPPPLues.Checked and
    not ChkBoxZPPPCand.Checked and
    not ChkBoxZPPPpvi.Checked and
    not ChkBoxZPPPHerp.Checked and
    not ChkBoxZPPPCMV.Checked
      then
        begin
          Application.MessageBox('Вы должны отметить хотя бы одну перенесенную половую инфекцию !',
                                                         'Некорректные данные', MB_ICONINFORMATION);
          if ChkBoxZPPPChl.CanFocus then ChkBoxZPPPChl.SetFocus;
          Exit;
        end;

TmpStr:= 'Перенесенные ИППП: ';
if ChkBoxZPPPChl.Checked then TmpStr:= TmpStr + 'хламидиоз, ';
if ChkBoxZPPPMic.Checked then TmpStr:= TmpStr + 'микоплазмоз, ';
if ChkBoxZPPPUreap.Checked then TmpStr:= TmpStr + 'уреаплазмоз, ';
if ChkBoxZPPPGard.Checked then TmpStr:= TmpStr + 'гарднереллез, ';
if ChkBoxZPPPTrich.Checked then TmpStr:= TmpStr + 'трихомониаз, ';
if ChkBoxZPPPGn.Checked then TmpStr:= TmpStr + 'гонорея, ';
if ChkBoxZPPPLues.Checked then TmpStr:= TmpStr + 'сифилис, ';
if ChkBoxZPPPCand.Checked then TmpStr:= TmpStr + 'кандидоз гениталий, ';
if ChkBoxZPPPpvi.Checked then TmpStr:= TmpStr + 'папилломавирусная инфекция гениталий, ';
if ChkBoxZPPPHerp.Checked then TmpStr:= TmpStr + 'генитальный герпес, ';
if ChkBoxZPPPCMV.Checked then TmpStr:= TmpStr + 'цитомегаловирусная инфекция, ';

//обрезаем запятую и ставим точку в конце
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//обрабатываем ситуацию в зависимости от состояния флага-сендера(т.е. какя кнопка-сендер была нажата)
if ZPPPboolFlag
  then//анамнез ИППП у мужчины
    begin
      //анализируем имеющийся текст анамнеза ИППП
      if Trim(TextAndrZPPP) = ''
        then //если рич-эдит был пустой
          TextAndrZPPP:= TmpStr //смело изменяем его через переменную TmpStr
        else//если что-то содержит
          if TextAndrZPPP <> TmpStr //если новый текст отличается от старого
            then
              if Application.MessageBox('Ранее введенные данные о перенесенных половых инфекциях' +
                   ' сейчас будут заменены на вновь сформированный текст. Разрешить замену?',
                   'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
                then TextAndrZPPP:= TmpStr;//заменяем, если ответ "Да"
    end
  else //анамнез ИППП у женщин
    begin
      //анализируем имеющийся текст детского анамнеза
      if Trim(TextGinZPPP) = ''
        then //если рич-эдит был пустой
          TextGinZPPP:= TmpStr //смело изменяем его через переменную TmpStr
        else//если что-то содержит
          if TextGinZPPP <> TmpStr //если новый текст отличается от старого
            then
              if Application.MessageBox('Ранее введенные данные о перенесенных половых инфекциях' +
                   ' сейчас будут заменены на вновь сформированный текст. Разрешить замену?',
                   'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
                then TextGinZPPP:= TmpStr;//заменяем, если ответ "Да"
    end;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.AppEventsFrmZPPPShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;

//"спрячем" нажатие кнопарей от других форм
AppEventsFrmZPPP.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmZPPP.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

end.
