object FrmUrScopiaIrrig: TFrmUrScopiaIrrig
  Left = 221
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1080#1088#1088#1075#1080#1072#1094#1080#1086#1085#1086#1081' '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1080
  ClientHeight = 470
  ClientWidth = 744
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
    744
    470)
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 8
    Top = 16
    Width = 104
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
  end
  object Label1: TLabel
    Left = 8
    Top = 436
    Width = 530
    Height = 26
    Caption = 
      #1042#1085#1080#1084#1072#1085#1080#1077'! '#1063#1090#1086#1073#1099' '#1086#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1074#1082#1083#1072#1076#1082#1091' "'#1047#1072#1076#1085#1103#1103' '#1091#1088#1077#1090#1088#1072'", '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086 +
      #1090#1084#1077#1085#1080#1090#1100' '#1087#1091#1085#1082#1090' '#1086' '#1085#1077#1087#1088#1086#1093#1086#1076#1080#1084#1086#1089#1090#1080' '#1084#1077#1084#1073#1088#1072#1085#1086#1079#1085#1086#1075#1086' '#1089#1092#1080#1085#1082#1090#1077#1088#1072' '#1076#1083#1103' '#1080#1085#1089#1090#1088 +
      #1091#1084#1077#1085#1090#1072'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Panel11: TPanel
    Left = 8
    Top = 37
    Width = 249
    Height = 2
    BevelOuter = bvLowered
    TabOrder = 6
  end
  object PgCtrlUrScIrrig: TPageControl
    Left = 8
    Top = 45
    Width = 731
    Height = 386
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    OnChange = PgCtrlUrScIrrigChange
    ExplicitHeight = 422
    object TabSheet1: TTabSheet
      Caption = #1055#1077#1088#1077#1076#1085#1103#1103' '#1091#1088#1077#1090#1088#1072
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 361
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 225
        Height = 129
        Caption = '   '#1059#1088#1077#1090#1088#1086#1089#1082#1086#1087'   '
        TabOrder = 0
        object CbBoxIrrigUrScAntTool_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 2
          TabOrder = 0
          Text = #1090#1091#1073#1091#1089' 20 Ch'
          Items.Strings = (
            #1090#1091#1073#1091#1089' 18 Ch'
            #1090#1091#1073#1091#1089' 19 Ch'
            #1090#1091#1073#1091#1089' 20 Ch'
            #1090#1091#1073#1091#1089' 21 ch'
            #1090#1091#1073#1091#1089' 22 Ch')
        end
        object CbBoxIrrigUrScAntTool_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1084#1072#1088#1082#1072' "Karl Storz"'
          Items.Strings = (
            #1084#1072#1088#1082#1072' "Karl Storz"'
            #1084#1072#1088#1082#1072' "Karl Wolf"'
            #1084#1072#1088#1082#1072' "ABBA '#1054#1087#1090#1080#1084#1077#1076'"'
            #1084#1072#1088#1082#1072' "Olympus"')
        end
        object CbBoxIrrigUrScAntTool_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1086#1087#1090#1080#1082#1072' 0 '#1075#1088#1072#1076#1091#1089#1086#1074
          Items.Strings = (
            #1086#1087#1090#1080#1082#1072' 0 '#1075#1088#1072#1076#1091#1089#1086#1074
            #1086#1087#1090#1080#1082#1072' 5 '#1075#1088#1072#1076#1091#1089#1086#1074
            #1086#1087#1090#1080#1082#1072' 30 '#1075#1088#1072#1076#1091#1089#1086#1074
            #1086#1087#1090#1080#1082#1072' 70 '#1075#1088#1072#1076#1091#1089#1086#1074
            #1086#1087#1090#1080#1082#1072' 105 '#1075#1088#1072#1076#1091#1089#1086#1074
            #1086#1087#1090#1080#1082#1072' 120 '#1075#1088#1072#1076#1091#1089#1086#1074)
        end
        object CbBoxIrrigUrScAntTool_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1072#1085#1077#1089#1090#1077#1090#1080#1082' "'#1048#1085#1089#1090#1080#1083#1083#1072#1075#1077#1083#1100'"'
          Items.Strings = (
            #1072#1085#1077#1089#1090#1077#1090#1080#1082' "'#1048#1085#1089#1090#1080#1083#1083#1072#1075#1077#1083#1100'"'
            #1072#1085#1077#1089#1090#1077#1090#1080#1082' "'#1050#1072#1090#1077#1076#1078#1077#1083#1100'"'
            #1073#1077#1079' '#1072#1085#1077#1089#1090#1077#1090#1080#1082#1072)
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 144
        Width = 225
        Height = 105
        Caption = '   '#1053#1072#1088#1091#1078#1085#1099#1077' '#1075#1091#1073#1082#1080' '#1091#1088#1077#1090#1088#1099'   '
        TabOrder = 1
        object CbBoxIrrigUrScAntOstium_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
          OnChange = CbBoxIrrigUrScAntOstium_01Change
          Items.Strings = (
            #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
            #1074#1086#1089#1087#1072#1083#1077#1085#1099)
        end
        object CbBoxIrrigUrScAntOstium_02: TComboBox
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
        object CbBoxIrrigUrScAntOstium_03: TComboBox
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
        Left = 8
        Top = 256
        Width = 225
        Height = 81
        Caption = '   '#1050#1072#1090#1077#1090#1077#1088#1080#1079#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1088#1077#1076#1072'   '
        TabOrder = 2
        object CbBoxIrrigUrScAntMedium_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          OnChange = CbBoxIrrigUrScAntMedium_01Change
          Items.Strings = (
            #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
            #1084#1091#1090#1085#1072#1103' '#1079#1072' '#1089#1095#1077#1090)
        end
        object CbBoxIrrigUrScAntMedium_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
          Items.Strings = (
            #1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
            #1093#1083#1086#1087#1100#1077#1074' '#1092#1080#1073#1088#1080#1085#1072)
        end
      end
      object GroupBox4: TGroupBox
        Left = 248
        Top = 8
        Width = 225
        Height = 153
        Caption = '   '#1046#1077#1083#1077#1079#1099' '#1057#1082#1072#1085#1085#1077'   '
        TabOrder = 3
        object CbBoxIrrigUrScAntScanne_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1099
          Items.Strings = (
            #1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1099
            #1085#1077' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1099)
        end
        object CbBoxIrrigUrScAntScanne_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1085#1077' '#1074#1086#1089#1087#1072#1083#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1074#1086#1089#1087#1072#1083#1077#1085#1099
            #1074#1086#1089#1087#1072#1083#1077#1085#1099)
        end
        object CbBoxIrrigUrScAntScanne_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1089#1086#1084#1082#1085#1091#1090#1099
          Items.Strings = (
            #1089#1086#1084#1082#1085#1091#1090#1099
            #1079#1080#1103#1102#1090)
        end
        object CbBoxIrrigUrScAntScanne_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1073#1077#1079' '#1086#1090#1076#1077#1083#1103#1077#1084#1086#1075#1086
          OnChange = CbBoxIrrigUrScAntScanne_04Change
          Items.Strings = (
            #1073#1077#1079' '#1086#1090#1076#1077#1083#1103#1077#1084#1086#1075#1086
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1089#1082#1091#1076#1085#1086#1077
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1091#1084#1077#1088#1077#1085#1085#1086#1077
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1086#1073#1080#1083#1100#1085#1086#1077)
        end
        object CbBoxIrrigUrScAntScanne_05: TComboBox
          Left = 16
          Top = 120
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 4
          Text = #1089#1077#1088#1086#1079#1085#1086#1077
          Items.Strings = (
            #1089#1077#1088#1086#1079#1085#1086#1077
            #1075#1085#1086#1081#1085#1086#1077
            #1075#1077#1084#1086#1088#1088#1072#1075#1080#1095#1077#1089#1082#1086#1077
            #1089#1091#1082#1088#1086#1074#1080#1095#1085#1086#1077)
        end
      end
      object GroupBox5: TGroupBox
        Left = 248
        Top = 168
        Width = 225
        Height = 177
        Caption = '   '#1055#1077#1085#1072#1083#1100#1085#1099#1081' '#1086#1090#1076#1077#1083'   '
        TabOrder = 4
        object CbBoxIrrigUrScAntPenal_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1085#1086#1088#1084#1072#1083#1100#1085#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
          Items.Strings = (
            #1085#1086#1088#1084#1072#1083#1100#1085#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
            #1075#1080#1087#1077#1088#1077#1084#1080#1088#1086#1074#1072#1085
            #1073#1083#1077#1076#1085#1086#1081' '#1086#1082#1088#1072#1089#1082#1080)
        end
        object CbBoxIrrigUrScAntPenal_02: TComboBox
          Left = 16
          Top = 47
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1101#1087#1080#1090#1077#1083#1080#1081' '#1089#1086#1093#1088#1072#1085#1077#1085
          OnChange = CbBoxIrrigUrScAntPenal_02Change
          Items.Strings = (
            #1101#1087#1080#1090#1077#1083#1080#1081' '#1089#1086#1093#1088#1072#1085#1077#1085
            #1101#1087#1080#1090#1077#1083#1080#1081' '#1089#1083#1091#1097#1077#1085)
        end
        object CbBoxIrrigUrScAntPenal_03: TComboBox
          Left = 16
          Top = 71
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1074' '#1074#1080#1076#1077' '#1077#1076#1080#1085#1080#1095#1085#1099#1093' '#1086#1095#1072#1075#1086#1074
          Items.Strings = (
            #1074' '#1074#1080#1076#1077' '#1077#1076#1080#1085#1080#1095#1085#1099#1093' '#1086#1095#1072#1075#1086#1074
            #1074' '#1074#1080#1076#1077' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1093' '#1086#1095#1072#1075#1086#1074)
        end
        object CbBoxIrrigUrScAntPenal_04: TComboBox
          Left = 16
          Top = 95
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1087#1086' '#1073#1086#1082#1086#1074#1099#1084' '#1089#1090#1077#1085#1082#1072#1084
          Items.Strings = (
            #1087#1086' '#1073#1086#1082#1086#1074#1099#1084' '#1089#1090#1077#1085#1082#1072#1084
            #1087#1086' '#1074#1077#1088#1093#1085#1077#1081' '#1089#1090#1077#1085#1082#1077
            #1087#1086' '#1074#1077#1088#1093#1085#1077'-'#1073#1086#1082#1086#1074#1099#1084' '#1089#1090#1077#1085#1082#1072#1084)
        end
        object CbBoxIrrigUrScAntPenal_05: TComboBox
          Left = 16
          Top = 120
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 4
          Text = #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1093#1088#1072#1085#1077#1085
          OnChange = CbBoxIrrigUrScAntPenal_05Change
          Items.Strings = (
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1093#1088#1072#1085#1077#1085
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1091#1089#1080#1083#1077#1085
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1086#1073#1077#1076#1085#1077#1085)
        end
        object CbBoxIrrigUrScAntPenal_06: TComboBox
          Left = 16
          Top = 144
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 5
          Text = #1079#1072' '#1089#1095#1077#1090' '#1082#1072#1087#1080#1083#1083#1103#1088#1085#1086#1075#1086' '#1088#1091#1089#1083#1072
          Items.Strings = (
            #1079#1072' '#1089#1095#1077#1090' '#1082#1072#1087#1080#1083#1083#1103#1088#1085#1086#1075#1086' '#1088#1091#1089#1083#1072
            #1079#1072' '#1089#1095#1077#1090' '#1074#1077#1085#1086#1079#1085#1086#1075#1086' '#1088#1091#1089#1083#1072)
        end
      end
      object GroupBox6: TGroupBox
        Left = 488
        Top = 8
        Width = 225
        Height = 105
        Caption = '   '#1051#1091#1082#1086#1074#1080#1095#1085#1099#1081' '#1086#1090#1076#1077#1083'   '
        TabOrder = 5
        object CbBoxIrrigUrScAntBulb_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1094#1077#1085#1090#1088'. '#1092#1080#1075#1091#1088#1072' '#1089#1086#1093#1088#1072#1085#1077#1085#1072
          Items.Strings = (
            #1094#1077#1085#1090#1088'. '#1092#1080#1075#1091#1088#1072' '#1089#1086#1093#1088#1072#1085#1077#1085#1072
            #1094#1077#1085#1090#1088'. '#1092#1080#1075#1091#1088#1072' '#1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072)
        end
        object CbBoxIrrigUrScAntBulb_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1089#1082#1083#1072#1076#1082#1080' '#1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
          Items.Strings = (
            #1089#1082#1083#1072#1076#1082#1080' '#1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
            #1089#1082#1083#1072#1076#1082#1080' '#1091#1090#1086#1083#1097#1077#1085#1099
            #1089#1082#1083#1072#1076#1082#1080' '#1089#1075#1083#1072#1078#1077#1085#1099)
        end
        object CbBoxIrrigUrScAntBulb_03: TComboBox
          Left = 16
          Top = 71
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1082' '#1084#1077#1084#1073#1088#1072#1085'. '#1078#1086#1084#1091' '#1089#1093#1086#1076#1103#1090#1089#1103
          Items.Strings = (
            #1082' '#1084#1077#1084#1073#1088#1072#1085'. '#1078#1086#1084#1091' '#1089#1093#1086#1076#1103#1090#1089#1103
            #1082' '#1084#1077#1084#1073#1088#1072#1085'. '#1078#1086#1084#1091' '#1085#1077' '#1089#1093#1086#1076#1103#1090#1089#1103)
        end
      end
      object GroupBox7: TGroupBox
        Left = 488
        Top = 120
        Width = 225
        Height = 81
        Caption = '   '#1052#1077#1084#1073#1088#1072#1085#1086#1079#1085#1099#1081' '#1086#1090#1076#1077#1083'   '
        TabOrder = 6
        object CbBoxIrrigUrScAntMembr_01: TComboBox
          Left = 16
          Top = 22
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1074' '#1085#1086#1088#1084#1086#1090#1086#1085#1091#1089#1077
          OnChange = CbBoxIrrigUrScAntMembr_01Change
          Items.Strings = (
            #1074' '#1085#1086#1088#1084#1086#1090#1086#1085#1091#1089#1077
            #1075#1080#1087#1086#1090#1086#1085#1080#1095#1077#1085
            #1079#1080#1103#1077#1090
            #1074' '#1075#1080#1087#1077#1088#1090#1086#1085#1091#1089#1077
            #1076#1083#1103' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072' '#1085#1077#1087#1088#1086#1093#1086#1076#1080#1084)
        end
        object CbBoxIrrigUrScAntMembr_02: TComboBox
          Left = 16
          Top = 45
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1090#1086#1095#1077#1095#1085#1086#1081' '#1092#1086#1088#1084#1099
          Items.Strings = (
            #1090#1086#1095#1077#1095#1085#1086#1081' '#1092#1086#1088#1084#1099
            #1097#1077#1083#1077#1074#1080#1076#1085#1086#1081' '#1092#1086#1088#1084#1099
            #1074' '#1074#1080#1076#1077' '#1087#1086#1087#1077#1088#1077#1095#1085#1086#1081' '#1097#1077#1083#1080)
        end
      end
      object GroupBox8: TGroupBox
        Left = 488
        Top = 208
        Width = 225
        Height = 129
        Caption = '   '#1050#1091#1087#1077#1088#1086#1074#1099' '#1078#1077#1083#1077#1079#1099'   '
        TabOrder = 7
        object CbBoxIrrigUrScAntCooper_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1091#1089#1090#1100#1103' '#1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
          OnChange = CbBoxIrrigUrScAntCooper_01Change
          Items.Strings = (
            #1091#1089#1090#1100#1103' '#1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
            #1091#1089#1090#1100#1103' '#1089#1086#1084#1082#1085#1091#1090#1099
            #1091#1089#1090#1100#1103' '#1079#1080#1103#1102#1090)
        end
        object CbBoxIrrigUrScAntCooper_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1089' '#1087#1088#1080#1079#1085#1072#1082#1072#1084#1080' '#1087#1077#1088#1080#1083#1080#1090#1090#1077#1088#1080#1090#1072
          Items.Strings = (
            #1089' '#1087#1088#1080#1079#1085#1072#1082#1072#1084#1080' '#1087#1077#1088#1080#1083#1080#1090#1090#1077#1088#1080#1090#1072
            #1089' '#1087#1088#1080#1079#1085#1072#1082#1072#1084#1080' '#1072#1076#1077#1085#1080#1090#1072)
        end
        object CbBoxIrrigUrScAntCooper_03: TComboBox
          Left = 16
          Top = 71
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1086#1090#1076#1077#1083#1103#1077#1084#1086#1075#1086' '#1085#1077#1090
          OnChange = CbBoxIrrigUrScAntCooper_03Change
          Items.Strings = (
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1075#1086' '#1085#1077#1090
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1089#1082#1091#1076#1085#1086#1077
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1091#1084#1077#1088#1077#1085#1085#1086#1077
            #1086#1090#1076#1077#1083#1103#1077#1084#1086#1077' '#1086#1073#1080#1083#1100#1085#1086#1077)
        end
        object CbBoxIrrigUrScAntCooper_04: TComboBox
          Left = 16
          Top = 95
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1089#1083#1080#1079#1080#1089#1090#1086#1077
          Items.Strings = (
            #1089#1083#1080#1079#1080#1089#1090#1086#1077
            #1089#1077#1088#1086#1079#1085#1086#1077
            #1075#1085#1086#1081#1085#1086#1077
            #1075#1077#1084#1086#1088#1088#1072#1075#1080#1095#1077#1089#1082#1086#1077)
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1076#1085#1103#1103' '#1091#1088#1077#1090#1088#1072
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 361
      object GroupBox9: TGroupBox
        Left = 8
        Top = 8
        Width = 225
        Height = 81
        Caption = '   '#1050#1072#1090#1077#1090#1077#1088#1080#1079#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1088#1077#1076#1072'   '
        TabOrder = 0
        object CbBoxIrrigUrScPostMedium_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          OnChange = CbBoxIrrigUrScPostMedium_01Change
          Items.Strings = (
            #1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
            #1084#1091#1090#1085#1072#1103' '#1079#1072' '#1089#1095#1077#1090)
        end
        object CbBoxIrrigUrScPostMedium_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
          Items.Strings = (
            #1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
            #1093#1083#1086#1087#1100#1077#1074' '#1092#1080#1073#1088#1080#1085#1072)
        end
      end
      object GroupBox10: TGroupBox
        Left = 8
        Top = 96
        Width = 225
        Height = 225
        Caption = '   '#1057#1083#1080#1079#1080#1089#1090#1072#1103' '#1091#1088#1077#1090#1088#1099'  '
        TabOrder = 1
        object CbBoxIrrigUrScPostMucous_01: TComboBox
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
            #1084#1072#1090#1086#1074#1072#1103
            #1073#1077#1079' '#1073#1083#1077#1089#1082#1072)
        end
        object CbBoxIrrigUrScPostMucous_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1075#1083#1072#1076#1082#1072#1103
          Items.Strings = (
            #1075#1083#1072#1076#1082#1072#1103
            #1088#1099#1093#1083#1072#1103
            #1084#1077#1083#1082#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103
            #1082#1088#1091#1087#1085#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103)
        end
        object CbBoxIrrigUrScPostMucous_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
          Items.Strings = (
            #1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
            #1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
            #1089#1083#1072#1073#1086' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
            #1083#1077#1075#1082#1086' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
            #1086#1073#1080#1083#1100#1085#1086' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090)
        end
        object CbBoxIrrigUrScPostMucous_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1086#1095#1072#1075#1086#1074#1099#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1085#1077#1090
          OnChange = CbBoxIrrigUrScPostMucous_04Change
          Items.Strings = (
            #1086#1095#1072#1075#1086#1074#1099#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1085#1077#1090
            #1086#1095#1072#1075#1086#1074#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1077#1089#1090#1100)
        end
        object CbBoxIrrigUrScPostMucous_05: TComboBox
          Left = 16
          Top = 120
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 4
          Text = #1086#1095#1072#1075#1080' '#1083#1077#1081#1082#1086#1087#1083#1072#1082#1080#1080
          Items.Strings = (
            #1086#1095#1072#1075#1080' '#1083#1077#1081#1082#1086#1087#1083#1072#1082#1080#1080
            #1086#1095#1072#1075#1080' '#1084#1072#1083#1072#1082#1086#1087#1083#1072#1082#1080#1080
            #1086#1095#1072#1075#1080' '#1083#1077#1081#1082#1086'- '#1080' '#1084#1072#1083#1072#1082#1086#1087#1083#1072#1082#1080#1080)
        end
        object CbBoxIrrigUrScPostMucous_06: TComboBox
          Left = 16
          Top = 144
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 5
          Text = #1087#1086' '#1089#1090#1077#1085#1082#1072#1084' '#1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
          Items.Strings = (
            #1087#1086' '#1089#1090#1077#1085#1082#1072#1084' '#1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
            #1087#1088#1077#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086' '#1089#1087#1088#1072#1074#1072
            #1087#1088#1077#1080#1084#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086' '#1089#1083#1077#1074#1072)
        end
        object CbBoxIrrigUrScPostMucous_07: TComboBox
          Left = 16
          Top = 168
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 6
          Text = #1087#1072#1087#1080#1083#1083#1086#1084#1072#1090#1086#1079#1072' '#1085#1077#1090
          OnChange = CbBoxIrrigUrScPostMucous_07Change
          Items.Strings = (
            #1087#1072#1087#1080#1083#1083#1086#1084#1072#1090#1086#1079#1072' '#1085#1077#1090
            #1087#1072#1087#1080#1083#1083#1086#1084#1072#1090#1086#1079' '#1077#1089#1090#1100)
        end
        object CbBoxIrrigUrScPostMucous_08: TComboBox
          Left = 16
          Top = 192
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 7
          Text = #1087#1086' '#1074#1077#1088#1093#1085#1077#1081' '#1089#1090#1077#1085#1082#1077
          Items.Strings = (
            #1087#1086' '#1074#1077#1088#1093#1085#1077#1081' '#1089#1090#1077#1085#1082#1077
            #1074' '#1087#1088#1072#1074#1099#1093' '#1086#1090#1076#1077#1083#1072#1093
            #1074' '#1083#1077#1074#1099#1093' '#1086#1090#1076#1077#1083#1072#1093
            #1087#1086' '#1074#1089#1077#1084' '#1089#1090#1077#1085#1082#1072#1084)
        end
      end
      object GroupBox11: TGroupBox
        Left = 248
        Top = 8
        Width = 225
        Height = 225
        Caption = '   '#1057#1077#1084#1077#1085#1085#1086#1081' '#1073#1091#1075#1086#1088#1086#1082'   '
        TabOrder = 2
        object CbBoxIrrigUrScPostCollic_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1085#1086#1088#1084#1072#1083#1100#1085#1099#1093' '#1088#1072#1079#1084#1077#1088#1086#1074
          Items.Strings = (
            #1085#1086#1088#1084#1072#1083#1100#1085#1099#1093' '#1088#1072#1079#1084#1077#1088#1086#1074
            #1091#1074#1077#1083#1080#1095#1077#1085' '#1074' '#1088#1072#1079#1084#1077#1088#1072#1093
            #1091#1084#1077#1085#1100#1096#1077#1085' '#1074' '#1088#1072#1079#1084#1077#1088#1072#1093)
        end
        object CbBoxIrrigUrScPostCollic_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1073#1083#1077#1076#1085#1086'-'#1088#1086#1079#1086#1074#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
          Items.Strings = (
            #1073#1083#1077#1076#1085#1086'-'#1088#1086#1079#1086#1074#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
            #1073#1083#1077#1076#1085#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
            #1087#1086#1083#1080#1084#1086#1088#1092#1085#1086'-'#1082#1088#1072#1089#1085#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
            #1087#1086#1083#1080#1084#1086#1088#1092#1085#1086'-'#1078#1077#1083#1090#1086#1081' '#1086#1082#1088#1072#1089#1082#1080
            #1075#1080#1087#1077#1088#1077#1084#1080#1088#1086#1074#1072#1085)
        end
        object CbBoxIrrigUrScPostCollic_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
          Items.Strings = (
            #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1085#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090
            #1087#1088#1080' '#1082#1086#1085#1090#1072#1082#1090#1077' '#1082#1088#1086#1074#1086#1090#1086#1095#1080#1090)
        end
        object CbBoxIrrigUrScPostCollic_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          Items.Strings = (
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1084#1072#1090#1086#1074#1072#1103
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1090#1091#1089#1082#1083#1072#1103)
        end
        object CbBoxIrrigUrScPostCollic_05: TComboBox
          Left = 16
          Top = 120
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 4
          Text = #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1093#1088#1072#1085#1077#1085
          Items.Strings = (
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1093#1088#1072#1085#1077#1085
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1089#1084#1072#1079#1072#1085
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1091#1089#1080#1083#1077#1085
            #1089#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1088#1080#1089#1091#1085#1086#1082' '#1086#1073#1077#1076#1085#1077#1085)
        end
        object CbBoxIrrigUrScPostCollic_06: TComboBox
          Left = 16
          Top = 144
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 5
          Text = #1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074' '#1085#1077#1090
          OnChange = CbBoxIrrigUrScPostCollic_06Change
          Items.Strings = (
            #1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1086#1074' '#1085#1077#1090
            #1080#1085#1092#1080#1083#1100#1090#1088#1072#1090#1099' '#1077#1089#1090#1100)
        end
        object CbBoxIrrigUrScPostCollic_07: TComboBox
          Left = 16
          Top = 168
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 6
          Text = #1084#1103#1075#1082#1080#1077
          Items.Strings = (
            #1084#1103#1075#1082#1080#1077
            #1087#1077#1088#1077#1093#1086#1076#1085#1099#1077
            #1090#1074#1077#1088#1076#1099#1077)
        end
        object CbBoxIrrigUrScPostCollic_08: TComboBox
          Left = 16
          Top = 192
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 7
          Text = #1089#1087#1088#1072#1074#1072
          Items.Strings = (
            #1089#1087#1088#1072#1074#1072
            #1089#1083#1077#1074#1072
            #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
        end
      end
      object GroupBox12: TGroupBox
        Left = 488
        Top = 8
        Width = 225
        Height = 129
        Caption = '   '#1042#1099#1074#1086#1076#1085#1099#1077' '#1087#1088#1086#1090#1086#1082#1080' '#1072#1094#1080#1085#1091#1089#1086#1074'    '
        TabOrder = 3
        object CbBoxIrrigUrScPostDucts_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1089#1086#1084#1082#1085#1091#1090#1099
          Items.Strings = (
            #1089#1086#1084#1082#1085#1091#1090#1099
            #1079#1080#1103#1102#1090)
        end
        object CbBoxIrrigUrScPostDucts_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1099
            #1087#1088#1086#1083#1080#1092#1077#1088#1072#1090#1080#1074#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            #1087#1077#1088#1080#1083#1080#1090#1090#1088#1077#1080#1090#1099
            #1079#1072#1082#1088#1099#1090#1099#1077' '#1072#1076#1077#1085#1080#1090#1099)
        end
        object CbBoxIrrigUrScPostDucts_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1089#1086#1082#1088#1072#1097#1072#1102#1090#1089#1103' '#1072#1082#1090#1080#1074#1085#1086
          Items.Strings = (
            #1089#1086#1082#1088#1072#1097#1072#1102#1090#1089#1103' '#1072#1082#1090#1080#1074#1085#1086
            #1089#1086#1082#1088#1072#1097#1072#1102#1090#1089#1103' '#1074#1103#1083#1086
            #1085#1077' '#1089#1086#1082#1088#1072#1097#1072#1102#1090#1089#1103)
        end
        object CbBoxIrrigUrScPostDucts_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1089#1077#1082#1088#1077#1090' '#1074#1099#1076#1077#1083#1103#1077#1090#1089#1103
          Items.Strings = (
            #1089#1077#1082#1088#1077#1090' '#1074#1099#1076#1077#1083#1103#1077#1090#1089#1103
            #1089#1077#1082#1088#1077#1090' '#1085#1077' '#1074#1099#1076#1077#1083#1103#1077#1090#1089#1103)
        end
      end
      object GroupBox13: TGroupBox
        Left = 488
        Top = 144
        Width = 225
        Height = 201
        Caption = '   '#1052#1086#1095#1077#1074#1086#1081' '#1087#1091#1079#1099#1088#1100'   '
        TabOrder = 4
        object CbBoxIrrigUrScPostVesic_01: TComboBox
          Left = 16
          Top = 24
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 0
          Text = #1073#1077#1079' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081
          OnChange = CbBoxIrrigUrScPostVesic_01Change
          Items.Strings = (
            #1073#1077#1079' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081
            #1080#1084#1077#1102#1090#1089#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103)
        end
        object CbBoxIrrigUrScPostVesic_06: TComboBox
          Left = 16
          Top = 144
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 5
          Text = #1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1089#1091#1076#1086#1074' '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1081
          Items.Strings = (
            #1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1089#1091#1076#1086#1074' '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1081
            #1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1089#1091#1076#1086#1074' '#1086#1073#1077#1076#1085#1077#1085
            #1088#1080#1089#1091#1085#1086#1082' '#1089#1086#1089#1091#1076#1086#1074' '#1091#1089#1080#1083#1077#1085)
        end
        object CbBoxIrrigUrScPostVesic_04: TComboBox
          Left = 16
          Top = 96
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1075#1083#1072#1076#1082#1072#1103
          Items.Strings = (
            #1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1075#1083#1072#1076#1082#1072#1103
            #1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1084#1077#1083#1082#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103
            #1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1082#1088#1091#1087#1085#1086#1073#1091#1075#1088#1080#1089#1090#1072#1103
            #1087#1086#1074#1077#1088'-'#1089#1090#1100' "'#1073#1091#1083#1099#1078#1085#1072#1103' '#1084#1086#1089#1090#1086#1074#1072#1103'"')
        end
        object CbBoxIrrigUrScPostVesic_05: TComboBox
          Left = 16
          Top = 120
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 4
          Text = #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          Items.Strings = (
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1090#1091#1089#1082#1083#1072#1103
            #1089#1083#1080#1079#1080#1089#1090#1072#1103' '#1084#1072#1090#1086#1074#1072#1103)
        end
        object CbBoxIrrigUrScPostVesic_07: TComboBox
          Left = 16
          Top = 168
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 6
          Text = #1080#1085#1086#1088#1086#1076#1085#1099#1093' '#1090#1077#1083' '#1074' '#1087#1088#1086#1089#1074#1077#1090#1077' '#1085#1077#1090
          Items.Strings = (
            #1080#1085#1086#1088#1086#1076#1085#1099#1093' '#1090#1077#1083' '#1074' '#1087#1088#1086#1089#1074#1077#1090#1077' '#1085#1077#1090
            #1074' '#1087#1088#1086#1089#1074#1077#1090#1077' '#1082#1086#1085#1082#1088#1077#1084#1077#1085#1090
            #1074' '#1087#1088#1086#1089#1074#1077#1090#1077' tumor')
        end
        object CbBoxIrrigUrScPostVesic_02: TComboBox
          Left = 16
          Top = 48
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 1
          Text = #1089#1088#1077#1076#1072' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
          OnChange = CbBoxIrrigUrScPostVesic_02Change
          Items.Strings = (
            #1089#1088#1077#1076#1072' '#1087#1088#1086#1079#1088#1072#1095#1085#1072#1103
            #1089#1088#1077#1076#1072' '#1084#1091#1090#1085#1072#1103)
        end
        object CbBoxIrrigUrScPostVesic_03: TComboBox
          Left = 16
          Top = 72
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1079#1072' '#1089#1095#1077#1090' '#1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
          Items.Strings = (
            #1079#1072' '#1089#1095#1077#1090' '#1084#1077#1083#1082#1086#1090#1086#1095#1077#1095#1085#1086#1081' '#1074#1079#1074#1077#1089#1080
            #1079#1072' '#1089#1095#1077#1090' '#1093#1083#1086#1087#1100#1077#1074' '#1092#1080#1073#1088#1080#1085#1072
            #1079#1072' '#1089#1095#1077#1090' '#1075#1085#1086#1081#1085#1099#1093' '#1085#1080#1090#1077#1081)
        end
      end
    end
  end
  object BtnSave: TButton
    Left = 580
    Top = 437
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnSaveClick
    ExplicitTop = 475
  end
  object BtnCancel: TButton
    Left = 661
    Top = 437
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnCancelClick
    ExplicitTop = 475
  end
  object BtnPrev: TButton
    Left = 382
    Top = 437
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1085#1072#1079#1072#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnPrevClick
    ExplicitTop = 475
  end
  object BtnNext: TButton
    Left = 463
    Top = 437
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1074#1087#1077#1088#1077#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnNextClick
    ExplicitTop = 475
  end
  object DTPickUrScopiaIrrig: TDateTimePicker
    Left = 120
    Top = 8
    Width = 97
    Height = 21
    Date = 38214.817669988430000000
    Time = 38214.817669988430000000
    TabOrder = 0
  end
  object NiceSetFrmUrScopiaIrrig: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'CbBoxIrrigUrScAntTool_01.ItemIndex'
      'CbBoxIrrigUrScAntTool_02.ItemIndex'
      'CbBoxIrrigUrScAntTool_03.ItemIndex'
      'CbBoxIrrigUrScAntTool_04.ItemIndex')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 240
    Top = 32
  end
  object AppEventsFrmUrScopiaIrrig: TApplicationEvents
    OnShortCut = AppEventsFrmUrScopiaIrrigShortCut
    Left = 272
    Top = 32
  end
end
