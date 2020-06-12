object FrmResearchLues: TFrmResearchLues
  Left = 226
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmResearchLues'
  ClientHeight = 622
  ClientWidth = 762
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
    762
    622)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 210
    Top = 45
    Width = 315
    Height = 20
    Caption = #1054#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1073#1086#1083#1100#1085#1086#1075#1086' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 552
    Top = 8
    Width = 195
    Height = 26
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' 1'#13#10#1082' '#1087#1088#1080#1082#1072#1079#1091' '#1052#1047' '#1056#1060' '#8470'2 '#1086#1090' 10.01.1995 '#1075'. '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblLuesIdent: TLabel
    Left = 261
    Top = 76
    Width = 61
    Height = 13
    Caption = 'LblLuesIdent'
  end
  object LblLuesPatientName: TLabel
    Left = 341
    Top = 76
    Width = 117
    Height = 13
    Caption = 'LblLuesPatientName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnSave: TButton
    Left = 593
    Top = 583
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 673
    Top = 583
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnCancelClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 112
    Width = 729
    Height = 457
    Caption = '   '#1042#1082#1083#1072#1076#1099#1096' '#1082' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1082#1072#1088#1090#1077' '#1072#1084#1073#1091#1083#1072#1090#1086#1088#1085#1086#1075#1086' '#1073#1086#1083#1100#1085#1086#1075#1086'   '
    TabOrder = 2
    object Label4: TLabel
      Left = 51
      Top = 29
      Width = 121
      Height = 13
      Caption = 'I. '#1046#1072#1083#1086#1073#1099' '#1073#1086#1083#1100#1085#1086#1075#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 51
      Top = 152
      Width = 125
      Height = 13
      Caption = 'II. '#1053#1072#1088#1091#1078#1085#1099#1081' '#1086#1089#1084#1086#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 59
      Top = 168
      Width = 116
      Height = 13
      Caption = '1. '#1042'/'#1095' '#1075#1086#1083#1086#1074#1099': '#1085#1072#1083#1080#1095#1080#1077
    end
    object Label23: TLabel
      Left = 59
      Top = 277
      Width = 165
      Height = 13
      Caption = '2. '#1057#1083#1080#1079#1080#1089#1090#1072#1103' '#1087#1086#1083#1086#1089#1090#1080' '#1088#1090#1072', '#1103#1079#1099#1082':'
    end
    object Label36: TLabel
      Left = 447
      Top = 29
      Width = 75
      Height = 13
      Caption = #1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1075#1091#1073':'
    end
    object Label45: TLabel
      Left = 409
      Top = 165
      Width = 220
      Height = 13
      Caption = 'III. '#1055#1072#1083#1100#1087#1072#1094#1080#1103' '#1083#1080#1084#1092#1072#1090#1080#1095#1077#1089#1082#1080#1093' '#1091#1079#1083#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label58: TLabel
      Left = 409
      Top = 298
      Width = 196
      Height = 13
      Caption = 'IV. '#1053#1072#1083#1080#1095#1080#1077' '#1082#1086#1089#1090#1085#1099#1093' '#1076#1077#1089#1090#1088#1091#1082#1094#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 75
      Top = 45
      Width = 250
      Height = 22
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        250
        22)
      object Label5: TLabel
        Left = 6
        Top = 2
        Width = 92
        Height = 13
        Caption = ' '#1089#1085#1080#1078#1077#1085#1080#1077' '#1079#1088#1077#1085#1080#1103
      end
      object Label6: TLabel
        Left = 198
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLVisusYes: TRadioButton
        Left = 166
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLVisusNo: TRadioButton
        Left = 204
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel2: TPanel
      Left = 75
      Top = 66
      Width = 250
      Height = 22
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        250
        22)
      object Label7: TLabel
        Left = 8
        Top = 2
        Width = 91
        Height = 13
        Caption = '                   - '#1089#1083#1091#1093#1072
      end
      object Label8: TLabel
        Left = 198
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLOtisYes: TRadioButton
        Left = 166
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLOtisNo: TRadioButton
        Left = 204
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel3: TPanel
      Left = 75
      Top = 87
      Width = 250
      Height = 22
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        250
        22)
      object Label9: TLabel
        Left = 8
        Top = 2
        Width = 91
        Height = 13
        Caption = '                - '#1087#1072#1084#1103#1090#1080
      end
      object Label10: TLabel
        Left = 198
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLMemorYes: TRadioButton
        Left = 166
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLMemorNo: TRadioButton
        Left = 204
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel4: TPanel
      Left = 46
      Top = 108
      Width = 279
      Height = 31
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        279
        31)
      object Label11: TLabel
        Left = 4
        Top = 2
        Width = 127
        Height = 26
        Alignment = taRightJustify
        Caption = #1085#1072#1088#1091#1096#1077#1085#1080#1103' '#1082#1086#1086#1088#1076#1080#1085#1072#1094#1080#1080' '#1076#1074#1080#1078#1077#1085#1080#1103
        WordWrap = True
      end
      object Label12: TLabel
        Left = 227
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLTaxisYes: TRadioButton
        Left = 195
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLTaxisNo: TRadioButton
        Left = 233
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel5: TPanel
      Left = 125
      Top = 184
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        200
        22)
      object Label15: TLabel
        Left = 6
        Top = 2
        Width = 60
        Height = 13
        Caption = '- '#1072#1083#1083#1086#1087#1077#1094#1080#1081
      end
      object Label16: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnHAllopeciaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnHAllopeciaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel6: TPanel
      Left = 125
      Top = 205
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        200
        22)
      object Label17: TLabel
        Left = 6
        Top = 2
        Width = 43
        Height = 13
        Caption = '- '#1087#1072#1087#1091#1083#1099
      end
      object Label18: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnHPapulaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnHPapulaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel7: TPanel
      Left = 125
      Top = 226
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        200
        22)
      object Label19: TLabel
        Left = 6
        Top = 2
        Width = 47
        Height = 13
        Caption = '- '#1087#1091#1089#1090#1091#1083#1099
      end
      object Label20: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnHPustulaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnHPustulaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel8: TPanel
      Left = 125
      Top = 247
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 7
      DesignSize = (
        200
        22)
      object Label21: TLabel
        Left = 6
        Top = 2
        Width = 47
        Height = 13
        Caption = '- '#1082#1086#1088#1086#1095#1082#1080
      end
      object Label22: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnHKorochkaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnHKorochkaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel9: TPanel
      Left = 125
      Top = 295
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 8
      DesignSize = (
        200
        22)
      object Label24: TLabel
        Left = 6
        Top = 2
        Width = 35
        Height = 13
        Caption = '- '#1087#1103#1090#1085#1072
      end
      object Label25: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTMakulaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTMakulaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel10: TPanel
      Left = 125
      Top = 316
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 9
      DesignSize = (
        200
        22)
      object Label26: TLabel
        Left = 6
        Top = 2
        Width = 43
        Height = 13
        Caption = '- '#1087#1072#1087#1091#1083#1099
      end
      object Label27: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTPapulaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTPapulaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel11: TPanel
      Left = 125
      Top = 337
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 10
      DesignSize = (
        200
        22)
      object Label28: TLabel
        Left = 6
        Top = 2
        Width = 42
        Height = 13
        Caption = '- '#1101#1088#1086#1079#1080#1080
      end
      object Label29: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTEroziaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTEroziaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel12: TPanel
      Left = 125
      Top = 358
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 11
      DesignSize = (
        200
        22)
      object Label30: TLabel
        Left = 6
        Top = 2
        Width = 32
        Height = 13
        Caption = '- '#1103#1079#1074#1099
      end
      object Label31: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTUlcerYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTUlcerNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel13: TPanel
      Left = 125
      Top = 379
      Width = 200
      Height = 22
      BevelOuter = bvNone
      TabOrder = 12
      DesignSize = (
        200
        22)
      object Label32: TLabel
        Left = 6
        Top = 2
        Width = 41
        Height = 13
        Caption = '- '#1072#1085#1075#1080#1085#1072
      end
      object Label33: TLabel
        Left = 148
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTAnginaYes: TRadioButton
        Left = 116
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTAnginaNo: TRadioButton
        Left = 154
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel14: TPanel
      Left = 90
      Top = 400
      Width = 235
      Height = 30
      BevelOuter = bvNone
      TabOrder = 13
      DesignSize = (
        235
        30)
      object Label34: TLabel
        Left = 8
        Top = 2
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Caption = '- '#1091#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1086#1076#1085#1086#1081' '#1080#1079' '#1084#1080#1085#1076#1072#1083#1080#1085
        WordWrap = True
      end
      object Label35: TLabel
        Left = 183
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnTMindalYes: TRadioButton
        Left = 151
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnTMindalNo: TRadioButton
        Left = 189
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel15: TPanel
      Left = 488
      Top = 45
      Width = 184
      Height = 22
      BevelOuter = bvNone
      TabOrder = 14
      DesignSize = (
        184
        22)
      object Label37: TLabel
        Left = 6
        Top = 2
        Width = 43
        Height = 13
        Caption = '- '#1087#1072#1087#1091#1083#1099
      end
      object Label38: TLabel
        Left = 132
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLipPapulaYes: TRadioButton
        Left = 100
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLipPapulaNo: TRadioButton
        Left = 138
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel16: TPanel
      Left = 488
      Top = 66
      Width = 184
      Height = 22
      BevelOuter = bvNone
      TabOrder = 15
      DesignSize = (
        184
        22)
      object Label39: TLabel
        Left = 6
        Top = 2
        Width = 38
        Height = 13
        Caption = '- '#1079#1072#1077#1076#1099
      end
      object Label40: TLabel
        Left = 132
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLipZaedaYes: TRadioButton
        Left = 100
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLipZaedaNo: TRadioButton
        Left = 138
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel17: TPanel
      Left = 488
      Top = 87
      Width = 184
      Height = 22
      BevelOuter = bvNone
      TabOrder = 16
      DesignSize = (
        184
        22)
      object Label41: TLabel
        Left = 6
        Top = 2
        Width = 42
        Height = 13
        Caption = '- '#1101#1088#1086#1079#1080#1080
      end
      object Label42: TLabel
        Left = 132
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLipEroziaYes: TRadioButton
        Left = 100
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLipEroziaNo: TRadioButton
        Left = 138
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel18: TPanel
      Left = 488
      Top = 108
      Width = 184
      Height = 22
      BevelOuter = bvNone
      TabOrder = 17
      DesignSize = (
        184
        22)
      object Label43: TLabel
        Left = 6
        Top = 2
        Width = 32
        Height = 13
        Caption = '- '#1103#1079#1074#1099
      end
      object Label44: TLabel
        Left = 132
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLipUlcerYes: TRadioButton
        Left = 100
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLipUlcerNo: TRadioButton
        Left = 138
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel19: TPanel
      Left = 425
      Top = 129
      Width = 247
      Height = 22
      BevelOuter = bvNone
      TabOrder = 18
      DesignSize = (
        247
        22)
      object Label46: TLabel
        Left = 6
        Top = 2
        Width = 105
        Height = 13
        Caption = '3. '#1054#1089#1080#1087#1083#1086#1089#1090#1100' '#1075#1086#1083#1086#1089#1072
      end
      object Label47: TLabel
        Left = 195
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnPhonemaSoundYes: TRadioButton
        Left = 163
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnPhonemaSoundNo: TRadioButton
        Left = 201
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel20: TPanel
      Left = 461
      Top = 184
      Width = 211
      Height = 22
      BevelOuter = bvNone
      TabOrder = 19
      DesignSize = (
        211
        22)
      object Label48: TLabel
        Left = 6
        Top = 2
        Width = 46
        Height = 13
        Caption = '- '#1096#1077#1081#1085#1099#1077
      end
      object Label49: TLabel
        Left = 159
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLdiCervixYes: TRadioButton
        Left = 127
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLdiCervixNo: TRadioButton
        Left = 165
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel21: TPanel
      Left = 461
      Top = 205
      Width = 211
      Height = 22
      BevelOuter = bvNone
      TabOrder = 20
      DesignSize = (
        211
        22)
      object Label50: TLabel
        Left = 6
        Top = 2
        Width = 80
        Height = 13
        Caption = '- '#1087#1086#1076#1095#1077#1083#1102#1089#1090#1085#1099#1077
      end
      object Label51: TLabel
        Left = 159
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLdiSubLingYes: TRadioButton
        Left = 127
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLdiSubLingNo: TRadioButton
        Left = 165
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel22: TPanel
      Left = 461
      Top = 226
      Width = 211
      Height = 22
      BevelOuter = bvNone
      TabOrder = 21
      DesignSize = (
        211
        22)
      object Label52: TLabel
        Left = 6
        Top = 2
        Width = 79
        Height = 13
        Caption = '- '#1087#1086#1076#1084#1099#1096#1077#1095#1085#1099#1077
      end
      object Label53: TLabel
        Left = 159
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLdiAxillarYes: TRadioButton
        Left = 127
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLdiAxillarNo: TRadioButton
        Left = 165
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel23: TPanel
      Left = 461
      Top = 247
      Width = 211
      Height = 22
      BevelOuter = bvNone
      TabOrder = 22
      DesignSize = (
        211
        22)
      object Label54: TLabel
        Left = 6
        Top = 2
        Width = 55
        Height = 13
        Caption = '- '#1083#1086#1082#1090#1077#1074#1099#1077
      end
      object Label55: TLabel
        Left = 159
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLdiUlnarYes: TRadioButton
        Left = 127
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLdiUlnarNo: TRadioButton
        Left = 165
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel24: TPanel
      Left = 461
      Top = 268
      Width = 211
      Height = 22
      BevelOuter = bvNone
      TabOrder = 23
      DesignSize = (
        211
        22)
      object Label56: TLabel
        Left = 6
        Top = 2
        Width = 49
        Height = 13
        Caption = '- '#1087#1072#1093#1086#1074#1099#1077
      end
      object Label57: TLabel
        Left = 159
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnLdiInguinalYes: TRadioButton
        Left = 127
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnLdiInguinalNo: TRadioButton
        Left = 165
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel25: TPanel
      Left = 414
      Top = 317
      Width = 258
      Height = 22
      BevelOuter = bvNone
      TabOrder = 24
      DesignSize = (
        258
        22)
      object Label59: TLabel
        Left = 6
        Top = 2
        Width = 95
        Height = 13
        Caption = '- '#1089#1077#1076#1083#1086#1074#1080#1076#1085#1099#1081' '#1085#1086#1089
      end
      object Label60: TLabel
        Left = 206
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnSellaNosYes: TRadioButton
        Left = 174
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnSellaNosNo: TRadioButton
        Left = 212
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel26: TPanel
      Left = 414
      Top = 338
      Width = 258
      Height = 22
      BevelOuter = bvNone
      TabOrder = 25
      DesignSize = (
        258
        22)
      object Label61: TLabel
        Left = 6
        Top = 2
        Width = 137
        Height = 13
        Caption = '- '#1074#1099#1089#1086#1082#1086#1077' '#1075#1086#1090#1080#1095#1077#1089#1082#1086#1077' '#1085#1105#1073#1086
      end
      object Label62: TLabel
        Left = 206
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnPalatumGoticaYes: TRadioButton
        Left = 174
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnPalatumGoticaNo: TRadioButton
        Left = 212
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel27: TPanel
      Left = 414
      Top = 359
      Width = 258
      Height = 22
      BevelOuter = bvNone
      TabOrder = 26
      DesignSize = (
        258
        22)
      object Label63: TLabel
        Left = 6
        Top = 2
        Width = 92
        Height = 13
        Caption = '- '#1079#1091#1073#1099' '#1043#1077#1090#1095#1080#1085#1089#1086#1085#1072
      end
      object Label64: TLabel
        Left = 206
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnGetchinsonZubYes: TRadioButton
        Left = 174
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnGetchinsonZubNo: TRadioButton
        Left = 212
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel28: TPanel
      Left = 414
      Top = 380
      Width = 258
      Height = 29
      BevelOuter = bvNone
      TabOrder = 27
      DesignSize = (
        258
        29)
      object Label65: TLabel
        Left = 6
        Top = 2
        Width = 137
        Height = 26
        Caption = '- '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1084#1077#1095#1077#1074#1080#1076#1085#1086#1075#1086'     '#1086#1090#1088#1086#1089#1090#1082#1072
        WordWrap = True
      end
      object Label66: TLabel
        Left = 206
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnProcessusMetchYes: TRadioButton
        Left = 174
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnProcessusMetchNo: TRadioButton
        Left = 212
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel29: TPanel
      Left = 414
      Top = 408
      Width = 258
      Height = 22
      BevelOuter = bvNone
      TabOrder = 28
      DesignSize = (
        258
        22)
      object Label67: TLabel
        Left = 6
        Top = 2
        Width = 112
        Height = 13
        Caption = '- '#1089#1072#1073#1083#1077#1074#1080#1076#1085#1099#1077' '#1075#1086#1083#1077#1085#1080
      end
      object Label68: TLabel
        Left = 206
        Top = 4
        Width = 5
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object RdBtnSableGolenYes: TRadioButton
        Left = 174
        Top = 1
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1076#1072
        TabOrder = 0
      end
      object RdBtnSableGolenNo: TRadioButton
        Left = 212
        Top = 1
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        Caption = #1085#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
  end
  object NiceSetFrmResearchLues: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 544
    Top = 584
  end
  object AppEventsResearchLues: TApplicationEvents
    OnShortCut = AppEventsResearchLuesShortCut
    Left = 512
    Top = 584
  end
end
