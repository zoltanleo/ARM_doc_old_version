object FrmMazUrethra: TFrmMazUrethra
  Left = 240
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmMazUrethra'
  ClientHeight = 443
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBtnBar: TPanel
    Left = 0
    Top = 407
    Width = 939
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 424
    DesignSize = (
      939
      36)
    object BtnSave: TButton
      Left = 775
      Top = 3
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BtnSaveClick
      ExplicitTop = 23
    end
    object BtnCancel: TButton
      Left = 856
      Top = 3
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = BtnCancelClick
      ExplicitTop = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 411
    DesignSize = (
      939
      407)
    object GrBoxMain: TGroupBox
      Left = 8
      Top = 8
      Width = 920
      Height = 396
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = '   GrBoxMain   '
      TabOrder = 0
      ExplicitHeight = 400
      object PnlDateTool: TPanel
        Left = 2
        Top = 15
        Width = 916
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object label1: TLabel
          Left = 16
          Top = 19
          Width = 74
          Height = 13
          Caption = #1044#1072#1090#1072' '#1072#1085#1072#1083#1080#1079#1072':'
        end
        object DTPickMazUr: TDateTimePicker
          Left = 96
          Top = 14
          Width = 97
          Height = 21
          Hint = #1076#1072#1090#1072' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103#13#10#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Date = 38218.825923564810000000
          Time = 38218.825923564810000000
          TabOrder = 0
        end
        object Panel11: TPanel
          Left = 16
          Top = 43
          Width = 249
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
      end
      object PnlFigGeneral: TPanel
        Left = 2
        Top = 66
        Width = 315
        Height = 328
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 332
        object Label2: TLabel
          Left = 55
          Top = 35
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1083#1077#1081#1082#1086#1094#1080#1090#1099
        end
        object Label3: TLabel
          Left = 272
          Top = 35
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label7: TLabel
          Left = 50
          Top = 67
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = #1101#1088#1080#1090#1088#1086#1094#1080#1090#1099
        end
        object Label11: TLabel
          Left = 272
          Top = 67
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label4: TLabel
          Left = 57
          Top = 195
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = #1075#1086#1085#1086#1082#1086#1082#1082#1080
        end
        object Label5: TLabel
          Left = 42
          Top = 227
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = #1090#1088#1080#1093#1086#1084#1086#1085#1072#1076#1099
        end
        object Label6: TLabel
          Left = 78
          Top = 131
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = #1092#1083#1086#1088#1072
        end
        object Label8: TLabel
          Left = 63
          Top = 99
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1101#1087#1080#1090#1077#1083#1080#1081
        end
        object Label9: TLabel
          Left = 11
          Top = 259
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = '"'#1082#1083#1102#1095#1077#1074#1099#1077'" '#1082#1083#1077#1090#1082#1080'  '
          WordWrap = True
        end
        object Label10: TLabel
          Left = 72
          Top = 291
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = #1089'andida'
        end
        object Label12: TLabel
          Left = 80
          Top = 163
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = #1089#1083#1080#1079#1100
        end
        object Label13: TLabel
          Left = 168
          Top = 8
          Width = 34
          Height = 13
          Caption = #1091#1088#1077#1090#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 272
          Top = 99
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label15: TLabel
          Left = 272
          Top = 131
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label16: TLabel
          Left = 272
          Top = 163
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label17: TLabel
          Left = 272
          Top = 195
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label18: TLabel
          Left = 272
          Top = 227
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label19: TLabel
          Left = 272
          Top = 259
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label20: TLabel
          Left = 272
          Top = 291
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object EdtLeu: TEdit
          Left = 120
          Top = 32
          Width = 145
          Height = 21
          Hint = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1083#1077#1081#1082#1086#1094#1080#1090#1086#1074#13#10#1074' '#1087#1086#1083#1077' '#1079#1088#1077#1085#1080#1103' '#1084#1080#1082#1088#1086#1089#1082#1086#1087#1072
          TabOrder = 0
          Text = 'EdtLeu'
        end
        object EdtEr: TEdit
          Left = 120
          Top = 64
          Width = 145
          Height = 21
          Hint = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1088#1080#1090#1088#1086#1094#1080#1090#1086#1074#13#10#1074' '#1087#1086#1083#1077' '#1079#1088#1077#1085#1080#1103' '#1084#1080#1082#1088#1086#1089#1082#1086#1087#1072
          TabOrder = 1
          Text = 'EdtEr'
        end
        object CbBoxGn: TComboBox
          Left = 120
          Top = 192
          Width = 145
          Height = 21
          Hint = #1085#1072#1083#1080#1095#1080#1077' '#1080#1083#1080' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1074' '#1084#1072#1079#1082#1077#13#10#1074#1086#1079#1073#1091#1076#1080#1090#1077#1083#1077#1081' '#1075#1086#1085#1086#1088#1077#1080
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088'. '#1074#1085#1077#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1077'- '#1080' '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090'.')
        end
        object CbBoxTr: TComboBox
          Left = 120
          Top = 224
          Width = 145
          Height = 21
          Hint = #1085#1072#1083#1080#1095#1080#1077' '#1080#1083#1080' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1074' '#1084#1072#1079#1082#1077#13#10#1074#1086#1079#1073#1091#1076#1080#1090#1077#1083#1077#1081' '#1090#1088#1080#1093#1086#1084#1086#1085#1080#1072#1079#1072
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1089#1086#1084#1085#1080#1090'. '#1082#1083#1077#1090#1082#1080
            #1087#1086#1076#1086#1079#1088'. '#1082#1083#1077#1090#1082#1080
            #1084#1086#1088#1092'. '#1080#1079#1084#1077#1085'. '#1092#1086#1088#1084#1099
            #1088#1072#1079#1088#1091#1096#1077#1085#1085#1099#1077' '#1092#1086#1088#1084#1099)
        end
        object CbBoxFlora: TComboBox
          Left = 120
          Top = 128
          Width = 145
          Height = 21
          Hint = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1080' '#1089#1086#1089#1090#1072#1074' '#13#10#1092#1083#1086#1088#1099' '#1074' '#1084#1072#1079#1082#1077
          Style = csDropDownList
          DropDownCount = 15
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            #1082#1086#1082#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1082#1086#1082#1082#1080' '#1074' '#1091#1084#1077#1088'. '#1082#1086#1083'-'#1074#1077
            #1082#1086#1082#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1091#1084#1077#1088#1077#1085#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'. '#1089#1082#1091#1076#1085#1086
            #1089#1084#1077#1096'. '#1091#1084#1077#1088#1077#1085#1085#1086
            #1089#1084#1077#1096'. '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1082#1086#1082#1082#1080
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1087#1072#1083#1086#1095#1082#1080
            #1082#1086#1082#1082#1080
            #1087#1072#1083#1086#1095#1082#1080
            #1089#1084#1077#1096#1072#1085#1085#1072#1103)
        end
        object CbBoxKeyCell: TComboBox
          Left = 120
          Top = 256
          Width = 145
          Height = 21
          Hint = #1085#1072#1083#1080#1095#1080#1077' '#1074' '#1084#1072#1079#1082#1077#13#10#1082#1086#1089#1074#1077#1085#1085#1099#1093' '#1087#1088#1080#1079#1085#1072#1082#1086#1074' '#13#10#1075#1072#1088#1076#1085#1077#1088#1077#1083#1083#1077#1079#1072
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 7
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099)
        end
        object CbBoxCand: TComboBox
          Left = 120
          Top = 288
          Width = 145
          Height = 21
          Hint = #1085#1072#1083#1080#1095#1080#1077' '#1074' '#1084#1072#1079#1082#1077#13#10#1074#1086#1079#1073#1091#1076#1080#1090#1077#1083#1077#1081' '#1082#1072#1085#1076#1080#1076#1086#1079#1072
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            '+'
            '+ +'
            '+ + +'
            '+ + + +')
        end
        object EdtEpit: TEdit
          Left = 120
          Top = 96
          Width = 145
          Height = 21
          TabOrder = 2
          Text = 'EdtEpit'
        end
        object EdtMucos: TEdit
          Left = 120
          Top = 160
          Width = 145
          Height = 21
          TabOrder = 4
          Text = 'EdtMucos'
        end
      end
      object PnlFigWoman: TPanel
        Left = 317
        Top = 66
        Width = 601
        Height = 328
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 345
        object Label21: TLabel
          Left = 156
          Top = 35
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label22: TLabel
          Left = 156
          Top = 67
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label23: TLabel
          Left = 156
          Top = 99
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label24: TLabel
          Left = 156
          Top = 131
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label25: TLabel
          Left = 156
          Top = 163
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label26: TLabel
          Left = 156
          Top = 195
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label27: TLabel
          Left = 156
          Top = 227
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label28: TLabel
          Left = 156
          Top = 259
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label29: TLabel
          Left = 156
          Top = 291
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label30: TLabel
          Left = 355
          Top = 35
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label31: TLabel
          Left = 355
          Top = 67
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label32: TLabel
          Left = 355
          Top = 99
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label33: TLabel
          Left = 355
          Top = 131
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label34: TLabel
          Left = 355
          Top = 163
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label35: TLabel
          Left = 355
          Top = 195
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label36: TLabel
          Left = 355
          Top = 227
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label37: TLabel
          Left = 355
          Top = 259
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label38: TLabel
          Left = 355
          Top = 291
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label39: TLabel
          Left = 554
          Top = 35
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label40: TLabel
          Left = 554
          Top = 67
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label41: TLabel
          Left = 554
          Top = 99
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label42: TLabel
          Left = 554
          Top = 131
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label43: TLabel
          Left = 554
          Top = 163
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label44: TLabel
          Left = 554
          Top = 195
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label45: TLabel
          Left = 554
          Top = 227
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label46: TLabel
          Left = 554
          Top = 259
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label47: TLabel
          Left = 554
          Top = 291
          Width = 23
          Height = 13
          Caption = #1087'/'#1079#1088
        end
        object Label48: TLabel
          Left = 25
          Top = 8
          Width = 107
          Height = 13
          Caption = #1094#1077#1088#1074#1080#1082#1072#1083#1100#1085#1099#1081' '#1082#1072#1085#1072#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 259
          Top = 8
          Width = 32
          Height = 13
          Caption = 'vagina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 464
          Top = 8
          Width = 32
          Height = 13
          Caption = 'rectum'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object CbBoxCvxFlora: TComboBox
          Left = 4
          Top = 128
          Width = 145
          Height = 21
          Style = csDropDownList
          DropDownCount = 15
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            #1082#1086#1082#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1082#1086#1082#1082#1080' '#1074' '#1091#1084#1077#1088'. '#1082#1086#1083'-'#1074#1077
            #1082#1086#1082#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1091#1084#1077#1088#1077#1085#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'. '#1089#1082#1091#1076#1085#1086
            #1089#1084#1077#1096'. '#1091#1084#1077#1088#1077#1085#1085#1086
            #1089#1084#1077#1096'. '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1082#1086#1082#1082#1080
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1087#1072#1083#1086#1095#1082#1080
            #1082#1086#1082#1082#1080
            #1087#1072#1083#1086#1095#1082#1080
            #1089#1084#1077#1096#1072#1085#1085#1072#1103)
        end
        object EdtCvxLeu: TEdit
          Left = 4
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'EdtCvxLeu'
        end
        object EdtCvxEr: TEdit
          Left = 4
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 1
          Text = 'EdtCvxEr'
        end
        object EdtCvxEpit: TEdit
          Left = 4
          Top = 96
          Width = 145
          Height = 21
          TabOrder = 2
          Text = 'EdtCvxEpit'
        end
        object CbBoxCvxGn: TComboBox
          Left = 4
          Top = 192
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088'. '#1074#1085#1077#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1077'- '#1080' '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090'.')
        end
        object EdtCvxMucos: TEdit
          Left = 4
          Top = 160
          Width = 145
          Height = 21
          TabOrder = 4
          Text = 'EdtCvxMucos'
        end
        object CbBoxCvxTr: TComboBox
          Left = 4
          Top = 224
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1089#1086#1084#1085#1080#1090'. '#1082#1083#1077#1090#1082#1080
            #1087#1086#1076#1086#1079#1088'. '#1082#1083#1077#1090#1082#1080
            #1084#1086#1088#1092'. '#1080#1079#1084#1077#1085'. '#1092#1086#1088#1084#1099
            #1088#1072#1079#1088#1091#1096#1077#1085#1085#1099#1077' '#1092#1086#1088#1084#1099)
        end
        object CbBoxCvxKeyCell: TComboBox
          Left = 4
          Top = 256
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 7
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099)
        end
        object CbBoxCvxCand: TComboBox
          Left = 4
          Top = 288
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            '+'
            '+ +'
            '+ + +'
            '+ + + +')
        end
        object EdtVgnLeu: TEdit
          Left = 203
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 9
          Text = 'EdtVgnLeu'
        end
        object EdtVgnEr: TEdit
          Left = 203
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 10
          Text = 'EdtVgnEr'
        end
        object EdtVgnEpit: TEdit
          Left = 203
          Top = 96
          Width = 145
          Height = 21
          TabOrder = 11
          Text = 'EdtVgnEpit'
        end
        object CbBoxVgnFlora: TComboBox
          Left = 203
          Top = 128
          Width = 145
          Height = 21
          Style = csDropDownList
          DropDownCount = 15
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 12
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            #1082#1086#1082#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1082#1086#1082#1082#1080' '#1074' '#1091#1084#1077#1088'. '#1082#1086#1083'-'#1074#1077
            #1082#1086#1082#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1091#1084#1077#1088#1077#1085#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'. '#1089#1082#1091#1076#1085#1086
            #1089#1084#1077#1096'. '#1091#1084#1077#1088#1077#1085#1085#1086
            #1089#1084#1077#1096'. '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1082#1086#1082#1082#1080
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1087#1072#1083#1086#1095#1082#1080
            #1082#1086#1082#1082#1080
            #1087#1072#1083#1086#1095#1082#1080
            #1089#1084#1077#1096#1072#1085#1085#1072#1103)
        end
        object EdtVgnMucos: TEdit
          Left = 203
          Top = 160
          Width = 145
          Height = 21
          TabOrder = 13
          Text = 'EdtVgnMucos'
        end
        object CbBoxVgnGn: TComboBox
          Left = 203
          Top = 192
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 14
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088'. '#1074#1085#1077#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1077'- '#1080' '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090'.')
        end
        object CbBoxVgnTr: TComboBox
          Left = 203
          Top = 224
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1089#1086#1084#1085#1080#1090'. '#1082#1083#1077#1090#1082#1080
            #1087#1086#1076#1086#1079#1088'. '#1082#1083#1077#1090#1082#1080
            #1084#1086#1088#1092'. '#1080#1079#1084#1077#1085'. '#1092#1086#1088#1084#1099
            #1088#1072#1079#1088#1091#1096#1077#1085#1085#1099#1077' '#1092#1086#1088#1084#1099)
        end
        object CbBoxVgnKeyCell: TComboBox
          Left = 203
          Top = 256
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 16
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099)
        end
        object CbBoxVgnCand: TComboBox
          Left = 203
          Top = 288
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 17
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            '+'
            '+ +'
            '+ + +'
            '+ + + +')
        end
        object EdtRectLeu: TEdit
          Left = 402
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 18
          Text = 'EdtRectLeu'
        end
        object EdtRectEr: TEdit
          Left = 402
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 19
          Text = 'EdtRectEr'
        end
        object EdtRectEpit: TEdit
          Left = 402
          Top = 96
          Width = 145
          Height = 21
          TabOrder = 20
          Text = 'EdtRectEpit'
        end
        object CbBoxRectFlora: TComboBox
          Left = 402
          Top = 128
          Width = 145
          Height = 21
          Style = csDropDownList
          DropDownCount = 15
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 21
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            #1082#1086#1082#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1082#1086#1082#1082#1080' '#1074' '#1091#1084#1077#1088'. '#1082#1086#1083'-'#1074#1077
            #1082#1086#1082#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1089#1082#1091#1076#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1091#1084#1077#1088#1077#1085#1085#1086
            #1087#1072#1083#1086#1095#1082#1080' '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'. '#1089#1082#1091#1076#1085#1086
            #1089#1084#1077#1096'. '#1091#1084#1077#1088#1077#1085#1085#1086
            #1089#1084#1077#1096'. '#1086#1073#1080#1083#1100#1085#1086
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1082#1086#1082#1082#1080
            #1089#1084#1077#1096'., '#1087#1088#1077#1080#1084#1091#1097'. '#1087#1072#1083#1086#1095#1082#1080
            #1082#1086#1082#1082#1080
            #1087#1072#1083#1086#1095#1082#1080
            #1089#1084#1077#1096#1072#1085#1085#1072#1103)
        end
        object EdtRectMucos: TEdit
          Left = 402
          Top = 160
          Width = 145
          Height = 21
          TabOrder = 22
          Text = 'EdtRectMucos'
        end
        object CbBoxRectGn: TComboBox
          Left = 402
          Top = 192
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 23
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088'. '#1074#1085#1077#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090#1086#1095#1085#1086
            #1086#1073#1085#1072#1088'. '#1074#1085#1077'- '#1080' '#1074#1085#1091#1090#1088#1080#1082#1083#1077#1090'.')
        end
        object CbBoxRectTr: TComboBox
          Left = 402
          Top = 224
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 24
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1089#1086#1084#1085#1080#1090'. '#1082#1083#1077#1090#1082#1080
            #1087#1086#1076#1086#1079#1088'. '#1082#1083#1077#1090#1082#1080
            #1084#1086#1088#1092'. '#1080#1079#1084#1077#1085'. '#1092#1086#1088#1084#1099
            #1088#1072#1079#1088#1091#1096#1077#1085#1085#1099#1077' '#1092#1086#1088#1084#1099)
        end
        object CbBoxRectKeyCell: TComboBox
          Left = 402
          Top = 256
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 25
          Text = #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
          Items.Strings = (
            #1085#1077' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099
            #1086#1073#1085#1072#1088#1091#1078#1077#1085#1099)
        end
        object CbBoxRectCand: TComboBox
          Left = 402
          Top = 288
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 26
          Text = #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Items.Strings = (
            #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
            '+'
            '+ +'
            '+ + +'
            '+ + + +')
        end
      end
    end
  end
  object NiceSetFrmMazUrethra: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 312
    Top = 16
  end
  object AppEventsFrmMazUr: TApplicationEvents
    OnShortCut = AppEventsFrmMazUrShortCut
    Left = 280
    Top = 16
  end
end
