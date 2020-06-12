object FrmUZIGenit: TFrmUZIGenit
  Left = 234
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1059#1047#1048' '#1075#1077#1085#1080#1090#1072#1083#1080#1081
  ClientHeight = 569
  ClientWidth = 695
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
    695
    569)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSave: TButton
    Left = 531
    Top = 536
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 612
    Top = 536
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object PgCtrlUZIGenit: TPageControl
    Left = 8
    Top = 8
    Width = 687
    Height = 522
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PgCtrlUZIGenitChange
    object TabSheet1: TTabSheet
      Caption = #1059#1047#1048' '#1087#1088#1077#1076#1089#1090#1072#1090#1077#1083#1100#1085#1086#1081' '#1078#1077#1083#1077#1079#1099
      DesignSize = (
        679
        494)
      object GroupBox1: TGroupBox
        Left = 8
        Top = 3
        Width = 663
        Height = 481
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Label13: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label15: TLabel
          Left = 27
          Top = 74
          Width = 38
          Height = 13
          Caption = #1088#1072#1079#1084#1077#1088
        end
        object Label22: TLabel
          Left = 113
          Top = 74
          Width = 5
          Height = 13
          Caption = #1093
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 161
          Top = 74
          Width = 5
          Height = 13
          Caption = #1093
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 211
          Top = 74
          Width = 16
          Height = 13
          Caption = #1084#1084
        end
        object Label25: TLabel
          Left = 254
          Top = 74
          Width = 33
          Height = 13
          Caption = #1086#1073#1098#1077#1084
        end
        object Label26: TLabel
          Left = 337
          Top = 74
          Width = 34
          Height = 13
          Caption = #1082#1091#1073'.'#1089#1084
        end
        object Label24: TLabel
          Left = 60
          Top = 123
          Width = 42
          Height = 13
          Caption = #1082#1086#1085#1090#1091#1088#1099
        end
        object Label27: TLabel
          Left = 52
          Top = 175
          Width = 50
          Height = 13
          Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
        end
        object Label5: TLabel
          Left = 378
          Top = 120
          Width = 63
          Height = 13
          Caption = #1101#1093#1086#1075#1077#1085#1085#1086#1089#1090#1100
        end
        object Label6: TLabel
          Left = 351
          Top = 142
          Width = 90
          Height = 26
          Alignment = taRightJustify
          Caption = #1087#1072#1088#1072#1091#1088#1077#1090#1088#1072#1083#1100#1085#1099#1081#13#10#1092#1080#1073#1088#1086#1079
        end
        object Label7: TLabel
          Left = 358
          Top = 168
          Width = 83
          Height = 26
          Alignment = taRightJustify
          Caption = #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077#13#10#1074#1082#1083#1102#1095#1077#1085#1080#1103
        end
        object Label18: TLabel
          Left = 396
          Top = 67
          Width = 57
          Height = 26
          Alignment = taRightJustify
          Caption = #1086#1089#1090#1072#1090#1086#1095#1085#1072#1103#13#10#1084#1086#1095#1072
        end
        object Label19: TLabel
          Left = 502
          Top = 74
          Width = 34
          Height = 13
          Caption = #1082#1091#1073'.'#1089#1084
        end
        object DTPickUZIProstata: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 1
        end
        object Panel1: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 19
        end
        object EdtUZIProstSize_01: TEdit
          Left = 75
          Top = 72
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 2
          Text = 'Edit1'
          OnKeyPress = EdtUZIProstSize_01KeyPress
        end
        object EdtUZIProstSize_02: TEdit
          Left = 123
          Top = 72
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 3
          Text = 'Edit2'
          OnKeyPress = EdtUZIProstSize_02KeyPress
        end
        object EdtUZIProstSize_03: TEdit
          Left = 171
          Top = 72
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 4
          Text = 'Edit3'
          OnKeyPress = EdtUZIProstSize_03KeyPress
        end
        object EdtUZIProstVolume: TEdit
          Left = 297
          Top = 72
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 5
          Text = 'EdtUZIProstVolume'
          OnKeyPress = EdtUZIProstVolumeKeyPress
        end
        object CbBoxUZIProstContour: TComboBox
          Left = 112
          Top = 120
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 7
          Text = #1095#1077#1090#1082#1080#1077
          Items.Strings = (
            #1095#1077#1090#1082#1080#1077
            #1085#1077#1095#1077#1090#1082#1080#1077
            #1089#1084#1072#1079#1072#1085#1099)
        end
        object CbBoxUZIProstOutline: TComboBox
          Left = 112
          Top = 146
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = #1088#1086#1074#1085#1099#1077
          Items.Strings = (
            #1088#1086#1074#1085#1099#1077
            #1085#1077#1088#1086#1074#1085#1099#1077
            #1074#1086#1083#1085#1080#1089#1090#1099#1077)
        end
        object ChBoxUZIProstata: TCheckBox
          Left = 239
          Top = 17
          Width = 282
          Height = 18
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1048' '#1087#1088#1086#1089#1090#1072#1090#1099' '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 0
          OnClick = ChBoxUZIProstataClick
        end
        object CbBoxUZIProstStructure: TComboBox
          Left = 112
          Top = 172
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 9
          Text = #1086#1076#1085#1086#1088#1086#1076#1085#1072#1103
          Items.Strings = (
            #1086#1076#1085#1086#1088#1086#1076#1085#1072#1103
            #1085#1077#1086#1076#1085#1086#1088#1086#1076#1085#1072#1103
            #1085#1077' '#1089#1086#1074#1089#1077#1084' '#1086#1076#1085#1086#1088#1086#1076#1085#1072#1103)
        end
        object CbBoxUZIProstDensity: TComboBox
          Left = 451
          Top = 120
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 10
          Text = #1085#1086#1088#1084#1072#1083#1100#1085#1072#1103
          Items.Strings = (
            #1089#1085#1080#1078#1077#1085#1072
            #1085#1086#1088#1084#1072#1083#1100#1085#1072#1103
            #1091#1084#1077#1088#1077#1085#1085#1086' '#1087#1086#1074#1099#1096#1077#1085#1072
            #1087#1086#1074#1099#1096#1077#1085#1072)
        end
        object CbBoxUZIProstFibrosis: TComboBox
          Left = 451
          Top = 146
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 11
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            #1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099#1081
            #1091#1084#1077#1088#1077#1085#1085#1099#1081
            #1074#1099#1088#1072#1078#1077#1085#1085#1099#1081)
        end
        object CbBoxUZIProstLytos: TComboBox
          Left = 451
          Top = 172
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 12
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
            #1080#1084#1077#1102#1090#1089#1103)
        end
        object GroupBox5: TGroupBox
          Left = 12
          Top = 209
          Width = 313
          Height = 112
          Caption = '   '#1062#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1079#1086#1085#1072'   '
          TabOrder = 13
          object Label8: TLabel
            Left = 34
            Top = 23
            Width = 56
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1095#1072#1075#1086#1074#1099#1077#13#10#1080#1079#1084#1077#1085#1077#1085#1080#1103
          end
          object Label14: TLabel
            Left = 35
            Top = 56
            Width = 55
            Height = 13
            Caption = #1074#1082#1083#1102#1095#1077#1085#1080#1103
          end
          object Label132: TLabel
            Left = 27
            Top = 82
            Width = 63
            Height = 13
            Caption = #1101#1093#1086#1075#1077#1085#1085#1086#1089#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CbBoxUZIProstCentrFocal: TComboBox
            Left = 100
            Top = 28
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
            OnChange = CbBoxUZIProstCentrFocalChange
            Items.Strings = (
              #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
              #1080#1084#1077#1102#1090#1089#1103)
          end
          object CbBoxUZIProstCentrDens: TComboBox
            Left = 100
            Top = 54
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
            Items.Strings = (
              #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1082#1072#1083#1100#1094#1080#1085#1072#1090#1099)
          end
          object CbBoxUZIProstEchogenDext: TComboBox
            Left = 100
            Top = 80
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 2
            Text = #1086#1073#1099#1095#1085#1072#1103
            Items.Strings = (
              #1086#1073#1099#1095#1085#1072#1103
              #1085#1077#1079#1085#1072#1095'. '#1089#1085#1080#1078#1077#1085#1072
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1089#1085#1080#1078#1077#1085#1072
              #1089#1085#1080#1078#1077#1085#1072
              #1087#1086#1074#1099#1096#1077#1085#1072
              #1095#1077#1088#1077#1076#1091#1102#1097#1072#1103#1089#1103)
          end
        end
        object GroupBox6: TGroupBox
          Left = 338
          Top = 209
          Width = 313
          Height = 112
          Caption = '   '#1055#1077#1088#1080#1092#1077#1088#1080#1095#1077#1089#1082#1072#1103' '#1079#1086#1085#1072'   '
          TabOrder = 14
          object Label16: TLabel
            Left = 39
            Top = 23
            Width = 56
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1095#1072#1075#1086#1074#1099#1077#13#10#1080#1079#1084#1077#1085#1077#1085#1080#1103
          end
          object Label17: TLabel
            Left = 40
            Top = 58
            Width = 55
            Height = 13
            Caption = #1074#1082#1083#1102#1095#1077#1085#1080#1103
          end
          object Label133: TLabel
            Left = 32
            Top = 82
            Width = 63
            Height = 13
            Caption = #1101#1093#1086#1075#1077#1085#1085#1086#1089#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CbBoxUZIProstPerifFocal: TComboBox
            Left = 105
            Top = 28
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
            OnChange = CbBoxUZIProstPerifFocalChange
            Items.Strings = (
              #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
              #1080#1084#1077#1102#1090#1089#1103)
          end
          object CbBoxUZIProstPerifDens: TComboBox
            Left = 105
            Top = 54
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
            Items.Strings = (
              #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077
              #1082#1072#1083#1100#1094#1080#1085#1072#1090#1099)
          end
          object CbBoxUZIProstEchogenSin: TComboBox
            Left = 105
            Top = 80
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 2
            Text = #1086#1073#1099#1095#1085#1072#1103
            Items.Strings = (
              #1086#1073#1099#1095#1085#1072#1103
              #1085#1077#1079#1085#1072#1095'. '#1089#1085#1080#1078#1077#1085#1072
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1089#1085#1080#1078#1077#1085#1072
              #1089#1085#1080#1078#1077#1085#1072
              #1087#1086#1074#1099#1096#1077#1085#1072
              #1095#1077#1088#1077#1076#1091#1102#1097#1072#1103#1089#1103)
          end
        end
        object Panel3: TPanel
          Left = 331
          Top = 121
          Width = 2
          Height = 81
          BevelOuter = bvLowered
          TabOrder = 16
        end
        object EdtUZIProstResidUrine: TEdit
          Left = 462
          Top = 72
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 6
          Text = 'EdtVesicUr_05'
          OnKeyPress = EdtUZIProstResidUrineKeyPress
        end
        object Panel5: TPanel
          Left = 33
          Top = 102
          Width = 500
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 17
        end
        object GroupBox7: TGroupBox
          Left = 12
          Top = 329
          Width = 639
          Height = 140
          Caption = '          '#1057#1077#1084#1077#1085#1085#1099#1077' '#1087#1091#1079#1099#1088#1100#1082#1080'   '
          TabOrder = 18
          object GroupBox8: TGroupBox
            Left = 12
            Top = 20
            Width = 301
            Height = 108
            Caption = '   '#1089#1087#1088#1072#1074#1072'   '
            TabOrder = 0
            object Label23: TLabel
              Left = 38
              Top = 26
              Width = 46
              Height = 13
              Caption = #1088#1072#1079#1084#1077#1088#1099
            end
            object Label28: TLabel
              Left = 49
              Top = 52
              Width = 35
              Height = 13
              Caption = #1089#1090#1077#1085#1082#1080
            end
            object Label29: TLabel
              Left = 20
              Top = 78
              Width = 64
              Height = 13
              Caption = #1089#1086#1076#1077#1088#1078#1080#1084#1086#1077
            end
            object Label36: TLabel
              Left = 132
              Top = 25
              Width = 5
              Height = 13
              Caption = #1093
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 182
              Top = 25
              Width = 16
              Height = 13
              Caption = #1084#1084
            end
            object CbBoxUZIVesSeminDextWall: TComboBox
              Left = 94
              Top = 49
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
              Items.Strings = (
                #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
                #1091#1090#1086#1083#1097#1077#1085#1099
                #1091#1087#1083#1086#1090#1085#1077#1085#1099
                #1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1099)
            end
            object CbBoxUZIVesSeminDextDens: TComboBox
              Left = 94
              Top = 75
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
              Items.Strings = (
                #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
                #1085#1077' '#1075#1086#1084#1086#1075#1077#1085#1085#1086#1077)
            end
            object EdtUZIVesSeminDext_01: TEdit
              Left = 94
              Top = 23
              Width = 33
              Height = 21
              MaxLength = 5
              TabOrder = 0
              Text = 'EdtUZIVesSeminDext_01'
              OnKeyPress = EdtUZIVesSeminDext_01KeyPress
            end
            object EdtUZIVesSeminDext_02: TEdit
              Left = 142
              Top = 23
              Width = 33
              Height = 21
              MaxLength = 5
              TabOrder = 1
              Text = 'EdtUZIVesSeminDext_02'
              OnKeyPress = EdtUZIVesSeminDext_02KeyPress
            end
          end
          object GroupBox13: TGroupBox
            Left = 326
            Top = 20
            Width = 301
            Height = 108
            Caption = '   '#1089#1083#1077#1074#1072'   '
            TabOrder = 1
            object Label30: TLabel
              Left = 38
              Top = 26
              Width = 46
              Height = 13
              Caption = #1088#1072#1079#1084#1077#1088#1099
            end
            object Label31: TLabel
              Left = 49
              Top = 52
              Width = 35
              Height = 13
              Caption = #1089#1090#1077#1085#1082#1080
            end
            object Label32: TLabel
              Left = 20
              Top = 78
              Width = 64
              Height = 13
              Caption = #1089#1086#1076#1077#1088#1078#1080#1084#1086#1077
            end
            object Label38: TLabel
              Left = 132
              Top = 25
              Width = 5
              Height = 13
              Caption = #1093
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 182
              Top = 25
              Width = 16
              Height = 13
              Caption = #1084#1084
            end
            object CbBoxUZIVesSeminSinWall: TComboBox
              Left = 94
              Top = 49
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
              Items.Strings = (
                #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
                #1091#1090#1086#1083#1097#1077#1085#1099
                #1091#1087#1083#1086#1090#1085#1077#1085#1099
                #1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1099)
            end
            object CbBoxUZIVesSeminSinDens: TComboBox
              Left = 94
              Top = 75
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
              Items.Strings = (
                #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
                #1085#1077' '#1075#1086#1084#1086#1075#1077#1085#1085#1086#1077)
            end
            object EdtUZIVesSeminSin_01: TEdit
              Left = 94
              Top = 23
              Width = 33
              Height = 21
              MaxLength = 5
              TabOrder = 0
              Text = 'Edit1'
              OnKeyPress = EdtUZIVesSeminSin_01KeyPress
            end
            object EdtUZIVesSeminSin_02: TEdit
              Left = 142
              Top = 23
              Width = 33
              Height = 21
              MaxLength = 5
              TabOrder = 1
              Text = 'Edit2'
              OnKeyPress = EdtUZIVesSeminSin_02KeyPress
            end
          end
        end
        object ChkBoxUZIVesicSemin: TCheckBox
          Left = 29
          Top = 327
          Width = 17
          Height = 17
          TabOrder = 15
          OnClick = ChkBoxUZIVesicSeminClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1047#1048' '#1084#1086#1096#1086#1085#1082#1080
      ImageIndex = 1
      DesignSize = (
        679
        494)
      object GroupBox2: TGroupBox
        Left = 8
        Top = 3
        Width = 663
        Height = 481
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Panel2: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object DTPickUZITestis: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 2
        end
        object ChBoxUZITestis: TCheckBox
          Left = 239
          Top = 17
          Width = 290
          Height = 18
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1048' '#1084#1086#1096#1086#1085#1082#1080' '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 1
          OnClick = ChBoxUZITestisClick
        end
        object GroupBox3: TGroupBox
          Left = 12
          Top = 56
          Width = 313
          Height = 413
          Caption = '   '#1055#1088#1072#1074#1086#1077' '#1103#1080#1095#1082#1086'   '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label1: TLabel
            Left = 48
            Top = 26
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
          end
          object Label2: TLabel
            Left = 53
            Top = 54
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = #1086#1073#1098#1077#1084
          end
          object Label3: TLabel
            Left = 44
            Top = 81
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = #1082#1086#1085#1090#1091#1088#1099
          end
          object Label10: TLabel
            Left = 134
            Top = 26
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 182
            Top = 26
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 136
            Top = 54
            Width = 34
            Height = 13
            Caption = #1082#1091#1073'.'#1089#1084
          end
          object Label12: TLabel
            Left = 232
            Top = 26
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label33: TLabel
            Left = 62
            Top = 108
            Width = 24
            Height = 13
            Caption = #1082#1088#1072#1103
          end
          object Label34: TLabel
            Left = 35
            Top = 135
            Width = 50
            Height = 13
            Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
          end
          object Label35: TLabel
            Left = 22
            Top = 155
            Width = 64
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1073#1086#1083#1086#1095#1077#1095#1085#1072#1103#13#10#1078#1080#1076#1082#1086#1089#1090#1100
          end
          object Label40: TLabel
            Left = 17
            Top = 213
            Width = 49
            Height = 13
            Caption = #1055#1088#1080#1076#1072#1090#1086#1082
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 134
            Top = 242
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 182
            Top = 242
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 232
            Top = 242
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label44: TLabel
            Left = 48
            Top = 242
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
          end
          object Label45: TLabel
            Left = 44
            Top = 297
            Width = 42
            Height = 13
            Caption = #1082#1086#1085#1090#1091#1088#1099
          end
          object Label46: TLabel
            Left = 53
            Top = 270
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = #1086#1073#1098#1077#1084
          end
          object Label47: TLabel
            Left = 136
            Top = 270
            Width = 34
            Height = 13
            Caption = #1082#1091#1073'.'#1089#1084
          end
          object Label48: TLabel
            Left = 36
            Top = 351
            Width = 50
            Height = 13
            Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
          end
          object Label49: TLabel
            Left = 30
            Top = 371
            Width = 56
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1095#1072#1075#1086#1074#1099#1077#13#10#1080#1079#1084#1077#1085#1077#1085#1080#1103
          end
          object Label50: TLabel
            Left = 62
            Top = 324
            Width = 24
            Height = 13
            Caption = #1082#1088#1072#1103
          end
          object EdtUZITestisDext_01: TEdit
            Left = 96
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 0
            Text = 'EdtTestisDext_01'
            OnKeyPress = EdtUZITestisDext_01KeyPress
          end
          object EdtUZITestisDext_02: TEdit
            Left = 144
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 1
            Text = 'EdtTestisDext_02'
            OnKeyPress = EdtUZITestisDext_02KeyPress
          end
          object EdtUZITestisDext_03: TEdit
            Left = 192
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 2
            Text = 'EdtTestisDext_03'
            OnKeyPress = EdtUZITestisDext_03KeyPress
          end
          object EdtUZITestisDext_04: TEdit
            Left = 96
            Top = 51
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 3
            Text = 'EdtTestisDext_04'
            OnKeyPress = EdtUZITestisDext_04KeyPress
          end
          object CbBoxUZITestisDextPath: TComboBox
            Left = 96
            Top = 78
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077
              #1089#1084#1072#1079#1072#1085#1099)
          end
          object CbBoxUZITestisDextEdge: TComboBox
            Left = 96
            Top = 105
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 5
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077
              #1085#1077' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1088#1091#1102#1090#1089#1103)
          end
          object CbBoxUZITestisDextStruct: TComboBox
            Left = 96
            Top = 132
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 6
            Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
            Items.Strings = (
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103)
          end
          object CbBoxUZITestisDextLiquid: TComboBox
            Left = 96
            Top = 159
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 7
            Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            Items.Strings = (
              #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
              #1091#1074#1077#1083#1080#1095#1077#1085#1072)
          end
          object EdtUZIEpididimDext_01: TEdit
            Left = 96
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 8
            Text = 'EdtDextRen_01'
            OnKeyPress = EdtUZIEpididimDext_01KeyPress
          end
          object EdtUZIEpididimDext_02: TEdit
            Left = 144
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 9
            Text = 'EdtDextRen_02'
            OnKeyPress = EdtUZIEpididimDext_02KeyPress
          end
          object EdtUZIEpididimDext_03: TEdit
            Left = 192
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 10
            Text = 'EdtDextRen_03'
            OnKeyPress = EdtUZIEpididimDext_03KeyPress
          end
          object CbBoxUZIEpididimDextPath: TComboBox
            Left = 96
            Top = 294
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 12
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077)
          end
          object EdtUZIEpididimDext_04: TEdit
            Left = 96
            Top = 267
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 11
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimDext_04KeyPress
          end
          object CbBoxUZIEpididimDextEdge: TComboBox
            Left = 96
            Top = 321
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 13
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077)
          end
          object CbBoxUZIEpididimDextStruct: TComboBox
            Left = 96
            Top = 348
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 14
            Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
            Items.Strings = (
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103)
          end
          object CbBoxUZIEpididimDextNidus: TComboBox
            Left = 96
            Top = 375
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 15
            Text = #1085#1077' '#1074#1099#1103#1074#1083#1077#1085#1099
            Items.Strings = (
              #1085#1077' '#1074#1099#1103#1074#1083#1077#1085#1099
              #1080#1084#1077#1102#1090#1089#1103)
          end
        end
        object GroupBox9: TGroupBox
          Left = 338
          Top = 56
          Width = 313
          Height = 412
          Caption = '   '#1051#1077#1074#1086#1077' '#1103#1080#1095#1082#1086'   '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label51: TLabel
            Left = 48
            Top = 26
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
          end
          object Label52: TLabel
            Left = 53
            Top = 54
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = #1086#1073#1098#1077#1084
          end
          object Label53: TLabel
            Left = 44
            Top = 81
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = #1082#1086#1085#1090#1091#1088#1099
          end
          object Label54: TLabel
            Left = 134
            Top = 26
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 182
            Top = 26
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 136
            Top = 54
            Width = 34
            Height = 13
            Caption = #1082#1091#1073'.'#1089#1084
          end
          object Label57: TLabel
            Left = 232
            Top = 26
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label58: TLabel
            Left = 62
            Top = 108
            Width = 24
            Height = 13
            Caption = #1082#1088#1072#1103
          end
          object Label59: TLabel
            Left = 35
            Top = 135
            Width = 50
            Height = 13
            Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
          end
          object Label60: TLabel
            Left = 22
            Top = 155
            Width = 64
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1073#1086#1083#1086#1095#1077#1095#1085#1072#1103#13#10#1078#1080#1076#1082#1086#1089#1090#1100
          end
          object Label61: TLabel
            Left = 17
            Top = 213
            Width = 49
            Height = 13
            Caption = #1055#1088#1080#1076#1072#1090#1086#1082
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label62: TLabel
            Left = 134
            Top = 242
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 182
            Top = 242
            Width = 5
            Height = 13
            Caption = #1093
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 232
            Top = 242
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label65: TLabel
            Left = 48
            Top = 242
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
          end
          object Label66: TLabel
            Left = 44
            Top = 297
            Width = 42
            Height = 13
            Caption = #1082#1086#1085#1090#1091#1088#1099
          end
          object Label67: TLabel
            Left = 53
            Top = 270
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = #1086#1073#1098#1077#1084
          end
          object Label68: TLabel
            Left = 136
            Top = 270
            Width = 34
            Height = 13
            Caption = #1082#1091#1073'.'#1089#1084
          end
          object Label69: TLabel
            Left = 36
            Top = 351
            Width = 50
            Height = 13
            Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
          end
          object Label70: TLabel
            Left = 30
            Top = 371
            Width = 56
            Height = 26
            Alignment = taRightJustify
            Caption = #1086#1095#1072#1075#1086#1074#1099#1077#13#10#1080#1079#1084#1077#1085#1077#1085#1080#1103
          end
          object Label71: TLabel
            Left = 62
            Top = 324
            Width = 24
            Height = 13
            Caption = #1082#1088#1072#1103
          end
          object EdtUZITestisSin_01: TEdit
            Left = 96
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 0
            Text = 'EdtTestisDext_01'
            OnKeyPress = EdtUZITestisSin_01KeyPress
          end
          object EdtUZITestisSin_02: TEdit
            Left = 144
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 1
            Text = 'EdtTestisDext_02'
            OnKeyPress = EdtUZITestisSin_02KeyPress
          end
          object EdtUZITestisSin_03: TEdit
            Left = 192
            Top = 24
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 2
            Text = 'EdtTestisDext_03'
            OnKeyPress = EdtUZITestisSin_03KeyPress
          end
          object EdtUZITestisSin_04: TEdit
            Left = 96
            Top = 51
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 3
            Text = 'EdtTestisDext_04'
            OnKeyPress = EdtUZITestisSin_04KeyPress
          end
          object CbBoxUZITestisSinPath: TComboBox
            Left = 96
            Top = 78
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077
              #1089#1084#1072#1079#1072#1085#1099)
          end
          object CbBoxUZITestisSinEdge: TComboBox
            Left = 96
            Top = 105
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 5
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077
              #1085#1077' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1088#1091#1102#1090#1089#1103)
          end
          object CbBoxUZITestisSinStruct: TComboBox
            Left = 96
            Top = 132
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 6
            Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
            Items.Strings = (
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103)
          end
          object CbBoxUZITestisSinLiquid: TComboBox
            Left = 96
            Top = 159
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 7
            Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            Items.Strings = (
              #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
              #1091#1074#1077#1083#1080#1095#1077#1085#1072)
          end
          object EdtUZIEpididimSin_01: TEdit
            Left = 96
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 8
            Text = 'EdtDextRen_01'
            OnKeyPress = EdtUZIEpididimSin_01KeyPress
          end
          object EdtUZIEpididimSin_02: TEdit
            Left = 144
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 9
            Text = 'EdtDextRen_02'
            OnKeyPress = EdtUZIEpididimSin_02KeyPress
          end
          object EdtUZIEpididimSin_03: TEdit
            Left = 192
            Top = 240
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 10
            Text = 'EdtDextRen_03'
            OnKeyPress = EdtUZIEpididimSin_03KeyPress
          end
          object CbBoxUZIEpididimSinPath: TComboBox
            Left = 96
            Top = 294
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 12
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077)
          end
          object EdtUZIEpididimSin_04: TEdit
            Left = 96
            Top = 267
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 11
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimSin_04KeyPress
          end
          object CbBoxUZIEpididimSinEdge: TComboBox
            Left = 96
            Top = 321
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 13
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077)
          end
          object CbBoxUZIEpididimSinStruct: TComboBox
            Left = 96
            Top = 348
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 14
            Text = #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
            Items.Strings = (
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1080#1079#1084#1077#1085#1077#1085#1072
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103)
          end
          object CbBoxUZIEpididimSinNidus: TComboBox
            Left = 96
            Top = 375
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 15
            Text = #1085#1077' '#1074#1099#1103#1074#1083#1077#1085#1099
            Items.Strings = (
              #1085#1077' '#1074#1099#1103#1074#1083#1077#1085#1099
              #1080#1084#1077#1102#1090#1089#1103)
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1059#1047#1044#1043' '#1089#1086#1089#1091#1076#1086#1074' penis'
      ImageIndex = 2
      DesignSize = (
        679
        494)
      object GroupBox4: TGroupBox
        Left = 8
        Top = 3
        Width = 663
        Height = 481
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Label72: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label73: TLabel
          Left = 9
          Top = 59
          Width = 95
          Height = 13
          Caption = #1050#1072#1074#1077#1088#1085#1086#1079#1085#1099#1077' '#1090#1077#1083#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 62
          Top = 86
          Width = 50
          Height = 13
          Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
        end
        object Label75: TLabel
          Left = 49
          Top = 116
          Width = 63
          Height = 13
          Caption = #1101#1093#1086#1075#1077#1085#1085#1086#1089#1090#1100
        end
        object Label76: TLabel
          Left = 56
          Top = 146
          Width = 55
          Height = 13
          Caption = #1074#1082#1083#1102#1095#1077#1085#1080#1103
        end
        object Label79: TLabel
          Left = 380
          Top = 59
          Width = 98
          Height = 13
          Caption = #1041#1077#1083#1086#1095#1085#1072#1103' '#1086#1073#1086#1083#1086#1095#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 380
          Top = 86
          Width = 50
          Height = 13
          Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1072
        end
        object Label81: TLabel
          Left = 9
          Top = 204
          Width = 124
          Height = 13
          Caption = #1040#1088#1090#1077#1088#1080#1072#1083#1100#1085#1099#1081' '#1082#1088#1086#1074#1086#1090#1086#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label82: TLabel
          Left = 14
          Top = 260
          Width = 66
          Height = 26
          Alignment = taRightJustify
          Caption = #1082#1072#1074#1077#1088#1085#1086#1079#1085#1072#1103#13#10#1072#1088#1090#1077#1088#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 20
          Top = 298
          Width = 60
          Height = 26
          Alignment = taRightJustify
          Caption = #1076#1086#1088#1079#1072#1083#1100#1085#1072#1103#13#10#1072#1088#1090#1077#1088#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 192
          Top = 204
          Width = 36
          Height = 13
          Caption = #1089#1087#1088#1072#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 432
          Top = 204
          Width = 30
          Height = 13
          Caption = #1089#1083#1077#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 93
          Top = 225
          Width = 20
          Height = 26
          Alignment = taCenter
          Caption = 'D'#13#10'('#1089#1084')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 129
          Top = 225
          Width = 43
          Height = 26
          Alignment = taCenter
          Caption = 'Vc'#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label88: TLabel
          Left = 177
          Top = 225
          Width = 43
          Height = 26
          Alignment = taCenter
          Caption = 'V'#1076#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label89: TLabel
          Left = 240
          Top = 231
          Width = 9
          Height = 13
          Caption = 'Pi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label90: TLabel
          Left = 288
          Top = 231
          Width = 10
          Height = 13
          Caption = 'Ri'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label91: TLabel
          Left = 339
          Top = 225
          Width = 20
          Height = 26
          Alignment = taCenter
          Caption = 'D'#13#10'('#1089#1084')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label92: TLabel
          Left = 376
          Top = 225
          Width = 43
          Height = 26
          Alignment = taCenter
          Caption = 'Vc'#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label93: TLabel
          Left = 424
          Top = 225
          Width = 43
          Height = 26
          Alignment = taCenter
          Caption = 'V'#1076#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label94: TLabel
          Left = 488
          Top = 231
          Width = 9
          Height = 13
          Caption = 'Pi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label95: TLabel
          Left = 536
          Top = 231
          Width = 10
          Height = 13
          Caption = 'Ri'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TLabel
          Left = 180
          Top = 332
          Width = 293
          Height = 13
          Caption = #1053#1086#1088#1084#1099': a.a.cavernosae Vc > 24 '#1089#1084'/'#1089#1077#1082', Pi '#1076#1086' 2,0, Ri '#1076#1086' 0,6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 9
          Top = 377
          Width = 101
          Height = 13
          Caption = #1042#1077#1085#1086#1079#1085#1099#1081' '#1082#1088#1086#1074#1086#1090#1086#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label98: TLabel
          Left = 192
          Top = 377
          Width = 36
          Height = 13
          Caption = #1089#1087#1088#1072#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label99: TLabel
          Left = 432
          Top = 377
          Width = 30
          Height = 13
          Caption = #1089#1083#1077#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label100: TLabel
          Left = 93
          Top = 395
          Width = 38
          Height = 26
          Alignment = taCenter
          Caption = #1088#1072#1079#1084#1077#1088#13#10'('#1089#1084')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label101: TLabel
          Left = 139
          Top = 395
          Width = 47
          Height = 26
          Alignment = taCenter
          Caption = #1089#1082#1086#1088#1086#1089#1090#1100#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label102: TLabel
          Left = 206
          Top = 401
          Width = 46
          Height = 13
          Alignment = taCenter
          Caption = #1093#1072#1088#1072#1082#1090#1077#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label103: TLabel
          Left = 339
          Top = 395
          Width = 38
          Height = 26
          Alignment = taCenter
          Caption = #1088#1072#1079#1084#1077#1088#13#10'('#1089#1084')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label104: TLabel
          Left = 384
          Top = 395
          Width = 47
          Height = 26
          Alignment = taCenter
          Caption = #1089#1082#1086#1088#1086#1089#1090#1100#13#10'('#1089#1084'/'#1089#1077#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label105: TLabel
          Left = 452
          Top = 401
          Width = 46
          Height = 13
          Alignment = taCenter
          Caption = #1093#1072#1088#1072#1082#1090#1077#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label106: TLabel
          Left = 20
          Top = 417
          Width = 60
          Height = 39
          Alignment = taRightJustify
          Caption = #1075#1083#1091#1073#1086#1082#1072#1103#13#10#1076#1086#1088#1079#1072#1083#1100#1085#1072#1103#13#10#1074#1077#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickUZIPenis: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 2
        end
        object ChBoxUZIPenis: TCheckBox
          Left = 239
          Top = 17
          Width = 266
          Height = 18
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1048' penis '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 0
          OnClick = ChBoxUZIPenisClick
        end
        object CbBoxUZIPenisCavernStruct: TComboBox
          Left = 122
          Top = 83
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = #1086#1076#1085#1086#1088#1086#1076#1085#1072#1103
          Items.Strings = (
            #1086#1076#1085#1086#1088#1086#1076#1085#1072#1103
            #1085#1077#1086#1076#1085#1086#1088#1086#1076#1085#1072#1103)
        end
        object CbBoxUZIPenisCavernDensit: TComboBox
          Left = 122
          Top = 113
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 4
          Text = #1085#1086#1088#1084#1072#1083#1100#1085#1072#1103
          Items.Strings = (
            #1089#1085#1080#1078#1077#1085#1072
            #1085#1086#1088#1084#1072#1083#1100#1085#1072#1103
            #1087#1086#1074#1099#1096#1077#1085#1072)
        end
        object CbBoxUZIPenisCavernInclus: TComboBox
          Left = 122
          Top = 143
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 5
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
          Items.Strings = (
            #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
            #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077)
        end
        object CbBoxUZIPenisAlbuginStruct: TComboBox
          Left = 440
          Top = 83
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 6
          Text = #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
          Items.Strings = (
            #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
            #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
            #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103)
        end
        object CbBoxUZIPenisAlbuginThick: TComboBox
          Left = 440
          Top = 113
          Width = 177
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 7
          Text = #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1072
          Items.Strings = (
            #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1072
            #1091#1090#1086#1083#1097#1077#1085#1072)
        end
        object EdtUZIPenisArtCavDext_01: TEdit
          Left = 90
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 8
          Text = 'EdtUZIPenisArtCavDext_01'
          OnKeyPress = EdtUZIPenisArtCavDext_01KeyPress
        end
        object EdtUZIPenisArtCavDext_02: TEdit
          Left = 136
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 9
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavDext_02KeyPress
        end
        object EdtUZIPenisArtCavDext_03: TEdit
          Left = 184
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 10
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavDext_03KeyPress
        end
        object EdtUZIPenisArtCavDext_04: TEdit
          Left = 232
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 11
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavDext_04KeyPress
        end
        object EdtUZIPenisArtCavDext_05: TEdit
          Left = 280
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 12
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavDext_05KeyPress
        end
        object EdtUZIPenisArtDorsDext_01: TEdit
          Left = 90
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 13
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsDext_01KeyPress
        end
        object EdtUZIPenisArtDorsDext_02: TEdit
          Left = 136
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 14
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsDext_02KeyPress
        end
        object EdtUZIPenisArtDorsDext_03: TEdit
          Left = 184
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 15
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsDext_03KeyPress
        end
        object EdtUZIPenisArtDorsDext_04: TEdit
          Left = 232
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 16
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsDext_04KeyPress
        end
        object EdtUZIPenisArtDorsDext_05: TEdit
          Left = 280
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 17
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsDext_05KeyPress
        end
        object EdtUZIPenisArtCavSin_01: TEdit
          Left = 336
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 18
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavSin_01KeyPress
        end
        object EdtUZIPenisArtDorsSin_01: TEdit
          Left = 336
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 23
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsSin_01KeyPress
        end
        object EdtUZIPenisArtCavSin_02: TEdit
          Left = 384
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 19
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavSin_02KeyPress
        end
        object EdtUZIPenisArtDorsSin_02: TEdit
          Left = 384
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 24
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsSin_02KeyPress
        end
        object EdtUZIPenisArtCavSin_03: TEdit
          Left = 432
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 20
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavSin_03KeyPress
        end
        object EdtUZIPenisArtDorsSin_03: TEdit
          Left = 432
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 25
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsSin_03KeyPress
        end
        object EdtUZIPenisArtCavSin_04: TEdit
          Left = 480
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 21
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavSin_04KeyPress
        end
        object EdtUZIPenisArtDorsSin_04: TEdit
          Left = 480
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 26
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsSin_04KeyPress
        end
        object EdtUZIPenisArtCavSin_05: TEdit
          Left = 528
          Top = 265
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 22
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtCavSin_05KeyPress
        end
        object EdtUZIPenisArtDorsSin_05: TEdit
          Left = 528
          Top = 303
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 27
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisArtDorsSin_05KeyPress
        end
        object EdtUZIPenisVenaDorsDext_01: TEdit
          Left = 100
          Top = 427
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 28
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisVenaDorsDext_01KeyPress
        end
        object EdtUZIPenisVenaDorsDext_02: TEdit
          Left = 151
          Top = 427
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 29
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisVenaDorsDext_02KeyPress
        end
        object EdtUZIPenisVenaDorsDext_03: TEdit
          Left = 205
          Top = 427
          Width = 97
          Height = 21
          MaxLength = 20
          TabOrder = 30
          Text = 'Edit1'
        end
        object EdtUZIPenisVenaDorsSin_01: TEdit
          Left = 346
          Top = 427
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 31
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisVenaDorsSin_01KeyPress
        end
        object EdtUZIPenisVenaDorsSin_02: TEdit
          Left = 397
          Top = 427
          Width = 25
          Height = 21
          MaxLength = 5
          TabOrder = 32
          Text = 'Edit1'
          OnKeyPress = EdtUZIPenisVenaDorsSin_02KeyPress
        end
        object EdtUZIPenisVenaDorsSin_03: TEdit
          Left = 451
          Top = 427
          Width = 97
          Height = 21
          MaxLength = 20
          TabOrder = 33
          Text = 'Edit1'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1059#1047#1044#1043' '#1089#1086#1089#1091#1076#1086#1074' '#1084#1086#1096#1086#1085#1082#1080
      ImageIndex = 3
      object GroupBox10: TGroupBox
        Left = 8
        Top = 3
        Width = 663
        Height = 480
        TabOrder = 0
        object Label107: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object DTPickUZIDopplerTestis: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 1
        end
        object ChkBoxDopplerTestis: TCheckBox
          Left = 239
          Top = 17
          Width = 306
          Height = 18
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1044#1043' '#1084#1086#1096#1086#1085#1082#1080' '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 0
          OnClick = ChkBoxDopplerTestisClick
        end
        object Panel6: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 2
        end
        object GroupBox11: TGroupBox
          Left = 12
          Top = 56
          Width = 313
          Height = 413
          Caption = '   '#1057#1087#1088#1072#1074#1072'   '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label110: TLabel
            Left = 19
            Top = 19
            Width = 134
            Height = 13
            Alignment = taRightJustify
            Caption = #1074#1077#1085#1099' '#1089#1077#1084#1077#1085#1085#1086#1075#1086' '#1082#1072#1085#1072#1090#1080#1082#1072
          end
          object Label119: TLabel
            Left = 231
            Top = 80
            Width = 16
            Height = 13
            Caption = #1084#1084
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label120: TLabel
            Left = 30
            Top = 106
            Width = 156
            Height = 13
            Caption = #1074' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1084' '#1087#1086#1083#1086#1078#1077#1085#1080#1080' '#1076#1086
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label121: TLabel
            Left = 231
            Top = 106
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label122: TLabel
            Left = 19
            Top = 80
            Width = 167
            Height = 13
            Caption = #1074' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086#1084' '#1087#1086#1083#1086#1078#1077#1085#1080#1080' '#1076#1086
          end
          object Label123: TLabel
            Left = 18
            Top = 320
            Width = 112
            Height = 26
            Alignment = taRightJustify
            Caption = '- '#1080#1085#1090#1088#1072#1090#1077#1089#1090#1080#1082#1091#1083#1103#1088#1085#1099#1077' '#1072#1088#1090#1077#1088#1080#1080':'
            WordWrap = True
          end
          object Label124: TLabel
            Left = 19
            Top = 295
            Width = 190
            Height = 13
            Alignment = taRightJustify
            Caption = #1051#1080#1085#1077#1081#1085#1072#1103' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1082#1088#1086#1074#1086#1090#1086#1082#1072' ('#1051#1057#1050'):'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label125: TLabel
            Left = 19
            Top = 154
            Width = 219
            Height = 13
            Caption = #1088#1077#1090#1088#1086#1075#1088#1072#1076#1085#1099#1081' '#1089#1073#1088#1086#1089' '#1085#1072' '#1087#1088#1086#1073#1077' '#1042#1072#1083#1100#1089#1072#1083#1100#1074#1099
            WordWrap = True
          end
          object Label128: TLabel
            Left = 19
            Top = 205
            Width = 118
            Height = 13
            Caption = #1074#1077#1085#1099' '#1087#1072#1088#1077#1085#1093#1080#1084#1099' '#1103#1080#1095#1082#1072
          end
          object Label108: TLabel
            Left = 179
            Top = 320
            Width = 87
            Height = 26
            Caption = #1089#1084'/'#1089#1077#1082'               (N = 8-26 '#1089#1084'/'#1089#1077#1082')'
            WordWrap = True
          end
          object Label109: TLabel
            Left = 27
            Top = 354
            Width = 105
            Height = 26
            Alignment = taRightJustify
            Caption = '- '#1072#1088#1090#1077#1088#1080#1080' '#1089#1077#1084#1077#1085#1085#1086#1075#1086' '#1082#1072#1085#1072#1090#1080#1082#1072':'
            WordWrap = True
          end
          object Label111: TLabel
            Left = 179
            Top = 354
            Width = 87
            Height = 26
            Caption = #1089#1084'/'#1089#1077#1082'               (N = 8-26 '#1089#1084'/'#1089#1077#1082')'
            WordWrap = True
          end
          object CbBoxVasaFunicDext: TComboBox
            Left = 19
            Top = 35
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
            OnChange = CbBoxVasaFunicDextChange
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1074#1099#1088#1072#1078#1077#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099)
          end
          object EdtVasaFunic_HorzDext: TEdit
            Left = 193
            Top = 76
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 1
            Text = 'EdtDextRen_01'
            OnKeyPress = EdtUZIEpididimDext_01KeyPress
          end
          object EdtVasaFunic_VertDext: TEdit
            Left = 193
            Top = 102
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 2
            Text = 'EdtDextRen_02'
            OnKeyPress = EdtUZIEpididimDext_02KeyPress
          end
          object CbBoxValsalveDext: TComboBox
            Left = 19
            Top = 170
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = #1085#1077' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1077#1090#1089#1103
            Items.Strings = (
              #1085#1077' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1077#1090#1089#1103
              #1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099#1081
              #1091#1084#1077#1088#1077#1085#1085#1099#1081
              #1074#1099#1088#1072#1078#1077#1085#1085#1099#1081)
          end
          object EdtVasa_LSKFunicDext: TEdit
            Left = 139
            Top = 324
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 5
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimDext_04KeyPress
          end
          object CbBoxVasaFunicParenchDext: TComboBox
            Left = 19
            Top = 221
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1085#1077#1079#1085'. '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1074#1099#1088#1072#1078#1077#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099)
          end
          object EdtVasa_LSKTestisDext: TEdit
            Left = 139
            Top = 358
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 6
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimDext_04KeyPress
          end
          object Panel7: TPanel
            Left = 12
            Top = 139
            Width = 288
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 7
          end
          object Panel8: TPanel
            Left = 12
            Top = 263
            Width = 288
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 8
          end
        end
        object GroupBox12: TGroupBox
          Left = 338
          Top = 56
          Width = 313
          Height = 413
          Caption = '   '#1057#1083#1077#1074#1072'    '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label112: TLabel
            Left = 19
            Top = 19
            Width = 134
            Height = 13
            Alignment = taRightJustify
            Caption = #1074#1077#1085#1099' '#1089#1077#1084#1077#1085#1085#1086#1075#1086' '#1082#1072#1085#1072#1090#1080#1082#1072
          end
          object Label113: TLabel
            Left = 19
            Top = 80
            Width = 167
            Height = 13
            Caption = #1074' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086#1084' '#1087#1086#1083#1086#1078#1077#1085#1080#1080' '#1076#1086
          end
          object Label114: TLabel
            Left = 30
            Top = 106
            Width = 156
            Height = 13
            Caption = #1074' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1084' '#1087#1086#1083#1086#1078#1077#1085#1080#1080' '#1076#1086
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label115: TLabel
            Left = 231
            Top = 80
            Width = 16
            Height = 13
            Caption = #1084#1084
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label116: TLabel
            Left = 231
            Top = 106
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label117: TLabel
            Left = 19
            Top = 154
            Width = 219
            Height = 13
            Caption = #1088#1077#1090#1088#1086#1075#1088#1072#1076#1085#1099#1081' '#1089#1073#1088#1086#1089' '#1085#1072' '#1087#1088#1086#1073#1077' '#1042#1072#1083#1100#1089#1072#1083#1100#1074#1099
          end
          object Label118: TLabel
            Left = 19
            Top = 205
            Width = 118
            Height = 13
            Caption = #1074#1077#1085#1099' '#1087#1072#1088#1077#1085#1093#1080#1084#1099' '#1103#1080#1095#1082#1072
          end
          object Label126: TLabel
            Left = 11
            Top = 297
            Width = 190
            Height = 13
            Alignment = taRightJustify
            Caption = #1051#1080#1085#1077#1081#1085#1072#1103' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1082#1088#1086#1074#1086#1090#1086#1082#1072' ('#1051#1057#1050'):'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label127: TLabel
            Left = 18
            Top = 322
            Width = 112
            Height = 26
            Alignment = taRightJustify
            Caption = '- '#1080#1085#1090#1088#1072#1090#1077#1089#1090#1080#1082#1091#1083#1103#1088#1085#1099#1077' '#1072#1088#1090#1077#1088#1080#1080':'
            WordWrap = True
          end
          object Label129: TLabel
            Left = 27
            Top = 354
            Width = 105
            Height = 26
            Alignment = taRightJustify
            Caption = '- '#1072#1088#1090#1077#1088#1080#1080' '#1089#1077#1084#1077#1085#1085#1086#1075#1086' '#1082#1072#1085#1072#1090#1080#1082#1072':'
            WordWrap = True
          end
          object Label130: TLabel
            Left = 179
            Top = 320
            Width = 87
            Height = 26
            Caption = #1089#1084'/'#1089#1077#1082'               (N = 8-26 '#1089#1084'/'#1089#1077#1082')'
            WordWrap = True
          end
          object Label131: TLabel
            Left = 179
            Top = 354
            Width = 87
            Height = 26
            Caption = #1089#1084'/'#1089#1077#1082'               (N = 8-26 '#1089#1084'/'#1089#1077#1082')'
            WordWrap = True
          end
          object CbBoxVasaFunicSin: TComboBox
            Left = 19
            Top = 35
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
            OnChange = CbBoxVasaFunicSinChange
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1074#1099#1088#1072#1078#1077#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099)
          end
          object EdtVasaFunic_VertSin: TEdit
            Left = 193
            Top = 102
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 2
            Text = 'EdtDextRen_02'
            OnKeyPress = EdtUZIEpididimDext_02KeyPress
          end
          object EdtVasaFunic_HorzSin: TEdit
            Left = 193
            Top = 76
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 1
            Text = 'EdtDextRen_01'
            OnKeyPress = EdtUZIEpididimDext_01KeyPress
          end
          object CbBoxValsalveSin: TComboBox
            Left = 19
            Top = 170
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = #1085#1077' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1077#1090#1089#1103
            Items.Strings = (
              #1085#1077' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1077#1090#1089#1103
              #1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099#1081
              #1091#1084#1077#1088#1077#1085#1085#1099#1081
              #1074#1099#1088#1072#1078#1077#1085#1085#1099#1081)
          end
          object CbBoxVasaFunicParenchSin: TComboBox
            Left = 19
            Top = 221
            Width = 177
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1085#1077#1079#1085'. '#1088#1072#1089#1096#1080#1088#1077#1085#1099
              #1074#1099#1088#1072#1078#1077#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1099)
          end
          object EdtVasa_LSKTestisSin: TEdit
            Left = 139
            Top = 358
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 6
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimDext_04KeyPress
          end
          object EdtVasa_LSKFunicSin: TEdit
            Left = 139
            Top = 324
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 5
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtUZIEpididimDext_04KeyPress
          end
          object Panel9: TPanel
            Left = 12
            Top = 139
            Width = 288
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 7
          end
          object Panel10: TPanel
            Left = 12
            Top = 263
            Width = 288
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 8
          end
        end
      end
    end
  end
  object BtnPrev: TButton
    Left = 348
    Top = 536
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1085#1072#1079#1072#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnPrevClick
  end
  object BtnNext: TButton
    Left = 428
    Top = 536
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1074#1087#1077#1088#1077#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnNextClick
  end
  object NiceSetFrmUZIGenit: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 176
    Top = 496
  end
  object AppEventsFrmUZIGenit: TApplicationEvents
    OnShortCut = AppEventsFrmUZIGenitShortCut
    Left = 208
    Top = 496
  end
end
