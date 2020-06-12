object FrmZPPP: TFrmZPPP
  Left = 467
  Top = 321
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1047#1055#1055#1055
  ClientHeight = 300
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
    300)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSave: TButton
    Left = 311
    Top = 267
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
    Top = 267
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
    Height = 253
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1087#1086#1083#1086#1074#1099#1077' '#1080#1085#1092#1077#1082#1094#1080#1080'   '
    TabOrder = 0
    object ChkBoxZPPPChl: TCheckBox
      Left = 24
      Top = 48
      Width = 81
      Height = 17
      Caption = #1093#1083#1072#1084#1080#1076#1080#1086#1079
      TabOrder = 0
    end
    object ChkBoxZPPPMic: TCheckBox
      Left = 24
      Top = 80
      Width = 97
      Height = 17
      Caption = #1084#1080#1082#1086#1087#1083#1072#1079#1084#1086#1079
      TabOrder = 1
    end
    object ChkBoxZPPPUreap: TCheckBox
      Left = 24
      Top = 112
      Width = 97
      Height = 17
      Caption = #1091#1088#1077#1072#1087#1083#1072#1079#1084#1086#1079
      TabOrder = 2
    end
    object ChkBoxZPPPGard: TCheckBox
      Left = 24
      Top = 144
      Width = 97
      Height = 17
      Caption = #1075#1072#1088#1076#1085#1077#1088#1077#1083#1083#1077#1079
      TabOrder = 3
    end
    object ChkBoxZPPPTrich: TCheckBox
      Left = 24
      Top = 176
      Width = 97
      Height = 17
      Caption = #1090#1088#1080#1093#1086#1084#1086#1085#1080#1072#1079
      TabOrder = 4
    end
    object ChkBoxZPPPGn: TCheckBox
      Left = 24
      Top = 208
      Width = 97
      Height = 17
      Caption = #1075#1086#1085#1086#1088#1077#1103
      TabOrder = 5
    end
    object ChkBoxZPPPLues: TCheckBox
      Left = 248
      Top = 48
      Width = 81
      Height = 17
      Caption = #1089#1080#1092#1080#1083#1080#1089
      TabOrder = 6
    end
    object ChkBoxZPPPCand: TCheckBox
      Left = 248
      Top = 80
      Width = 89
      Height = 17
      Caption = #1082#1072#1085#1076#1080#1076#1086#1079
      TabOrder = 7
    end
    object ChkBoxZPPPpvi: TCheckBox
      Left = 248
      Top = 112
      Width = 180
      Height = 17
      Caption = #1087#1072#1087#1080#1083#1083#1086#1084#1072#1074#1080#1088#1091#1089#1085#1072#1103' '#1080#1085#1092#1077#1082#1094#1080#1103
      TabOrder = 8
      WordWrap = True
    end
    object ChkBoxZPPPHerp: TCheckBox
      Left = 248
      Top = 144
      Width = 145
      Height = 17
      Caption = #1075#1077#1085#1080#1090#1072#1083#1100#1085#1099#1081' '#1075#1077#1088#1087#1077#1089
      TabOrder = 9
    end
    object ChkBoxZPPPCMV: TCheckBox
      Left = 248
      Top = 176
      Width = 180
      Height = 17
      Caption = #1094#1080#1090#1086#1084#1077#1075#1072#1083#1086#1074#1080#1088#1091#1089#1085#1072#1103' '#1080#1085#1092#1077#1082#1094#1080#1103
      TabOrder = 10
      WordWrap = True
    end
    object Panel1: TPanel
      Left = 208
      Top = 48
      Width = 2
      Height = 177
      BevelOuter = bvLowered
      TabOrder = 11
    end
  end
  object NiceSetFrmZPPP: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 281
    Top = 256
  end
  object AppEventsFrmZPPP: TApplicationEvents
    OnShortCut = AppEventsFrmZPPPShortCut
    Left = 248
    Top = 256
  end
end
