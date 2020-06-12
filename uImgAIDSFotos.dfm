object FrmImgAIDSFotos: TFrmImgAIDSFotos
  Left = 216
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1073#1083#1072#1085#1082#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1085#1072' '#1042#1048#1063
  ClientHeight = 599
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlImg: TPanel
    Left = 0
    Top = 49
    Width = 617
    Height = 495
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      617
      495)
    object ImgCont: TImage
      Left = 0
      Top = 0
      Width = 617
      Height = 495
      Align = alClient
      Center = True
      Proportional = True
      Stretch = True
    end
    object SpBtnAdd: TSpeedButton
      Left = 594
      Top = 3
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777711777
        7777777777711777777777777771177777777777111111117777777711111111
        7777777777711777777777777771177777777777777117777777777777777777
        7777777777777777777777777777777777777777777777777777}
      OnClick = SpBtnAddClick
    end
    object SpBtnDel: TSpeedButton
      Left = 594
      Top = 21
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        777777777C777C7777777777CCC7CCC7777777777CCCCC777777777777CCC777
        777777777CCCCC7777777777CCC7CCC7777777777C777C777777777777777777
        7777777777777777777777777777777777777777777777777777}
      OnClick = SpBtnDelClick
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 544
    Width = 617
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      617
      55)
    object BtnSave: TButton
      Left = 456
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object BtnCancel: TButton
      Left = 536
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = BtnCancelClick
    end
  end
  object PnlCap: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object LblName: TLabel
      Left = 112
      Top = 16
      Width = 50
      Height = 13
      Caption = 'LblName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblCaption: TLabel
      Left = 176
      Top = 16
      Width = 50
      Height = 13
      Caption = 'LblCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object OpenPictDialog: TOpenPictureDialog
    Filter = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1077' '#1092#1072#1081#1083#1099' (*.jpg;*.jpeg)|*.jpg;*.jpeg'
    Title = #1054#1090#1082#1088#1099#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    Left = 64
    Top = 8
  end
  object NiceSetFrmImgAIDSFotos: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'Width'
      'Height')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 32
    Top = 8
  end
end
