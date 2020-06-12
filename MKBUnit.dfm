object FrmMKBView: TFrmMKBView
  Left = 238
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1072#1103' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1094#1080#1103' '#1073#1086#1083#1077#1079#1085#1077#1081' '#1061' '#1087#1077#1088#1077#1089#1084#1086#1090#1088#1072' ('#1052#1050#1041'-10)'
  ClientHeight = 527
  ClientWidth = 779
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
    779
    527)
  PixelsPerInch = 96
  TextHeight = 13
  object TreeViewMKB: TJvDBTreeView
    Left = 8
    Top = 8
    Width = 761
    Height = 464
    DataSource = DMFIB.DS_MKB_10
    MasterField = 'VALUES_UID'
    DetailField = 'TREE_ID'
    ItemField = 'MKB_VALUES'
    StartMasterValue = '0'
    UseFilter = False
    PersistentNode = False
    ReadOnly = True
    Indent = 19
    TabOrder = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    ChangeDelay = 100
    ToolTips = False
    Mirror = False
  end
  object BtnClose: TButton
    Left = 688
    Top = 486
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BtnCloseClick
  end
  object BtnGet: TButton
    Left = 608
    Top = 486
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = BtnGetClick
  end
  object NiceSetFrmMKBView: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'Width'
      'Height')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 552
    Top = 480
  end
  object AppEventsFrmMKB: TApplicationEvents
    OnShortCut = AppEventsFrmMKBShortCut
    Left = 520
    Top = 480
  end
end
