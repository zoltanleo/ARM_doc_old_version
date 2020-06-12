unit uFrmAllergyChoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NiceSettings, StdCtrls, ExtCtrls, AppEvnts;

type
  TFrmAllergyChoice = class(TForm)
    NiceSetFrmAllergyChoice: TNiceSettings;
    BtnCancel: TButton;
    BtnSave: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ChkBoxClinicHives: TCheckBox;
    ChkBoxClinicOedema: TCheckBox;
    ChkBoxClinicDermatit: TCheckBox;
    ChkBoxClinicRhinit: TCheckBox;
    ChkBoxClinicAsthna: TCheckBox;
    ChkBoxClinicAnafShok: TCheckBox;
    ChkBoxClinicConjuntiv: TCheckBox;
    ChkBoxClinicAnother: TCheckBox;
    ChkBoxAllergPenic: TCheckBox;
    ChkBoxAllergCefalos: TCheckBox;
    ChkBoxAllergAminoglyc: TCheckBox;
    ChkBoxAllergMacrolid: TCheckBox;
    ChkBoxAllergFtorchinol: TCheckBox;
    ChkBoxAllergNitrofur: TCheckBox;
    ChkBoxAllergTetracycl: TCheckBox;
    ChkBoxAllergImidaz: TCheckBox;
    ChkBoxAllergNovocain: TCheckBox;
    ChkBoxAllergNPVP: TCheckBox;
    ChkBoxAllergFoodBorne: TCheckBox;
    ChkBoxAllergHousehold: TCheckBox;
    ChkBoxAllergPollen: TCheckBox;
    ChkBoxAllergAnother: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    AppEventsFrmAllergyChoice: TApplicationEvents;
    ChkBoxAllergSalicil: TCheckBox;
    ChkBoxAllergSulfanilam: TCheckBox;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmAllergyChoiceShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;

  end;

var
  FrmAllergyChoice: TFrmAllergyChoice;

implementation

uses StatusPatUnit, VarAndrUnit, StrUtils, DMFIBUnit, MainAndrUnit;

var FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.BtnSaveClick(Sender: TObject);
var TmpStr: AnsiString;
begin
if not ChkBoxAllergPenic.Checked and
   not ChkBoxAllergCefalos.Checked and
   not ChkBoxAllergAminoglyc.Checked and
   not ChkBoxAllergMacrolid.Checked and
   not ChkBoxAllergFtorchinol.Checked and
   not ChkBoxAllergSalicil.Checked and
   not ChkBoxAllergNitrofur.Checked and
   not ChkBoxAllergTetracycl.Checked and
   not ChkBoxAllergImidaz.Checked and
   not ChkBoxAllergNovocain.Checked and
   not ChkBoxAllergNPVP.Checked and
   not ChkBoxAllergSulfanilam.Checked and
   not ChkBoxAllergFoodBorne.Checked and
   not ChkBoxAllergHousehold.Checked and
   not ChkBoxAllergPollen.Checked and
   not ChkBoxAllergAnother.Checked
    then
      begin
        Application.MessageBox('Вы должны отметить хотя бы один аллерген !', 'Некорректные данные',
                                                                                MB_ICONINFORMATION);
        if ChkBoxAllergPenic.CanFocus then ChkBoxAllergPenic.SetFocus;
        Exit;
      end;

if  not ChkBoxClinicHives.Checked and
    not ChkBoxClinicOedema.Checked and
    not ChkBoxClinicDermatit.Checked and
    not ChkBoxClinicRhinit.Checked and
    not ChkBoxClinicAsthna.Checked and
    not ChkBoxClinicAnafShok.Checked and
    not ChkBoxClinicConjuntiv.Checked and
    not ChkBoxClinicAnother.Checked
      then
        begin
        Application.MessageBox('Вы должны отметить хотя бы одну форму аллергической реакции '
                       + 'на выбранный Вами антиген !', 'Некорректные данные', MB_ICONINFORMATION);
        if ChkBoxClinicHives.CanFocus then ChkBoxClinicHives.SetFocus;
        Exit;
        end;

//формируем текст
TmpStr:= 'отмечает аллергическую реакцию на ';

if ChkBoxAllergPenic.Checked then TmpStr:= TmpStr + 'пенициллины, ';
if ChkBoxAllergCefalos.Checked then TmpStr:= TmpStr + 'цефалоспорины, ';
if ChkBoxAllergAminoglyc.Checked then TmpStr:= TmpStr + 'аминогликозиды, ';
if ChkBoxAllergMacrolid.Checked then TmpStr:= TmpStr + 'макролиды, ';
if ChkBoxAllergFtorchinol.Checked then TmpStr:= TmpStr + 'фторхинолоны, ';
if ChkBoxAllergSalicil.Checked then TmpStr:= TmpStr + 'салицилаты, ';
if ChkBoxAllergNitrofur.Checked then TmpStr:= TmpStr + 'нитрофураны, ';
if ChkBoxAllergTetracycl.Checked then TmpStr:= TmpStr + 'тетрациклины, ';
if ChkBoxAllergImidaz.Checked then TmpStr:= TmpStr + 'имидазолы, ';
if ChkBoxAllergNovocain.Checked then TmpStr:= TmpStr + 'препараты новокаиновой группы, ';
if ChkBoxAllergNPVP.Checked then TmpStr:= TmpStr + 'нестероидные противовоспалительные препараты ('
                                                                                        + 'НПВП), ';
if ChkBoxAllergSulfanilam.Checked then TmpStr:= TmpStr + 'сульфаниламиды, ';                                                                                        
if ChkBoxAllergFoodBorne.Checked then TmpStr:= TmpStr + 'пищевые продукты (!!!_УТОЧНИТЬ_!!!), ';
if ChkBoxAllergHousehold.Checked then TmpStr:= TmpStr + 'домашнюю пыль, ';
if ChkBoxAllergPollen.Checked then TmpStr:= TmpStr + 'пыльцу растений, ';
if ChkBoxAllergAnother.Checked then TmpStr:= TmpStr + '(!!!_УТОЧНИТЬ_!!!),';

//обрезаем запятую и парсим дальше
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + ' в виде ';


if ChkBoxClinicHives.Checked then TmpStr:= TmpStr + 'крапивницы, ';
if ChkBoxClinicOedema.Checked then TmpStr:= TmpStr + 'отека Квинке; ';
if ChkBoxClinicDermatit.Checked then TmpStr:= TmpStr + 'атопического дерматита, ';
if ChkBoxClinicRhinit.Checked then TmpStr:= TmpStr + 'аллергического ринита, ';
if ChkBoxClinicAsthna.Checked then TmpStr:= TmpStr + 'приступа бронхиальной астмы, ';
if ChkBoxClinicAnafShok.Checked then TmpStr:= TmpStr + 'анафилактического шока, ';
if ChkBoxClinicConjuntiv.Checked then TmpStr:= TmpStr + 'аллергического конъюнктивита, ';
if ChkBoxClinicAnother.Checked then TmpStr:= TmpStr + '(!!!_УТОЧНИТЬ_!!!),';

//обрезаем запятую и ставим точку
TmpStr:= LeftStr(Trim(TmpStr),Length(Trim(TmpStr))-1) + '.';

//анализируем имеющийся текст аллергологического анамнеза 
if Trim(TextAnamAllergy) = ''
  then //если рич-эдит был пустой
    TextAnamAllergy:= TmpStr //смело изменяем его через переменную TmpStr
  else//если что-то содержит
    if TextAnamAllergy <> TmpStr //если новый текст отличается от старого
      then
        if Application.MessageBox('Ранее введенные данные аллергологического анамнеза' +
             ' сейчас будут заменены на вновь сформированный текст. Разрешить замену?',
             'Изменение данных', MB_YESNO + MB_ICONINFORMATION) = IDYes
          then TextAnamAllergy:= TmpStr;//заменяем, если ответ "Да"

Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.AppEventsFrmAllergyChoiceShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"
  end;

//"спрячем" нажатие кнопарей от других форм
AppEventsFrmAllergyChoice.CancelDispatch;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.FormCreate(Sender: TObject);
begin
NiceSetFrmAllergyChoice.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmAllergyChoice.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Аллергологический анамнез (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Аллергологический анамнез (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

FocusFlag:= True;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------------

procedure TFrmAllergyChoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmAllergyChoice.SaveSettings;
end;

//----------------------------------------------------------------------------------

end.
