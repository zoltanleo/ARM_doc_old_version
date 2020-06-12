unit uImgOnkomarkerFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtnrs, DB, FIBDataSet, Buttons, ExtDlgs,
  NiceSettings, AppEvnts;

type
  TFrmImgOnkomarkerFotos = class(TForm)
    PnlImg: TPanel;
    PnlBtnBar: TPanel;
    BtnSave: TButton;
    BtnCancel: TButton;
    PnlCap: TPanel;
    LblName: TLabel;
    LblCaption: TLabel;
    SpBtnAdd: TSpeedButton;
    SpBtnDel: TSpeedButton;
    OpenPictDialog: TOpenPictureDialog;
    NiceSetFrmImgOnkomarkerFotos: TNiceSettings;
    AppEventsImgOnkomarkerFotos: TApplicationEvents;
    ScrollBox1: TScrollBox;
    ImgCont: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpBtnAddClick(Sender: TObject);
    procedure SpBtnDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsImgOnkomarkerFotosShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
    procedure LoadPictToImgbox(Sender: TImage; var FExt: String);
    procedure ClearPictImgbox(Sender: TImage);
    procedure RepaintSpBtnDel(Sender: TObject);
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;
    
  end;

var
  FrmImgOnkomarkerFotos: TFrmImgOnkomarkerFotos;

implementation

uses DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit;
var TmpFExt: String;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.FormCreate(Sender: TObject);
begin
NiceSetFrmImgOnkomarkerFotos.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmImgOnkomarkerFotos.LoadSettings;

DoubleBuffered:= True;
ScrollBox1.BorderStyle:= bsNone;

//рисуем заголовок в зависимости от пола
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //если это мужчина
      Self.Caption:= 'Изображение бланка онкомаркеров крови (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //если это женщина
      Self.Caption:= 'Изображение бланка онкомаркеров крови (пациентка: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


TmpFExt:= DMFIB.DSetTmpBlobVisit.FN('TMP_ONKOMARKERFOTOS_EXT').AsString;

FocusFlag:= True;
end;
//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//форматируем и отображаем заголовок
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - скан результата исследования онкомаркеров крови пациента';

with DMFIB, DSetTmpBlobVisit do
  begin
  //если поле не пустое, то заливаем картинку
  if not FN('TMP_ONKOMARKERFOTOS').IsNull then
    begin
      TmpFPath:= FPath + '\OnkomarkerFotosTmpImg' + FN('TMP_ONKOMARKERFOTOS_EXT').AsString;
      TBlobField(FN('TMP_ONKOMARKERFOTOS')).SaveToFile(TmpFPath);
        try
          ImgCont.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;
  end;

FormResize(Sender);

SpBtnDel.Enabled:= (ImgCont.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if ImgCont.Picture.Graphic <> nil
      then
        begin
          ImgCont.Picture.SaveToFile(FPath + '\OnkomarkerFotosTmpImg.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_ONKOMARKERFOTOS')).LoadFromFile(FPath + '\OnkomarkerFotosTmpImg.tmp');
          FN('TMP_ONKOMARKERFOTOS_EXT').AsString:= TmpFExt;
        end {if ImgCont.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_ONKOMARKERFOTOS')).Clear;
          FN('TMP_ONKOMARKERFOTOS_EXT').AsString:= '';
        end;
    if DSetTmpBlobVisit.Modified then Post;
  end;

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.AppEventsImgOnkomarkerFotosShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    //реагируем на "хоткеи"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then  BtnSaveClick(Self);
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);

    //отслеживаем "хоткеи" картиночных клавиш добавления/удаления картинок
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnAdd.Enabled then SpBtnAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnDel.Enabled then SpBtnDelClick(Self);
  end;
AppEventsImgOnkomarkerFotos.CancelDispatch;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.FormResize(Sender: TObject);
begin
LblName.Left:= (PnlCap.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnDel.Enabled:= (ImgCont.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.LoadPictToImgbox(Sender: TImage; var FExt: String);
begin
FExt:= '';
if OpenPictDialog.Execute then
  begin
    //проверка размера файла в байтах (для каждого случая подбирать индивидуально)
//    if GetFileSize(OpenPictDialog.FileName) > 500000 then
//      begin
//        Application.MessageBox('Размер загружаемого в БД файла не должен превышать 500 Kb!'
//                           + #13#10 + 'Попробуйте уменьшить вес картинки в каком-нибудь '
//                           + 'графическом редакторе.', 'Ошибка доступа к данным,',
//                           MB_ICONINFORMATION);
//        Exit;
//      end;
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

procedure TFrmImgOnkomarkerFotos.SpBtnAddClick(Sender: TObject);
begin
LoadPictToImgbox(ImgCont, TmpFExt);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.SpBtnDelClick(Sender: TObject);
begin
ClearPictImgbox(ImgCont);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgOnkomarkerFotos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmImgOnkomarkerFotos.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
