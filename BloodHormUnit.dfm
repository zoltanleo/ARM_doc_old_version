object FrmBloodHorm: TFrmBloodHorm
  Left = 258
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1082#1088#1086#1074#1080
  ClientHeight = 520
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    632
    520)
  PixelsPerInch = 96
  TextHeight = 13
  object PgCtrlBloodHorm: TPageControl
    Left = 10
    Top = 16
    Width = 612
    Height = 465
    ActivePage = TabSheet5
    TabOrder = 0
    OnChange = PgCtrlBloodHormChange
    object TabSheet1: TTabSheet
      Caption = ' '#1054#1073#1097#1080#1081' '#1072#1085#1072#1083#1080#1079' '#1082#1088#1086#1074#1080' '
      object GroupBox3: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        TabOrder = 0
        DesignSize = (
          585
          424)
        object Label16: TLabel
          Left = 31
          Top = 81
          Width = 61
          Height = 13
          Caption = #1043#1077#1084#1086#1075#1083#1086#1073#1080#1085
        end
        object Label18: TLabel
          Left = 31
          Top = 115
          Width = 61
          Height = 13
          Caption = #1069#1088#1080#1090#1088#1086#1094#1080#1090#1099
        end
        object Label19: TLabel
          Left = 33
          Top = 141
          Width = 59
          Height = 26
          Alignment = taRightJustify
          Caption = #1062#1074#1077#1090#1086#1074#1086#1081#13#10#1087#1086#1082#1072#1079#1072#1090#1077#1083#1100
        end
        object Label62: TLabel
          Left = 35
          Top = 217
          Width = 57
          Height = 13
          Caption = #1051#1077#1081#1082#1086#1094#1080#1090#1099
        end
        object Label63: TLabel
          Left = 28
          Top = 183
          Width = 64
          Height = 13
          Caption = #1058#1088#1086#1084#1073#1086#1094#1080#1090#1099
        end
        object Label64: TLabel
          Left = 64
          Top = 251
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = #1102#1085#1099#1077
        end
        object Label65: TLabel
          Left = 37
          Top = 285
          Width = 55
          Height = 13
          Caption = #1087'/'#1103#1076#1077#1088#1085#1099#1077
        end
        object Label66: TLabel
          Left = 37
          Top = 319
          Width = 55
          Height = 13
          Caption = #1089'/'#1103#1076#1077#1088#1085#1099#1077
        end
        object Label67: TLabel
          Left = 31
          Top = 353
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = #1051#1080#1084#1092#1086#1094#1080#1090#1099
        end
        object Label69: TLabel
          Left = 335
          Top = 81
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = #1069#1086#1079#1080#1085#1086#1092#1080#1083#1099
        end
        object Label70: TLabel
          Left = 157
          Top = 73
          Width = 79
          Height = 26
          Caption = '    : 132-164 '#1075'/'#1083';'#13#10'    : 115-154 '#1075'/'#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 157
          Top = 86
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label73: TLabel
          Left = 157
          Top = 74
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 157
          Top = 107
          Width = 103
          Height = 26
          Caption = '    : 4,0-5,1 '#1093' 10^12/'#1083#13#10'    : 3,7-4,7 '#1093' 10^12/'#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label76: TLabel
          Left = 157
          Top = 120
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label78: TLabel
          Left = 157
          Top = 108
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label79: TLabel
          Left = 157
          Top = 149
          Width = 45
          Height = 13
          Caption = '0,86-1,05'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 157
          Top = 183
          Width = 85
          Height = 13
          Caption = '200-400 '#1093' 10^9/'#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label88: TLabel
          Left = 157
          Top = 217
          Width = 79
          Height = 13
          Caption = '4,0-9,0 '#1093' 10^9/'#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label95: TLabel
          Left = 157
          Top = 285
          Width = 26
          Height = 13
          Caption = '1-5 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label98: TLabel
          Left = 157
          Top = 319
          Width = 38
          Height = 13
          Caption = '47-72 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label104: TLabel
          Left = 157
          Top = 353
          Width = 38
          Height = 13
          Caption = '19-37 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label107: TLabel
          Left = 466
          Top = 81
          Width = 44
          Height = 13
          Caption = '0,5-5,0 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label110: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label111: TLabel
          Left = 425
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 347
          Top = 115
          Width = 53
          Height = 13
          Caption = #1041#1072#1079#1086#1092#1080#1083#1099
        end
        object Label82: TLabel
          Left = 379
          Top = 149
          Width = 22
          Height = 13
          Caption = #1057#1054#1069
        end
        object Label85: TLabel
          Left = 339
          Top = 175
          Width = 61
          Height = 26
          Alignment = taRightJustify
          Caption = #1089#1074#1077#1088#1090#1099#1074'.'#13#10#1087#1086' '#1057#1091#1093#1072#1088#1077#1074#1091
        end
        object Label87: TLabel
          Left = 330
          Top = 209
          Width = 70
          Height = 26
          Caption = #1076#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100#13#10#1082#1088#1086#1074#1086#1090#1077#1095#1077#1085#1080#1103
        end
        object Label89: TLabel
          Left = 329
          Top = 251
          Width = 72
          Height = 13
          Caption = #1056#1077#1090#1080#1082#1091#1083#1086#1094#1080#1090#1099
        end
        object Label90: TLabel
          Left = 331
          Top = 277
          Width = 69
          Height = 26
          Alignment = taRightJustify
          Caption = #1089#1072#1093#1072#1088#13#10#1082#1072#1087#1080#1083#1083'.'#1082#1088#1086#1074#1080
        end
        object Label91: TLabel
          Left = 332
          Top = 311
          Width = 68
          Height = 26
          Caption = #1101#1086#1079#1080#1085#1086#1092#1080#1083#1080#1103#13#10#1089#1086' '#1089#1083#1080#1079#1080#1089#1090#1086#1081
        end
        object Label93: TLabel
          Left = 340
          Top = 353
          Width = 59
          Height = 13
          Caption = #1075#1077#1084#1072#1090#1086#1082#1088#1080#1090
        end
        object Label97: TLabel
          Left = 466
          Top = 115
          Width = 26
          Height = 13
          Caption = '0-1 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label103: TLabel
          Left = 466
          Top = 141
          Width = 71
          Height = 26
          Caption = '    : 1-10 '#1084#1084'/'#1095';'#13#10'    : 2-15 '#1084#1084'/'#1095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label105: TLabel
          Left = 466
          Top = 183
          Width = 41
          Height = 13
          Caption = '3-5 '#1084#1080#1085'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label106: TLabel
          Left = 466
          Top = 217
          Width = 80
          Height = 13
          Caption = #1085#1077' '#1073#1086#1083#1077#1077' 4 '#1084#1080#1085'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label108: TLabel
          Left = 466
          Top = 251
          Width = 44
          Height = 13
          Caption = '0,2-1,2 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label109: TLabel
          Left = 466
          Top = 277
          Width = 81
          Height = 26
          Caption = #1076#1086' '#1079#1072#1074#1090#1088#1072#1082#1072#13#10'3,9-5,8 '#1084#1084#1086#1083#1100'/'#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label101: TLabel
          Left = 466
          Top = 142
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label102: TLabel
          Left = 466
          Top = 154
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label94: TLabel
          Left = 164
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TLabel
          Left = 40
          Top = 387
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = #1052#1086#1085#1086#1094#1080#1090#1099
        end
        object Label99: TLabel
          Left = 158
          Top = 387
          Width = 32
          Height = 13
          Caption = '3-11 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdtOAKBasophil: TEdit
          Left = 408
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 12
          OnKeyPress = EdtOAKBasophilKeyPress
        end
        object EdtOAKSOE: TEdit
          Left = 408
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 13
          OnKeyPress = EdtOAKSOEKeyPress
        end
        object EdtOAKCoagul: TEdit
          Left = 408
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 14
        end
        object EdtOAKHemorrhagTime: TEdit
          Left = 408
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 15
        end
        object EdtOAKReticulocyte: TEdit
          Left = 408
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 16
          OnKeyPress = EdtOAKReticulocyteKeyPress
        end
        object EdtOAKGlucosaCapill: TEdit
          Left = 408
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 17
          OnKeyPress = EdtOAKGlucosaCapillKeyPress
        end
        object EdtOAKHmtc: TEdit
          Left = 408
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 19
        end
        object DTPickOAK: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 20
        end
        object EdtOAKHb: TEdit
          Left = 100
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 1
          OnKeyPress = EdtOAKHbKeyPress
        end
        object EdtOAKEr: TEdit
          Left = 100
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          OnKeyPress = EdtOAKErKeyPress
        end
        object EdtOAKColourIndex: TEdit
          Left = 100
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          OnKeyPress = EdtOAKColourIndexKeyPress
        end
        object EdtOAKTromb: TEdit
          Left = 100
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          OnKeyPress = EdtOAKTrombKeyPress
        end
        object EdtOAKLeu: TEdit
          Left = 100
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          OnKeyPress = EdtOAKLeuKeyPress
        end
        object EdtOAKLeuYoung: TEdit
          Left = 100
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          OnKeyPress = EdtOAKLeuYoungKeyPress
        end
        object EdtOAKLeuStab: TEdit
          Left = 100
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 7
          OnKeyPress = EdtOAKLeuStabKeyPress
        end
        object EdtOAKLeuSegment: TEdit
          Left = 100
          Top = 316
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 8
          OnKeyPress = EdtOAKLeuSegmentKeyPress
        end
        object EdtOAKLymph: TEdit
          Left = 100
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 9
          OnKeyPress = EdtOAKLymphKeyPress
        end
        object EdtOAKEosinophil: TEdit
          Left = 408
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 11
          OnKeyPress = EdtOAKEosinophilKeyPress
        end
        object Panel3: TPanel
          Left = 289
          Top = 78
          Width = 2
          Height = 331
          BevelOuter = bvLowered
          Caption = 'Panel3'
          TabOrder = 21
        end
        object EdtOAKMonocyte: TEdit
          Left = 100
          Top = 384
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 10
          OnKeyPress = EdtOAKMonocyteKeyPress
        end
        object BtnOAKFotos: TButton
          Left = 496
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1086#1073#1097#1077#1075#1086' '#1072#1085#1072#1083#1080#1079#1072' '#1082#1088#1086#1074#1080' (<Ctrl> + I)'
          Anchors = [akTop, akRight]
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 22
          OnClick = BtnOAKFotosClick
        end
        object EdtOAKEosinSliz: TEdit
          Left = 408
          Top = 316
          Width = 49
          Height = 21
          TabOrder = 18
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' '#1041#1080#1086#1093#1080#1084#1080#1103' '#1082#1088#1086#1074#1080' '
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        TabOrder = 0
        DesignSize = (
          585
          424)
        object Label100: TLabel
          Left = 70
          Top = 81
          Width = 22
          Height = 13
          Caption = #1040#1051#1058
        end
        object Label112: TLabel
          Left = 71
          Top = 115
          Width = 21
          Height = 13
          Caption = #1040#1057#1058
        end
        object Label113: TLabel
          Left = 157
          Top = 73
          Width = 81
          Height = 26
          Caption = '('#1045#1076'/'#1083')     : '#1076#1086' 40;'#13#10'               : '#1076#1086' 31'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label114: TLabel
          Left = 189
          Top = 74
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label115: TLabel
          Left = 188
          Top = 86
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label119: TLabel
          Left = 24
          Top = 149
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = #1054#1073#1097#1080#1081' '#1073#1077#1083#1086#1082
        end
        object Label120: TLabel
          Left = 157
          Top = 149
          Width = 58
          Height = 13
          Caption = '('#1075'/'#1083') 6,6-8,6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label121: TLabel
          Left = 38
          Top = 175
          Width = 54
          Height = 26
          Alignment = taRightJustify
          Caption = #1041#1080#1083#1080#1088#1091#1073#1080#1085#13#10#1086#1073#1097#1080#1081
        end
        object Label123: TLabel
          Left = 38
          Top = 209
          Width = 54
          Height = 26
          Alignment = taRightJustify
          Caption = #1041#1080#1083#1080#1088#1091#1073#1080#1085#13#10#1087#1088#1103#1084#1086#1081
        end
        object Label125: TLabel
          Left = 32
          Top = 243
          Width = 60
          Height = 26
          Alignment = taRightJustify
          Caption = #1061#1086#1083#1077#1089#1090#1077#1088#1080#1085#13#10#1086#1073#1097#1080#1081
        end
        object Label126: TLabel
          Left = 35
          Top = 277
          Width = 57
          Height = 26
          Alignment = taRightJustify
          Caption = #1065#1077#1083#1086#1095#1085#1072#1103#13#10#1092#1086#1089#1092#1072#1090#1072#1079#1072
        end
        object Label128: TLabel
          Left = 73
          Top = 319
          Width = 19
          Height = 13
          Caption = #1043#1043#1058
        end
        object Label130: TLabel
          Left = 62
          Top = 353
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = #1051#1055#1042#1055
        end
        object Label132: TLabel
          Left = 61
          Top = 387
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = #1051#1055#1053#1055
        end
        object Label133: TLabel
          Left = 158
          Top = 387
          Width = 66
          Height = 13
          Caption = '('#1084#1075'/'#1076#1083') < 160'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label134: TLabel
          Left = 334
          Top = 81
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = #1052#1086#1095#1077#1074#1080#1085#1072
        end
        object Label135: TLabel
          Left = 450
          Top = 81
          Width = 87
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 2,8-7,2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label136: TLabel
          Left = 340
          Top = 107
          Width = 44
          Height = 26
          Alignment = taRightJustify
          Caption = #1052#1086#1095#1077#1074#1072#1103#13#10#1082#1080#1089#1083#1086#1090#1072
        end
        object Label138: TLabel
          Left = 330
          Top = 149
          Width = 54
          Height = 13
          Caption = #1050#1088#1077#1072#1090#1080#1085#1080#1085
        end
        object Label139: TLabel
          Left = 450
          Top = 141
          Width = 99
          Height = 26
          Caption = '('#1084#1082#1084#1086#1083#1100'/'#1083') '#13#10'    :61-110;     : 44-87'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label140: TLabel
          Left = 403
          Top = 154
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label141: TLabel
          Left = 503
          Top = 154
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label142: TLabel
          Left = 334
          Top = 183
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = #1040#1083#1100#1073#1091#1084#1080#1085
        end
        object Label143: TLabel
          Left = 450
          Top = 183
          Width = 58
          Height = 13
          Caption = '('#1075'/'#1083') 3,4-4,8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label144: TLabel
          Left = 332
          Top = 209
          Width = 52
          Height = 26
          Alignment = taRightJustify
          Caption = #1043#1083#1102#1082#1086#1079#1072#13#10'('#1089#1099#1074#1086#1088#1086#1090'.)'
        end
        object Label145: TLabel
          Left = 450
          Top = 217
          Width = 87
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 4,1-6,4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label146: TLabel
          Left = 310
          Top = 251
          Width = 74
          Height = 13
          Caption = #1058#1088#1080#1075#1083#1080#1094#1077#1088#1080#1076#1099
        end
        object Label148: TLabel
          Left = 341
          Top = 285
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = #1050#1072#1083#1100#1094#1080#1081
        end
        object Label150: TLabel
          Left = 341
          Top = 319
          Width = 43
          Height = 13
          Caption = #1060#1086#1089#1092#1086#1088
        end
        object Label151: TLabel
          Left = 332
          Top = 345
          Width = 52
          Height = 26
          Alignment = taRightJustify
          Caption = #1046#1077#1083#1077#1079#1086#13#10'('#1089#1099#1074#1086#1088#1086#1090'.)'
        end
        object Label152: TLabel
          Left = 164
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label153: TLabel
          Left = 425
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label154: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label155: TLabel
          Left = 351
          Top = 387
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1054#1046#1057#1057
        end
        object Label156: TLabel
          Left = 450
          Top = 387
          Width = 87
          Height = 13
          Caption = '('#1084#1082#1084#1086#1083#1100'/'#1083') 45-72'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label116: TLabel
          Left = 157
          Top = 107
          Width = 81
          Height = 26
          Caption = '('#1045#1076'/'#1083')     : '#1076#1086' 38;'#13#10'               : '#1076#1086' 32'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label117: TLabel
          Left = 189
          Top = 108
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label118: TLabel
          Left = 188
          Top = 120
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label122: TLabel
          Left = 157
          Top = 175
          Width = 105
          Height = 26
          Caption = '('#1084#1082#1084#1086#1083#1100'/'#1083')         : '#1076#1086' '#13#10'17,4;            : '#1076#1086' 13,7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label157: TLabel
          Left = 217
          Top = 176
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label158: TLabel
          Left = 186
          Top = 188
          Width = 28
          Height = 13
          Caption = #1076#1077#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label124: TLabel
          Left = 157
          Top = 209
          Width = 105
          Height = 26
          Caption = '('#1084#1082#1084#1086#1083#1100'/'#1083')         : '#1076#1086' '#13#10'5,4;             : '#1076#1086' 3,42'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label159: TLabel
          Left = 217
          Top = 210
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label160: TLabel
          Left = 186
          Top = 222
          Width = 28
          Height = 13
          Caption = #1076#1077#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label161: TLabel
          Left = 157
          Top = 243
          Width = 108
          Height = 26
          Caption = '('#1084#1075'/'#1076#1083')         : 140-240'#13#10'            :120-210'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label162: TLabel
          Left = 197
          Top = 243
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label163: TLabel
          Left = 160
          Top = 255
          Width = 28
          Height = 13
          Caption = #1076#1077#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label164: TLabel
          Left = 157
          Top = 277
          Width = 102
          Height = 26
          Caption = '('#1045#1076'/'#1083')                      :'#13#10'72-727;         : 44-258'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label165: TLabel
          Left = 194
          Top = 278
          Width = 57
          Height = 13
          Caption = #1076#1086' 12 '#1083#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label166: TLabel
          Left = 198
          Top = 290
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label127: TLabel
          Left = 157
          Top = 311
          Width = 75
          Height = 26
          Caption = '('#1045#1076'/'#1083')     : 8-61;'#13#10'               : 5-36'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label167: TLabel
          Left = 189
          Top = 312
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label168: TLabel
          Left = 188
          Top = 324
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label129: TLabel
          Left = 157
          Top = 345
          Width = 81
          Height = 26
          Caption = '('#1084#1075'/'#1076#1083')     : > 35;'#13#10'                 : > 45'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label131: TLabel
          Left = 196
          Top = 346
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label169: TLabel
          Left = 195
          Top = 358
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label170: TLabel
          Left = 450
          Top = 107
          Width = 93
          Height = 26
          Caption = '('#1084#1075'/'#1076#1083')     : 2,4-5,7;'#13#10'                 : 3,4-7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label171: TLabel
          Left = 489
          Top = 120
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label172: TLabel
          Left = 488
          Top = 108
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label137: TLabel
          Left = 450
          Top = 243
          Width = 90
          Height = 26
          Caption = '('#1084#1075'/'#1076#1083')     :44-298;'#13#10'     : 40-247'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label147: TLabel
          Left = 490
          Top = 244
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label149: TLabel
          Left = 451
          Top = 256
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label173: TLabel
          Left = 450
          Top = 277
          Width = 105
          Height = 26
          Caption = '('#1084#1084#1086#1083#1100'/'#1083')        : 2,15-'#13#10'2,55;        : 2,25-2,75'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label174: TLabel
          Left = 504
          Top = 277
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label175: TLabel
          Left = 477
          Top = 290
          Width = 21
          Height = 13
          Caption = #1076#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label176: TLabel
          Left = 450
          Top = 311
          Width = 87
          Height = 26
          Caption = '('#1084#1075'/'#1076#1083')         : 2,6-'#13#10'4,5;        : 3,1-5,5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label177: TLabel
          Left = 471
          Top = 324
          Width = 21
          Height = 13
          Caption = #1076#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label178: TLabel
          Left = 489
          Top = 312
          Width = 22
          Height = 13
          Caption = #1074#1079#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label179: TLabel
          Left = 450
          Top = 345
          Width = 99
          Height = 26
          Caption = '('#1084#1082#1084#1086#1083#1100'/'#1083')     :10,6-'#13#10'28,3;      : 6,6-26'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label180: TLabel
          Left = 511
          Top = 346
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label181: TLabel
          Left = 479
          Top = 358
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label202: TLabel
          Left = 450
          Top = 154
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtBloodBioALT: TEdit
          Left = 100
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 1
          Text = 'EdtLG'
          OnKeyPress = EdtOAKErKeyPress
        end
        object EdtBloodBioAST: TEdit
          Left = 100
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'EdtFSG'
          OnKeyPress = EdtOAKErKeyPress
        end
        object EdtBloodBioProtein: TEdit
          Left = 100
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtProlactin'
          OnKeyPress = EdtBloodBioProteinKeyPress
        end
        object EdtBloodBioBiTotal: TEdit
          Left = 100
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtEstradiol'
          OnKeyPress = EdtBloodBioBiTotalKeyPress
        end
        object EdtBloodBioBiDirect: TEdit
          Left = 100
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          Text = 'EdtProgest'
          OnKeyPress = EdtBloodBioBiDirectKeyPress
        end
        object EdtBloodBioCholest: TEdit
          Left = 100
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          Text = 'EdtTestosterTotal'
          OnKeyPress = EdtBloodBioCholestKeyPress
        end
        object EdtBloodBioSodiumFosf: TEdit
          Left = 100
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 7
          Text = 'EdtDGEAS'
          OnKeyPress = EdtBloodBioSodiumFosfKeyPress
        end
        object EdtBloodBioGGT: TEdit
          Left = 100
          Top = 316
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 8
          Text = 'EdtProgest_17OH'
          OnKeyPress = EdtBloodBioGGTKeyPress
        end
        object EdtBloodBioLPVP: TEdit
          Left = 100
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 9
          Text = 'EdtTestosterFree'
          OnKeyPress = EdtBloodBioLPVPKeyPress
        end
        object EdtBloodBioLPNP: TEdit
          Left = 100
          Top = 384
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 10
          Text = 'EdtSSSG'
          OnKeyPress = EdtBloodBioLPNPKeyPress
        end
        object EdtBloodBioMochevina: TEdit
          Left = 392
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 11
          Text = 'EdtSSSG'
          OnKeyPress = EdtBloodBioMochevinaKeyPress
        end
        object EdtBloodBioUricAcid: TEdit
          Left = 392
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 12
          Text = 'EdtLG'
          OnKeyPress = EdtBloodBioUricAcidKeyPress
        end
        object EdtBloodBioCreatinin: TEdit
          Left = 392
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 13
          Text = 'EdtFSG'
          OnKeyPress = EdtBloodBioCreatininKeyPress
        end
        object EdtBloodBioAlbumin: TEdit
          Left = 392
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 14
          Text = 'EdtProlactin'
          OnKeyPress = EdtBloodBioAlbuminKeyPress
        end
        object EdtBloodBioGlucosa: TEdit
          Left = 392
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 15
          Text = 'EdtEstradiol'
          OnKeyPress = EdtBloodBioGlucosaKeyPress
        end
        object EdtBloodBioTriglyc: TEdit
          Left = 392
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 16
          Text = 'EdtProgest'
          OnKeyPress = EdtBloodBioTriglycKeyPress
        end
        object EdtBloodBioCalcium: TEdit
          Left = 392
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 17
          Text = 'EdtTestosterTotal'
          OnKeyPress = EdtBloodBioCalciumKeyPress
        end
        object EdtBloodBioPhosphor: TEdit
          Left = 392
          Top = 316
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 18
          Text = 'EdtDGEAS'
          OnKeyPress = EdtBloodBioPhosphorKeyPress
        end
        object EdtBloodBioFerrum: TEdit
          Left = 392
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 19
          Text = 'EdtProgest_17OH'
          OnKeyPress = EdtBloodBioFerrumKeyPress
        end
        object Panel5: TPanel
          Left = 289
          Top = 78
          Width = 2
          Height = 331
          BevelOuter = bvLowered
          Caption = 'Panel3'
          TabOrder = 21
        end
        object Panel6: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 22
        end
        object DTPickBloodBio: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object EdtBloodBioOZhSS: TEdit
          Left = 392
          Top = 384
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 20
          Text = 'EdtSSSG'
          OnKeyPress = EdtBloodBioOZhSSKeyPress
        end
        object BtnBloodBioChemFotos: TButton
          Left = 496
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1073#1080#1086#1093#1080#1084#1080#1080' '#1082#1088#1086#1074#1080' (<Ctrl> + I)'
          Anchors = [akTop, akRight]
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 23
          OnClick = BtnBloodBioChemFotosClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = ' '#1057#1090#1077#1088#1086#1080#1076#1085#1099#1077' '#1075#1086#1088#1084#1086#1085#1099' '
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        TabOrder = 0
        DesignSize = (
          585
          424)
        object Label21: TLabel
          Left = 145
          Top = 81
          Width = 14
          Height = 13
          Caption = #1051#1043
        end
        object Label22: TLabel
          Left = 136
          Top = 115
          Width = 24
          Height = 13
          Caption = #1060#1057#1043
        end
        object Label23: TLabel
          Left = 104
          Top = 149
          Width = 55
          Height = 13
          Caption = #1055#1088#1086#1083#1072#1082#1090#1080#1085
        end
        object Label24: TLabel
          Left = 105
          Top = 183
          Width = 54
          Height = 13
          Caption = #1069#1089#1090#1088#1072#1076#1080#1086#1083
        end
        object Label25: TLabel
          Left = 93
          Top = 217
          Width = 66
          Height = 13
          Caption = #1055#1088#1086#1075#1077#1089#1090#1077#1088#1086#1085
        end
        object Label26: TLabel
          Left = 94
          Top = 243
          Width = 65
          Height = 26
          Alignment = taRightJustify
          Caption = #1058#1077#1089#1090#1086#1089#1090#1077#1088#1086#1085#13#10'('#1086#1073#1097#1080#1081')'
        end
        object Label27: TLabel
          Left = 123
          Top = 285
          Width = 36
          Height = 13
          Caption = #1044#1043#1069#1040#1057
        end
        object Label28: TLabel
          Left = 55
          Top = 319
          Width = 104
          Height = 13
          Caption = '17 - '#1054#1053' '#1087#1088#1086#1075#1077#1089#1090#1077#1088#1086#1085
        end
        object Label36: TLabel
          Left = 94
          Top = 346
          Width = 65
          Height = 26
          Alignment = taRightJustify
          Caption = #1058#1077#1089#1090#1086#1089#1090#1077#1088#1086#1085#13#10'('#1089#1074#1086#1073#1086#1076#1085#1099#1081')'
        end
        object Label38: TLabel
          Left = 14
          Top = 379
          Width = 145
          Height = 26
          Alignment = taRightJustify
          Caption = #1057#1077#1082#1089'-'#1089#1090#1077#1088#1086#1080#1076' '#1089#1074#1103#1079#1099#1074#1072#1102#1097#1080#1081#13#10#1075#1083#1086#1073#1091#1083#1080#1085' ('#1057#1057#1057#1043')'
        end
        object Label39: TLabel
          Left = 248
          Top = 75
          Width = 235
          Height = 26
          Caption = 
            '('#1084#1052#1045'/'#1084#1083')     : I'#1092'. 1,1-8,7; II'#1092'. 0,9-14,4; '#1086#1074#1091#1083'.'#1087#1080#1082#13#10'13,2-72,0; ' +
            #1087#1086#1089#1090#1084#1077#1085#1086#1087#1072#1091#1079#1072' 18,6-72,0;    : 0,8-8,4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 299
          Top = 75
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 430
          Top = 88
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 248
          Top = 109
          Width = 235
          Height = 26
          Caption = 
            '('#1084#1052#1045'/'#1084#1083')     : I'#1092'. 1,8-11,3; II'#1092'. 1,1-9,5; '#1086#1074#1091#1083'.'#1087#1080#1082#13#10'4,9-20,4; '#1087 +
            #1086#1089#1090#1084#1077#1085#1086#1087#1072#1091#1079#1072' 31-130;    : 1,0-11,8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 299
          Top = 109
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 412
          Top = 122
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 248
          Top = 148
          Width = 163
          Height = 13
          Caption = '('#1084#1052#1045'/'#1084#1083')     : 67-726;    : 105-540'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 299
          Top = 148
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 356
          Top = 148
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 248
          Top = 177
          Width = 199
          Height = 26
          Caption = 
            '('#1087#1075'/'#1084#1083')     : I'#1092#1072#1079#1072' 24-114; II'#1092#1072#1079#1072' 80-273;'#13#10#1086#1074#1091#1083'.62-534; '#1087#1086#1089#1090#1084#1077#1085 +
            '. 20-88;    : 20-75'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 287
          Top = 177
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 394
          Top = 190
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 248
          Top = 217
          Width = 245
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100'/'#1083')     : I '#1092#1072#1079#1072' 0-6,0; II '#1092#1072#1079#1072' 10-89;    : 0-5,2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 301
          Top = 217
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 455
          Top = 217
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 248
          Top = 250
          Width = 169
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100'/'#1083')     : 0,5-4,3;    : 12,1-38,3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 302
          Top = 250
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 358
          Top = 250
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 248
          Top = 277
          Width = 309
          Height = 26
          Caption = 
            '('#1084#1082#1075'/'#1084#1083')                       1,7-3,6;                     0,8-' +
            '3,9; '#13#10'               0,2-1,2;                                 0' +
            ',1-2,5;                    1,0-4,2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 299
          Top = 277
          Width = 63
          Height = 13
          Caption = #1085#1086#1074#1086#1088#1086#1078#1076'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 467
          Top = 290
          Width = 54
          Height = 13
          Caption = #1084#1091#1078#1095#1080#1085#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 248
          Top = 319
          Width = 256
          Height = 13
          Caption = '('#1085#1075'/'#1084#1083')       : I'#1092'. 0,4-1,02; II'#1092'. 1,26-4,28;    : 0,61-3,34'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 290
          Top = 320
          Width = 13
          Height = 13
          Caption = #1046
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label56: TLabel
          Left = 442
          Top = 320
          Width = 11
          Height = 13
          Caption = #1052
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label57: TLabel
          Left = 401
          Top = 277
          Width = 57
          Height = 13
          Caption = #1078#1077#1085#1097#1080#1085#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 248
          Top = 290
          Width = 42
          Height = 13
          Caption = #1073#1077#1088#1077#1084'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label59: TLabel
          Left = 334
          Top = 290
          Width = 92
          Height = 13
          Caption = #1087#1086#1089#1090#1084#1077#1085#1086#1087#1072#1091#1079#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 248
          Top = 353
          Width = 180
          Height = 13
          Caption = '('#1087#1075'/'#1084#1083')          : 6,2-28,1;         : 1,2-6,6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 291
          Top = 353
          Width = 29
          Height = 13
          Caption = #1084#1091#1078'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 367
          Top = 353
          Width = 28
          Height = 13
          Caption = #1078#1077#1085'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 248
          Top = 387
          Width = 197
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100')          : 12,4-78,4;      :    14,1-129'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 291
          Top = 387
          Width = 29
          Height = 13
          Caption = #1084#1091#1078'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 375
          Top = 387
          Width = 28
          Height = 13
          Caption = #1078#1077#1085'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label12: TLabel
          Left = 276
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdtLG: TEdit
          Left = 176
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 1
          Text = 'EdtLG'
          OnKeyPress = EdtLGKeyPress
        end
        object EdtFSG: TEdit
          Left = 176
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'EdtFSG'
          OnKeyPress = EdtFSGKeyPress
        end
        object EdtProlactin: TEdit
          Left = 176
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtProlactin'
          OnKeyPress = EdtProlactinKeyPress
        end
        object EdtEstradiol: TEdit
          Left = 176
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtEstradiol'
          OnKeyPress = EdtEstradiolKeyPress
        end
        object EdtProgest: TEdit
          Left = 176
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          Text = 'EdtProgest'
          OnKeyPress = EdtProgestKeyPress
        end
        object EdtTestosterTotal: TEdit
          Left = 176
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          Text = 'EdtTestosterTotal'
          OnKeyPress = EdtTestosterTotalKeyPress
        end
        object EdtDGEAS: TEdit
          Left = 176
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 7
          Text = 'EdtDGEAS'
          OnKeyPress = EdtDGEASKeyPress
        end
        object EdtProgest_17OH: TEdit
          Left = 176
          Top = 316
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 8
          Text = 'EdtProgest_17OH'
          OnKeyPress = EdtProgest_17OHKeyPress
        end
        object EdtTestosterFree: TEdit
          Left = 176
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 9
          Text = 'EdtTestosterFree'
          OnKeyPress = EdtTestosterFreeKeyPress
        end
        object EdtSSSG: TEdit
          Left = 176
          Top = 384
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 10
          Text = 'EdtSSSG'
          OnKeyPress = EdtSSSGKeyPress
        end
        object DTPickHormSter: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 11
        end
        object BtnBloodHormFotos: TButton
          Left = 496
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1072#1085#1072#1083#1080#1079#1072' '#1075#1086#1088#1084#1086#1085#1086#1074' '#1082#1088#1086#1074#1080' (<Ctrl> + I)'
          Anchors = [akTop, akRight]
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 12
          OnClick = BtnBloodHormFotosClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = ' '#1043#1086#1088#1084#1086#1085#1099' '#1065#1046
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object Label29: TLabel
          Left = 104
          Top = 74
          Width = 55
          Height = 26
          Alignment = taRightJustify
          Caption = #1058#1080#1088#1086#1082#1089#1080#1085#13#10'('#1058'4) '#1086#1073#1097#1080#1081
        end
        object Label30: TLabel
          Left = 87
          Top = 115
          Width = 72
          Height = 13
          Caption = #1058'4 '#1089#1074#1086#1073#1086#1076#1085#1099#1081
        end
        object Label31: TLabel
          Left = 81
          Top = 142
          Width = 78
          Height = 26
          Alignment = taRightJustify
          Caption = #1058#1088#1080#1081#1086#1076#1090#1080#1088#1086#1085#1080#1085#13#10'('#1058'3) '#1086#1073#1097#1080#1081
        end
        object Label32: TLabel
          Left = 87
          Top = 183
          Width = 72
          Height = 13
          Caption = #1058'3 '#1089#1074#1086#1073#1086#1076#1085#1099#1081
        end
        object Label33: TLabel
          Left = 139
          Top = 217
          Width = 20
          Height = 13
          Caption = #1058#1058#1043
        end
        object Label34: TLabel
          Left = 111
          Top = 251
          Width = 48
          Height = 13
          Caption = #1050#1086#1088#1090#1080#1079#1086#1083
        end
        object Label35: TLabel
          Left = 55
          Top = 285
          Width = 104
          Height = 13
          Caption = #1040#1090' '#1082' '#1090#1080#1088#1077#1086#1075#1083#1086#1073#1091#1083#1080#1085#1091
        end
        object Label37: TLabel
          Left = 61
          Top = 311
          Width = 98
          Height = 26
          Alignment = taRightJustify
          Caption = #1040#1090' '#1082' '#1090#1080#1088#1077#1086#1080#1076#1085#1086#1081#13#10#1087#1077#1088#1086#1082#1089#1080#1076#1072#1079#1077' ('#1058#1055#1054')'
        end
        object Label13: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label14: TLabel
          Left = 276
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 248
          Top = 81
          Width = 85
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100'/'#1083') 53-158'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 248
          Top = 115
          Width = 97
          Height = 13
          Caption = '('#1087#1084#1086#1083#1100'/'#1083') 10,0-23,2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TLabel
          Left = 248
          Top = 149
          Width = 85
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100'/'#1083') 1,0-2,8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label77: TLabel
          Left = 248
          Top = 183
          Width = 84
          Height = 13
          Caption = '('#1087#1075'/'#1084#1083') 2,39-6,79'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label80: TLabel
          Left = 248
          Top = 217
          Width = 97
          Height = 13
          Caption = '('#1084#1082#1052#1045'/'#1084#1083') 0,23-3,4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 248
          Top = 251
          Width = 91
          Height = 13
          Caption = '('#1085#1084#1086#1083#1100'/'#1083') 150-660'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 248
          Top = 285
          Width = 62
          Height = 13
          Caption = '('#1045#1076'/'#1084#1083') 0-65'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label92: TLabel
          Left = 248
          Top = 318
          Width = 62
          Height = 13
          Caption = '('#1045#1076'/'#1084#1083') 0-30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 107
          Top = 353
          Width = 53
          Height = 13
          Caption = #1048#1085#1075#1080#1073#1080#1085' '#1042
        end
        object Label7: TLabel
          Left = 248
          Top = 358
          Width = 72
          Height = 13
          Caption = '('#1087#1075'/'#1084#1083') 25-325'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickHormTireoid: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 10
        end
        object EdtT4_Total: TEdit
          Left = 176
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 1
          Text = 'Edit1'
          OnKeyPress = EdtT4_TotalKeyPress
        end
        object EdtT4_Free: TEdit
          Left = 176
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'Edit2'
          OnKeyPress = EdtT4_FreeKeyPress
        end
        object EdtT3_Total: TEdit
          Left = 176
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'Edit3'
          OnKeyPress = EdtT3_TotalKeyPress
        end
        object EdtT3_Free: TEdit
          Left = 176
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'Edit4'
          OnKeyPress = EdtT3_FreeKeyPress
        end
        object EdtTTG: TEdit
          Left = 176
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          Text = 'Edit5'
          OnKeyPress = EdtTTGKeyPress
        end
        object EdtKortizol: TEdit
          Left = 176
          Top = 248
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          Text = 'Edit6'
          OnKeyPress = EdtKortizolKeyPress
        end
        object EdtTireoglob_At: TEdit
          Left = 176
          Top = 282
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 7
          Text = 'Edit7'
          OnKeyPress = EdtTireoglob_AtKeyPress
        end
        object EdtTireoPerox_At: TEdit
          Left = 176
          Top = 316
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 8
          Text = 'Edit8'
          OnKeyPress = EdtTireoPerox_AtKeyPress
        end
        object EdtInhibin_B: TEdit
          Left = 176
          Top = 350
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 9
          Text = 'Edit9'
          OnKeyPress = EdtInhibin_BKeyPress
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1054#1085#1082#1086#1084#1072#1088#1082#1077#1088#1099
      ImageIndex = 4
      object GroupBox5: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        TabOrder = 0
        DesignSize = (
          585
          424)
        object Label182: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label183: TLabel
          Left = 276
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label184: TLabel
          Left = 60
          Top = 82
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = #1055#1057#1040' ('#1086#1073#1097#1080#1081') ('#1048#1060#1040')'
        end
        object Label185: TLabel
          Left = 248
          Top = 81
          Width = 54
          Height = 13
          Caption = '('#1085#1075'/'#1084#1083') 0-4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label186: TLabel
          Left = 39
          Top = 115
          Width = 122
          Height = 13
          Caption = #1055#1057#1040' ('#1089#1074#1086#1073#1086#1076#1085#1099#1081') ('#1048#1060#1040')'
        end
        object Label187: TLabel
          Left = 248
          Top = 115
          Width = 36
          Height = 13
          Caption = '('#1085#1075'/'#1084#1083')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label188: TLabel
          Left = 35
          Top = 150
          Width = 124
          Height = 13
          Alignment = taRightJustify
          Caption = #1055#1057#1040' ('#1089#1074#1086#1073'.) / '#1055#1057#1040' ('#1086#1073#1097'.)'
        end
        object Label189: TLabel
          Left = 248
          Top = 149
          Width = 44
          Height = 13
          Caption = 'N >= 0,1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickOnkomark: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object EdtPSA_Total: TEdit
          Left = 176
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'EdtPSA_Total'
          OnKeyPress = EdtOAKErKeyPress
        end
        object EdtPSA_Free: TEdit
          Left = 176
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtPSA_Free'
          OnKeyPress = EdtOAKErKeyPress
        end
        object EdtPSA_Ratio: TEdit
          Left = 176
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtPSA_Ratio'
          OnKeyPress = EdtOAKErKeyPress
        end
        object BtnOnkomarkerFotos: TButton
          Left = 496
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1072#1085#1072#1083#1080#1079#1072' '#1082#1088#1086#1074#1080' '#1085#1072' '#1086#1085#1082#1086#1084#1072#1088#1082#1077#1088#1099' (<Ctrl> + I)'
          Anchors = [akTop, akRight]
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 5
          OnClick = BtnOnkomarkerFotosClick
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1069#1083#1077#1082#1090#1088#1086#1083#1080#1090#1099'  '
      ImageIndex = 5
      object GroupBox6: TGroupBox
        Left = 8
        Top = 3
        Width = 585
        Height = 424
        TabOrder = 0
        object Label190: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label191: TLabel
          Left = 147
          Top = 81
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = #1085#1072#1090#1088#1080#1081' Na+'
        end
        object Label192: TLabel
          Left = 288
          Top = 81
          Width = 93
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 135-145'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label193: TLabel
          Left = 159
          Top = 115
          Width = 46
          Height = 13
          Caption = #1082#1072#1083#1080#1081' '#1050'+'
        end
        object Label194: TLabel
          Left = 288
          Top = 115
          Width = 87
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 3,5-5,1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label195: TLabel
          Left = 167
          Top = 149
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = #1093#1083#1086#1088' Cl-'
        end
        object Label196: TLabel
          Left = 288
          Top = 149
          Width = 105
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 95,0-115,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label197: TLabel
          Left = 43
          Top = 183
          Width = 162
          Height = 13
          Caption = #1080#1086#1085#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1082#1072#1083#1100#1094#1080#1081' Ca ++'
        end
        object Label198: TLabel
          Left = 288
          Top = 183
          Width = 99
          Height = 13
          Caption = '('#1084#1084#1086#1083#1100'/'#1083') 1,12-1,32'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label199: TLabel
          Left = 158
          Top = 217
          Width = 47
          Height = 13
          Caption = 'pH '#1082#1088#1086#1074#1080
        end
        object Label200: TLabel
          Left = 288
          Top = 217
          Width = 33
          Height = 13
          Caption = '7,2-7,6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label201: TLabel
          Left = 276
          Top = 47
          Width = 34
          Height = 13
          Caption = #1053#1086#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickIones: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object EdtIonesNa: TEdit
          Left = 216
          Top = 78
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'EdtIones_Na'
        end
        object EdtIonesK: TEdit
          Left = 216
          Top = 112
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtIones_K'
        end
        object EdtIonesCl: TEdit
          Left = 216
          Top = 146
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtIones_Cl'
        end
        object EdtIonesCa: TEdit
          Left = 216
          Top = 180
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          Text = 'EdtIones_Ca'
        end
        object EdtIonesBlood_pH: TEdit
          Left = 216
          Top = 214
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          Text = 'EdtIonesBlood_pH'
        end
      end
    end
  end
  object BtnPrev: TButton
    Left = 278
    Top = 487
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1085#1072#1079#1072#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnPrevClick
  end
  object BtnNext: TButton
    Left = 358
    Top = 487
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1074#1087#1077#1088#1077#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnNextClick
  end
  object BtnSave: TButton
    Left = 468
    Top = 487
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 548
    Top = 487
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnCancelClick
  end
  object BtnHlp: TButton
    Left = 8
    Top = 487
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 5
    OnClick = BtnHlpClick
  end
  object NiceSetFrmBloodHorm: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 312
  end
  object AppEventsBloodHorm: TApplicationEvents
    OnShortCut = AppEventsBloodHormShortCut
    Left = 344
  end
end
