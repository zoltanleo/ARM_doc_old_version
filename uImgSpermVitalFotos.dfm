object FrmImgSpermVitalFotos: TFrmImgSpermVitalFotos
  Left = 216
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1073#1083#1072#1085#1082#1072' '#1090#1077#1089#1090#1072' '#1089#1087#1077#1088#1084#1099' '#1085#1072' '#1078#1080#1079#1085#1077#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100
  ClientHeight = 601
  ClientWidth = 617
  Color = clBtnFace
  Constraints.MinHeight = 633
  Constraints.MinWidth = 625
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
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      617
      497)
    object SpBtnAdd: TSpeedButton
      Left = 594
      Top = 3
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091' (<Shift> + 1)'
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
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091' (<Ctrl> + 1)'
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
    object ScrollBox1: TScrollBox
      Left = 10
      Top = 10
      Width = 578
      Height = 481
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object ImgCont: TImage
        Left = 5
        Top = 5
        Width = 361
        Height = 273
        AutoSize = True
        Center = True
        Proportional = True
        Stretch = True
      end
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 546
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
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
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
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
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
    Left = 80
    Top = 8
  end
  object NiceSetFrmImgSpermVitalFotos: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'Width'
      'Height')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 48
    Top = 8
  end
  object AppEventsImgSpermVitalFotos: TApplicationEvents
    OnShortCut = AppEventsImgSpermVitalFotosShortCut
    Left = 16
    Top = 8
  end
end
