object FrmAnthrDes: TFrmAnthrDes
  Left = 431
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1086#1087#1091#1089#1090#1074#1091#1102#1097#1080#1077' '#1089#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103
  ClientHeight = 333
  ClientWidth = 475
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
  DesignSize = (
    475
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSave: TButton
    Left = 311
    Top = 300
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 392
    Top = 300
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 459
    Height = 286
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1057#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1089#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103'   '
    TabOrder = 0
    object ChkBoxAnthrIBS: TCheckBox
      Left = 24
      Top = 48
      Width = 97
      Height = 17
      Caption = ' '#1048#1041#1057
      TabOrder = 0
    end
    object ChkBoxAnthrGastricUlcer: TCheckBox
      Left = 24
      Top = 112
      Width = 145
      Height = 17
      Caption = ' '#1103#1079#1074#1077#1085#1085#1072#1103' '#1073'-'#1085#1100' '#1078#1077#1083#1091#1076#1082#1072
      TabOrder = 2
    end
    object ChkBoxAnthrDuodenUlcer: TCheckBox
      Left = 24
      Top = 144
      Width = 137
      Height = 17
      Caption = ' '#1103#1079#1074#1077#1085#1085#1072#1103' '#1073'-'#1085#1100' 12 '#1087'.'#1082'.'
      TabOrder = 3
    end
    object ChkBoxAnthrCholecyst: TCheckBox
      Left = 24
      Top = 208
      Width = 121
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1093#1086#1083#1077#1094#1080#1089#1090#1080#1090
      TabOrder = 5
    end
    object ChkBoxAnthrPyelonephr: TCheckBox
      Left = 248
      Top = 48
      Width = 121
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1087#1080#1077#1083#1086#1085#1077#1092#1088#1080#1090
      TabOrder = 7
    end
    object ChkBoxAnthrCystitis: TCheckBox
      Left = 248
      Top = 80
      Width = 97
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1094#1080#1089#1090#1080#1090
      TabOrder = 8
    end
    object ChkBoxAnthrProstatit: TCheckBox
      Left = 248
      Top = 112
      Width = 97
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1087#1088#1086#1089#1090#1072#1090#1080#1090
      TabOrder = 9
    end
    object ChkBoxAnthrAdnexitis: TCheckBox
      Left = 248
      Top = 144
      Width = 97
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1072#1076#1085#1077#1082#1089#1080#1090
      TabOrder = 10
    end
    object ChkBoxAnthrEndometrit: TCheckBox
      Left = 248
      Top = 176
      Width = 145
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1084#1077#1090#1088#1086#1101#1085#1076#1086#1084#1077#1090#1088#1080#1090
      TabOrder = 11
    end
    object ChkBoxAnthrGastritis: TCheckBox
      Left = 24
      Top = 176
      Width = 97
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1075#1072#1089#1090#1088#1080#1090
      TabOrder = 4
    end
    object ChkBoxAnthrHypertension: TCheckBox
      Left = 24
      Top = 80
      Width = 113
      Height = 17
      Caption = ' '#1075#1080#1087#1077#1088#1090'.'#1073#1086#1083#1077#1079#1085#1100
      TabOrder = 1
    end
    object ChkBoxAnthrPancreat: TCheckBox
      Left = 24
      Top = 240
      Width = 113
      Height = 17
      Caption = ' '#1093#1088#1086#1085'.'#1087#1072#1085#1082#1088#1077#1072#1090#1080#1090
      TabOrder = 6
    end
    object ChkBoxAnthrOther: TCheckBox
      Left = 248
      Top = 208
      Width = 73
      Height = 17
      Caption = #1076#1088#1091#1075#1086#1077
      TabOrder = 12
    end
    object Panel1: TPanel
      Left = 208
      Top = 48
      Width = 2
      Height = 209
      BevelOuter = bvLowered
      TabOrder = 13
    end
  end
  object NiceSetFrmAnthrDes: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 256
    Top = 288
  end
  object AppEventsFrmAnthrDes: TApplicationEvents
    OnShortCut = AppEventsFrmAnthrDesShortCut
    Left = 224
    Top = 288
  end
end
