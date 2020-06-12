unit uImgAIDSFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtnrs, DB, FIBDataSet, Buttons, ExtDlgs,
  NiceSettings;

type
  TFrmImgAIDSFotos = class(TForm)
    PnlImg: TPanel;
    PnlBtnBar: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    PnlCap: TPanel;
    LblName: TLabel;
    LblCaption: TLabel;
    ImgCont: TImage;
    SpBtnAdd: TSpeedButton;
    SpBtnDel: TSpeedButton;
    OpenPictDialog: TOpenPictureDialog;
    NiceSetFrmImgAIDSFotos: TNiceSettings;
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpBtnAddClick(Sender: TObject);
    procedure SpBtnDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LoadPictToImgbox(Sender: TImage; var FExt: String);
    procedure ClearPictImgbox(Sender: TImage);
    procedure RepaintSpBtnDel(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmImgAIDSFotos: TFrmImgAIDSFotos;

implementation

uses DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit;
var TmpFExt: String;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.FormCreate(Sender: TObject);
begin
NiceSetFrmImgAIDSFotos.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmImgAIDSFotos.LoadSettings;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Изображение бланка исследования на ВИЧ (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Изображение бланка исследования на ВИЧ (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

TmpFExt:= DMFIB.DSetTmpBlobVisit.FN('TMP_AIDSFOTOS_EXT').AsString;
end;
//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//форматируем и отображаем заголовок
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - скан результата анализа пациента на ВИЧ-инфекцию';

with DMFIB, DSetTmpBlobVisit do
  begin
  //если поле не пустое, то заливаем картинку
  if not FN('TMP_AIDSFOTOS').IsNull then
    begin
      TmpFPath:= FPath + '\AIDSTmpImg' + FN('TMP_AIDSFOTOS_EXT').AsString;
      TBlobField(FN('TMP_AIDSFOTOS')).SaveToFile(TmpFPath);
        try
          ImgCont.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;
  end;

FormResize(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if ImgCont.Picture.Graphic <> nil
      then
        begin
          ImgCont.Picture.SaveToFile(FPath + '\AIDSTmpImg.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_AIDSFOTOS')).LoadFromFile(FPath + '\AIDSTmpImg.tmp');
          FN('TMP_AIDSFOTOS_EXT').AsString:= TmpFExt;
        end {if ImgCont.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_AIDSFOTOS')).Clear;
          FN('TMP_AIDSFOTOS_EXT').AsString:= '';
        end;
    if DSetTmpBlobVisit.Modified then Post;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.FormResize(Sender: TObject);
begin
LblName.Left:= (PnlCap.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnDel.Enabled:= (ImgCont.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.LoadPictToImgbox(Sender: TImage; var FExt: String);
begin
FExt:= '';
if OpenPictDialog.Execute then
  begin
    //проверка размера файла в байтах (для каждого случая подбирать индивидуально)
    if GetFileSize(OpenPictDialog.FileName) > 500000 then
      begin
        Application.MessageBox('Размер загружаемого в БД файла не должен превышать 500 Kb!'
                           + #13#10 + 'Попробуйте уменьшить вес картинки в каком-нибудь '
                           + 'графическом редакторе.', 'Ошибка доступа к данным,',
                           MB_ICONINFORMATION);
        Exit;
      end;
    try
      TImage(Sender).Picture.LoadFromFile(OpenPictDialog.FileName);
      FExt:= Trim(ExtractFileExt(OpenPictDialog.FileName));
    except
      Application.MessageBox('Не удалось загрузить изображение! Возможно файл поврежден '
                 + 'или его содержимое не является графикой.','Ошибка доступа к данным');
      FExt:= '';
    end;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.SpBtnAddClick(Sender: TObject);
begin
LoadPictToImgbox(ImgCont, TmpFExt);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.SpBtnDelClick(Sender: TObject);
begin
ClearPictImgbox(ImgCont);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgAIDSFotos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmImgAIDSFotos.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
