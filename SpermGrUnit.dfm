object FrmSpermGr: TFrmSpermGr
  Left = 234
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmSpermGr'
  ClientHeight = 487
  ClientWidth = 766
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
    766
    487)
  PixelsPerInch = 96
  TextHeight = 13
  object PgCtrlSperm: TPageControl
    Left = 5
    Top = 8
    Width = 758
    Height = 441
    ActivePage = TabSheet2
    TabOrder = 0
    OnChange = PgCtrlSpermChange
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1077#1088#1084#1086#1075#1088#1072#1084#1084#1072
      object Label33: TLabel
        Left = 16
        Top = 16
        Width = 104
        Height = 13
        Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 51
        Width = 361
        Height = 161
        Caption = '   '#1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1089#1074#1086#1081#1089#1090#1074#1072'   '
        TabOrder = 2
        object Label1: TLabel
          Left = 94
          Top = 40
          Width = 84
          Height = 13
          Caption = #1054#1073#1098#1077#1084' '#1101#1103#1082#1091#1083#1103#1090#1072
        end
        object Label2: TLabel
          Left = 153
          Top = 64
          Width = 25
          Height = 13
          Caption = #1062#1074#1077#1090
        end
        object Label3: TLabel
          Left = 165
          Top = 88
          Width = 14
          Height = 13
          Caption = 'pH'
        end
        object Label4: TLabel
          Left = 130
          Top = 112
          Width = 48
          Height = 13
          Caption = #1042#1103#1079#1082#1086#1089#1090#1100
        end
        object Label5: TLabel
          Left = 113
          Top = 136
          Width = 65
          Height = 13
          Caption = #1056#1072#1079#1078#1080#1078#1077#1085#1080#1077
        end
        object Label6: TLabel
          Left = 302
          Top = 16
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
        object Label7: TLabel
          Left = 288
          Top = 36
          Width = 32
          Height = 13
          Caption = '2-6 '#1084#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 288
          Top = 60
          Width = 58
          Height = 13
          Caption = #1084#1086#1083#1086#1095'.-'#1073#1077#1083'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 288
          Top = 84
          Width = 42
          Height = 13
          Caption = '7,2 - 7,8 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 288
          Top = 108
          Width = 34
          Height = 13
          Caption = '4-7 '#1084#1084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 288
          Top = 132
          Width = 50
          Height = 13
          Caption = #1076#1086' 60 '#1084#1080#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 280
          Top = 32
          Width = 2
          Height = 121
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtSpermVolume: TEdit
          Left = 186
          Top = 33
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 1
          Text = 'EdtSpermVolume'
          OnKeyPress = EdtSpermVolumeKeyPress
        end
        object EdtSpermColor: TEdit
          Left = 186
          Top = 57
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 2
          Text = 'EdtSpermColor'
          OnKeyPress = EdtSpermColorKeyPress
        end
        object EdtSperm_pH: TEdit
          Left = 186
          Top = 81
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 3
          Text = 'EdtSperm_pH'
          OnKeyPress = EdtSperm_pHKeyPress
        end
        object EdtSpermViscosity: TEdit
          Left = 186
          Top = 105
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 4
          Text = 'EdtSpermViscosity'
          OnKeyPress = EdtSpermViscosityKeyPress
        end
        object EdtSpermFluid: TEdit
          Left = 186
          Top = 129
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 5
          Text = 'EdtSpermFluid'
          OnKeyPress = EdtSpermFluidKeyPress
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 219
        Width = 361
        Height = 185
        Caption = '   '#1052#1080#1082#1088#1086#1089#1082#1086#1087#1080#1103'   '
        TabOrder = 3
        object Label12: TLabel
          Left = 44
          Top = 40
          Width = 134
          Height = 13
          Caption = #1050#1086#1085#1094#1077#1085#1090#1088#1072#1094#1080#1103' '#1083#1077#1081#1082#1086#1094#1080#1090#1086#1074
        end
        object Label13: TLabel
          Left = 117
          Top = 64
          Width = 61
          Height = 13
          Caption = #1069#1088#1080#1090#1088#1086#1094#1080#1090#1099
        end
        object Label14: TLabel
          Left = 82
          Top = 88
          Width = 96
          Height = 13
          Caption = #1051#1080#1087#1086#1080#1076#1085#1099#1077' '#1090#1077#1083#1100#1094#1072
        end
        object Label15: TLabel
          Left = 18
          Top = 112
          Width = 160
          Height = 13
          Caption = #1040#1075#1075#1083#1102#1090#1080#1085#1072#1094#1080#1103' '#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1086#1074
        end
        object Label16: TLabel
          Left = 37
          Top = 136
          Width = 141
          Height = 13
          Caption = #1040#1075#1088#1077#1075#1072#1094#1080#1103' '#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1086#1074
        end
        object Label17: TLabel
          Left = 130
          Top = 160
          Width = 48
          Height = 13
          Caption = #1069#1087#1080#1090#1077#1083#1080#1081
        end
        object Label18: TLabel
          Left = 302
          Top = 16
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
        object Label19: TLabel
          Left = 288
          Top = 36
          Width = 57
          Height = 13
          Caption = '< 1 '#1084#1083#1085'/'#1084#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 288
          Top = 60
          Width = 62
          Height = 13
          Caption = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 288
          Top = 84
          Width = 43
          Height = 13
          Caption = #1085#1077#1084#1085#1086#1075#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 288
          Top = 108
          Width = 60
          Height = 13
          Caption = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 288
          Top = 132
          Width = 60
          Height = 13
          Caption = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 280
          Top = 32
          Width = 2
          Height = 145
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtSpermLeu: TEdit
          Left = 186
          Top = 33
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 1
          Text = 'EdtSpermLeu'
          OnKeyPress = EdtSpermLeuKeyPress
        end
        object EdtSpermEr: TEdit
          Left = 186
          Top = 57
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 2
          Text = 'EdtSpermEr'
          OnKeyPress = EdtSpermErKeyPress
        end
        object EdtSpermLipoidSoma: TEdit
          Left = 186
          Top = 81
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 3
          Text = 'EdtSpermLipoidSoma'
          OnKeyPress = EdtSpermLipoidSomaKeyPress
        end
        object EdtSpermAgglut: TEdit
          Left = 186
          Top = 105
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 4
          Text = 'EdtSpermAgglut'
          OnKeyPress = EdtSpermAgglutKeyPress
        end
        object EdtSpermAggreg: TEdit
          Left = 186
          Top = 129
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 5
          Text = 'EdtSpermAggreg'
          OnKeyPress = EdtSpermAggregKeyPress
        end
        object EdtSpermEpitel: TEdit
          Left = 186
          Top = 153
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 6
          Text = 'EdtSpermEpitel'
          OnKeyPress = EdtSpermEpitelKeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 381
        Top = 51
        Width = 361
        Height = 353
        Caption = '   '#1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080'   '
        TabOrder = 4
        object Label24: TLabel
          Left = 74
          Top = 40
          Width = 104
          Height = 13
          Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1076#1077#1088#1078#1072#1085#1080#1103
        end
        object Label25: TLabel
          Left = 18
          Top = 64
          Width = 75
          Height = 13
          Caption = #1050#1086#1085#1094#1077#1085#1090#1088#1072#1094#1080#1103':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 93
          Top = 85
          Width = 85
          Height = 26
          Alignment = taRightJustify
          Caption = #1082#1086#1085#1094#1077#1085#1090#1088#1072#1094#1080#1103#13#10#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1086#1074
        end
        object Label27: TLabel
          Left = 72
          Top = 127
          Width = 106
          Height = 13
          Caption = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1087#1086#1088#1094#1080#1080
        end
        object Label28: TLabel
          Left = 18
          Top = 152
          Width = 160
          Height = 13
          Caption = #1055#1086#1076#1074#1080#1078#1085#1086#1089#1090#1100' '#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1086#1074':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 72
          Top = 176
          Width = 106
          Height = 26
          Alignment = taRightJustify
          Caption = 'a) '#1089' '#1087#1086#1089#1090#1091#1087#1072#1090#1077#1083#1100#1085#1099#1084#13#10#1076#1074#1080#1078#1077#1085#1080#1077#1084
        end
        object Label30: TLabel
          Left = 43
          Top = 207
          Width = 135
          Height = 26
          Alignment = taRightJustify
          Caption = 'b) '#1089' '#1084#1077#1076#1083'.'#1087#1086#1089#1090#1091#1087#1072#1090#1077#1083#1100#1085#1099#1084#13#10#1076#1074#1080#1078#1077#1085#1080#1077#1084
        end
        object Label31: TLabel
          Left = 62
          Top = 240
          Width = 118
          Height = 26
          Alignment = taRightJustify
          Caption = 'c) '#1089' '#1085#1077#1087#1086#1089#1090#1091#1087#1072#1090#1077#1083#1100#1085#1099#1084#13#10#1076#1074#1080#1078#1077#1085#1080#1077#1084
        end
        object Label32: TLabel
          Left = 96
          Top = 269
          Width = 82
          Height = 26
          Alignment = taRightJustify
          Caption = 'd) '#1085#1077#1087#1086#1076#1074#1080#1078#1085#1099#1077#13#10#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1099
        end
        object Label42: TLabel
          Left = 288
          Top = 36
          Width = 36
          Height = 13
          Caption = '3-4 '#1076#1085#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 288
          Top = 92
          Width = 63
          Height = 13
          Caption = '> 15 '#1084#1083#1085'/'#1084#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 288
          Top = 123
          Width = 44
          Height = 13
          Caption = '> 39 '#1084#1083#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 288
          Top = 181
          Width = 50
          Height = 13
          Caption = 'a+b > 32%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 288
          Top = 212
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 288
          Top = 243
          Width = 62
          Height = 13
          Caption = 'a+b+c > 40%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 288
          Top = 274
          Width = 29
          Height = 13
          Caption = '< 60%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 302
          Top = 16
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
        object Label35: TLabel
          Left = 27
          Top = 317
          Width = 65
          Height = 13
          Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 280
          Top = 32
          Width = 2
          Height = 265
          BevelOuter = bvLowered
          TabOrder = 0
          Visible = False
        end
        object EdtSpermAbstinence: TEdit
          Left = 186
          Top = 32
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 1
          Text = 'EdtSpermAbstinence'
          OnKeyPress = EdtSpermAbstinenceKeyPress
        end
        object EdtSpermConcentr: TEdit
          Left = 186
          Top = 88
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 2
          Text = 'EdtSpermConcentr'
          OnKeyPress = EdtSpermConcentrKeyPress
        end
        object EdtSpermTotal: TEdit
          Left = 186
          Top = 119
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 3
          Text = 'EdtSpermTotal'
          OnKeyPress = EdtSpermTotalKeyPress
        end
        object EdtSpermFastForwMove: TEdit
          Left = 186
          Top = 180
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 4
          Text = 'EdtSpermFastForwMove'
          OnKeyPress = EdtSpermFastForwMoveKeyPress
        end
        object EdtSpermSlowForwMove: TEdit
          Left = 186
          Top = 211
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 5
          Text = 'EdtSpermSlowForwMove'
          OnKeyPress = EdtSpermSlowForwMoveKeyPress
        end
        object EdtSpermRollMove: TEdit
          Left = 186
          Top = 242
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 6
          Text = 'EdtSpermRollMove'
          OnKeyPress = EdtSpermRollMoveKeyPress
        end
        object EdtSpermStaticMove: TEdit
          Left = 186
          Top = 273
          Width = 89
          Height = 21
          MaxLength = 20
          TabOrder = 7
          Text = 'EdtSpermStaticMove'
          OnKeyPress = EdtSpermStaticMoveKeyPress
        end
        object CbBoxSpermGrResult: TComboBox
          Left = 104
          Top = 312
          Width = 249
          Height = 21
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = #1085#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1101#1103#1082#1091#1083#1103#1090' ('#1085#1086#1088#1084#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103')'
          Items.Strings = (
            #1085#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1101#1103#1082#1091#1083#1103#1090' ('#1085#1086#1088#1084#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103')'
            #1072#1089#1090#1077#1085#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1086#1083#1080#1075#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1072#1089#1090#1077#1085#1086#1086#1083#1080#1075#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1090#1077#1088#1072#1090#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1082#1088#1080#1087#1090#1086#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1072#1079#1086#1086#1089#1087#1077#1088#1084#1080#1103
            #1072#1089#1087#1077#1088#1084#1080#1103
            #1083#1077#1081#1082#1086#1089#1087#1077#1088#1084#1080#1103
            #1075#1077#1084#1086#1089#1087#1077#1088#1084#1080#1103
            #1086#1083#1080#1075#1086#1089#1087#1077#1088#1084#1080#1103)
        end
      end
      object DTPickSpermGr: TDateTimePicker
        Left = 129
        Top = 11
        Width = 97
        Height = 21
        Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
        Date = 38218.825923564810000000
        Time = 38218.825923564810000000
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 16
        Top = 40
        Width = 210
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object BtnSpermFotos: TButton
        Left = 659
        Top = 3
        Width = 75
        Height = 25
        Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' '#1089#1087#1077#1088#1084#1086#1075#1088#1072#1084#1084#1099' (<Ctrl> + S)'
        Caption = #1057#1085#1080#1084#1086#1082
        TabOrder = 5
        OnClick = BtnSpermFotosClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1088#1091#1075#1080#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1101#1103#1082#1091#1083#1103#1090#1072
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 3
        Width = 361
        Height = 401
        Caption = '   '#1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1084#1086#1088#1092#1086#1083#1086#1075#1080#1080' '#1089#1087#1077#1088#1084#1080#1077#1074' ('#1090#1077#1089#1090' '#1050#1088#1102#1075#1077#1088#1072')   '
        TabOrder = 2
        object Label37: TLabel
          Left = 57
          Top = 95
          Width = 98
          Height = 13
          Caption = #1055#1072#1090#1086#1083#1086#1075#1080#1103' '#1075#1086#1083#1086#1074#1082#1080
        end
        object Label38: TLabel
          Left = 50
          Top = 71
          Width = 105
          Height = 13
          Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1099#1077' '#1092#1086#1088#1084#1099
        end
        object Label39: TLabel
          Left = 65
          Top = 188
          Width = 89
          Height = 13
          Caption = #1055#1072#1090#1086#1083#1086#1075#1080#1103' '#1096#1077#1081#1082#1080
        end
        object Label40: TLabel
          Left = 120
          Top = 209
          Width = 40
          Height = 13
          Caption = '- '#1075#1088#1091#1073#1072#1103
        end
        object Label41: TLabel
          Left = 119
          Top = 233
          Width = 41
          Height = 13
          Caption = '- '#1083#1077#1075#1082#1072#1103
        end
        object Label49: TLabel
          Left = 64
          Top = 261
          Width = 91
          Height = 13
          Caption = #1055#1072#1090#1086#1083#1086#1075#1080#1103' '#1093#1074#1086#1089#1090#1072
        end
        object Label50: TLabel
          Left = 32
          Top = 285
          Width = 123
          Height = 13
          Caption = #1050#1083#1077#1090#1082#1080' '#1089#1087#1077#1088#1084#1072#1090#1086#1075#1077#1085#1077#1079#1072
        end
        object Label51: TLabel
          Left = 87
          Top = 309
          Width = 68
          Height = 13
          Caption = #1070#1085#1099#1077' '#1092#1086#1088#1084#1099
        end
        object Label52: TLabel
          Left = 120
          Top = 116
          Width = 40
          Height = 13
          Caption = '- '#1075#1088#1091#1073#1072#1103
        end
        object Label53: TLabel
          Left = 119
          Top = 140
          Width = 41
          Height = 13
          Caption = '- '#1083#1077#1075#1082#1072#1103
        end
        object Label54: TLabel
          Left = 75
          Top = 164
          Width = 85
          Height = 13
          Caption = '- '#1089#1087#1077#1094#1080#1092#1080#1095#1077#1089#1082#1072#1103
        end
        object Label55: TLabel
          Left = 23
          Top = 333
          Width = 132
          Height = 13
          Caption = #1052#1086#1088#1092#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1080#1085#1076#1077#1082#1089
        end
        object Label56: TLabel
          Left = 9
          Top = 377
          Width = 85
          Height = 13
          Caption = #1054#1089#1086#1073#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
        end
        object Label57: TLabel
          Left = 252
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
        object Label58: TLabel
          Left = 232
          Top = 71
          Width = 29
          Height = 13
          Caption = '=> 4%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 232
          Top = 333
          Width = 29
          Height = 13
          Caption = '> 14%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 8
          Top = 30
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object EdtKrugNotice: TEdit
          Left = 99
          Top = 369
          Width = 246
          Height = 21
          MaxLength = 254
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = 'EdtKrugNotice'
        end
        object Panel5: TPanel
          Left = 224
          Top = 63
          Width = 2
          Height = 289
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtKrugNorma: TEdit
          Left = 168
          Top = 65
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 1
          Text = 'EdtKrugNorma'
          OnKeyPress = EdtKrugNormaKeyPress
        end
        object EdtKrugCapCoarse: TEdit
          Left = 168
          Top = 109
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'EdtKrugCapCoarse'
          OnKeyPress = EdtKrugCapCoarseKeyPress
        end
        object EdtKrugCapSlight: TEdit
          Left = 168
          Top = 133
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtKrugCapSlight'
          OnKeyPress = EdtKrugCapSlightKeyPress
        end
        object EdtKrugCollumCoarse: TEdit
          Left = 168
          Top = 202
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 5
          Text = 'EdtKrugCollumCoarse'
          OnKeyPress = EdtKrugCollumCoarseKeyPress
        end
        object EdtKrugCollumSlight: TEdit
          Left = 168
          Top = 226
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 6
          Text = 'EdtKrugCollumSlight'
          OnKeyPress = EdtKrugCollumSlightKeyPress
        end
        object EdtKrugBrush: TEdit
          Left = 168
          Top = 255
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 7
          Text = 'EdtKrugBrush'
          OnKeyPress = EdtKrugBrushKeyPress
        end
        object EdtKrugSpermCell: TEdit
          Left = 168
          Top = 279
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 8
          Text = 'EdtKrugSpermCell'
          OnKeyPress = EdtKrugSpermCellKeyPress
        end
        object EdtKrugYoungCell: TEdit
          Left = 168
          Top = 303
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 9
          Text = 'EdtKrugYoungCell'
          OnKeyPress = EdtKrugYoungCellKeyPress
        end
        object EdtKrugMorphIndex: TEdit
          Left = 168
          Top = 327
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 10
          Text = 'EdtKrugMorphIndex'
          OnKeyPress = EdtKrugMorphIndexKeyPress
        end
        object EdtKrugCapSpecif: TEdit
          Left = 168
          Top = 157
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtKrugCapSpecif'
          OnKeyPress = EdtKrugCapSpecifKeyPress
        end
        object BtnKrugFotos: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' '#1084#1086#1088#1092#1086#1083#1086#1075#1080#1080' '#1087#1086' '#1050#1088#1102#1075#1077#1088#1091' (<Ctrl> + K)'
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 12
          OnClick = BtnKrugFotosClick
        end
      end
      object DTPickKrug: TDateTimePicker
        Left = 136
        Top = 27
        Width = 97
        Height = 21
        Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
        Date = 38218.825923564810000000
        Time = 38218.825923564810000000
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 16
        Top = 56
        Width = 210
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 0
      end
      object GroupBox5: TGroupBox
        Left = 381
        Top = 3
        Width = 361
        Height = 134
        Caption = '   '#1041#1080#1086#1093#1080#1084#1080#1095#1077#1089#1082#1086#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1101#1103#1082#1091#1083#1103#1090#1072'   '
        TabOrder = 3
        object Label61: TLabel
          Left = 8
          Top = 30
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label62: TLabel
          Left = 107
          Top = 75
          Width = 51
          Height = 13
          Caption = #1060#1088#1091#1082#1090#1086#1079#1072
        end
        object Label63: TLabel
          Left = 58
          Top = 104
          Width = 101
          Height = 13
          Caption = #1040#1083#1100#1092#1072'-'#1075#1083#1080#1082#1086#1079#1080#1076#1072#1079#1072
        end
        object Label64: TLabel
          Left = 252
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
        object Label65: TLabel
          Left = 232
          Top = 64
          Width = 109
          Height = 26
          Caption = #1085#1077' '#1084#1077#1085#1077#1077' 13 '#1084#1082#1084#1086#1083#1100','#13#10#1074#1077#1089#1100' '#1086#1073#1098#1077#1084' '#1101#1103#1082#1091#1083#1103#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 232
          Top = 94
          Width = 73
          Height = 26
          Caption = '20 '#1052#1045' '#1080' '#1073#1086#1083#1077#1077#13#10#1074' '#1101#1103#1082#1091#1083#1103#1090#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickSpermBiochemic: TDateTimePicker
          Left = 129
          Top = 27
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 2
        end
        object Panel6: TPanel
          Left = 16
          Top = 56
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtSpermBiochemicFruct: TEdit
          Left = 168
          Top = 68
          Width = 49
          Height = 21
          MaxLength = 20
          TabOrder = 3
          Text = 'EdtSpermBiochemicFruct'
          OnKeyPress = EdtSpermBiochemicFructKeyPress
        end
        object EdtSpermBiochemicGlyc: TEdit
          Left = 168
          Top = 97
          Width = 49
          Height = 21
          MaxLength = 20
          TabOrder = 4
          Text = 'EdtSpermBiochemicGlyc'
          OnKeyPress = EdtSpermBiochemicGlycKeyPress
        end
        object Panel7: TPanel
          Left = 224
          Top = 64
          Width = 2
          Height = 49
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnBiochemFotos: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' '#1073#1080#1086#1093#1080#1084#1080#1080' '#1101#1103#1082#1091#1083#1103#1090#1072' (<Ctrl> + B)'
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 5
          OnClick = BtnBiochemFotosClick
        end
      end
      object GroupBox6: TGroupBox
        Left = 381
        Top = 144
        Width = 361
        Height = 113
        Caption = '   '#1055#1088#1103#1084#1086#1081' MAR-'#1090#1077#1089#1090' Ig G   '
        TabOrder = 4
        object Label67: TLabel
          Left = 8
          Top = 30
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label68: TLabel
          Left = 51
          Top = 62
          Width = 108
          Height = 26
          Alignment = taRightJustify
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1089#1074#1103#1079#1099#1074#1072#1085#1080#1103#13#10#1089#1087#1077#1088#1084#1080#1077#1074
        end
        object Label69: TLabel
          Left = 232
          Top = 61
          Width = 124
          Height = 39
          Caption = '< 10% - '#1085#1086#1088#1084#1072#13#10'11%-39% - '#1089#1077#1088#1072#1103' '#1079#1086#1085#1072#13#10'> 40% - '#1087#1086#1083#1086#1078'.'#1088#1077#1079#1091#1083#1100#1090#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 252
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
        object DTPickMAR: TDateTimePicker
          Left = 129
          Top = 27
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 2
        end
        object Panel8: TPanel
          Left = 16
          Top = 56
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtMAR: TEdit
          Left = 168
          Top = 65
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtMAR'
          OnKeyPress = EdtMARKeyPress
        end
        object Panel9: TPanel
          Left = 224
          Top = 64
          Width = 2
          Height = 41
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnMARFotos: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' MAR-'#1090#1077#1089#1090#1072' (<Ctrl> + M)'
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 4
          OnClick = BtnMARFotosClick
        end
      end
      object GroupBox7: TGroupBox
        Left = 381
        Top = 264
        Width = 361
        Height = 140
        Caption = '   '#1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1078#1080#1079#1085#1077#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1089#1087#1077#1088#1084#1072#1090#1086#1079#1086#1080#1076#1086#1074'   '
        TabOrder = 5
        object Label71: TLabel
          Left = 8
          Top = 30
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label72: TLabel
          Left = 51
          Top = 61
          Width = 111
          Height = 26
          Alignment = taRightJustify
          Caption = #1058#1077#1089#1090' '#1089#1091#1087#1088#1072#1074#1080#1090'.'#1086#1082#1088#1072#1096'.'#13#10'('#1101#1086#1079#1080#1085' - '#1085#1080#1075#1088#1086#1079#1080#1085') '
        end
        object Label73: TLabel
          Left = 25
          Top = 91
          Width = 134
          Height = 26
          Alignment = taRightJustify
          Caption = #1043#1080#1087#1086#1086#1089#1084#1086#1090#1080#1095#1077#1089#1082#1080#1081' '#1089#1090#1088#1077#1089#1089#13#10#1089#1087#1077#1088#1084#1080#1077#1074' (HOS-'#1090#1077#1089#1090')'
        end
        object Label74: TLabel
          Left = 232
          Top = 69
          Width = 29
          Height = 13
          Caption = '> 75%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TLabel
          Left = 252
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
        object Label76: TLabel
          Left = 232
          Top = 96
          Width = 29
          Height = 13
          Caption = '> 60%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTPickSpermVital: TDateTimePicker
          Left = 129
          Top = 27
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 2
        end
        object Panel10: TPanel
          Left = 16
          Top = 56
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object EdtSpermVitalTest: TEdit
          Left = 168
          Top = 65
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 3
          Text = 'EdtVitalTest'
          OnKeyPress = EdtSpermVitalTestKeyPress
        end
        object EdtSpermVitalHOS: TEdit
          Left = 168
          Top = 94
          Width = 49
          Height = 21
          MaxLength = 10
          TabOrder = 4
          Text = 'EdtVitalHOS'
          OnKeyPress = EdtSpermVitalHOSKeyPress
        end
        object Panel12: TPanel
          Left = 224
          Top = 64
          Width = 2
          Height = 49
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnSpermvitaFotos: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Hint = #1057#1085#1080#1084#1086#1082' '#1073#1083#1072#1085#1082#1072' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' '#1078#1080#1079#1085#1077#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1089#1087#1077#1088#1084#1080#1077#1074' (<Ctrl> + N)'
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 5
          OnClick = BtnSpermvitaFotosClick
        end
      end
    end
  end
  object BtnPrev: TButton
    Left = 415
    Top = 454
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1085#1072#1079#1072#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnPrevClick
  end
  object BtnNext: TButton
    Left = 496
    Top = 454
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1074#1087#1077#1088#1077#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnNextClick
  end
  object BtnSave: TButton
    Left = 603
    Top = 454
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
    Left = 684
    Top = 454
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
  object OpenPictDialog: TOpenPictureDialog
    Filter = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1077' '#1092#1072#1081#1083#1099' (*.jpg;*.jpeg)|*.jpg;*.jpeg'
    Title = #1054#1090#1082#1088#1099#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    Left = 328
    Top = 8
  end
  object NiceSetFrmSpermGr: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 360
    Top = 8
  end
  object AppEventsFrmSpermGr: TApplicationEvents
    OnShortCut = AppEventsFrmSpermGrShortCut
    Left = 392
    Top = 8
  end
end
