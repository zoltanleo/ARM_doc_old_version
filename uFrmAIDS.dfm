object FrmAIDS: TFrmAIDS
  Left = 445
  Top = 132
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmAIDS'
  ClientHeight = 545
  ClientWidth = 487
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
    487
    545)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 471
    Height = 498
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1057#1077#1088#1086#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1072' '#1075#1077#1087#1072#1090#1080#1090#1086#1074', '#1089#1080#1092#1080#1083#1080#1089#1072', '#1042#1048#1063'-'#1080#1085#1092#1077#1082#1094#1080#1080'   '
    TabOrder = 0
    object Label5: TLabel
      Left = 347
      Top = 201
      Width = 114
      Height = 27
      AutoSize = False
      Caption = '('#1084#1052#1045'/'#1084#1083');               <10 - '#1086#1090#1089#1091#1090'.'#1080#1084#1084'.'#1086#1090#1074#1077#1090' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label16: TLabel
      Left = 16
      Top = 40
      Width = 71
      Height = 13
      Caption = #1044#1072#1090#1072' '#1072#1085#1072#1083#1080#1079#1072
    end
    object Panel1: TPanel
      Left = 8
      Top = 73
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 1
      object Label17: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxHBsAg: TCheckBox
        Left = 8
        Top = 4
        Width = 73
        Height = 17
        Caption = 'HBsAg'
        TabOrder = 0
        OnClick = ChkBoxHBsAgClick
      end
      object RdBtnHBsAgYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnHBsAgNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 99
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxHBeAg: TCheckBox
        Left = 8
        Top = 4
        Width = 73
        Height = 17
        Caption = 'HBeAg'
        TabOrder = 0
        OnClick = ChkBoxHBeAgClick
      end
      object RdBtnHBeAgYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnHBeAgNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 125
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 3
      object Label2: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHBcSum: TCheckBox
        Left = 8
        Top = 4
        Width = 153
        Height = 17
        Caption = 'Anti-HBc '#1089#1091#1084'.'
        TabOrder = 0
        OnClick = ChkBoxAntiHBcSumClick
      end
      object RdBtnAntiHBcSumYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHBcSumNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 151
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 4
      object Label3: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHBc_IgM: TCheckBox
        Left = 8
        Top = 4
        Width = 105
        Height = 17
        Caption = 'Anti-HBc IgM'
        TabOrder = 0
        OnClick = ChkBoxAntiHBc_IgMClick
      end
      object RdBtnAntiHBc_IgMYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHBc_IgMNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel5: TPanel
      Left = 8
      Top = 177
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 5
      object Label4: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHBe_IgG: TCheckBox
        Left = 8
        Top = 4
        Width = 97
        Height = 17
        Caption = 'Anti-HBe IgG'
        TabOrder = 0
        OnClick = ChkBoxAntiHBe_IgGClick
      end
      object RdBtnAntiHBe_IgGYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHBe_IgGNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 203
      Width = 337
      Height = 26
      BevelOuter = bvNone
      TabOrder = 6
      object ChkBoxAntiHBsNumer: TCheckBox
        Left = 8
        Top = 4
        Width = 113
        Height = 17
        Caption = 'Anti-HBs '#1082#1086#1083#1080#1095'.'
        TabOrder = 0
        OnClick = ChkBoxAntiHBsNumerClick
      end
      object EdtAntiHBsNumer: TEdit
        Left = 209
        Top = 2
        Width = 123
        Height = 21
        TabOrder = 1
        Text = 'EdtAntiHBsNumer'
      end
    end
    object Panel7: TPanel
      Left = 8
      Top = 229
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 7
      object Label6: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCVSum: TCheckBox
        Left = 8
        Top = 4
        Width = 153
        Height = 17
        Caption = 'Anti-HCV '#1089#1091#1084'. '#1082'.'#1087'. '#1040' >= 1'
        TabOrder = 0
        OnClick = ChkBoxAntiHCVSumClick
      end
      object RdBtnAntiHCVSumYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCVSumNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel8: TPanel
      Left = 8
      Top = 255
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 8
      object Label7: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCV_Core_IgM: TCheckBox
        Left = 8
        Top = 4
        Width = 145
        Height = 17
        Caption = 'Anti-HCV Core IgM'
        TabOrder = 0
        OnClick = ChkBoxAntiHCV_Core_IgMClick
      end
      object RdBtnAntiHCV_Core_IgMYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCV_Core_IgMNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel9: TPanel
      Left = 8
      Top = 385
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 13
      object Label8: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCVSumNS5: TCheckBox
        Left = 8
        Top = 4
        Width = 193
        Height = 17
        Caption = 'Anti-HCV '#1089#1091#1084' ('#1089#1087#1077#1082#1090#1088' '#1040#1090') NS5'
        TabOrder = 0
        OnClick = ChkBoxAntiHCVSumNS5Click
      end
      object RdBtnAntiHCVSumNS5Yes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCVSumNS5No: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel10: TPanel
      Left = 8
      Top = 411
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 14
      object Label9: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxSumAtLues: TCheckBox
        Left = 8
        Top = 4
        Width = 193
        Height = 17
        Caption = #1057#1091#1084'. '#1040#1090' '#1082' Treponema Pallidum'
        TabOrder = 0
        OnClick = ChkBoxSumAtLuesClick
      end
      object RdBtnSumAtLuesYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnSumAtLuesNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel11: TPanel
      Left = 8
      Top = 437
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 15
      object Label10: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxRW: TCheckBox
        Left = 8
        Top = 4
        Width = 193
        Height = 17
        Caption = #1056#1052#1055' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089
        TabOrder = 0
        OnClick = ChkBoxRWClick
      end
      object RdBtnRWYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnRWNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel12: TPanel
      Left = 8
      Top = 463
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 16
      object Label11: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAIDS: TCheckBox
        Left = 8
        Top = 4
        Width = 193
        Height = 17
        Caption = #1040#1085#1090#1080#1090#1077#1083#1072' '#1082' '#1042#1048#1063'-1,2 '#1040#1075'/'#1040#1090
        TabOrder = 0
        OnClick = ChkBoxAIDSClick
      end
      object RdBtnAIDSYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAIDSNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel13: TPanel
      Left = 8
      Top = 281
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 9
      object Label12: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHDVSum: TCheckBox
        Left = 8
        Top = 4
        Width = 129
        Height = 17
        Caption = 'Anti-HDV '#1089#1091#1084'.'
        TabOrder = 0
        OnClick = ChkBoxAntiHDVSumClick
      end
      object RdBtnAntiHDVSumYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHDVSumNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel14: TPanel
      Left = 8
      Top = 307
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 10
      object Label13: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCVSumCore: TCheckBox
        Left = 8
        Top = 4
        Width = 185
        Height = 17
        Caption = 'Anti-HCV '#1089#1091#1084' ('#1089#1087#1077#1082#1090#1088' '#1040#1090') Core'
        TabOrder = 0
        OnClick = ChkBoxAntiHCVSumCoreClick
      end
      object RdBtnAntiHCVSumCoreYes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCVSumCoreNo: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel15: TPanel
      Left = 8
      Top = 333
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 11
      object Label14: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCVSumNS3: TCheckBox
        Left = 8
        Top = 4
        Width = 177
        Height = 17
        Caption = 'Anti-HCV '#1089#1091#1084' ('#1089#1087#1077#1082#1090#1088' '#1040#1090') NS3'
        TabOrder = 0
        OnClick = ChkBoxAntiHCVSumNS3Click
      end
      object RdBtnAntiHCVSumNS3Yes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCVSumNS3No: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Panel16: TPanel
      Left = 8
      Top = 359
      Width = 344
      Height = 26
      BevelOuter = bvNone
      TabOrder = 12
      object Label15: TLabel
        Left = 261
        Top = 4
        Width = 5
        Height = 13
        Caption = '/'
      end
      object ChkBoxAntiHCVSumNS4: TCheckBox
        Left = 8
        Top = 4
        Width = 185
        Height = 17
        Caption = 'Anti-HCV '#1089#1091#1084' ('#1089#1087#1077#1082#1090#1088' '#1040#1090') NS4'
        TabOrder = 0
        OnClick = ChkBoxAntiHCVSumNS4Click
      end
      object RdBtnAntiHCVSumNS4Yes: TRadioButton
        Left = 209
        Top = 4
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = #1086#1073#1085#1072#1088'.'
        TabOrder = 1
      end
      object RdBtnAntiHCVSumNS4No: TRadioButton
        Left = 269
        Top = 4
        Width = 73
        Height = 17
        Caption = #1085#1077' '#1086#1073#1085#1072#1088'.'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object DTPickAIDSDate: TDateTimePicker
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
      TabOrder = 17
    end
  end
  object BtnSave: TButton
    Left = 323
    Top = 512
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 404
    Top = 512
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object NiceSetFrmAIDS: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 264
    Top = 512
  end
  object AppEventsFrmAIDS: TApplicationEvents
    OnShortCut = AppEventsFrmAIDSShortCut
    Left = 232
    Top = 512
  end
end
