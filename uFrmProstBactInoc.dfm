object FrmProstBactInoc: TFrmProstBactInoc
  Left = 232
  Top = 110
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1073#1072#1082#1090#1077#1088#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1075#1086' '#1087#1086#1089#1077#1074#1072' '#1089#1086#1082#1072' '#1087#1088#1086#1089#1090#1072#1090#1099
  ClientHeight = 649
  ClientWidth = 813
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
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    813
    649)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 795
    Height = 593
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object Label16: TLabel
      Left = 16
      Top = 40
      Width = 71
      Height = 13
      Caption = #1044#1072#1090#1072' '#1072#1085#1072#1083#1080#1079#1072
    end
    object Label1: TLabel
      Left = 40
      Top = 144
      Width = 113
      Height = 33
      AutoSize = False
      Caption = #1063#1091#1074#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1082' '#1072#1085#1090#1080#1073#1080#1086#1090#1080#1082#1072#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label17: TLabel
      Left = 392
      Top = 80
      Width = 135
      Height = 13
      Caption = #1042#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1082#1091#1083#1100#1090#1091#1088#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 300
      Top = 109
      Width = 48
      Height = 13
      Caption = #1082#1086#1085#1094'. 10^'
    end
    object Label25: TLabel
      Left = 396
      Top = 109
      Width = 41
      Height = 13
      Caption = #1050#1054#1045'/'#1084#1083
    end
    object Label3: TLabel
      Left = 613
      Top = 109
      Width = 48
      Height = 13
      Caption = #1082#1086#1085#1094'. 10^'
    end
    object Label4: TLabel
      Left = 709
      Top = 109
      Width = 41
      Height = 13
      Caption = #1050#1054#1045'/'#1084#1083
    end
    object DTPickProstBactInocDate: TDateTimePicker
      Left = 96
      Top = 32
      Width = 97
      Height = 21
      Date = 38218.771042199070000000
      Time = 38218.771042199070000000
      TabOrder = 0
    end
    object Panel17: TPanel
      Left = 16
      Top = 64
      Width = 281
      Height = 2
      BevelOuter = bvLowered
      TabOrder = 11
    end
    object Panel2: TPanel
      Left = 173
      Top = 136
      Width = 265
      Height = 457
      BevelOuter = bvNone
      TabOrder = 8
      object Label18: TLabel
        Left = 7
        Top = 8
        Width = 59
        Height = 13
        Caption = #1091#1089#1090#1086#1081#1095#1080#1074#1099#1081
      end
      object Label19: TLabel
        Left = 95
        Top = 8
        Width = 65
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = #1091#1084#1077#1088#1077#1085#1085#1086' '#1091#1089#1090#1086#1081#1095#1080#1074#1099#1081
        WordWrap = True
      end
      object Label20: TLabel
        Left = 175
        Top = 8
        Width = 82
        Height = 13
        Caption = #1095#1091#1074#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
      end
      object Panel4: TPanel
        Left = 28
        Top = 42
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 0
        object RdBtn_R1_01: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_01: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_01: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 28
        Top = 66
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 1
        object RdBtn_R1_02: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_02: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_02: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel6: TPanel
        Left = 28
        Top = 90
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 2
        object RdBtn_R1_03: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_03: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_03: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel7: TPanel
        Left = 28
        Top = 114
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 3
        object RdBtn_R1_04: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_04: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_04: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel8: TPanel
        Left = 28
        Top = 138
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 4
        object RdBtn_R1_05: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_05: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_05: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel9: TPanel
        Left = 28
        Top = 162
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 5
        object RdBtn_R1_06: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_06: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_06: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel10: TPanel
        Left = 28
        Top = 186
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 6
        object RdBtn_R1_07: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_07: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_07: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel11: TPanel
        Left = 28
        Top = 210
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 7
        object RdBtn_R1_08: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_08: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_08: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel12: TPanel
        Left = 28
        Top = 234
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 8
        object RdBtn_R1_09: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_09: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_09: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel13: TPanel
        Left = 28
        Top = 258
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 9
        object RdBtn_R1_10: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_10: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_10: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel14: TPanel
        Left = 28
        Top = 282
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 10
        object RdBtn_R1_11: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_11: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_11: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel15: TPanel
        Left = 28
        Top = 306
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 11
        object RdBtn_R1_12: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_12: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_12: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel16: TPanel
        Left = 28
        Top = 330
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 12
        object RdBtn_R1_13: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_13: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_13: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel18: TPanel
        Left = 28
        Top = 354
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 13
        object RdBtn_R1_14: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_14: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_14: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel19: TPanel
        Left = 28
        Top = 378
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 14
        object RdBtn_R1_15: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_15: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_15: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel20: TPanel
        Left = 28
        Top = 402
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 15
        object RdBtn_R1_16: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_16: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_16: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel38: TPanel
        Left = 28
        Top = 426
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 16
        object RdBtn_R1_17: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I1_17: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S1_17: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 176
        Top = 39
        Width = 2
        Height = 409
        BevelOuter = bvLowered
        Caption = 'Panel37'
        TabOrder = 17
      end
      object Panel41: TPanel
        Left = 86
        Top = 38
        Width = 2
        Height = 409
        BevelOuter = bvLowered
        Caption = 'Panel37'
        TabOrder = 18
      end
    end
    object Panel3: TPanel
      Left = 485
      Top = 136
      Width = 265
      Height = 457
      BevelOuter = bvNone
      TabOrder = 9
      object Label21: TLabel
        Left = 7
        Top = 8
        Width = 59
        Height = 13
        Caption = #1091#1089#1090#1086#1081#1095#1080#1074#1099#1081
      end
      object Label22: TLabel
        Left = 95
        Top = 8
        Width = 65
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = #1091#1084#1077#1088#1077#1085#1085#1086' '#1091#1089#1090#1086#1081#1095#1080#1074#1099#1081
        WordWrap = True
      end
      object Label23: TLabel
        Left = 175
        Top = 8
        Width = 82
        Height = 13
        Caption = #1095#1091#1074#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
      end
      object Panel21: TPanel
        Left = 28
        Top = 42
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 0
        object RdBtn_R2_01: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_01: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_01: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel22: TPanel
        Left = 28
        Top = 66
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 1
        object RdBtn_R2_02: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_02: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_02: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel23: TPanel
        Left = 28
        Top = 90
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 2
        object RdBtn_R2_03: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_03: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_03: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel24: TPanel
        Left = 28
        Top = 114
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 3
        object RdBtn_R2_04: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_04: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_04: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel25: TPanel
        Left = 28
        Top = 138
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 4
        object RdBtn_R2_05: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_05: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_05: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel26: TPanel
        Left = 28
        Top = 162
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 5
        object RdBtn_R2_06: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_06: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_06: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel27: TPanel
        Left = 28
        Top = 186
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 6
        object RdBtn_R2_07: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_07: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_07: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel28: TPanel
        Left = 28
        Top = 210
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 7
        object RdBtn_R2_08: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_08: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_08: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel29: TPanel
        Left = 28
        Top = 234
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 8
        object RdBtn_R2_09: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_09: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_09: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel30: TPanel
        Left = 28
        Top = 258
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 9
        object RdBtn_R2_10: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_10: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_10: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel31: TPanel
        Left = 28
        Top = 282
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 10
        object RdBtn_R2_11: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_11: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_11: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel32: TPanel
        Left = 28
        Top = 306
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 11
        object RdBtn_R2_12: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_12: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_12: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel33: TPanel
        Left = 28
        Top = 330
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 12
        object RdBtn_R2_13: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_13: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_13: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel34: TPanel
        Left = 28
        Top = 354
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 13
        object RdBtn_R2_14: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_14: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_14: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel35: TPanel
        Left = 28
        Top = 378
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 14
        object RdBtn_R2_15: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_15: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_15: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel36: TPanel
        Left = 28
        Top = 402
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 15
        object RdBtn_R2_16: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_16: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_16: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel39: TPanel
        Left = 28
        Top = 426
        Width = 209
        Height = 23
        BevelOuter = bvNone
        TabOrder = 16
        object RdBtn_R2_17: TRadioButton
          Left = 8
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 0
        end
        object RdBtn_I2_17: TRadioButton
          Left = 96
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object RdBtn_S2_17: TRadioButton
          Left = 184
          Top = 4
          Width = 17
          Height = 17
          TabOrder = 2
        end
      end
      object Panel42: TPanel
        Left = 176
        Top = 39
        Width = 2
        Height = 409
        BevelOuter = bvLowered
        Caption = 'Panel37'
        TabOrder = 17
      end
      object Panel43: TPanel
        Left = 87
        Top = 40
        Width = 2
        Height = 409
        BevelOuter = bvLowered
        Caption = 'Panel37'
        TabOrder = 18
      end
    end
    object Panel37: TPanel
      Left = 461
      Top = 104
      Width = 2
      Height = 484
      BevelOuter = bvLowered
      Caption = 'Panel37'
      TabOrder = 10
    end
    object ChkBoxPathogen1: TCheckBox
      Left = 173
      Top = 108
      Width = 25
      Height = 17
      TabOrder = 1
      OnClick = ChkBoxPathogen1Click
    end
    object EdtPathogen1: TEdit
      Left = 189
      Top = 104
      Width = 105
      Height = 21
      MaxLength = 40
      TabOrder = 2
      Text = 'EdtPathogen1'
    end
    object ChkBoxPathogen2: TCheckBox
      Left = 485
      Top = 108
      Width = 25
      Height = 17
      TabOrder = 4
      OnClick = ChkBoxPathogen2Click
    end
    object EdtPathogen2: TEdit
      Left = 501
      Top = 104
      Width = 105
      Height = 21
      MaxLength = 40
      TabOrder = 5
      Text = 'EdtPathogen2'
    end
    object Panel40: TPanel
      Left = 8
      Top = 181
      Width = 161
      Height = 412
      BevelOuter = bvNone
      TabOrder = 7
      object ChkBoxDrug_17: TCheckBox
        Left = 14
        Top = 384
        Width = 17
        Height = 17
        TabOrder = 17
        OnClick = ChkBoxDrug_17Click
      end
      object ChkBoxDrug_16: TCheckBox
        Left = 14
        Top = 360
        Width = 17
        Height = 17
        TabOrder = 15
        OnClick = ChkBoxDrug_16Click
      end
      object EdtExtra1: TEdit
        Left = 32
        Top = 357
        Width = 124
        Height = 21
        MaxLength = 40
        TabOrder = 16
        Text = #1089#1074#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      end
      object EdtExtra2: TEdit
        Left = 32
        Top = 381
        Width = 124
        Height = 21
        MaxLength = 40
        TabOrder = 18
        Text = #1089#1074#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      end
      object ChkBoxDrug_01: TCheckBox
        Left = 14
        Top = 1
        Width = 89
        Height = 17
        Caption = #1040#1084#1087#1080#1094#1080#1083#1083#1080#1085
        TabOrder = 0
        OnClick = ChkBoxDrug_01Click
      end
      object ChkBoxDrug_02: TCheckBox
        Left = 14
        Top = 24
        Width = 97
        Height = 17
        Caption = #1040#1091#1075#1084#1077#1085#1090#1080#1085
        TabOrder = 1
        OnClick = ChkBoxDrug_02Click
      end
      object ChkBoxDrug_03: TCheckBox
        Left = 14
        Top = 48
        Width = 97
        Height = 17
        Caption = #1054#1082#1089#1072#1094#1080#1083#1083#1080#1085
        TabOrder = 2
        OnClick = ChkBoxDrug_03Click
      end
      object ChkBoxDrug_04: TCheckBox
        Left = 14
        Top = 72
        Width = 97
        Height = 17
        Caption = #1062#1077#1092#1072#1079#1086#1083#1080#1085
        TabOrder = 3
        OnClick = ChkBoxDrug_04Click
      end
      object ChkBoxDrug_05: TCheckBox
        Left = 14
        Top = 96
        Width = 97
        Height = 17
        Caption = #1062#1077#1092#1086#1090#1072#1082#1089#1080#1084
        TabOrder = 4
        OnClick = ChkBoxDrug_05Click
      end
      object ChkBoxDrug_06: TCheckBox
        Left = 14
        Top = 120
        Width = 97
        Height = 17
        Caption = #1062#1077#1092#1090#1072#1079#1080#1076#1080#1084
        TabOrder = 5
        OnClick = ChkBoxDrug_06Click
      end
      object ChkBoxDrug_07: TCheckBox
        Left = 14
        Top = 144
        Width = 97
        Height = 17
        Caption = #1062#1077#1092#1086#1087#1077#1088#1072#1079#1086#1085
        TabOrder = 6
        OnClick = ChkBoxDrug_07Click
      end
      object ChkBoxDrug_08: TCheckBox
        Left = 14
        Top = 168
        Width = 97
        Height = 17
        Caption = #1043#1077#1085#1090#1072#1084#1080#1094#1080#1085
        TabOrder = 7
        OnClick = ChkBoxDrug_08Click
      end
      object ChkBoxDrug_09: TCheckBox
        Left = 14
        Top = 192
        Width = 97
        Height = 17
        Caption = #1040#1084#1080#1082#1072#1094#1080#1085
        TabOrder = 8
        OnClick = ChkBoxDrug_09Click
      end
      object ChkBoxDrug_10: TCheckBox
        Left = 14
        Top = 216
        Width = 97
        Height = 17
        Caption = #1069#1088#1080#1090#1088#1086#1084#1080#1094#1080#1085
        TabOrder = 9
        OnClick = ChkBoxDrug_10Click
      end
      object ChkBoxDrug_11: TCheckBox
        Left = 14
        Top = 240
        Width = 97
        Height = 17
        Caption = #1040#1079#1080#1090#1088#1086#1084#1080#1094#1080#1085
        TabOrder = 10
        OnClick = ChkBoxDrug_11Click
      end
      object ChkBoxDrug_12: TCheckBox
        Left = 14
        Top = 264
        Width = 97
        Height = 17
        Caption = #1044#1086#1082#1089#1080#1094#1080#1082#1083#1080#1085
        TabOrder = 11
        OnClick = ChkBoxDrug_12Click
      end
      object ChkBoxDrug_13: TCheckBox
        Left = 14
        Top = 288
        Width = 121
        Height = 17
        Caption = #1062#1080#1087#1088#1086#1092#1083#1086#1082#1089#1072#1094#1080#1085
        TabOrder = 12
        OnClick = ChkBoxDrug_13Click
      end
      object ChkBoxDrug_14: TCheckBox
        Left = 14
        Top = 312
        Width = 113
        Height = 17
        Caption = #1053#1080#1090#1088#1086#1092#1091#1088#1072#1085#1090#1086#1080#1085
        TabOrder = 13
        OnClick = ChkBoxDrug_14Click
      end
      object ChkBoxDrug_15: TCheckBox
        Left = 14
        Top = 336
        Width = 97
        Height = 17
        Caption = #1088'-'#1088' '#1054#1082#1090#1077#1085#1080#1089#1077#1087#1090
        TabOrder = 14
        OnClick = ChkBoxDrug_15Click
      end
    end
    object NumEdtProst1: TDBNumberEditEh
      Left = 352
      Top = 106
      Width = 41
      Height = 21
      DecimalPlaces = 0
      EditButton.Style = ebsUpDownEh
      EditButton.Visible = True
      EditButtons = <>
      MaxValue = 8.000000000000000000
      MinValue = 2.000000000000000000
      ShowHint = True
      TabOrder = 3
      Value = 3.000000000000000000
      Visible = True
      OnChange = NumEdtProst1Change
    end
    object NumEdtProst2: TDBNumberEditEh
      Left = 665
      Top = 106
      Width = 41
      Height = 21
      DecimalPlaces = 0
      EditButton.Style = ebsUpDownEh
      EditButton.Visible = True
      EditButtons = <>
      MaxValue = 8.000000000000000000
      MinValue = 2.000000000000000000
      ShowHint = True
      TabOrder = 6
      Value = 3.000000000000000000
      Visible = True
      OnChange = NumEdtProst2Change
    end
  end
  object BtnSave: TButton
    Left = 649
    Top = 616
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 730
    Top = 616
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object NiceSetFrmProstBactInoc: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 288
    Top = 32
  end
  object AppEventsFrmProstBactInoc: TApplicationEvents
    OnShortCut = AppEventsFrmProstBactInocShortCut
    Left = 256
    Top = 32
  end
end
