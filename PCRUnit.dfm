object FrmPCR: TFrmPCR
  Left = 329
  Top = 209
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmPCR'
  ClientHeight = 384
  ClientWidth = 707
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
    707
    384)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 690
    Height = 329
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1040#1085#1072#1083#1080#1079#1099' '#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056'   '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 71
      Height = 13
      Caption = #1044#1072#1090#1072' '#1072#1085#1072#1083#1080#1079#1072
    end
    object Bevel1: TBevel
      Left = 327
      Top = 90
      Width = 2
      Height = 218
    end
    object Label2: TLabel
      Left = 213
      Top = 71
      Width = 68
      Height = 13
      Caption = #1085#1072#1083#1080#1095#1080#1077' '#1044#1053#1050
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 593
      Top = 71
      Width = 68
      Height = 13
      Caption = #1085#1072#1083#1080#1095#1080#1077' '#1044#1053#1050
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTPickPCRDate: TDateTimePicker
      Left = 96
      Top = 24
      Width = 97
      Height = 21
      Date = 38218.771042199070000000
      Time = 38218.771042199070000000
      TabOrder = 0
    end
    object ChBoxGn: TCheckBox
      Left = 351
      Top = 94
      Width = 153
      Height = 17
      Caption = #1043#1086#1085#1086#1082#1086#1082#1082' (N.gonorrhoeae)'
      TabOrder = 15
      OnClick = ChBoxGnClick
    end
    object ChBoxTr: TCheckBox
      Left = 24
      Top = 287
      Width = 153
      Height = 17
      Caption = #1058#1088#1080#1093#1086#1084#1086#1085#1072#1076#1072' (Tr.vaginalis)'
      TabOrder = 13
      OnClick = ChBoxTrClick
    end
    object ChBoxChlam: TCheckBox
      Left = 24
      Top = 95
      Width = 161
      Height = 17
      Caption = #1061#1083#1072#1084#1080#1076#1080#1103' (Chl.trachomatis)'
      TabOrder = 1
      OnClick = ChBoxChlamClick
    end
    object ChBoxMhom: TCheckBox
      Left = 24
      Top = 127
      Width = 161
      Height = 17
      Caption = #1052#1080#1082#1086#1087#1083#1072#1079#1084#1072' (M.hominis)'
      TabOrder = 3
      OnClick = ChBoxMhomClick
    end
    object ChBoxMgen: TCheckBox
      Left = 24
      Top = 159
      Width = 161
      Height = 17
      Caption = #1052#1080#1082#1086#1087#1083#1072#1079#1084#1072' (M.genitalium)'
      TabOrder = 5
      OnClick = ChBoxMgenClick
    end
    object ChBoxUr: TCheckBox
      Left = 24
      Top = 191
      Width = 169
      Height = 17
      Caption = #1059#1088#1077#1072#1087#1083#1072#1079#1084#1072' (Ur.urealyticum)'
      TabOrder = 7
      OnClick = ChBoxUrClick
    end
    object ChBoxGard: TCheckBox
      Left = 24
      Top = 223
      Width = 169
      Height = 17
      Caption = #1043#1072#1088#1076#1085#1077#1088#1077#1083#1083#1072' (Gard.vaginalis)'
      TabOrder = 9
      OnClick = ChBoxGardClick
    end
    object ChBoxCMV: TCheckBox
      Left = 351
      Top = 127
      Width = 201
      Height = 17
      Caption = #1062#1080#1090#1086#1084#1077#1075#1072#1083#1086#1074#1080#1088#1091#1089' (Citomegalovirus)'
      TabOrder = 17
      OnClick = ChBoxCMVClick
    end
    object ChBoxVHS: TCheckBox
      Left = 351
      Top = 159
      Width = 193
      Height = 17
      Caption = #1042#1080#1088#1091#1089' '#1075#1077#1088#1087#1077#1089#1072' 1,2 '#1090#1080#1087' ('#1042#1055#1043')'
      TabOrder = 19
      OnClick = ChBoxVHSClick
    end
    object ChBoxPHV: TCheckBox
      Left = 351
      Top = 191
      Width = 193
      Height = 17
      Caption = #1042#1080#1088#1091#1089' '#1087#1072#1087#1080#1083#1083#1086#1084#1099' '#1095#1077#1083#1086#1074#1077#1082#1072' ('#1042#1055#1063')'
      TabOrder = 21
      OnClick = ChBoxPHVClick
    end
    object Panel1: TPanel
      Left = 201
      Top = 90
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 2
      object LblChlam: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesChlam: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoChlam: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel2: TPanel
      Left = 202
      Top = 122
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 4
      object LblMhom: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesMhom: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoMhom: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel3: TPanel
      Left = 202
      Top = 154
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 6
      object LblMgen: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesMgen: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoMgen: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel4: TPanel
      Left = 202
      Top = 186
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 8
      object LblUr: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesUr: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoUr: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel5: TPanel
      Left = 202
      Top = 218
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 10
      object LblGard: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnNoGard: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RdBtnYesGard: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 202
      Top = 283
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 14
      object LblTr: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesTr: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoTr: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel7: TPanel
      Left = 580
      Top = 90
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 16
      object LblGn: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesGn: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoGn: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel8: TPanel
      Left = 580
      Top = 121
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 18
      object LblCMV: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesCMV: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoCMV: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel9: TPanel
      Left = 580
      Top = 154
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 20
      object LblVHS: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesVHS: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoVHS: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel10: TPanel
      Left = 580
      Top = 186
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 22
      object LblPHV: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnYesPHV: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
      object RdBtnNoPHV: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel11: TPanel
      Left = 16
      Top = 56
      Width = 281
      Height = 2
      BevelOuter = bvLowered
      TabOrder = 27
    end
    object Panel12: TPanel
      Left = 202
      Top = 250
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 12
      object LblTub: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnNoTub: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RdBtnYesTub: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
    end
    object ChBoxTub: TCheckBox
      Left = 24
      Top = 255
      Width = 169
      Height = 17
      Caption = #1058#1091#1073#1077#1088#1082#1091#1083#1077#1079' (Mb.tuberculosis)'
      TabOrder = 11
      OnClick = ChBoxTubClick
    end
    object ChBoxCand: TCheckBox
      Left = 351
      Top = 255
      Width = 169
      Height = 17
      Caption = #1050#1072#1085#1076#1080#1076#1072' (Cand.albicans)'
      TabOrder = 25
      OnClick = ChBoxCandClick
    end
    object Panel13: TPanel
      Left = 580
      Top = 249
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 26
      object LblCand: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnNoCand: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RdBtnYesCand: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
    end
    object ChBoxPHVhigh: TCheckBox
      Left = 351
      Top = 217
      Width = 223
      Height = 34
      Caption = #1042#1055#1063' '#1089#1088#1077#1076'. '#1080' '#1074#1099#1089#1086#1082'. '#1086#1085#1082#1086#1075#1077#1085'. '#1076#1077#1081#1089#1090#1074#1080#1103
      TabOrder = 23
      WordWrap = True
      OnClick = ChBoxPHVhighClick
    end
    object Panel14: TPanel
      Left = 580
      Top = 218
      Width = 97
      Height = 25
      BevelOuter = bvNone
      TabOrder = 24
      object LblPHVhigh: TLabel
        Left = 41
        Top = 6
        Width = 5
        Height = 13
        Caption = '/'
      end
      object RdBtnNoPHVhigh: TRadioButton
        Left = 50
        Top = 4
        Width = 41
        Height = 17
        Caption = #1053#1077#1090
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RdBtnYesPHVhigh: TRadioButton
        Left = 1
        Top = 4
        Width = 38
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1072
        TabOrder = 0
      end
    end
  end
  object BtnSave: TButton
    Left = 541
    Top = 351
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 624
    Top = 351
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object NiceSetFrmPCR: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 248
    Top = 24
  end
  object AppEventsFrmPCR: TApplicationEvents
    OnShortCut = AppEventsFrmPCRShortCut
    Left = 208
    Top = 24
  end
end
