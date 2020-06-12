object FrmChildDes: TFrmChildDes
  Left = 397
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1077#1090#1089#1082#1080#1077' '#1080#1085#1092#1077#1082#1094#1080#1080
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
    Caption = '   '#1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1076#1077#1090#1089#1082#1080#1077' '#1080#1085#1092#1077#1082#1094#1080#1080'   '
    TabOrder = 0
    object ChkBoxChldMeasles: TCheckBox
      Left = 24
      Top = 48
      Width = 57
      Height = 17
      Caption = #1082#1086#1088#1100
      TabOrder = 0
    end
    object ChkBoxChldRubella: TCheckBox
      Left = 24
      Top = 80
      Width = 73
      Height = 17
      Caption = #1082#1088#1072#1089#1085#1091#1093#1072
      TabOrder = 1
    end
    object ChkBoxChldMumps: TCheckBox
      Left = 24
      Top = 112
      Width = 65
      Height = 17
      Caption = #1089#1074#1080#1085#1082#1072
      TabOrder = 2
    end
    object ChkBoxChldChickenpox: TCheckBox
      Left = 24
      Top = 144
      Width = 81
      Height = 17
      Caption = #1074#1077#1090#1088#1103#1085#1082#1072
      TabOrder = 3
    end
    object ChkBoxChldScarlat: TCheckBox
      Left = 24
      Top = 176
      Width = 89
      Height = 17
      Caption = #1089#1082#1072#1088#1083#1072#1090#1080#1085#1072
      TabOrder = 4
    end
    object ChkBoxChldErythema: TCheckBox
      Left = 24
      Top = 208
      Width = 145
      Height = 17
      Caption = #1080#1085#1092#1077#1082#1094#1080#1086#1085#1085#1072#1103' '#1101#1088#1080#1090#1077#1084#1072
      TabOrder = 5
    end
    object ChkBoxChldTonzil: TCheckBox
      Left = 248
      Top = 48
      Width = 65
      Height = 17
      Caption = #1072#1085#1075#1080#1085#1099
      TabOrder = 6
    end
    object ChkBoxChldChoopCoach: TCheckBox
      Left = 248
      Top = 80
      Width = 65
      Height = 17
      Caption = #1082#1086#1082#1083#1102#1096
      TabOrder = 7
    end
    object ChkBoxChldDipht: TCheckBox
      Left = 248
      Top = 112
      Width = 73
      Height = 17
      Caption = #1076#1080#1092#1090#1077#1088#1080#1103
      TabOrder = 8
    end
    object ChkBoxChldHerpes: TCheckBox
      Left = 248
      Top = 144
      Width = 65
      Height = 17
      Caption = #1075#1077#1088#1087#1077#1089
      TabOrder = 9
    end
    object ChkBoxChldPoliomyel: TCheckBox
      Left = 248
      Top = 176
      Width = 97
      Height = 17
      Caption = #1087#1086#1083#1080#1086#1084#1080#1077#1083#1080#1090
      TabOrder = 10
    end
    object ChkBoxChldHepatitA: TCheckBox
      Left = 248
      Top = 208
      Width = 81
      Height = 17
      Caption = #1075#1077#1087#1072#1090#1080#1090' '#1040
      TabOrder = 11
    end
    object Panel1: TPanel
      Left = 208
      Top = 48
      Width = 2
      Height = 177
      BevelOuter = bvLowered
      TabOrder = 12
    end
  end
  object NiceSetFrmChildDes: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 272
    Top = 264
  end
  object AppEventsFrmChildDes: TApplicationEvents
    OnShortCut = AppEventsFrmChildDesShortCut
    Left = 240
    Top = 264
  end
end
