object FrmStPraesensTemplate: TFrmStPraesensTemplate
  Left = 238
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmStPraesensTemplate'
  ClientHeight = 489
  ClientWidth = 713
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
    713
    489)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSave: TButton
    Left = 550
    Top = 456
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 630
    Top = 456
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 697
    Height = 442
    Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090#1099' '#1076#1083#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1090#1077#1082#1089#1090#1072' '#1086#1073#1098#1077#1082#1090#1080#1074#1085#1086#1075#1086' '#1089#1090#1072#1090#1091#1089#1072
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1057#1092#1086#1088#1084#1080#1088#1091#1081#1090#1077' '#1090#1077#1082#1089#1090', '#1086#1087#1080#1089#1099#1074#1072#1102#1097#1080#1081' '#1086#1073#1098#1077#1082#1090#1080#1074#1085#1099#1081' '#1089#1090#1072#1090#1091#1089' '#1087#1072#1094#1080#1077#1085#1090#1072'   '
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 226
      Width = 217
      Height = 98
      Caption = '   c'#1077#1088#1076#1094#1077'   '
      TabOrder = 1
      object CbBoxCorTone: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080' '#1089#1077#1088#1076#1077#1095#1085#1086 +
          '-'#13#10#1089#1086#1089#1091#1076#1080#1089#1090#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1090#1086#1085#1099' '#1088#1080#1090#1084#1080#1095#1085#1099#1077
        Items.Strings = (
          #1090#1086#1085#1099' '#1088#1080#1090#1084#1080#1095#1085#1099#1077
          #1090#1086#1085#1099' '#1072#1088#1080#1090#1084#1080#1095#1085#1099#1077)
      end
      object CbBoxCorBlood: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1075#1077#1084#1086#1076#1080#1085#1072#1084#1080#1082#1080' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1075#1077#1084#1086#1076#1080#1085#1072#1084#1080#1082#1072' '#1089#1090#1072#1073#1080#1083#1100#1085#1072#1103
        Items.Strings = (
          #1075#1077#1084#1086#1076#1080#1085#1072#1084#1080#1082#1072' '#1089#1090#1072#1073#1080#1083#1100#1085#1072#1103
          #1075#1077#1084#1086#1076#1080#1085#1072#1084#1080#1082#1072' '#1085#1077#1089#1090#1072#1073#1080#1083#1100#1085#1072#1103)
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 333
      Width = 217
      Height = 99
      Caption = '   '#1083#1077#1075#1082#1080#1077'   '
      TabOrder = 2
      object CbBoxPulmBreathe: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1074#1099#1089#1083#1091#1096#1080#1074#1072#1077#1084#1086#1084#1091' '#1076#1099#1093#1072#1085#1080#1102#13#10#1074' '#1083#1077#1075#1082#1080 +
          #1093' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1076#1099#1093#1072#1085#1080#1077' '#1074#1077#1079#1080#1082#1091#1083#1103#1088#1085#1086#1077
        Items.Strings = (
          #1076#1099#1093#1072#1085#1080#1077' '#1074#1077#1079#1080#1082#1091#1083#1103#1088#1085#1086#1077
          #1076#1099#1093#1072#1085#1080#1077' '#1078#1077#1089#1090#1082#1086#1074#1072#1090#1086#1077
          #1076#1099#1093#1072#1085#1080#1077' '#1078#1077#1089#1090#1082#1086#1077)
      end
      object CbBoxWheeze: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1074#1099#1089#1083#1091#1096#1080#1074#1072#1077#1084#1099#1084' '#1093#1088#1080#1087#1072#1084' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1093#1088#1080#1087#1099' '#1085#1077' '#1074#1099#1089#1083#1091#1096#1080#1074#1072#1102#1090#1089#1103
        Items.Strings = (
          #1093#1088#1080#1087#1099' '#1085#1077' '#1074#1099#1089#1083#1091#1096#1080#1074#1072#1102#1090#1089#1103
          #1093#1088#1080#1087#1099' '#1089#1091#1093#1080#1077
          #1093#1088#1080#1087#1099' '#1084#1077#1083#1082#1086#1087#1091#1079#1099#1088#1095#1072#1090#1099#1077
          #1093#1088#1080#1087#1099' '#1082#1088#1091#1087#1085#1086#1087#1091#1079#1099#1088#1095#1072#1090#1099#1077
          #1093#1088#1080#1087#1099' '#1082#1088#1077#1087#1080#1090#1080#1088#1091#1102#1097#1080#1077)
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 22
      Width = 217
      Height = 196
      Caption = ' '
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 9
        Width = 89
        Height = 13
        Caption = #1086#1073#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      end
      object Label3: TLabel
        Left = 16
        Top = 53
        Width = 137
        Height = 13
        Caption = #1086#1082#1088#1072#1089#1082#1072' '#1082#1086#1078#1080' '#1080' '#1089#1083#1080#1079#1080#1089#1090#1099#1093
      end
      object Label5: TLabel
        Left = 16
        Top = 97
        Width = 110
        Height = 13
        Caption = #1087#1086#1076#1082#1086#1078#1085#1072#1103' '#1082#1083#1077#1090#1095#1072#1090#1082#1072
      end
      object Label4: TLabel
        Left = 16
        Top = 141
        Width = 141
        Height = 13
        Caption = #1087#1077#1088#1080#1092#1077#1088#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1084#1092#1091#1079#1083#1099
      end
      object CbBoxFeelState: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1077
        Items.Strings = (
          #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1077
          #1086#1090#1085#1086#1089'. '#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1077
          #1074#1087#1086#1083#1085#1077' '#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1077
          #1089#1088#1077#1076#1085#1077#1081' '#1090#1103#1078#1077#1089#1090#1080)
      end
      object CbBoxSkin: TComboBox
        Left = 16
        Top = 68
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1086#1082#1088#1072#1089#1082#1077' '#1082#1086#1078#1085#1099#1093' '#1087#1086#1082#1088#1086#1074#1086#1074' '#1080' '#1089#1083#1080#1079#1080 +
          #1089#1090#1099#1093#13#10#1086#1073#1086#1083#1086#1095#1077#1082' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1086#1073#1099#1095#1085#1072#1103
        Items.Strings = (
          #1086#1073#1099#1095#1085#1072#1103
          #1092#1080#1079#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1072#1103
          #1073#1083#1077#1076#1085#1086'-'#1088#1086#1079#1086#1074#1072#1103
          #1073#1083#1077#1076#1085#1072#1103
          #1073#1083#1077#1076#1085#1086'-'#1094#1080#1072#1085#1086#1090#1080#1095#1085#1072#1103
          #1079#1077#1084#1083#1080#1089#1090#1072#1103)
      end
      object CbBoxBlubber: TComboBox
        Left = 16
        Top = 112
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1089#1090#1077#1087#1077#1085#1080' '#1074#1099#1088#1072#1078#1077#1085#1085#1086#1089#1090#1080' '#1087#1086#1076#1082#1086#1078#1085#1086#1081' ' +
          #13#10#1082#1083#1077#1090#1095#1072#1090#1082#1080' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 2
        Text = #1074#1099#1088#1072#1078#1077#1085#1072' '#1091#1084#1077#1088#1077#1085#1085#1086
        Items.Strings = (
          #1074#1099#1088#1072#1078#1077#1085#1072' '#1089#1083#1072#1073#1086
          #1074#1099#1088#1072#1078#1077#1085#1072' '#1091#1084#1077#1088#1077#1085#1085#1086
          #1074#1099#1088#1072#1078#1077#1085#1072' '#1080#1079#1073#1099#1090#1086#1095#1085#1086)
      end
      object CbBoxLdi: TComboBox
        Left = 16
        Top = 156
        Width = 165
        Height = 21
        Hint = 
          #1055#1088#1080' '#1074#1099#1073#1086#1088#1077' '#1087#1091#1085#1082#1090#1072' "'#1080#1079#1084#1077#1085#1077#1085#1099'" '#1084#1086#1078#1077#1090#1077' '#13#10#1074#1086#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1082#1085#1086#1087#1082#1086#1081' '#1089' ' +
          #1090#1086#1095#1082#1072#1084#1080', '#13#10#1095#1090#1086#1073#1099' '#1086#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#13#10#1080#1079#1084#1077#1085#1077#1085#1085#1099#1093' '#1083#1080#1084#1092#1091#1079#1083#1086#1074'.'
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = #1085#1077' '#1091#1074#1077#1083#1080#1095#1077#1085#1099
        OnChange = CbBoxLdiChange
        Items.Strings = (
          #1085#1077' '#1091#1074#1077#1083#1080#1095#1077#1085#1099
          #1080#1079#1084#1077#1085#1077#1085#1099)
      end
      object BtnEdtLdi: TButton
        Tag = 1818
        Left = 181
        Top = 157
        Width = 19
        Height = 19
        Hint = 
          #1053#1072#1078#1084#1080#1090#1077' '#1085#1072' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091', '#1095#1090#1086#1073#1099' '#1086#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100#13#10#1089#1087#1080#1089#1086#1082' '#1080#1079#1084#1077#1085#1077#1085#1085#1099#1093' ' +
          #1083#1080#1084#1092#1091#1079#1083#1086#1074'.'
        Caption = '...'
        TabOrder = 4
        OnClick = BtnEdtLdiClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 240
      Top = 22
      Width = 217
      Height = 166
      Caption = '   '#1078#1080#1074#1086#1090'   '
      TabOrder = 3
      object CbBoxAbdomDolor: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1073#1086#1083#1077#1074#1099#1084' '#1086#1097#1091#1097#1077#1085#1080#1103#1084' '#1087#1072#1094#1080#1077#1085#1090#1072#13#10#1087#1088#1080 +
          ' '#1087#1072#1083#1100#1087#1072#1094#1080#1080' '#1078#1080#1074#1086#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1081
        OnChange = CbBoxAbdomDolorChange
        Items.Strings = (
          #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1081
          #1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1081)
      end
      object CbBoxAbdomLevel: TComboBox
        Left = 16
        Top = 92
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = #1074' '#1101#1087#1080#1075#1072#1089#1090#1088#1080#1080
        OnChange = CbBoxAbdomLevelChange
        Items.Strings = (
          #1074' '#1101#1087#1080#1075#1072#1089#1090#1088#1080#1080
          #1074' '#1074#1077#1088#1093#1085#1080#1093' '#1086#1090#1076#1077#1083#1072#1093
          #1074' '#1085#1080#1078#1085#1080#1093' '#1086#1090#1076#1077#1083#1072#1093
          #1085#1072#1076' '#1083#1086#1085#1086#1084
          #1074' '#1084#1077#1079#1086#1075#1072#1089#1090#1088#1080#1080
          #1074' '#1087#1086#1076#1074#1079#1076#1086#1096#1085#1086#1081' '#1086#1073#1083#1072#1089#1090#1080)
      end
      object CbBoxAbdomSide: TComboBox
        Left = 16
        Top = 126
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = #1089#1083#1077#1074#1072
        Items.Strings = (
          #1089#1083#1077#1074#1072
          #1089#1087#1088#1072#1074#1072
          #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
          #1073#1086#1083#1100#1096#1077' '#1089#1083#1077#1074#1072
          #1073#1086#1083#1100#1096#1077' '#1089#1087#1088#1072#1074#1072)
      end
      object CbBoxAbdomDegree: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1085#1077#1089#1082#1086#1083#1100#1082#1086
        Items.Strings = (
          #1085#1077#1089#1082#1086#1083#1100#1082#1086
          #1091#1084#1077#1088#1077#1085#1085#1086
          #1074#1099#1088#1072#1078#1077#1085#1085#1086)
      end
    end
    object GroupBox6: TGroupBox
      Left = 240
      Top = 195
      Width = 217
      Height = 132
      Caption = '   '#1087#1086#1095#1082#1080'   '
      TabOrder = 4
      object CbBoxRenLocal: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1085#1077#1089#1082#1086#1083#1100#1082#1086
        Items.Strings = (
          #1085#1077#1089#1082#1086#1083#1100#1082#1086
          #1091#1084#1077#1088#1077#1085#1085#1086
          #1074#1099#1088#1072#1078#1077#1085#1085#1086)
      end
      object CbBoxRenDolor: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1077
        OnChange = CbBoxRenDolorChange
        Items.Strings = (
          #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1077
          #1073#1086#1083#1077#1079#1085#1077#1085#1085#1099#1077
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1089#1083#1077#1074#1072
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1089#1087#1088#1072#1074#1072)
      end
      object CbBoxRenSide: TComboBox
        Left = 16
        Top = 92
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = #1089#1083#1077#1074#1072
        Items.Strings = (
          #1089#1083#1077#1074#1072
          #1089#1087#1088#1072#1074#1072
          #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
      end
    end
    object GroupBox7: TGroupBox
      Left = 240
      Top = 333
      Width = 217
      Height = 98
      Caption = '   '#1089#1080#1084#1087#1090#1086#1084' '#1055#1072#1089#1090#1077#1088#1085#1072#1094#1082#1086#1075#1086'   '
      TabOrder = 5
      object CbBoxPasternFact: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1081
        OnChange = CbBoxPasternFactChange
        Items.Strings = (
          #1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1081
          #1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1099#1081
          #1089#1086#1084#1085#1080#1090#1077#1083#1100#1085#1099#1081)
      end
      object CbBoxPasternSide: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1089#1083#1077#1074#1072
        Items.Strings = (
          #1089#1083#1077#1074#1072
          #1089#1087#1088#1072#1074#1072
          #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
      end
    end
    object GroupBox8: TGroupBox
      Left = 472
      Top = 22
      Width = 217
      Height = 133
      Caption = '   '#1084#1086#1095#1077#1080#1089#1087#1091#1089#1082#1072#1085#1080#1077'   '
      TabOrder = 6
      object CbBoxMicciaDolor: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1086#1097#1091#1097#1077#1085#1080#1103#1084' '#1087#1072#1094#1080#1077#1085#1090#1072' '#13#10#1087#1088#1080' '#1084#1086#1095#1077#1080#1089 +
          #1087#1091#1089#1082#1072#1085#1080#1080
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1086#1077
        Items.Strings = (
          #1073#1077#1079#1073#1086#1083#1077#1079#1085#1077#1085#1085#1086#1077
          #1073#1086#1083#1077#1079#1085#1077#1085#1085#1086#1077)
      end
      object CbBoxMicciaCount: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1089#1090#1077#1087#1077#1085#1080' '#1091#1095#1072#1097#1077#1085#1080#1103' '#1084#1086#1095#1077#1080#1089#1087#1091#1089#1082#1072#1085#1080#1103 +
          ' '#13#10#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1085#1077' '#1091#1095#1072#1097#1077#1085#1086
        Items.Strings = (
          #1085#1077' '#1091#1095#1072#1097#1077#1085#1086
          #1091#1095#1072#1097#1077#1085#1086)
      end
      object CbBoxMicciaNicturia: TComboBox
        Left = 16
        Top = 92
        Width = 185
        Height = 21
        Hint = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1081#13#10#1085#1072#1083#1080#1095#1080#1102' '#1103#1074#1083#1077#1085#1080#1081' '#1085#1086#1095#1085#1086#1075#1086#13#10#1084#1086#1095#1077#1080#1089 +
          #1087#1091#1089#1082#1072#1085#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = #1085#1080#1082#1090#1091#1088#1080#1080' '#1085#1077#1090
        Items.Strings = (
          #1085#1080#1082#1090#1091#1088#1080#1080' '#1085#1077#1090
          #1085#1080#1082#1090#1091#1088#1080#1103' '#1077#1089#1090#1100)
      end
    end
    object GroupBox9: TGroupBox
      Left = 472
      Top = 168
      Width = 217
      Height = 133
      Caption = '   '#1089#1090#1091#1083'   '
      TabOrder = 7
      object CbBoxStoolFunc: TComboBox
        Left = 16
        Top = 24
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #1085#1077' '#1085#1072#1088#1091#1096#1077#1085
        OnChange = CbBoxStoolFuncChange
        Items.Strings = (
          #1085#1077' '#1085#1072#1088#1091#1096#1077#1085
          #1085#1072#1088#1091#1096#1077#1085)
      end
      object CbBoxStoolConsistence: TComboBox
        Left = 16
        Top = 58
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1078#1080#1076#1082#1080#1081
        Items.Strings = (
          #1078#1080#1076#1082#1080#1081
          #1087#1086#1083#1091#1086#1092#1086#1088#1084#1083#1077#1085#1085#1099#1081
          #1086#1092#1086#1088#1084#1083#1077#1085#1085#1099#1081)
      end
      object CbBoxStool: TComboBox
        Left = 16
        Top = 92
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 2
        Text = #1088#1077#1075#1091#1083#1103#1088#1085#1099#1081
        Items.Strings = (
          #1095#1072#1089#1090#1099#1081
          #1079#1072#1087#1086#1088#1099
          #1088#1077#1075#1091#1083#1103#1088#1085#1099#1081)
      end
    end
  end
  object NiceSetFrmStPraesensTemplate: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 400
  end
  object AppEventsStPraesens: TApplicationEvents
    OnShortCut = AppEventsStPraesensShortCut
    Left = 368
  end
end
