object FrmAllergyChoice: TFrmAllergyChoice
  Left = 405
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1083#1083#1077#1088#1075#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1072#1085#1072#1084#1085#1077#1079
  ClientHeight = 467
  ClientWidth = 639
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
    639
    467)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCancel: TButton
    Left = 556
    Top = 434
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = BtnCancelClick
    ExplicitTop = 440
  end
  object BtnSave: TButton
    Left = 475
    Top = 434
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = BtnSaveClick
    ExplicitTop = 440
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 623
    Height = 238
    Anchors = [akLeft, akTop, akRight]
    Caption = '   '#1040#1083#1083#1077#1088#1075#1077#1085#1099'   '
    TabOrder = 0
    object ChkBoxAllergPenic: TCheckBox
      Left = 24
      Top = 48
      Width = 97
      Height = 17
      Caption = #1087#1077#1085#1080#1094#1080#1083#1083#1080#1085#1099
      TabOrder = 0
    end
    object ChkBoxAllergCefalos: TCheckBox
      Left = 24
      Top = 80
      Width = 129
      Height = 17
      Caption = #1094#1077#1092#1072#1083#1086#1089#1087#1086#1088#1080#1085#1099
      TabOrder = 1
    end
    object ChkBoxAllergAminoglyc: TCheckBox
      Left = 24
      Top = 112
      Width = 145
      Height = 17
      Caption = #1072#1084#1080#1085#1086#1075#1083#1080#1082#1086#1079#1080#1076#1099
      TabOrder = 2
    end
    object ChkBoxAllergMacrolid: TCheckBox
      Left = 24
      Top = 144
      Width = 97
      Height = 17
      Caption = #1084#1072#1082#1088#1086#1083#1080#1076#1099
      TabOrder = 3
    end
    object ChkBoxAllergFtorchinol: TCheckBox
      Left = 24
      Top = 176
      Width = 97
      Height = 17
      Caption = #1092#1090#1086#1088#1093#1080#1085#1086#1083#1086#1085#1099
      TabOrder = 4
    end
    object ChkBoxAllergNitrofur: TCheckBox
      Left = 248
      Top = 48
      Width = 97
      Height = 17
      Caption = #1085#1080#1090#1088#1086#1092#1091#1088#1072#1085#1099
      TabOrder = 6
    end
    object ChkBoxAllergTetracycl: TCheckBox
      Left = 248
      Top = 80
      Width = 97
      Height = 17
      Caption = #1090#1077#1090#1088#1072#1094#1080#1082#1083#1080#1085#1099
      TabOrder = 7
    end
    object ChkBoxAllergImidaz: TCheckBox
      Left = 248
      Top = 112
      Width = 89
      Height = 17
      Caption = #1080#1084#1080#1076#1072#1079#1086#1083#1099
      TabOrder = 8
    end
    object ChkBoxAllergNovocain: TCheckBox
      Left = 248
      Top = 144
      Width = 97
      Height = 17
      Caption = #1085#1086#1074#1086#1082#1072#1080#1085#1099
      TabOrder = 9
    end
    object ChkBoxAllergNPVP: TCheckBox
      Left = 248
      Top = 176
      Width = 145
      Height = 17
      Caption = #1053#1055#1042#1055' ('#1085#1077#1089#1090#1077#1088#1086#1080#1076#1085#1099#1077')'
      TabOrder = 10
    end
    object ChkBoxAllergFoodBorne: TCheckBox
      Left = 472
      Top = 48
      Width = 129
      Height = 17
      Caption = #1087#1080#1097#1077#1074#1099#1077' '#1072#1083#1077#1088#1075#1077#1085#1099
      TabOrder = 12
    end
    object ChkBoxAllergHousehold: TCheckBox
      Left = 472
      Top = 80
      Width = 137
      Height = 17
      Caption = #1073#1099#1090#1086#1074#1099#1077' '#1072#1083#1083#1077#1088#1075#1077#1085#1099
      TabOrder = 13
    end
    object ChkBoxAllergPollen: TCheckBox
      Left = 472
      Top = 112
      Width = 137
      Height = 17
      Caption = #1087#1099#1083#1100#1094#1072' '#1088#1072#1089#1090#1077#1085#1080#1081
      TabOrder = 14
    end
    object ChkBoxAllergAnother: TCheckBox
      Left = 472
      Top = 144
      Width = 81
      Height = 17
      Caption = #1076#1088#1091#1075#1080#1077
      TabOrder = 15
    end
    object Panel1: TPanel
      Left = 208
      Top = 48
      Width = 2
      Height = 145
      BevelOuter = bvLowered
      TabOrder = 16
    end
    object Panel2: TPanel
      Left = 432
      Top = 48
      Width = 2
      Height = 145
      BevelOuter = bvLowered
      TabOrder = 17
    end
    object ChkBoxAllergSalicil: TCheckBox
      Left = 24
      Top = 208
      Width = 97
      Height = 17
      Caption = #1089#1072#1083#1080#1094#1080#1083#1072#1090#1099
      TabOrder = 5
    end
    object ChkBoxAllergSulfanilam: TCheckBox
      Left = 248
      Top = 208
      Width = 145
      Height = 17
      Caption = #1089#1091#1083#1100#1092#1072#1085#1080#1083#1072#1084#1080#1076#1099
      TabOrder = 11
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 252
    Width = 623
    Height = 176
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1050#1083#1080#1085#1080#1095#1077#1089#1082#1080#1077' '#1092#1086#1088#1084#1099'   '
    TabOrder = 1
    ExplicitHeight = 190
    object ChkBoxClinicHives: TCheckBox
      Left = 24
      Top = 48
      Width = 97
      Height = 17
      Caption = #1082#1088#1072#1087#1080#1074#1085#1080#1094#1072
      TabOrder = 0
    end
    object ChkBoxClinicOedema: TCheckBox
      Left = 24
      Top = 80
      Width = 97
      Height = 17
      Caption = #1086#1090#1077#1082' '#1050#1074#1080#1085#1082#1077
      TabOrder = 1
    end
    object ChkBoxClinicDermatit: TCheckBox
      Left = 24
      Top = 112
      Width = 153
      Height = 17
      Caption = #1072#1090#1086#1087#1080#1095#1077#1089#1082#1080#1081' '#1076#1077#1088#1084#1072#1090#1080#1090
      TabOrder = 2
    end
    object ChkBoxClinicRhinit: TCheckBox
      Left = 24
      Top = 144
      Width = 145
      Height = 17
      Caption = #1072#1083#1083#1077#1088#1075#1080#1095#1077#1089#1082#1080#1081' '#1088#1080#1085#1080#1090
      TabOrder = 3
    end
    object ChkBoxClinicAsthna: TCheckBox
      Left = 248
      Top = 80
      Width = 177
      Height = 17
      Caption = #1073#1088#1086#1085#1093#1080#1072#1083#1100#1085#1072#1103' '#1072#1089#1090#1084#1072
      TabOrder = 5
    end
    object ChkBoxClinicAnafShok: TCheckBox
      Left = 248
      Top = 112
      Width = 153
      Height = 17
      Caption = #1072#1085#1072#1092#1080#1083#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1096#1086#1082
      TabOrder = 6
    end
    object ChkBoxClinicConjuntiv: TCheckBox
      Left = 248
      Top = 48
      Width = 177
      Height = 17
      Caption = #1072#1083#1083#1077#1088#1075#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1085#1098#1102#1085#1082#1090#1080#1074#1080#1090
      TabOrder = 4
    end
    object ChkBoxClinicAnother: TCheckBox
      Left = 248
      Top = 144
      Width = 65
      Height = 17
      Caption = #1076#1088#1091#1075#1086#1077
      TabOrder = 7
    end
    object Panel3: TPanel
      Left = 208
      Top = 48
      Width = 2
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 8
    end
  end
  object NiceSetFrmAllergyChoice: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 160
    Top = 16
  end
  object AppEventsFrmAllergyChoice: TApplicationEvents
    OnShortCut = AppEventsFrmAllergyChoiceShortCut
    Left = 128
    Top = 16
  end
end
