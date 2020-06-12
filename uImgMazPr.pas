unit uImgMazPr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, ExtDlgs, DB, DBTables,
  FIBDataSet, NiceSettings, AppEvnts, uShowFullImg, ActnList;

type
  TFrmImgMazPr = class(TForm)
    PnlBtnBar: TPanel;
    PnlCapt: TPanel;
    PnlWork: TPanel;
    PnlUp: TPanel;
    PnlDn: TPanel;
    BtnCancel: TButton;
    PnlUpLeft: TPanel;
    PnlUpRight: TPanel;
    PnlDnLeft: TPanel;
    PnlDnRight: TPanel;
    BtnSave: TButton;
    LblCaption: TLabel;
    LblName: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpBtnUpLeftAdd: TSpeedButton;
    SpBtnUpLeftDel: TSpeedButton;
    SpBtnDnLeftAdd: TSpeedButton;
    SpBtnDnLeftDel: TSpeedButton;
    SpBtnUpRigthAdd: TSpeedButton;
    SpBtnUpRigthDel: TSpeedButton;
    SpBtnDnRigthAdd: TSpeedButton;
    SpBtnDnRigthDel: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    OpenPictDialog: TOpenPictureDialog;
    NiceSetFrmImgMazPr: TNiceSettings;
    AppEventsImgMazPr: TApplicationEvents;
    ScrollBox1: TScrollBox;
    Img1: TImage;
    ScrollBox2: TScrollBox;
    Img2: TImage;
    ScrollBox3: TScrollBox;
    Img3: TImage;
    ScrollBox4: TScrollBox;
    Img4: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ActList: TActionList;
    ActShowFullImage: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure SpBtnUpLeftAddClick(Sender: TObject);
    procedure SpBtnUpLeftDelClick(Sender: TObject);
    procedure SpBtnUpRigthAddClick(Sender: TObject);
    procedure SpBtnUpRigthDelClick(Sender: TObject);
    procedure SpBtnDnLeftAddClick(Sender: TObject);
    procedure SpBtnDnLeftDelClick(Sender: TObject);
    procedure SpBtnDnRigthAddClick(Sender: TObject);
    procedure SpBtnDnRigthDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsImgMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ActShowFullImageExecute(Sender: TObject);
    procedure Img1DblClick(Sender: TObject);
    procedure Img2DblClick(Sender: TObject);
    procedure Img3DblClick(Sender: TObject);
    procedure Img4DblClick(Sender: TObject);
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
  FrmImgMazPr: TFrmImgMazPr;

implementation

uses DMFIBUnit, StatusPatUnit, VarAndrUnit, MainAndrUnit;
var TmpFExt_01, TmpFExt_02, TmpFExt_03, TmpFExt_04: String;
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.FormCreate(Sender: TObject);
begin
NiceSetFrmImgMazPr.RegKey:= NiceSetRegKeyPath;
//грузим параметры формы
NiceSetFrmImgMazPr.LoadSettings;

DoubleBuffered:= True;

ScrollBox1.BorderStyle:= bsNone;
ScrollBox2.BorderStyle:= bsNone;
ScrollBox3.BorderStyle:= bsNone;
ScrollBox4.BorderStyle:= bsNone;

PnlWork.Align:= alClient;
PnlDn.Align:= alClient;
PnlUpRight.Align:= alClient;
PnlDnRight.Align:= alClient;

Self.Caption:= 'Изображения микроскопии мазков сока простаты (пациент: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

with DMFIB, DSetTmpBlobVisit do
  begin
    TmpFExt_01:= FN('TMP_MAZPRFOTOS_01_EXT').AsString;
    TmpFExt_02:= FN('TMP_MAZPRFOTOS_02_EXT').AsString;
    TmpFExt_03:= FN('TMP_MAZPRFOTOS_03_EXT').AsString;
    TmpFExt_04:= FN('TMP_MAZPRFOTOS_04_EXT').AsString;
  end;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.FormShow(Sender: TObject);
var TmpFPath: String;
begin
//форматируем и отображаем заголовок
LblName.Caption:= FullPatName;
LblCaption.Caption:= ' - изображения мазков сока простаты';

with DMFIB, DSetTmpBlobVisit do
  begin
  //если поле не пустое, то заливаем картинку
  if not FN('TMP_MAZPRFOTOS_01').IsNull then
    begin
      TmpFPath:= FPath + '\MazPrTmpImg_01' + FN('TMP_MAZPRFOTOS_01_EXT').AsString;
      TBlobField(FN('TMP_MAZPRFOTOS_01')).SaveToFile(TmpFPath);
        try
          Img1.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;

  //если поле не пустое, то заливаем картинку
  if not FN('TMP_MAZPRFOTOS_02').IsNull then
    begin
      TmpFPath:= FPath + '\MazPrTmpImg_02' + FN('TMP_MAZPRFOTOS_02_EXT').AsString;
      TBlobField(FN('TMP_MAZPRFOTOS_02')).SaveToFile(TmpFPath);
        try
          Img2.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;

  //если поле не пустое, то заливаем картинку
  if not FN('TMP_MAZPRFOTOS_03').IsNull then
    begin
      TmpFPath:= FPath + '\MazPrTmpImg_03' + FN('TMP_MAZPRFOTOS_03_EXT').AsString;
      TBlobField(FN('TMP_MAZPRFOTOS_03')).SaveToFile(TmpFPath);
        try
          Img3.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;

  //если поле не пустое, то заливаем картинку
  if not FN('TMP_MAZPRFOTOS_04').IsNull then
    begin
       TmpFPath:= FPath + '\MazPrTmpImg_04' + FN('TMP_MAZPRFOTOS_04_EXT').AsString;
       TBlobField(FN('TMP_MAZPRFOTOS_04')).SaveToFile(TmpFPath);
        try
          Img4.Picture.LoadFromFile(TmpFPath);
        except
          Application.MessageBox('Не удается загрузить картинку из базы данных!',
                                                              'Ошибка доступа к данным');
        end;
    end;
  end;{with DMFIB, DSetTmpBlobVisit do}

//отобразим-спрячем кнопки в зависимости от заполненности TImage
RepaintSpBtnDel(Sender);

FormResize(Sender);
end;

procedure TFrmImgMazPr.Img1DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img1);
end;

procedure TFrmImgMazPr.Img2DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img2);
end;

procedure TFrmImgMazPr.Img3DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img3);
end;

procedure TFrmImgMazPr.Img4DblClick(Sender: TObject);
begin
  ActShowFullImageExecute(Img4);
end;

//----------------------------------------------------------------------------
//перерисуем кнопки удаления картинок в зависимости от заполненности TImage
procedure TFrmImgMazPr.RepaintSpBtnDel(Sender: TObject);
begin
SpBtnUpLeftDel.Enabled:= (Img1.Picture.Graphic <> nil);
SpBtnUpRigthDel.Enabled:= (Img2.Picture.Graphic <> nil);
SpBtnDnLeftDel.Enabled:= (Img3.Picture.Graphic <> nil);
SpBtnDnRigthDel.Enabled:= (Img4.Picture.Graphic <> nil);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.FormResize(Sender: TObject);
begin
PnlUp.Height:= (ClientHeight - PnlCapt.Height - PnlBtnBar.Height) div 2;
PnlUpLeft.Width:= PnlUp.Width div 2;
PnlDnLeft.Width:= PnlDn.Width div 2;
Label1.Left:= (PnlUpLeft.Width - Label1.Width) div 2;
Label1.Top:= PnlUpLeft.Height div 2;

Label2.Left:= (PnlDnLeft.Width - Label2.Width) div 2;
Label2.Top:= PnlDnLeft.Height div 2;

Label3.Left:= (PnlUpRight.Width - Label3.Width) div 2;
Label3.Top:= PnlUpRight.Height div 2;

Label4.Left:= (PnlDnRight.Width - Label4.Width) div 2;
Label4.Top:= PnlDnRight.Height div 2;

LblName.Left:= (PnlCapt.Width - LblName.Width - 5 - LblCaption.Width) div 2;
LblCaption.Left:= LblName.Left + LblName.Width + 5;
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.BtnSaveClick(Sender: TObject);
begin
with DMFIB, DSetTmpBlobVisit do
  begin
    Edit;
    if Img1.Picture.Graphic <> nil
      then
        begin
          Img1.Picture.SaveToFile(FPath + '\MazPrTmpImg_01.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_MAZPRFOTOS_01')).LoadFromFile(FPath + '\MazPrTmpImg_01.tmp');
          FN('TMP_MAZPRFOTOS_01_EXT').AsString:= TmpFExt_01;
        end {if Img1.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_MAZPRFOTOS_01')).Clear;
          FN('TMP_MAZPRFOTOS_01_EXT').AsString:= '';
        end;

    if Img2.Picture.Graphic <> nil
      then
        begin
          Img2.Picture.SaveToFile(FPath + '\MazPrTmpImg_02.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_MAZPRFOTOS_02')).LoadFromFile(FPath + '\MazPrTmpImg_02.tmp');
          FN('TMP_MAZPRFOTOS_02_EXT').AsString:= TmpFExt_02;
        end {if Img2.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_MAZPRFOTOS_02')).Clear;
          FN('TMP_MAZPRFOTOS_02_EXT').AsString:= '';
        end;

    if Img3.Picture.Graphic <> nil
      then
        begin
          Img3.Picture.SaveToFile(FPath + '\MazPrTmpImg_03.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_MAZPRFOTOS_03')).LoadFromFile(FPath + '\MazPrTmpImg_03.tmp');
          FN('TMP_MAZPRFOTOS_03_EXT').AsString:= TmpFExt_03;
        end {if Img3.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_MAZPRFOTOS_03')).Clear;
          FN('TMP_MAZPRFOTOS_03_EXT').AsString:= '';
        end;

    if Img4.Picture.Graphic <> nil
      then
         begin
          Img4.Picture.SaveToFile(FPath + '\MazPrTmpImg_04.tmp');//сохраняем во временный файл
          TBlobField(FN('TMP_MAZPRFOTOS_04')).LoadFromFile(FPath + '\MazPrTmpImg_04.tmp');
          FN('TMP_MAZPRFOTOS_04_EXT').AsString:= TmpFExt_04;
        end {if Img4.Picture.Graphic <> nil ..then}
      else //иначе канва пустая, поэтому "обнулим" поле
        begin
          TBlobField(FN('TMP_MAZPRFOTOS_04')).Clear;
          FN('TMP_MAZPRFOTOS_04_EXT').AsString:= '';
        end;

    if DSetTmpBlobVisit.Modified then Post;
  end;{with DMFIB, DSetTmpBlobVisit do}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.ActShowFullImageExecute(Sender: TObject);
var frmImage: TfrmShowFullImg;
begin
  if (Sender is TImage) then
  begin
    if Assigned(@TImage(Sender)) then
    begin
      frmImage:= TfrmShowFullImg.Create(nil);
      try
        frmImage.imgFull.Picture.Graphic:= TImage(Sender).Picture.Graphic;
        frmImage.ShowModal;
      finally
        FreeAndNil(frmImage);
      end;
    end;
  end;
end;

procedure TFrmImgMazPr.AppEventsImgMazPrShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//эмулируем нажатие клавиши "Отмена"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//эмулируем нажатие клавиши "Сохранить"

    //отслеживаем "хоткеи" картиночных клавиш добавления/удаления картинок
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftAdd.Enabled then SpBtnUpLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('1')) < 0) and SpBtnUpLeftDel.Enabled then SpBtnUpLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnDnLeftAdd.Enabled then SpBtnDnLeftAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('3')) < 0) and SpBtnDnLeftDel.Enabled then SpBtnDnLeftDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpRigthAdd.Enabled then SpBtnUpRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('2')) < 0) and SpBtnUpRigthDel.Enabled then SpBtnUpRigthDelClick(Self);

    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnRigthAdd.Enabled then SpBtnDnRigthAddClick(Self);
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(Ord('4')) < 0) and SpBtnDnRigthDel.Enabled then SpBtnDnRigthDelClick(Self);
  end;

AppEventsImgMazPr.CancelDispatch;//чтобы другие формы не реагировали по этому событию
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.BtnCancelClick(Sender: TObject);
begin
if DMFIB.DSetTmpBlobVisit.Modified then DMFIB.DSetTmpBlobVisit.Cancel;
Close;
end;



(******************************************************************************)
(***           Блок обработки кнопок добавления-удаления картинок           ***)
(******************************************************************************)

//----------------------------------------------------------------------------
//чистим картинку от изображения
procedure TFrmImgMazPr.ClearPictImgbox(Sender: TImage);
begin
TImage(Sender).Picture.Graphic:= nil;
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------
//загружаем в картинку изображение
procedure TFrmImgMazPr.LoadPictToImgbox(Sender: TImage; var FExt: String);
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

procedure TFrmImgMazPr.SpBtnUpLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img1, TmpFExt_01);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnUpLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img1);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnUpRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img2, TmpFExt_02);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnUpRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img2);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnDnLeftAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img3, TmpFExt_03);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnDnLeftDelClick(Sender: TObject);
begin
ClearPictImgbox(Img3);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnDnRigthAddClick(Sender: TObject);
begin
LoadPictToImgbox(Img4, TmpFExt_04);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.SpBtnDnRigthDelClick(Sender: TObject);
begin
ClearPictImgbox(Img4);
RepaintSpBtnDel(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmImgMazPr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//сохраняем параметры формы
NiceSetFrmImgMazPr.SaveSettings;
end;

end.
