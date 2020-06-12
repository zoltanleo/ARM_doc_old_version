object FrmUrScopiaDry: TFrmUrScopiaDry
  Left = 228
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1087#1077#1088#1077#1076#1085#1077#1081' "'#1089#1091#1093#1086#1081'" '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1080
  ClientHeight = 413
  ClientWidth = 752
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
  OnShow = FormShow
  DesignSize = (
    752
    413)
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 8
    Top = 16
    Width = 104
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
  end
  object DTPickUrScopiaDry: TDateTimePicker
    Left = 120
    Top = 8
    Width = 97
    Height = 21
    Date = 38214.817669988430000000
    Time = 38214.817669988430000000
    TabOrder = 0
  end
  object Panel11: TPanel
    Left = 8
    Top = 37
    Width = 249
    Height = 2
    BevelOuter = bvLowered
    TabOrder = 1
  end
  object BtnSave: TButton
    Left = 588
    Top = 380
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnSaveClick
    ExplicitTop = 422
  end
  object BtnCancel: TButton
    Left = 669
    Top = 380
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnCancelClick
    ExplicitTop = 422
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 45
    Width = 737
    Height = 329
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 16
      Top = 16
      Width = 225
      Height = 113
      Caption = '   '#1053#1072#1088#1091#1078#1085#1099#1077' '#1075#1091#1073#1082#1080' '#1091#1088#1077#1090#1088#1099'   '
      TabOrder = 0
      object CbBoxDryUrScOstium_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 0
        Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
        OnChange = CbBoxDryUrScOstium_01Change
        Items.Strings = (
          #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
          #1074#1086#1089#1087#1072#1083#1077#1085#1099)
      end
      object CbBoxDryUrScOstium_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1075#1080#1087#1077#1088#1077#1084#1080#1088#1086#1074#1072#1085#1099
        Items.Strings = (
          #1075#1080#1087#1077#1088#1077#1084#1080#1088#1086#1074#1072#1085#1099
          #1094#1080#1072#1085#1086#1090#1080#1095#1085#1099)
      end
      object CbBoxDryUrScOstium_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1086#1090#1077#1095#1085#1099#1077
        Items.Strings = (
          #1086#1090#1077#1095#1085#1099#1077
          #1074#1099#1074#1077#1088#1085#1091#1090#1099' '#1082#1085#1072#1088#1091#1078#1080
          #1089#1082#1083#1077#1077#1085#1099)
      end
    end
    object GroupBox3: TGroupBox
      Left = 256
      Top = 16
      Width = 225
      Height = 113
      Caption = '   '#1062#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1092#1080#1075#1091#1088#1072'   '
      TabOrder = 2
      object CbBoxDryUrScFigure_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 0
        Text = #1079#1072#1084#1082#1085#1091#1090#1072
        OnChange = CbBoxDryUrScFigure_01Change
        Items.Strings = (
          #1079#1072#1084#1082#1085#1091#1090#1072
          #1079#1080#1103#1077#1090)
      end
      object CbBoxDryUrScFigure_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1086#1090#1076#1077#1083#1072#1084
        OnChange = CbBoxDryUrScFigure_02Change
        Items.Strings = (
          #1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1086#1090#1076#1077#1083#1072#1084
          #1085#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1086#1090#1076#1077#1083#1072#1084)
      end
      object CbBoxDryUrScFigure_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
        Items.Strings = (
          #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1074' '#1084#1077#1084#1073#1088#1072#1085#1086#1079#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1085#1072' '#1074#1089#1077#1084' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080' '#1086#1089#1084#1086#1090#1088#1072)
      end
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 135
      Width = 225
      Height = 153
      Caption = '   '#1058#1091#1073#1091#1089' '#1094#1080#1089#1090#1086#1089#1082#1086#1087#1072'   '
      TabOrder = 1
      object CbBoxDryUrScTubus_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 1
        TabOrder = 0
        Text = #8470' 21 Ch'
        Items.Strings = (
          #8470' 18 Ch'
          #8470' 21 Ch'
          #8470' 23 Ch')
      end
      object CbBoxDryUrScTubus_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1087#1088#1086#1074#1077#1076#1077#1085' '#1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1086
        Items.Strings = (
          #1087#1088#1086#1074#1077#1076#1077#1085' '#1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1086
          #1087#1088#1086#1074#1077#1076#1077#1085' '#1073#1086#1083#1077#1079#1085#1077#1085#1085#1086)
      end
      object CbBoxDryUrScTubus_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1087#1088#1086#1074#1077#1076#1077#1085' '#1089#1074#1086#1073#1086#1076#1085#1086
        OnChange = CbBoxDryUrScTubus_03Change
        Items.Strings = (
          #1087#1088#1086#1074#1077#1076#1077#1085' '#1089#1074#1086#1073#1086#1076#1085#1086
          #1087#1088#1086#1074#1077#1076#1077#1085' '#1089' '#1079#1072#1090#1088#1091#1076#1085#1077#1085#1080#1077#1084
          #1085#1077' '#1091#1076#1072#1083#1086#1089#1100' '#1087#1088#1086#1074#1077#1089#1090#1080)
      end
      object CbBoxDryUrScTubus_04: TComboBox
        Left = 16
        Top = 96
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 3
        Text = #1087#1088#1086#1082#1089#1080#1084#1072#1083#1100#1085#1077#1077
        Items.Strings = (
          #1087#1088#1086#1082#1089#1080#1084#1072#1083#1100#1085#1077#1077
          #1076#1080#1089#1090#1072#1083#1100#1085#1077#1077)
      end
      object CbBoxDryUrScTubus_05: TComboBox
        Left = 16
        Top = 120
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 4
        Text = #1083#1072#1076#1100#1077#1074#1080#1076#1085#1086#1081' '#1103#1084#1082#1080
        Items.Strings = (
          #1083#1072#1076#1100#1077#1074#1080#1076#1085#1086#1081' '#1103#1084#1082#1080
          #1087#1077#1085#1072#1083#1100#1085#1086#1075#1086' '#1086#1090#1076#1077#1083#1072
          #1073#1091#1083#1100#1073#1086#1079#1085#1086#1075#1086' '#1086#1090#1076#1077#1083#1072
          #1084#1077#1084#1073#1088#1072#1085#1086#1079#1085#1086#1075#1086' '#1086#1090#1076#1077#1083#1072)
      end
    end
    object GroupBox5: TGroupBox
      Left = 496
      Top = 183
      Width = 225
      Height = 105
      Caption = '   '#1057#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082'   '
      TabOrder = 5
      object CbBoxDryUrScPattern_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 0
        Text = #1095#1077#1090#1082#1080#1081
        Items.Strings = (
          #1095#1077#1090#1082#1080#1081
          #1089#1084#1072#1079#1072#1085)
      end
      object CbBoxDryUrScPattern_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1074#1099#1088#1072#1078#1077#1085' '#1086#1073#1099#1095#1085#1086
        OnChange = CbBoxDryUrScPattern_02Change
        Items.Strings = (
          #1074#1099#1088#1072#1078#1077#1085' '#1086#1073#1099#1095#1085#1086
          #1086#1073#1077#1076#1085#1077#1085
          #1091#1089#1080#1083#1077#1085)
      end
      object CbBoxDryUrScPattern_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1079#1072' '#1089#1095#1077#1090' '#1082#1072#1087#1080#1083#1083#1103#1088#1085#1086#1075#1086' '#1088#1091#1089#1083#1072
        Items.Strings = (
          #1079#1072' '#1089#1095#1077#1090' '#1082#1072#1087#1080#1083#1083#1103#1088#1085#1086#1075#1086' '#1088#1091#1089#1083#1072
          #1079#1072' '#1089#1095#1077#1090' '#1074#1077#1085#1086#1079#1085#1086#1075#1086' '#1088#1091#1089#1083#1072
          #1079#1072' '#1089#1095#1077#1090' '#1074#1077#1085' '#1080' '#1082#1072#1087#1080#1083#1083#1103#1088#1086#1074)
      end
    end
    object GroupBox6: TGroupBox
      Left = 496
      Top = 16
      Width = 225
      Height = 161
      Caption = '   '#1046#1077#1083#1077#1079#1080#1089#1090#1099#1081' '#1072#1087#1087#1072#1088#1072#1090'   '
      TabOrder = 4
      object CbBoxDryUrScGland_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 0
        Text = #1073#1077#1079' '#1087#1072#1090#1086#1083#1086#1075#1080#1080
        OnChange = CbBoxDryUrScGland_01Change
        Items.Strings = (
          #1073#1077#1079' '#1087#1072#1090#1086#1083#1086#1075#1080#1080
          #1074#1086#1089#1087#1072#1083#1077#1085)
      end
      object CbBoxDryUrScGland_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1074' '#1074#1080#1076#1077' '#1077#1076#1080#1085#1080#1095#1085#1099#1093
        Items.Strings = (
          #1074' '#1074#1080#1076#1077' '#1077#1076#1080#1085#1080#1095#1085#1099#1093
          #1074' '#1074#1080#1076#1077' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1093)
      end
      object CbBoxDryUrScGland_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1084#1103#1075#1082#1080#1093' '#1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074
        Items.Strings = (
          #1084#1103#1075#1082#1080#1093' '#1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074
          #1087#1077#1088#1077#1093#1086#1076#1085#1099#1093' '#1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074
          #1090#1074#1077#1088#1076#1099#1093' '#1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074
          #1079#1072#1082#1088#1099#1090#1099#1093' '#1072#1076#1077#1085#1080#1090#1086#1074)
      end
      object CbBoxDryUrScGland_04: TComboBox
        Left = 16
        Top = 96
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 3
        Text = #1087#1086' '#1074#1077#1088#1093#1085#1077#1081' '#1089#1090#1077#1085#1082#1077
        Items.Strings = (
          #1087#1086' '#1074#1077#1088#1093#1085#1077#1081' '#1089#1090#1077#1085#1082#1077
          #1087#1086' '#1073#1086#1082#1086#1074#1099#1084' '#1089#1090#1077#1085#1082#1072#1084
          #1087#1086' '#1074#1077#1088#1093#1085#1077'-'#1073#1086#1082#1086#1074#1099#1084' '#1089#1090#1077#1085#1082#1072#1084)
      end
      object CbBoxDryUrScGland_05: TComboBox
        Left = 16
        Top = 120
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 4
        Text = #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
        Items.Strings = (
          #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1074' '#1073#1091#1083#1100#1073#1086#1079#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1085#1072' '#1074#1089#1077#1084' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080)
      end
    end
    object GroupBox7: TGroupBox
      Left = 256
      Top = 135
      Width = 225
      Height = 177
      Caption = '   '#1057#1083#1080#1079#1080#1089#1090#1072#1103' '#1091#1088#1077#1090#1088#1099'   '
      TabOrder = 3
      object CbBoxDryUrScSurface_01: TComboBox
        Left = 16
        Top = 24
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 0
        Text = #1073#1083#1077#1089#1090#1103#1097#1072#1103
        Items.Strings = (
          #1073#1083#1077#1089#1090#1103#1097#1072#1103
          #1090#1091#1089#1082#1083#1072#1103)
      end
      object CbBoxDryUrScSurface_02: TComboBox
        Left = 16
        Top = 48
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 1
        Text = #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
        Items.Strings = (
          #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          #1084#1072#1090#1086#1074#1072#1103
          #1084#1091#1090#1085#1072#1103)
      end
      object CbBoxDryUrScSurface_03: TComboBox
        Left = 16
        Top = 72
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 2
        Text = #1075#1083#1072#1076#1082#1072#1103
        OnChange = CbBoxDryUrScSurface_03Change
        Items.Strings = (
          #1075#1083#1072#1076#1082#1072#1103
          #1084#1077#1083#1082#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103
          #1082#1088#1091#1087#1085#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103)
      end
      object CbBoxDryUrScSurface_04: TComboBox
        Left = 16
        Top = 96
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 3
        Text = #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
        Items.Strings = (
          #1074' '#1087#1077#1085#1072#1083#1100#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1074' '#1073#1091#1083#1100#1073#1086#1079#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1074' '#1084#1077#1084#1073#1088#1072#1085#1086#1079#1085#1086#1084' '#1086#1090#1076#1077#1083#1077
          #1085#1072' '#1074#1089#1077#1084' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080)
      end
      object CbBoxDryUrScSurface_05: TComboBox
        Left = 16
        Top = 120
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 4
        Text = #1074#1083#1072#1078#1085#1072#1103
        Items.Strings = (
          #1074#1083#1072#1078#1085#1072#1103
          #1089#1091#1093#1072#1103)
      end
      object CbBoxDryUrScSurface_06: TComboBox
        Left = 16
        Top = 144
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        ItemIndex = 0
        TabOrder = 5
        Text = #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
        Items.Strings = (
          #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
          #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090)
      end
    end
  end
  object NiceSetFrmUrScopiaDry: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 272
    Top = 32
  end
  object AppEventsFrmUrScopiaDry: TApplicationEvents
    OnShortCut = AppEventsFrmUrScopiaDryShortCut
    Left = 240
    Top = 32
  end
end
