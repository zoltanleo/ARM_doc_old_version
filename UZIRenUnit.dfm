object FrmUZIRen: TFrmUZIRen
  Left = 230
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1087#1087#1072#1088#1072#1090#1085#1099#1077' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1080#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 562
  ClientWidth = 775
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
    775
    562)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSave: TButton
    Left = 611
    Top = 529
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = BtnSaveClick
    ExplicitTop = 552
  end
  object BtnCancel: TButton
    Left = 692
    Top = 529
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitTop = 552
  end
  object PgCtrlUZIRen: TPageControl
    Left = 8
    Top = 8
    Width = 761
    Height = 515
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnChange = PgCtrlUZIRenChange
    ExplicitHeight = 538
    object TabSheet1: TTabSheet
      Caption = #1059#1047#1048' '#1087#1086#1095#1077#1082
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 491
      object GroupBox5: TGroupBox
        Left = 8
        Top = 3
        Width = 734
        Height = 478
        TabOrder = 0
        object Label60: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object DTPickUZIRen: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 1
        end
        object ChBoxUZIRen: TCheckBox
          Left = 250
          Top = 20
          Width = 264
          Height = 17
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1048' '#1087#1086#1095#1077#1082' '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 0
          OnClick = ChBoxUZIRenClick
        end
        object GroupBox2: TGroupBox
          Left = 11
          Top = 53
          Width = 350
          Height = 409
          Caption = '   '#1055#1088#1072#1074#1072#1103' '#1087#1086#1095#1082#1072'   '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label1: TLabel
            Left = 86
            Top = 159
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 20
            Top = 185
            Width = 104
            Height = 13
            Alignment = taRightJustify
            Caption = #1090#1086#1083#1097#1080#1085#1072' '#1087#1072#1088#1077#1085#1093#1080#1084#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 20
            Top = 230
            Width = 104
            Height = 26
            Alignment = taRightJustify
            Caption = #1095#1072#1096#1077#1095#1085#1086'-'#13#10#1083#1086#1093#1072#1085#1086#1095#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 65
            Top = 350
            Width = 59
            Height = 13
            Caption = #1084#1086#1095#1077#1090#1086#1095#1085#1080#1082
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 172
            Top = 159
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
            Left = 220
            Top = 159
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
            Left = 174
            Top = 191
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label12: TLabel
            Left = 270
            Top = 159
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label28: TLabel
            Left = 70
            Top = 26
            Width = 56
            Height = 13
            Caption = #1087#1086#1083#1086#1078#1077#1085#1080#1077
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 54
            Top = 53
            Width = 72
            Height = 13
            Caption = #1089#1084#1077#1097#1072#1077#1084#1086#1089#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 83
            Top = 92
            Width = 42
            Height = 13
            Caption = #1082#1086#1085#1090#1091#1088#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EdtDextRen_01: TEdit
            Left = 134
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 4
            Text = 'EdtDextRen_01'
            OnKeyPress = EdtDextRen_01KeyPress
          end
          object EdtDextRen_02: TEdit
            Left = 182
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 5
            Text = 'EdtDextRen_02'
            OnKeyPress = EdtDextRen_02KeyPress
          end
          object EdtDextRen_03: TEdit
            Left = 230
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 6
            Text = 'EdtDextRen_03'
            OnKeyPress = EdtDextRen_03KeyPress
          end
          object EdtDextRen_04: TEdit
            Left = 134
            Top = 189
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 7
            Text = 'EdtDextRen_04'
            OnKeyPress = EdtDextRen_04KeyPress
          end
          object CbBoxDextPielosSize: TComboBox
            Left = 134
            Top = 227
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 8
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1088#1072#1089#1096#1080#1088#1077#1085#1072)
          end
          object CbBoxDextPielosDens: TComboBox
            Left = 134
            Top = 254
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 9
            Text = #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
            Items.Strings = (
              #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1091#1087#1083#1086#1090#1085#1077#1085#1072
              #1091#1087#1083#1086#1090#1085#1077#1085#1072)
          end
          object CbBoxDextPielosDeform: TComboBox
            Left = 134
            Top = 281
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 10
            Text = #1085#1077' '#1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072
            Items.Strings = (
              #1085#1077' '#1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072
              #1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072)
          end
          object CbBoxDextPielosLytos: TComboBox
            Left = 134
            Top = 308
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 11
            Text = #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
            Items.Strings = (
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077' '#1089#1090#1088#1091#1082#1090#1091#1088#1099
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1074'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1089'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1085'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1087#1088#1086#1089#1074#1077#1090#1077' '#1083#1086#1093#1072#1085#1082#1080)
          end
          object CbBoxDextUreterSize: TComboBox
            Left = 134
            Top = 347
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 12
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1074#1077#1088#1093#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1089#1088#1077#1076#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1085#1080#1078#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1085#1072' '#1074#1089#1077#1084' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080' ')
          end
          object CbBoxDextUreterLytos: TComboBox
            Left = 134
            Top = 374
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 13
            Text = #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
            Items.Strings = (
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1083#1086#1093'-'#1084#1086#1095'.'#1089#1077#1075#1084#1077#1085#1090#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1074#1077#1088#1093#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1089#1088#1077#1076#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1085#1080#1078#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1080#1085#1090#1088#1072#1084#1091#1088'. '#1086#1090#1076#1077#1083#1077)
          end
          object CbBoxDextRenPosit: TComboBox
            Left = 134
            Top = 23
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 0
            Text = #1086#1073#1099#1095#1085#1086#1077
            Items.Strings = (
              #1086#1073#1099#1095#1085#1086#1077
              #1085#1080#1078#1077' '#1086#1073#1099#1095#1085#1086#1075#1086
              #1074' '#1084#1077#1079#1086#1075#1072#1089#1090#1088#1080#1080
              #1091' '#1082#1088#1099#1083#1072' '#1087#1086#1076#1074#1079#1076#1086#1096#1085#1086#1081' '#1082#1086#1089#1090#1080
              #1085#1080#1078#1077' '#1082#1088#1099#1083#1072' '#1087#1086#1076#1074#1079#1076#1086#1096#1085#1086#1081' '#1082#1086#1089#1090#1080
              #1074' '#1084#1072#1083#1086#1084' '#1090#1072#1079#1091)
          end
          object CbBoxDextRenRmvbl: TComboBox
            Left = 134
            Top = 50
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 1
            Text = #1074' '#1092#1080#1079#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1087#1088#1077#1076#1077#1083#1072#1093
            Items.Strings = (
              #1074' '#1092#1080#1079#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1087#1088#1077#1076#1077#1083#1072#1093
              #1091#1074#1077#1083#1080#1095#1077#1085#1072)
          end
          object CbBoxDextRenPathPrec: TComboBox
            Left = 134
            Top = 90
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 2
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077
              #1088#1072#1079#1084#1099#1090#1099#1077)
          end
          object CbBoxDextRenPathEven: TComboBox
            Left = 134
            Top = 118
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 3
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077)
          end
        end
        object GroupBox3: TGroupBox
          Left = 373
          Top = 53
          Width = 350
          Height = 409
          Caption = '   '#1051#1077#1074#1072#1103' '#1087#1086#1095#1082#1072'   '
          TabOrder = 3
          object Label5: TLabel
            Left = 86
            Top = 159
            Width = 38
            Height = 13
            Caption = #1088#1072#1079#1084#1077#1088
          end
          object Label6: TLabel
            Left = 20
            Top = 185
            Width = 104
            Height = 13
            Alignment = taRightJustify
            Caption = #1090#1086#1083#1097#1080#1085#1072' '#1087#1072#1088#1077#1085#1093#1080#1084#1099
          end
          object Label7: TLabel
            Left = 20
            Top = 230
            Width = 104
            Height = 26
            Alignment = taRightJustify
            Caption = #1095#1072#1096#1077#1095#1085#1086'-'#13#10#1083#1086#1093#1072#1085#1086#1095#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
          end
          object Label8: TLabel
            Left = 65
            Top = 350
            Width = 59
            Height = 13
            Caption = #1084#1086#1095#1077#1090#1086#1095#1085#1080#1082
          end
          object Label14: TLabel
            Left = 172
            Top = 159
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
          object Label16: TLabel
            Left = 220
            Top = 159
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
          object Label17: TLabel
            Left = 270
            Top = 159
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label18: TLabel
            Left = 174
            Top = 191
            Width = 16
            Height = 13
            Caption = #1084#1084
          end
          object Label31: TLabel
            Left = 70
            Top = 26
            Width = 56
            Height = 13
            Caption = #1087#1086#1083#1086#1078#1077#1085#1080#1077
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 54
            Top = 53
            Width = 72
            Height = 13
            Caption = #1089#1084#1077#1097#1072#1077#1084#1086#1089#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 83
            Top = 92
            Width = 42
            Height = 13
            Caption = #1082#1086#1085#1090#1091#1088#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EdtSinRen_01: TEdit
            Left = 134
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 4
            Text = 'Edit1'
            OnKeyPress = EdtSinRen_01KeyPress
          end
          object EdtSinRen_02: TEdit
            Left = 182
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 5
            Text = 'Edit2'
            OnKeyPress = EdtSinRen_02KeyPress
          end
          object EdtSinRen_03: TEdit
            Left = 230
            Top = 157
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 6
            Text = 'Edit3'
            OnKeyPress = EdtSinRen_03KeyPress
          end
          object EdtSinRen_04: TEdit
            Left = 134
            Top = 189
            Width = 33
            Height = 21
            MaxLength = 5
            TabOrder = 7
            Text = 'Edit4'
            OnKeyPress = EdtSinRen_04KeyPress
          end
          object CbBoxSinPielosSize: TComboBox
            Left = 134
            Top = 227
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 8
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1085#1077#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1091#1084#1077#1088#1077#1085#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086' '#1088#1072#1089#1096#1080#1088#1077#1085#1072
              #1088#1072#1089#1096#1080#1088#1077#1085#1072)
          end
          object CbBoxSinPielosDens: TComboBox
            Left = 134
            Top = 254
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 9
            Text = #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
            Items.Strings = (
              #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1072#1103
              #1085#1077' '#1091#1087#1083#1086#1090#1085#1077#1085#1072
              #1091#1087#1083#1086#1090#1085#1077#1085#1072)
          end
          object CbBoxSinPielosDeform: TComboBox
            Left = 134
            Top = 281
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 10
            Text = #1085#1077' '#1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072
            Items.Strings = (
              #1085#1077' '#1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072
              #1076#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072)
          end
          object CbBoxSinPielosLytos: TComboBox
            Left = 134
            Top = 308
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 11
            Text = #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
            Items.Strings = (
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
              #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077' '#1089#1090#1088#1091#1082#1090#1091#1088#1099
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1074'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1089'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1085'/'#1095#1072#1096#1077#1095#1082#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1087#1088#1086#1089#1074#1077#1090#1077' '#1083#1086#1093#1072#1085#1082#1080)
          end
          object CbBoxSinUreterSize: TComboBox
            Left = 134
            Top = 347
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 12
            Text = #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085
            Items.Strings = (
              #1085#1077' '#1088#1072#1089#1096#1080#1088#1077#1085
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1074#1077#1088#1093#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1089#1088#1077#1076#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1074' '#1085#1080#1078#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1088#1072#1089#1096#1080#1088#1077#1085' '#1085#1072' '#1074#1089#1077#1084' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080' ')
          end
          object CbBoxSinUreterLytos: TComboBox
            Left = 134
            Top = 374
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 13
            Text = #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
            Items.Strings = (
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1086#1074' '#1085#1077#1090
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1083#1086#1093'-'#1084#1086#1095'.'#1089#1077#1075#1084#1077#1085#1090#1077
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1074#1077#1088#1093#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1089#1088#1077#1076#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1085#1080#1078#1085#1077#1081' '#1090#1088#1077#1090#1080
              #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090' '#1074' '#1080#1085#1090#1088#1072#1084#1091#1088'. '#1086#1090#1076#1077#1083#1077)
          end
          object CbBoxSinRenPosit: TComboBox
            Left = 134
            Top = 23
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 0
            Text = #1086#1073#1099#1095#1085#1086#1077
            Items.Strings = (
              #1086#1073#1099#1095#1085#1086#1077
              #1085#1080#1078#1077' '#1086#1073#1099#1095#1085#1086#1075#1086
              #1074' '#1084#1077#1079#1086#1075#1072#1089#1090#1088#1080#1080
              #1091' '#1082#1088#1099#1083#1072' '#1087#1086#1076#1074#1079#1076#1086#1096#1085#1086#1081' '#1082#1086#1089#1090#1080
              #1085#1080#1078#1077' '#1082#1088#1099#1083#1072' '#1087#1086#1076#1074#1079#1076#1086#1096#1085#1086#1081' '#1082#1086#1089#1090#1080
              #1074' '#1084#1072#1083#1086#1084' '#1090#1072#1079#1091)
          end
          object CbBoxSinRenRmvbl: TComboBox
            Left = 134
            Top = 50
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 1
            Text = #1074' '#1092#1080#1079#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1087#1088#1077#1076#1077#1083#1072#1093
            Items.Strings = (
              #1074' '#1092#1080#1079#1080#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1087#1088#1077#1076#1077#1083#1072#1093
              #1091#1074#1077#1083#1080#1095#1077#1085#1072)
          end
          object CbBoxSinRenPathPrec: TComboBox
            Left = 134
            Top = 90
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 2
            Text = #1095#1077#1090#1082#1080#1077
            Items.Strings = (
              #1095#1077#1090#1082#1080#1077
              #1085#1077#1095#1077#1090#1082#1080#1077
              #1088#1072#1079#1084#1099#1090#1099#1077)
          end
          object CbBoxSinRenPathEven: TComboBox
            Left = 134
            Top = 118
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 3
            Text = #1088#1086#1074#1085#1099#1077
            Items.Strings = (
              #1088#1086#1074#1085#1099#1077
              #1085#1077#1088#1086#1074#1085#1099#1077
              #1074#1086#1083#1085#1080#1089#1090#1099#1077)
          end
        end
        object Panel4: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 4
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1047#1048' '#1084#1086#1095#1077#1074#1086#1075#1086' '#1087#1091#1079#1099#1088#1103
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 491
      object GroupBox4: TGroupBox
        Left = 8
        Top = 3
        Width = 735
        Height = 478
        TabOrder = 0
        object Label13: TLabel
          Left = 8
          Top = 19
          Width = 104
          Height = 13
          Caption = #1044#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103':'
        end
        object Label15: TLabel
          Left = 330
          Top = 64
          Width = 38
          Height = 13
          Caption = #1088#1072#1079#1084#1077#1088
        end
        object Label19: TLabel
          Left = 564
          Top = 64
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = #1090#1086#1083#1097#1080#1085#1072' '#1089#1090#1077#1085#1082#1080
        end
        object Label20: TLabel
          Left = 514
          Top = 64
          Width = 16
          Height = 13
          Caption = #1084#1084
        end
        object Label21: TLabel
          Left = 464
          Top = 64
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
        object Label22: TLabel
          Left = 416
          Top = 64
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
        object Label23: TLabel
          Left = 696
          Top = 64
          Width = 16
          Height = 13
          Caption = #1084#1084
        end
        object Label24: TLabel
          Left = 332
          Top = 134
          Width = 64
          Height = 13
          Caption = #1089#1086#1076#1077#1088#1078#1080#1084#1086#1077
        end
        object Label25: TLabel
          Left = 330
          Top = 93
          Width = 89
          Height = 13
          Caption = #1086#1073#1098#1077#1084' '#1076#1086' '#1084#1080#1082#1094#1080#1080
        end
        object Label26: TLabel
          Left = 470
          Top = 93
          Width = 14
          Height = 13
          Caption = #1084#1083
        end
        object Label27: TLabel
          Left = 327
          Top = 164
          Width = 69
          Height = 13
          Caption = #1082#1086#1085#1082#1088#1077#1084#1077#1085#1090#1099
        end
        object Label34: TLabel
          Left = 19
          Top = 66
          Width = 42
          Height = 13
          Caption = #1082#1086#1085#1090#1091#1088#1099
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 24
          Top = 134
          Width = 35
          Height = 13
          Caption = #1089#1090#1077#1085#1082#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 509
          Top = 93
          Width = 107
          Height = 13
          Caption = #1086#1073#1098#1077#1084' '#1087#1086#1089#1083#1077' '#1084#1080#1082#1094#1080#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 665
          Top = 93
          Width = 14
          Height = 13
          Caption = #1084#1083
        end
        object Panel1: TPanel
          Left = 16
          Top = 45
          Width = 210
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 15
        end
        object DTPickUZIVesicUr: TDateTimePicker
          Left = 129
          Top = 16
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 1
        end
        object EdtVesicUr_01: TEdit
          Left = 378
          Top = 62
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 6
          Text = 'Edit1'
          OnKeyPress = EdtVesicUr_01KeyPress
        end
        object EdtVesicUr_02: TEdit
          Left = 426
          Top = 62
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 7
          Text = 'Edit2'
          OnKeyPress = EdtVesicUr_02KeyPress
        end
        object EdtVesicUr_03: TEdit
          Left = 474
          Top = 62
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 8
          Text = 'Edit3'
          OnKeyPress = EdtVesicUr_03KeyPress
        end
        object EdtVesicUr_04: TEdit
          Left = 656
          Top = 62
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 9
          Text = 'Edit4'
          OnKeyPress = EdtVesicUr_04KeyPress
        end
        object EdtVesicUr_05: TEdit
          Left = 430
          Top = 91
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 10
          Text = 'EdtVesicUr_05'
          OnKeyPress = EdtVesicUr_05KeyPress
        end
        object Panel2: TPanel
          Left = 304
          Top = 63
          Width = 2
          Height = 119
          BevelOuter = bvLowered
          Caption = ' '
          TabOrder = 14
        end
        object CbBoxVesicUrContents: TComboBox
          Left = 406
          Top = 131
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 12
          Text = #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
          Items.Strings = (
            #1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
            #1085#1077#1075#1086#1084#1086#1075#1077#1085#1085#1086#1077
            #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1072#1103' '#1074#1079#1074#1077#1089#1100
            #1093#1083#1086#1087#1100#1103)
        end
        object CbBoxVesicUrLytos: TComboBox
          Left = 406
          Top = 160
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 13
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
            #1080#1084#1077#1102#1090#1089#1103
            #1086#1089#1072#1076#1086#1082)
        end
        object ChBoxVesicUr: TCheckBox
          Left = 250
          Top = 20
          Width = 323
          Height = 17
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1059#1047#1048' '#1084#1086#1095#1077#1074#1086#1075#1086' '#1087#1091#1079#1099#1088#1103' '#1074' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
          TabOrder = 0
          OnClick = ChBoxVesicUrClick
        end
        object CbBoxVesicUrPathPrec: TComboBox
          Left = 70
          Top = 63
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 2
          Text = #1095#1077#1090#1082#1080#1077
          Items.Strings = (
            #1095#1077#1090#1082#1080#1077
            #1085#1077#1095#1077#1090#1082#1080#1077
            #1088#1072#1079#1084#1099#1090#1099#1077
            #1076#1074#1091#1093#1089#1083#1086#1081#1085#1099#1077)
        end
        object CbBoxVesicUrPathEven: TComboBox
          Left = 70
          Top = 91
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 3
          Text = #1088#1086#1074#1085#1099#1077
          Items.Strings = (
            #1088#1086#1074#1085#1099#1077
            #1085#1077#1088#1086#1074#1085#1099#1077
            #1074#1086#1083#1085#1080#1089#1090#1099#1077)
        end
        object CbBoxVesicUrWallDensity: TComboBox
          Left = 70
          Top = 131
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 2
          TabOrder = 4
          Text = #1091#1084#1077#1088#1077#1085#1085#1086' '#1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077
          Items.Strings = (
            #1080#1079#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077
            #1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077
            #1091#1084#1077#1088#1077#1085#1085#1086' '#1075#1080#1087#1077#1088#1101#1093#1086#1075#1077#1085#1085#1099#1077
            #1091#1087#1083#1086#1090#1085#1077#1085#1099
            #1075#1080#1087#1086#1101#1093#1086#1075#1077#1085#1085#1099#1077)
        end
        object CbBoxVesicUrWallThickn: TComboBox
          Left = 70
          Top = 160
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          ItemIndex = 0
          TabOrder = 5
          Text = #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1091#1090#1086#1083#1097#1077#1085#1099
            #1095#1091#1090#1100' '#1091#1090#1086#1083#1097#1077#1085#1099
            #1091#1090#1086#1083#1097#1077#1085#1099
            #1080#1089#1090#1086#1085#1095#1077#1085#1099)
        end
        object EdtVesicUr_06: TEdit
          Left = 625
          Top = 91
          Width = 33
          Height = 21
          MaxLength = 5
          TabOrder = 11
          Text = 'EdtVesicUr_05'
          OnKeyPress = EdtVesicUr_05KeyPress
        end
      end
    end
  end
  object BtnPrev: TButton
    Left = 429
    Top = 529
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1085#1072#1079#1072#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnPrevClick
    ExplicitTop = 552
  end
  object BtnNext: TButton
    Left = 510
    Top = 529
    Width = 75
    Height = 25
    Hint = #1051#1080#1089#1090#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1086#1082' '#1074#1087#1077#1088#1077#1076' (<Shift> + <Ctrl> + '#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086')'
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnNextClick
    ExplicitTop = 552
  end
  object NiceSetFrmUZIRen: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 298
    Top = 4
  end
  object AppEventsFrmUZIRen: TApplicationEvents
    OnShortCut = AppEventsFrmUZIRenShortCut
    Left = 328
    Top = 5
  end
end
