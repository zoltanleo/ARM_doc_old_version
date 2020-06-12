object FrmStatusPat: TFrmStatusPat
  Left = 232
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1072#1085#1085#1099#1077' '#1087#1088#1080#1077#1084#1072' '#1087#1072#1094#1080#1077#1085#1090#1072
  ClientHeight = 674
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    882
    674)
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 32
    Top = 15
    Width = 53
    Height = 13
    Caption = #1087#1072#1094#1080#1077#1085#1090':   '
  end
  object LblStatusPatName: TLabel
    Left = 82
    Top = 15
    Width = 105
    Height = 13
    Caption = 'LblStatusPatName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 232
    Top = 15
    Width = 38
    Height = 13
    Caption = 'Label17'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object PgCtrlVisit: TPageControl
    Left = 5
    Top = 41
    Width = 873
    Height = 581
    ActivePage = TabSheet4
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PgCtrlVisitChange
    object TabSheet1: TTabSheet
      Caption = #1046#1072#1083#1086#1073#1099
      object Label9: TLabel
        Left = 211
        Top = 19
        Width = 83
        Height = 13
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 430
        Top = 19
        Width = 89
        Height = 13
        Caption = #1051#1077#1095#1072#1097#1080#1081' '#1074#1088#1072#1095':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 649
        Top = 19
        Width = 94
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1051#1055#1059':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 13
        Top = 17
        Width = 180
        Height = 38
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 2
          Top = 3
          Width = 79
          Height = 13
          Caption = #1042#1080#1076' '#1087#1088#1080#1077#1084#1072': '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RdBtnVisitPrimary: TRadioButton
          Left = 0
          Top = 20
          Width = 81
          Height = 17
          Caption = #1087#1077#1088#1074#1080#1095#1085#1099#1081
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RdBtnVisitPrimaryClick
        end
        object RdBtnVisitSecondary: TRadioButton
          Left = 84
          Top = 20
          Width = 81
          Height = 17
          Caption = #1087#1086#1074#1090#1086#1088#1085#1099#1081
          TabOrder = 1
        end
      end
      object DTPickPriem: TDateTimePicker
        Left = 211
        Top = 36
        Width = 201
        Height = 21
        Date = 39010.635283287040000000
        Time = 39010.635283287040000000
        DateFormat = dfLong
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnCloseUp = DTPickPriemCloseUp
        OnChange = DTPickPriemChange
      end
      object DBLookupCBDocChoice: TDBLookupComboboxEh
        Left = 430
        Top = 36
        Width = 201
        Height = 21
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBLookupCBDocChoiceEditButtons0Click
          end>
        ParentShowHint = False
        TabOrder = 2
        Tooltips = True
        Visible = True
        OnCloseUp = DBLookupCBDocChoiceCloseUp
      end
      object PgCtrlComplaint: TPageControl
        Left = 0
        Top = 89
        Width = 865
        Height = 464
        ActivePage = TabSheet7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style = tsFlatButtons
        TabOrder = 4
        TabWidth = 150
        object TabSheet7: TTabSheet
          Caption = #1040#1085#1076#1088#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1077' '#1078#1072#1083#1086#1073#1099
          object GrpBoxDolor: TGroupBox
            Left = 4
            Top = 3
            Width = 413
            Height = 153
            Caption = '   '#1041#1086#1083#1077#1074#1086#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 0
            object ChkBoxDolorPubica: TCheckBox
              Left = 17
              Top = 23
              Width = 129
              Height = 17
              Caption = #1073#1086#1083#1080' '#1085#1072#1076' '#1083#1086#1085#1086#1084
              TabOrder = 0
            end
            object ChkBoxDolorPerineum: TCheckBox
              Left = 211
              Top = 83
              Width = 129
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1087#1088#1086#1084#1077#1078#1085#1086#1089#1090#1080
              TabOrder = 1
            end
            object ChkBoxDolorTestis: TCheckBox
              Left = 17
              Top = 43
              Width = 97
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1103#1080#1095#1082#1072#1093
              TabOrder = 2
            end
            object ChkBoxDolorLumbo: TCheckBox
              Left = 211
              Top = 23
              Width = 162
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1087#1086#1103#1089#1085#1080#1095#1085#1086#1081' '#1086#1073#1083#1072#1089#1090#1080
              TabOrder = 4
            end
            object ChkBoxDolorSacrum: TCheckBox
              Left = 211
              Top = 43
              Width = 113
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1082#1088#1077#1089#1090#1094#1077
              TabOrder = 5
            end
            object ChkBoxDolorInguinal: TCheckBox
              Left = 211
              Top = 63
              Width = 144
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1087#1072#1093#1086#1074#1086#1081' '#1086#1073#1083#1072#1089#1090#1080
              TabOrder = 3
            end
            object ChkBoxBadSensUreth: TCheckBox
              Left = 17
              Top = 63
              Width = 188
              Height = 17
              Caption = #1076#1080#1089#1082#1086#1084#1092#1086#1088#1090' '#1074' '#1091#1088#1077#1090#1088#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object ChkBoxColicSensUreth: TCheckBox
              Left = 17
              Top = 83
              Width = 136
              Height = 17
              Caption = #1088#1077#1079#1080' '#1074' '#1091#1088#1077#1090#1088#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object ChkBoxBadSensPerineum: TCheckBox
              Left = 17
              Top = 103
              Width = 174
              Height = 17
              Caption = #1076#1080#1089#1082#1086#1084#1092#1086#1088#1090' '#1074' '#1087#1088#1086#1084#1077#1078#1085#1086#1089#1090#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object ChkBoxColicSensPerineum: TCheckBox
              Left = 17
              Top = 123
              Width = 155
              Height = 17
              Caption = #1088#1077#1079#1080'  '#1074' '#1087#1088#1086#1084#1077#1078#1085#1086#1089#1090#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object ChkBoxDolorPenisErect: TCheckBox
              Left = 211
              Top = 123
              Width = 190
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' penis'#39#1077' '#1087#1088#1080' '#1101#1088#1077#1082#1094#1080#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object ChkBoxDolorPenisDetumesc: TCheckBox
              Left = 211
              Top = 103
              Width = 166
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' penis'#39#1077' '#1074#1085#1077' '#1101#1088#1077#1082#1094#1080#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
          end
          object GrBoxDisuria: TGroupBox
            Left = 4
            Top = 165
            Width = 413
            Height = 133
            Caption = '   '#1044#1080#1079#1091#1088#1080#1095#1077#1089#1082#1080#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 1
            object Label3: TLabel
              Left = 247
              Top = 24
              Width = 27
              Height = 13
              Caption = #1088'/'#1089#1091#1090
            end
            object Label5: TLabel
              Left = 246
              Top = 64
              Width = 34
              Height = 13
              Caption = #1088'/'#1085#1086#1095#1100
            end
            object ChkBoxPollakiuria: TCheckBox
              Left = 16
              Top = 23
              Width = 145
              Height = 17
              Caption = #1095#1072#1089#1090#1086#1077' '#1084#1086#1095#1077#1080#1089#1087#1091#1089#1082#1072#1085#1080#1077
              TabOrder = 0
              OnClick = ChkBoxPollakiuriaClick
            end
            object ChkBoxDolorMiccia: TCheckBox
              Left = 16
              Top = 43
              Width = 177
              Height = 17
              Caption = #1073#1086#1083#1077#1079#1085#1077#1085#1085#1086#1077' '#1084#1086#1095#1077#1080#1089#1087#1091#1089#1082#1072#1085#1080#1077
              TabOrder = 1
            end
            object ChkBoxNicturia: TCheckBox
              Left = 16
              Top = 63
              Width = 73
              Height = 17
              Caption = #1085#1080#1082#1090#1091#1088#1080#1103
              TabOrder = 2
              OnClick = ChkBoxNicturiaClick
            end
            object SpEdtNicturiaCount: TSpinEdit
              Left = 201
              Top = 60
              Width = 41
              Height = 22
              MaxValue = 30
              MinValue = 1
              TabOrder = 3
              Value = 1
            end
            object SpEdtNicturiaAge: TSpinEdit
              Left = 289
              Top = 60
              Width = 41
              Height = 22
              MaxValue = 60
              MinValue = 1
              TabOrder = 4
              Value = 1
            end
            object ChkBoxStranguria: TCheckBox
              Left = 16
              Top = 83
              Width = 201
              Height = 17
              Caption = #1079#1072#1090#1088#1091#1076#1085#1077#1085#1080#1077' '#1087#1088#1080' '#1084#1086#1095#1077#1080#1089#1087#1091#1089#1082#1072#1085#1080#1080
              TabOrder = 5
            end
            object SpEdtMicciaCount: TSpinEdit
              Left = 201
              Top = 20
              Width = 41
              Height = 22
              MaxValue = 30
              MinValue = 5
              TabOrder = 6
              Value = 5
            end
            object SpEdtPollaciuriaAge: TSpinEdit
              Left = 289
              Top = 20
              Width = 41
              Height = 22
              MaxValue = 180
              MinValue = 1
              TabOrder = 7
              Value = 1
            end
            object CbBoxPollaciuriaPeriod: TComboBox
              Left = 334
              Top = 20
              Width = 65
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 8
              Text = #1076#1085#1077#1081
              Items.Strings = (
                #1076#1085#1077#1081
                #1085#1077#1076#1077#1083#1100
                #1083#1077#1090)
            end
            object CbBoxNicturiaPeriod: TComboBox
              Left = 334
              Top = 60
              Width = 65
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 9
              Text = #1076#1085#1077#1081
              Items.Strings = (
                #1076#1085#1077#1081
                #1085#1077#1076#1077#1083#1100
                #1083#1077#1090)
            end
            object ChkBoxVesUrinUncomplete: TCheckBox
              Left = 16
              Top = 103
              Width = 257
              Height = 17
              Caption = #1095#1091#1074#1089#1090#1074#1086' '#1085#1077#1087#1086#1083#1085#1086#1075#1086' '#1086#1087#1086#1088#1086#1078#1085#1077#1085#1080#1103' '#1084'/'#1087#1091#1079#1099#1088#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
          end
          object GrBoxIpochondr: TGroupBox
            Left = 430
            Top = 130
            Width = 413
            Height = 105
            Caption = '   '#1048#1087#1086#1093#1086#1085#1076#1088#1080#1095#1077#1089#1082#1080#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 4
            object ChkBoxLowLibido: TCheckBox
              Left = 16
              Top = 23
              Width = 305
              Height = 17
              Caption = #1089#1085#1080#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1083#1080#1073#1080#1076#1086
              TabOrder = 0
            end
            object ChkBoxLowTonus: TCheckBox
              Left = 16
              Top = 45
              Width = 241
              Height = 15
              Caption = #1089#1085#1080#1078#1077#1085#1080#1077' '#1078#1080#1079#1085#1077#1085#1085#1086#1075#1086' '#1090#1086#1085#1091#1089#1072', '#1091#1087#1072#1076#1086#1082' '#1089#1080#1083
              TabOrder = 1
            end
            object ChkBoxLowVozbuzhd: TCheckBox
              Left = 16
              Top = 60
              Width = 273
              Height = 31
              Caption = 
                #1089#1085#1080#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1074#1086#1079#1073#1091#1078#1076#1077#1085#1080#1103' '#1087#1088#1080' coitus '#1089' '#1087#1086#1089#1090#1086#1103#1085#1085#1086#1081' '#1087#1086#1083#1086 +
                #1074#1086#1081' '#1087#1072#1088#1090#1085#1077#1088#1096#1077#1081
              TabOrder = 2
              WordWrap = True
            end
          end
          object GrBoxIrrit: TGroupBox
            Left = 430
            Top = 244
            Width = 413
            Height = 134
            Caption = '   '#1048#1088#1088#1080#1090#1072#1090#1080#1074#1085#1099#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 5
            object Label2: TLabel
              Left = 190
              Top = 24
              Width = 132
              Height = 13
              Caption = #1076#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1081':'
            end
            object ChkBoxDischarge: TCheckBox
              Left = 16
              Top = 23
              Width = 89
              Height = 17
              Caption = #1042#1099#1076#1077#1083#1077#1085#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = ChkBoxDischargeClick
            end
            object SpEdtUrethAge: TSpinEdit
              Left = 189
              Top = 43
              Width = 45
              Height = 22
              MaxValue = 25
              MinValue = 1
              TabOrder = 1
              Value = 1
            end
            object CbBoxDischargeNature: TComboBox
              Left = 16
              Top = 44
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = #1089#1077#1088#1086#1079#1085#1099#1077
              Items.Strings = (
                #1089#1077#1088#1086#1079#1085#1099#1077
                #1089#1083#1080#1079#1080#1089#1090#1099#1077
                #1075#1085#1086#1081#1085#1099#1077
                #1090#1074#1086#1088#1086#1078#1080#1089#1090#1099#1077
                #1082#1088#1086#1074#1103#1085#1080#1089#1090#1099#1077)
            end
            object CbBoxDischargeVolume: TComboBox
              Left = 16
              Top = 72
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = #1089#1082#1091#1076#1085#1099#1077
              OnChange = CbBoxDischargeVolumeChange
              Items.Strings = (
                #1089#1082#1091#1076#1085#1099#1077
                #1091#1084#1077#1088#1077#1085#1085#1099#1077
                #1086#1073#1080#1083#1100#1085#1099#1077
                #1082#1072#1078#1091#1097#1080#1077#1089#1103)
            end
            object CbBoxDischargeRegul: TComboBox
              Left = 16
              Top = 100
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 4
              Text = #1087#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1080#1077
              Items.Strings = (
                #1087#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1080#1077
                #1087#1086#1089#1090#1086#1103#1085#1085#1099#1077)
            end
            object CbBoxDischargeDurat: TComboBox
              Left = 246
              Top = 43
              Width = 65
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 5
              Text = #1076#1085#1077#1081
              Items.Strings = (
                #1076#1085#1077#1081
                #1085#1077#1076#1077#1083#1100
                #1083#1077#1090)
            end
          end
          object GrBoxVasaSyndr: TGroupBox
            Left = 430
            Top = 3
            Width = 413
            Height = 119
            Caption = '   '#1057#1086#1089#1091#1076#1080#1089#1090#1099#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 3
            object ChkBoxLowErection: TCheckBox
              Left = 16
              Top = 63
              Width = 129
              Height = 17
              Caption = #1085#1077#1087#1086#1083#1085#1072#1103' '#1101#1088#1077#1082#1094#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ChkBoxSlowTumesc: TCheckBox
              Left = 16
              Top = 43
              Width = 153
              Height = 17
              Caption = #1084#1077#1076#1083#1077#1085#1085#1072#1103' '#1090#1091#1084#1077#1089#1094#1077#1085#1094#1080#1103
              TabOrder = 1
            end
            object ChkBoxBadErection: TCheckBox
              Left = 178
              Top = 23
              Width = 144
              Height = 17
              Caption = #1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1100' '#1101#1088#1077#1082#1094#1080#1080
              TabOrder = 2
            end
            object ChkBoxMorningErection: TCheckBox
              Left = 178
              Top = 63
              Width = 162
              Height = 17
              Caption = #1085#1072#1083#1080#1095#1080#1077' '#1091#1090#1088#1077#1085#1085#1077#1081' '#1101#1088#1077#1082#1094#1080#1080
              TabOrder = 3
            end
            object ChkBoxNoErection: TCheckBox
              Left = 16
              Top = 23
              Width = 145
              Height = 17
              Caption = #1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1101#1088#1077#1082#1094#1080#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object ChkBoxPenisDeform: TCheckBox
              Left = 178
              Top = 43
              Width = 223
              Height = 17
              Caption = #1076#1077#1092#1086#1088#1084#1072#1094#1080#1103' penis '#1087#1088#1080' '#1101#1088#1077#1082#1094#1080#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object ChkBoxVaricocele: TCheckBox
              Left = 16
              Top = 89
              Width = 145
              Height = 17
              Caption = #1088#1072#1089#1096#1080#1088#1077#1085#1080#1077' '#1074#1077#1085' '#1103#1080#1095#1082#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = ChkBoxVaricoceleClick
            end
            object CbBoxVaricSide: TComboBox
              Left = 163
              Top = 86
              Width = 118
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 7
              Text = #1089#1083#1077#1074#1072
              Items.Strings = (
                #1089#1083#1077#1074#1072
                #1089#1087#1088#1072#1074#1072
                #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
            end
            object CbBoxVaricPosit: TComboBox
              Left = 286
              Top = 86
              Width = 118
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 2
              TabOrder = 8
              Text = #1087#1088#1080' '#1085#1072#1090#1091#1078#1080#1074#1072#1085#1080#1080
              Items.Strings = (
                #1083#1077#1078#1072
                #1089#1090#1086#1103
                #1087#1088#1080' '#1085#1072#1090#1091#1078#1080#1074#1072#1085#1080#1080)
            end
          end
          object GrBoxEjacul: TGroupBox
            Left = 4
            Top = 308
            Width = 413
            Height = 93
            Caption = '   '#1044#1080#1079#1101#1103#1082#1091#1083#1103#1090#1086#1088#1085#1099#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 2
            object ChkBoxFastEjacul: TCheckBox
              Left = 16
              Top = 23
              Width = 201
              Height = 17
              Caption = #1091#1089#1082#1086#1088#1077#1085#1085#1086#1077' '#1089#1077#1084#1103#1080#1079#1074#1077#1088#1078#1077#1085#1080#1077
              TabOrder = 0
            end
            object ChkBoxDolorEjacul: TCheckBox
              Left = 16
              Top = 63
              Width = 201
              Height = 17
              Caption = #1073#1086#1083#1077#1079#1085#1077#1085#1085#1086#1077' '#1089#1077#1084#1103#1080#1079#1074#1077#1088#1078#1077#1085#1080#1077
              TabOrder = 2
            end
            object ChkBoxBloodEjacul: TCheckBox
              Left = 221
              Top = 43
              Width = 97
              Height = 17
              Caption = #1075#1077#1084#1086#1089#1087#1077#1088#1084#1080#1103
              TabOrder = 3
            end
            object ChkBoxAnEjacul: TCheckBox
              Left = 16
              Top = 43
              Width = 201
              Height = 17
              Caption = #1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1101#1103#1082#1091#1083#1103#1090#1072' '#1087#1088#1080' '#1086#1088#1075#1072#1079#1084#1077
              TabOrder = 1
            end
            object ChkBoxIdleEjacul: TCheckBox
              Left = 221
              Top = 63
              Width = 97
              Height = 17
              Caption = #1074#1103#1083#1099#1081' '#1086#1088#1075#1072#1079#1084
              TabOrder = 4
            end
            object ChkBoxSlowEjacul: TCheckBox
              Left = 221
              Top = 23
              Width = 182
              Height = 17
              Caption = #1086#1090#1089#1088#1086#1095#1077#1085#1085#1086#1077' '#1089#1077#1084#1103#1080#1079#1074#1077#1088#1078#1077#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = #1059#1088#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1077' '#1078#1072#1083#1086#1073#1099
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 4
            Top = 3
            Width = 413
            Height = 133
            Caption = '   '#1057#1080#1085#1076#1088#1086#1084' '#1080#1085#1090#1086#1082#1089#1080#1082#1072#1094#1080#1080'   '
            TabOrder = 0
            object ChkBoxUrAsthenia: TCheckBox
              Left = 16
              Top = 24
              Width = 97
              Height = 17
              Caption = #1089#1083#1072#1073#1086#1089#1090#1100
              TabOrder = 0
            end
            object ChkBoxUrFlabbiness: TCheckBox
              Left = 16
              Top = 50
              Width = 81
              Height = 17
              Caption = #1074#1103#1083#1086#1089#1090#1100
              TabOrder = 1
            end
            object ChkBoxUrHyperhidros: TCheckBox
              Left = 16
              Top = 76
              Width = 97
              Height = 17
              Caption = #1087#1086#1090#1083#1080#1074#1086#1089#1090#1100
              TabOrder = 2
            end
            object ChkBoxUrSubfebril: TCheckBox
              Left = 16
              Top = 102
              Width = 161
              Height = 17
              Caption = #1087#1086#1074#1099#1096#1077#1085#1080#1077' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099
              TabOrder = 3
              OnClick = ChkBoxUrSubfebrilClick
            end
            object CbBoxUrSubfebril: TComboBox
              Left = 216
              Top = 99
              Width = 81
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 4
              Text = #1076#1086' 37,0'
              Items.Strings = (
                #1076#1086' 37,0'
                #1076#1086' 37,5'
                #1076#1086' 38,0'
                #1074#1099#1096#1077' 38,0')
            end
          end
          object GroupBox3: TGroupBox
            Left = 4
            Top = 143
            Width = 413
            Height = 186
            Caption = '   '#1041#1086#1083#1077#1074#1086#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 1
            object ChkBoxUrDolorLumb: TCheckBox
              Left = 16
              Top = 24
              Width = 185
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1087#1086#1103#1089#1085#1080#1095#1085#1086#1081' '#1086#1073#1083#1072#1089#1090#1080
              TabOrder = 0
              OnClick = ChkBoxUrDolorLumbClick
            end
            object ChkBoxUrDolorSacr: TCheckBox
              Left = 16
              Top = 50
              Width = 97
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1082#1088#1077#1089#1090#1094#1077
              TabOrder = 1
            end
            object ChkBoxUrDolorMesagastr: TCheckBox
              Left = 16
              Top = 77
              Width = 169
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1084#1077#1079#1086#1075#1072#1089#1090#1088#1080#1080
              TabOrder = 2
              OnClick = ChkBoxUrDolorMesagastrClick
            end
            object ChkBoxUrDolorHypogastr: TCheckBox
              Left = 16
              Top = 103
              Width = 161
              Height = 17
              Caption = #1073#1086#1083#1080' '#1074' '#1075#1080#1087#1086#1075#1072#1089#1090#1088#1080#1080
              TabOrder = 3
              OnClick = ChkBoxUrDolorHypogastrClick
            end
            object ChkBoxUrDolorPubica: TCheckBox
              Left = 16
              Top = 129
              Width = 121
              Height = 17
              Caption = #1073#1086#1083#1080' '#1085#1072#1076' '#1083#1086#1085#1086#1084
              TabOrder = 4
            end
            object ChkBoxUrDolorIrradiat: TCheckBox
              Left = 16
              Top = 155
              Width = 161
              Height = 17
              Caption = #1073#1086#1083#1080' '#1089' '#1080#1088#1088#1072#1076#1080#1072#1094#1080#1077#1081
              TabOrder = 5
              OnClick = ChkBoxUrDolorIrradiatClick
            end
            object CbBoxUrDolorLumb: TComboBox
              Left = 216
              Top = 21
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 2
              TabOrder = 6
              Text = #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
              Items.Strings = (
                #1089#1087#1088#1072#1074#1072
                #1089#1083#1077#1074#1072
                #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
            end
            object CbBoxUrDolorMesogastr: TComboBox
              Left = 216
              Top = 74
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 2
              TabOrder = 7
              Text = #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
              Items.Strings = (
                #1089#1087#1088#1072#1074#1072
                #1089#1083#1077#1074#1072
                #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
            end
            object CbBoxUrDolorHypogastr: TComboBox
              Left = 216
              Top = 100
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 2
              TabOrder = 8
              Text = #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085
              Items.Strings = (
                #1089#1087#1088#1072#1074#1072
                #1089#1083#1077#1074#1072
                #1089' '#1086#1073#1077#1080#1093' '#1089#1090#1086#1088#1086#1085)
            end
            object CbBoxUrDolorIrradiat: TComboBox
              Left = 216
              Top = 152
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 4
              TabOrder = 9
              Text = #1074#1086' '#1074#1085#1091#1090#1088'. '#1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1073#1077#1076#1088#1072
              Items.Strings = (
                #1074' '#1087#1086#1103#1089#1085#1080#1095#1085#1091#1102' '#1086#1073#1083#1072#1089#1090#1100
                #1085#1072#1076' '#1083#1086#1085#1086#1084
                #1074' '#1084#1086#1096#1086#1085#1082#1091
                #1074' '#1073#1086#1083#1100#1096#1080#1077' '#1087#1086#1083#1086#1074#1099#1077' '#1075#1091#1073#1099
                #1074#1086' '#1074#1085#1091#1090#1088'. '#1087#1086#1074#1077#1088#1093#1085#1086#1089#1090#1100' '#1073#1077#1076#1088#1072)
            end
          end
          object GroupBox4: TGroupBox
            Left = 430
            Top = 3
            Width = 413
            Height = 214
            Caption = '   '#1044#1080#1079#1091#1088#1080#1095#1077#1089#1082#1080#1081' '#1089#1080#1085#1076#1088#1086#1084'   '
            TabOrder = 2
            object Label21: TLabel
              Left = 216
              Top = 51
              Width = 27
              Height = 13
              Caption = #1088'/'#1089#1091#1090
            end
            object Label23: TLabel
              Left = 216
              Top = 77
              Width = 27
              Height = 13
              Caption = #1088'/'#1089#1091#1090
            end
            object ChkBoxUrColic: TCheckBox
              Left = 16
              Top = 24
              Width = 137
              Height = 17
              Caption = #1088#1077#1079#1080' '#1087#1088#1080' '#1084#1080#1082#1094#1080#1103#1093
              TabOrder = 0
            end
            object ChkBoxUrPollac: TCheckBox
              Left = 16
              Top = 50
              Width = 129
              Height = 17
              Caption = #1091#1095#1072#1097#1077#1085#1080#1077' '#1084#1080#1082#1094#1080#1081
              TabOrder = 1
              OnClick = ChkBoxUrPollacClick
            end
            object ChkBoxUrNicturia: TCheckBox
              Left = 16
              Top = 76
              Width = 97
              Height = 17
              Caption = #1085#1080#1082#1090#1091#1088#1080#1103
              TabOrder = 2
              OnClick = ChkBoxUrNicturiaClick
            end
            object ChkBoxUrNotFullVesic: TCheckBox
              Left = 16
              Top = 102
              Width = 257
              Height = 17
              Caption = #1095#1091#1074#1089#1090#1074#1086' '#1085#1077#1087#1086#1083#1085#1086#1075#1086' '#1086#1087#1086#1088#1086#1078#1085#1077#1085#1080#1103' '#1084'/'#1087#1091#1079#1099#1088#1103
              TabOrder = 3
            end
            object ChkBoxUrSediment: TCheckBox
              Left = 16
              Top = 128
              Width = 97
              Height = 17
              Caption = #1086#1089#1072#1076#1086#1082' '#1074' '#1084#1086#1095#1077
              TabOrder = 4
            end
            object ChkBoxUrFlakes: TCheckBox
              Left = 16
              Top = 154
              Width = 97
              Height = 17
              Caption = #1093#1083#1086#1087#1100#1103' '#1074' '#1084#1086#1095#1077
              TabOrder = 5
            end
            object ChkBoxUrBloodDash: TCheckBox
              Left = 16
              Top = 180
              Width = 97
              Height = 17
              Caption = #1087#1088#1080#1084#1077#1089#1100' '#1082#1088#1086#1074#1080' '#1074' '#1084#1086#1095#1077
              TabOrder = 6
              OnClick = ChkBoxUrBloodDashClick
            end
            object SpEdtUrPollacCount: TSpinEdit
              Left = 171
              Top = 48
              Width = 41
              Height = 22
              MaxValue = 30
              MinValue = 5
              TabOrder = 7
              Value = 5
            end
            object SpEdtUrPollacAge: TSpinEdit
              Left = 259
              Top = 48
              Width = 45
              Height = 22
              MaxValue = 180
              MinValue = 1
              TabOrder = 8
              Value = 1
            end
            object SpEdtUrNictCount: TSpinEdit
              Left = 171
              Top = 74
              Width = 41
              Height = 22
              MaxValue = 30
              MinValue = 1
              TabOrder = 9
              Value = 1
            end
            object SpEdtUrNictAge: TSpinEdit
              Left = 259
              Top = 74
              Width = 45
              Height = 22
              MaxValue = 180
              MinValue = 1
              TabOrder = 10
              Value = 1
            end
            object CbBoxUrBloodDash: TComboBox
              Left = 216
              Top = 177
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 11
              Text = #1074' '#1082#1086#1085#1094#1077' '#1084#1080#1082#1094#1080#1080
              Items.Strings = (
                #1074' '#1085#1072#1095#1072#1083#1077' '#1084#1080#1082#1094#1080#1080
                #1074' '#1082#1086#1085#1094#1077' '#1084#1080#1082#1094#1080#1080
                #1085#1072' '#1087#1088#1086#1090#1103#1078#1077#1085#1080#1080' '#1074#1089#1077#1081' '#1084#1080#1082#1094#1080#1080)
            end
            object CbBoxUrPollacPeriod: TComboBox
              Left = 309
              Top = 48
              Width = 65
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 12
              Text = #1076#1085#1077#1081
              Items.Strings = (
                #1076#1085#1077#1081
                #1085#1077#1076#1077#1083#1100
                #1083#1077#1090)
            end
            object CbBoxUrNictPeriod: TComboBox
              Left = 309
              Top = 75
              Width = 65
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 13
              Text = #1076#1085#1077#1081
              Items.Strings = (
                #1076#1085#1077#1081
                #1085#1077#1076#1077#1083#1100
                #1083#1077#1090)
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1086#1095#1080#1077' '
          ImageIndex = 2
          object GroupBox5: TGroupBox
            Left = 4
            Top = 3
            Width = 413
            Height = 158
            Caption = '   '#1062#1077#1083#1100' '#1074#1080#1079#1080#1090#1072'   '
            TabOrder = 0
            object RdBtnAnothPrevCheckup: TRadioButton
              Left = 16
              Top = 24
              Width = 177
              Height = 17
              Caption = #1087#1088#1077#1074#1077#1085#1090#1080#1074#1085#1086#1077' '#1086#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077
              TabOrder = 0
            end
            object RdBtnAnothPrevTreat: TRadioButton
              Left = 16
              Top = 44
              Width = 153
              Height = 17
              Caption = #1087#1088#1077#1074#1077#1085#1090#1080#1074#1085#1086#1077' '#1083#1077#1095#1077#1085#1080#1077
              TabOrder = 1
            end
            object RdBtnAnothPlanGravid: TRadioButton
              Left = 16
              Top = 64
              Width = 289
              Height = 17
              Caption = #1086#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1076' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1086#1081' '#1073#1077#1088#1077#1084#1077#1085#1085#1086#1089#1090#1100#1102
              TabOrder = 2
            end
            object RdBtnAnothContrCheckup: TRadioButton
              Left = 16
              Top = 84
              Width = 249
              Height = 17
              Caption = #1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1077' '#1086#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1087#1086#1089#1083#1077' '#1083#1077#1095#1077#1085#1080#1103
              TabOrder = 3
            end
            object RdBtnAnothPlanTreat: TRadioButton
              Left = 16
              Top = 104
              Width = 121
              Height = 17
              Caption = #1087#1083#1072#1085#1086#1074#1086#1077' '#1083#1077#1095#1077#1085#1080#1077
              TabOrder = 4
            end
            object RdBtnAnothResrchRezlt: TRadioButton
              Left = 16
              Top = 125
              Width = 257
              Height = 17
              Caption = #1086#1089#1084#1086#1090#1088' '#1089' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084#1080' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1081
              TabOrder = 5
            end
          end
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 80
        Width = 857
        Height = 2
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 5
      end
      object DBLookupCBClinChoice: TDBLookupComboboxEh
        Left = 648
        Top = 36
        Width = 201
        Height = 21
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBLookupCBClinChoiceEditButtons0Click
          end>
        ParentShowHint = False
        TabOrder = 3
        Tooltips = True
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1040#1085#1072#1084#1085#1077#1079
      ImageIndex = 1
      DesignSize = (
        865
        553)
      object GroupBox10: TGroupBox
        Left = 8
        Top = 4
        Width = 852
        Height = 235
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '   '#1046#1072#1083#1086#1073#1099' '#1087#1072#1094#1080#1077#1085#1090#1072' '#1080' '#1072#1085#1072#1084#1085#1077#1079' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103'  '
        TabOrder = 0
        object RTFLabel1: TRTFLabel
          Left = 16
          Top = 20
          Width = 805
          Height = 33
          RichText = 
            '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204 MS S' +
            'ans Serif;}{\f1\fnil Arial;}}'#13#10'{\colortbl ;\red128\green0\blue12' +
            '8;}'#13#10'\viewkind4\uc1\pard\lang1049\f0\fs16     \cf1  \'#39'd2\'#39'e5\'#39'ea' +
            '\'#39'f1\'#39'f2 \'#39'e6\'#39'e0\'#39'eb\'#39'ee\'#39'e1 \'#39'f1\'#39'e3\'#39'e5\'#39'ed\'#39'e5\'#39'f0\'#39'e8\'#39'f0\'#39 +
            'ee\'#39'e2\'#39'e0\'#39'ed \'#39'e0\'#39'e2\'#39'f2\'#39'ee\'#39'ec\'#39'e0\'#39'f2\'#39'e8\'#39'f7\'#39'e5\'#39'f1\'#39'ea\' +
            #39'e8 \'#39'f1\'#39'ee\'#39'e3\'#39'eb\'#39'e0\'#39'f1\'#39'ed\'#39'ee \'#39'e2\'#39'fb\'#39'e1\'#39'f0\'#39'e0\'#39'ed\'#39'e' +
            'd\'#39'fb\'#39'ec \'#39'ed\'#39'e0 \'#39'e2\'#39'ea\'#39'eb\'#39'e0\'#39'e4\'#39'ea\'#39'e5 "\'#39'c6\'#39'e0\'#39'eb\'#39'e' +
            'e\'#39'e1\'#39'fb" \'#39'ee\'#39'ef\'#39'f6\'#39'e8\'#39'ff\'#39'ec. \'#39'c2\'#39'fb \'#39'ec\'#39'ee\'#39'e6\'#39'e5\'#39 +
            'f2\'#39'e5 \'#39'e8\'#39'e7\'#39'ec\'#39'e5\'#39'ed\'#39'e8\'#39'f2\'#39'fc \'#39'e8\'#39'eb\'#39'e8 \'#39'e4\'#39'ee\'#39'e' +
            'f\'#39'ee\'#39'eb\'#39'ed\'#39'e8\'#39'f2\'#39'fc \'#39'e8\'#39'f5 \'#39'e2 \'#39'f1\'#39'ee\'#39'ee\'#39'f2\'#39'e2\'#39'e5' +
            '\'#39'f2\'#39'f1\'#39'f2\'#39'e2\'#39'e8\'#39'e8 \'#39'f1\'#39'ee \'#39'f1\'#39'e2\'#39'ee\'#39'e8\'#39'ec\'#39'e8 \'#39'ef\' +
            #39'ee\'#39'f2\'#39'f0\'#39'e5\'#39'e1\'#39'ed\'#39'ee\'#39'f1\'#39'f2\'#39'ff\'#39'ec\'#39'e8. \'#39'c8\'#39'ec\'#39'e5\'#39'e' +
            'd\'#39'ed\'#39'ee \'#39'e2 \'#39'f2\'#39'e0\'#39'ea\'#39'ee\'#39'ec \'#39'e2\'#39'e8\'#39'e4\'#39'e5 \'#39'e6\'#39'e0\'#39'e' +
            'b\'#39'ee\'#39'e1\'#39'fb \'#39'e1\'#39'f3\'#39'e4\'#39'f3\'#39'f2 \'#39'ee\'#39'f2\'#39'f0\'#39'e0\'#39'e6\'#39'e0\'#39'f2\' +
            #39'fc\'#39'f1\'#39'ff \'#39'e2 \'#39'f2\'#39'e5\'#39'ea\'#39'f1\'#39'f2\'#39'e5 \'#39'e0\'#39'ec\'#39'e1\'#39'f3\'#39'eb\'#39 +
            'e0\'#39'f2\'#39'ee\'#39'f0\'#39'ed\'#39'ee\'#39'e9 \'#39'ea\'#39'e0\'#39'f0\'#39'f2\'#39'fb \'#39'e8\'#39'eb\'#39'e8 \'#39'e' +
            '2\'#39'fb\'#39'ef\'#39'e8\'#39'f1\'#39'ea\'#39'e8.\f1 '#13#10'\par }'#13#10#0
          Transparent = True
          ShowHint = True
          ParentShowHint = False
          WordWrap = False
          Version = '1.3.0.0'
        end
        object RTFLabel2: TRTFLabel
          Left = 16
          Top = 48
          Width = 805
          Height = 44
          RichText = 
            '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204 MS S' +
            'ans Serif;}{\f1\fswiss\fcharset204 Tahoma;}{\f2\fnil Arial;}}'#13#10'{' +
            '\colortbl ;\red128\green0\blue128;\red255\green0\blue0;}'#13#10'\viewk' +
            'ind4\uc1\pard\cf1\lang1049\f0\fs16      \cf2\ul\'#39'c2\'#39'e0\'#39'e6\'#39'ed\' +
            #39'ee!\cf1\ulnone  \'#39'd0\'#39'e5\'#39'e4\'#39'e0\'#39'ea\'#39'f2\'#39'e8\'#39'f0\'#39'f3\'#39'e9\'#39'f2\'#39'e' +
            '5 \'#39'f2\'#39'e5\'#39'ea\'#39'f1\'#39'f2 \'#39'e6\'#39'e0\'#39'eb\'#39'ee\'#39'e1 \f1\'#39'e8 \'#39'e0\'#39'ed\'#39'e0' +
            '\'#39'ec\'#39'ed\'#39'e5\'#39'e7 \f0\'#39'ef\'#39'e0\'#39'f6\'#39'e8\'#39'e5\'#39'ed\'#39'f2\'#39'e0 \'#39'f2\'#39'ee\'#39'e' +
            'b\'#39'fc\'#39'ea\'#39'ee \'#39'f2\'#39'ee\'#39'e3\'#39'e4\'#39'e0, \'#39'ea\'#39'ee\'#39'e3\'#39'e4\'#39'e0 \'#39'c2\'#39'f' +
            'b \'#39'ee\'#39'ea\'#39'ee\'#39'ed\'#39'f7\'#39'e0\'#39'f2\'#39'e5\'#39'eb\'#39'fc\'#39'ed\'#39'ee \'#39'ee\'#39'ef\'#39'f0\' +
            #39'e5\'#39'e4\'#39'e5\'#39'eb\'#39'e8\'#39'eb\'#39'e8\'#39'f1\'#39'fc \'#39'f1 \'#39'e2\'#39'fb\'#39'e1\'#39'ee\'#39'f0\'#39'e' +
            'e\'#39'ec \'#39'ee\'#39'ef\'#39'f6\'#39'e8\'#39'e9 \'#39'ed\'#39'e0 \'#39'e2\'#39'ea\'#39'eb\'#39'e0\'#39'e4\'#39'ea\'#39'e5' +
            ' "\'#39'c6\'#39'e0\'#39'eb\'#39'ee\'#39'e1\'#39'fb". \'#39'c2 \'#39'ef\'#39'f0\'#39'ee\'#39'f2\'#39'e8\'#39'e2\'#39'ed\'#39 +
            'ee\'#39'ec \'#39'f1\'#39'eb\'#39'f3\'#39'f7\'#39'e0\'#39'e5, \'#39'ef\'#39'f0\'#39'e8 \'#39'ee\'#39'f2\'#39'ec\'#39'e5\'#39 +
            'ed\'#39'e5 \'#39'f1\'#39'f2\'#39'e0\'#39'f0\'#39'fb\'#39'f5 \'#39'e8\'#39'eb\'#39'e8 \'#39'e2\'#39'fb\'#39'e1\'#39'ee\'#39'f' +
            '0\'#39'e5 \'#39'ed\'#39'ee\'#39'e2\'#39'fb\'#39'f5 \'#39'ee\'#39'ef\'#39'f6\'#39'e8\'#39'e9 \'#39'ed\'#39'e0 \'#39'e2\'#39'e' +
            'a\'#39'eb\'#39'e0\'#39'e4\'#39'ea\'#39'e5 "\'#39'c6\'#39'e0\'#39'eb\'#39'ee\'#39'e1\'#39'fb", \'#39'f2\'#39'e5\'#39'ea\'#39 +
            'f1\'#39'f2 \'#39'e6\'#39'e0\'#39'eb\'#39'ee\'#39'e1 \'#39'e1\'#39'f3\'#39'e4\'#39'e5\'#39'f2 \'#39'f1\'#39'f4\'#39'ee\'#39'f' +
            '0\'#39'ec\'#39'e8\'#39'f0\'#39'ee\'#39'e2\'#39'e0\'#39'ed \'#39'e2\'#39'ed\'#39'ee\'#39'e2\'#39'fc, \'#39'e0 \'#39'e2\'#39'e' +
            '2\'#39'e5\'#39'e4\'#39'e5\'#39'ed\'#39'ed\'#39'fb\'#39'e5 \'#39'e4\'#39'e0\'#39'ed\'#39'ed\'#39'fb\'#39'e5 \'#39'e0\'#39'ed\' +
            #39'e0\'#39'ec\'#39'ed\'#39'e5\'#39'e7\'#39'e0 \'#39'e1\'#39'f3\'#39'e4\'#39'f3\'#39'f2 \'#39'f3\'#39'f2\'#39'e5\'#39'f0\'#39'f' +
            'f\'#39'ed\'#39'fb (\'#39'e5\'#39'f1\'#39'eb\'#39'e8 \'#39'e2\'#39'fb \'#39'f0\'#39'e0\'#39'e7\'#39'f0\'#39'e5\'#39'f8\'#39'e' +
            '8\'#39'f2\'#39'e5 \'#39'fd\'#39'f2\'#39'ee \'#39'e2 \'#39'ef\'#39'f0\'#39'e5\'#39'e4\'#39'e2\'#39'e0\'#39'f0\'#39'e8\'#39'f2' +
            '\'#39'e5\'#39'eb\'#39'fc\'#39'ed\'#39'ee \'#39'e2\'#39'fb\'#39'e2\'#39'e5\'#39'e4\'#39'e5\'#39'ed\'#39'ed\'#39'ee\'#39'ec \'#39 +
            'ee\'#39'ea\'#39'ed\'#39'e5 \'#39'e7\'#39'e0\'#39'ef\'#39'f0\'#39'ee\'#39'f1\'#39'e0), \'#39'e8 \'#39'c2\'#39'e0\'#39'ec ' +
            '\'#39'ef\'#39'f0\'#39'e8\'#39'e4\'#39'e5\'#39'f2\'#39'f1\'#39'ff \'#39'e2\'#39'ed\'#39'ee\'#39'f1\'#39'e8\'#39'f2\'#39'fc \'#39 +
            'e8\'#39'f5 \'#39'e7\'#39'e0\'#39'ed\'#39'ee\'#39'e2\'#39'ee. \cf0\f2 '#13#10'\par }'#13#10#0
          Transparent = True
          WordWrap = False
          Version = '1.3.0.0'
        end
        object RichEditComplaints: TRichEdit
          Left = 16
          Top = 98
          Width = 805
          Height = 127
          Lines.Strings = (
            'RichEditComplaints')
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object PgCtrlAnamnesis: TPageControl
        Left = 0
        Top = 257
        Width = 865
        Height = 296
        ActivePage = TabSheet12
        ParentShowHint = False
        RaggedRight = True
        ShowHint = True
        Style = tsFlatButtons
        TabOrder = 1
        TabWidth = 160
        object TabSheet10: TTabSheet
          Caption = #1054#1073#1097#1080#1081' '#1072#1085#1072#1084#1085#1077#1079
          object GroupBox8: TGroupBox
            Left = 4
            Top = 4
            Width = 413
            Height = 261
            Caption = '         '#1040#1083#1083#1077#1088#1075#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1072#1085#1072#1084#1085#1077#1079'   '
            TabOrder = 0
            object RdBtnAllergyNo: TRadioButton
              Left = 16
              Top = 24
              Width = 97
              Height = 17
              Caption = #1085#1077' '#1086#1090#1103#1075#1086#1097#1077#1085
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RdBtnAllergyNoClick
            end
            object RdBtnAllergyYes: TRadioButton
              Left = 136
              Top = 24
              Width = 81
              Height = 17
              Caption = #1086#1087#1080#1089#1072#1090#1100
              TabOrder = 1
              OnClick = RdBtnAllergyYesClick
            end
            object RchEdtAnamAllergy: TRichEdit
              Left = 16
              Top = 47
              Width = 305
              Height = 73
              Lines.Strings = (
                'RchEdtAnamAllergy')
              ScrollBars = ssVertical
              TabOrder = 2
            end
            object BtnTemplAnamAllergy: TButton
              Left = 328
              Top = 46
              Width = 75
              Height = 25
              Caption = #1096#1072#1073#1083#1086#1085
              TabOrder = 3
              OnClick = BtnTemplAnamAllergyClick
            end
          end
          object GroupBox9: TGroupBox
            Left = 428
            Top = 4
            Width = 413
            Height = 261
            Caption = '         '#1042#1088#1077#1076#1085#1099#1077' '#1087#1088#1080#1074#1099#1095#1082#1080' '#1080' '#1087#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103'   '
            TabOrder = 1
            object LblSmoke1: TLabel
              Left = 136
              Top = 28
              Width = 61
              Height = 13
              Caption = #1089#1080#1075#1072#1088#1077#1090'/'#1089#1091#1090
            end
            object LblSmoke2: TLabel
              Left = 222
              Top = 28
              Width = 49
              Height = 13
              Caption = #1074' '#1090#1077#1095#1077#1085#1080#1077
            end
            object LblChldDes: TLabel
              Left = 16
              Top = 84
              Width = 173
              Height = 13
              Caption = #1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1076#1077#1090#1089#1082#1080#1077' '#1080#1085#1092#1077#1082#1094#1080#1080
            end
            object LblAnthrDes: TLabel
              Left = 16
              Top = 172
              Width = 221
              Height = 13
              Caption = #1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1080' '#1093#1088#1086#1085#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103
            end
            object RchEdtAnamChldDes: TRichEdit
              Left = 16
              Top = 104
              Width = 305
              Height = 57
              Lines.Strings = (
                'RchEdtAnamChldDes')
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object RchEdtAnamAnthrDes: TRichEdit
              Left = 16
              Top = 192
              Width = 305
              Height = 57
              Lines.Strings = (
                'RchEdtAnamAnthrDes')
              ScrollBars = ssVertical
              TabOrder = 1
            end
            object ChkBoxAnamSmoke: TCheckBox
              Left = 16
              Top = 28
              Width = 65
              Height = 17
              Caption = #1082#1091#1088#1077#1085#1080#1077
              TabOrder = 2
              OnClick = ChkBoxAnamSmokeClick
            end
            object ChkBoxAmanAlkohol: TCheckBox
              Left = 16
              Top = 56
              Width = 281
              Height = 17
              Caption = #1079#1083#1086#1091#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1072#1083#1082#1086#1075#1086#1083#1077#1084' ('#1073#1086#1083#1077#1077' 2 '#1088'/'#1085#1077#1076')'
              TabOrder = 3
            end
            object SpnEdtSigarCount: TSpinEdit
              Left = 83
              Top = 25
              Width = 45
              Height = 22
              MaxValue = 40
              MinValue = 1
              TabOrder = 4
              Value = 1
            end
            object BtnTemplAnamChldDes: TButton
              Left = 328
              Top = 103
              Width = 75
              Height = 25
              Caption = #1096#1072#1073#1083#1086#1085
              TabOrder = 5
              OnClick = BtnTemplAnamChldDesClick
            end
            object BtnTemplAnamAnthrDes: TButton
              Left = 328
              Top = 191
              Width = 75
              Height = 25
              Caption = #1096#1072#1073#1083#1086#1085
              TabOrder = 6
              OnClick = BtnTemplAnamAnthrDesClick
            end
            object SpnEdtSmokeAge: TSpinEdit
              Left = 278
              Top = 25
              Width = 45
              Height = 22
              MaxValue = 40
              MinValue = 1
              TabOrder = 7
              Value = 1
            end
            object CbBoxSmokePeriod: TComboBox
              Left = 328
              Top = 25
              Width = 74
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 8
              Text = #1084#1077#1089#1103#1094#1077#1074
              Items.Strings = (
                #1085#1077#1076#1077#1083#1100
                #1084#1077#1089#1103#1094#1077#1074
                #1083#1077#1090)
            end
          end
          object ChkBoxBadHabit: TCheckBox
            Left = 444
            Top = 2
            Width = 16
            Height = 17
            TabOrder = 2
            OnClick = ChkBoxBadHabitClick
          end
          object ChkBoxAnamnesAllergy: TCheckBox
            Left = 20
            Top = 2
            Width = 16
            Height = 17
            TabOrder = 3
            OnClick = ChkBoxAnamnesAllergyClick
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1040#1085#1076#1088#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1072#1085#1072#1084#1085#1077#1079
          ImageIndex = 1
          object GroupBox6: TGroupBox
            Left = 4
            Top = 4
            Width = 413
            Height = 125
            Caption = '         '#1054#1087#1077#1088#1072#1094#1080#1080' '#1080' '#1080#1085#1092#1077#1082#1094#1080#1080'   '
            TabOrder = 0
            object ChkBoxAndrVaricocele: TCheckBox
              Left = 16
              Top = 24
              Width = 153
              Height = 17
              Caption = #1086#1087#1077#1088#1072#1094#1080#1103' '#1048#1074#1072#1085#1080#1089#1089#1077#1074#1080#1095#1072
              TabOrder = 0
            end
            object ChkBoxAndrHydrocele: TCheckBox
              Left = 16
              Top = 48
              Width = 145
              Height = 17
              Caption = #1086#1087#1077#1088#1072#1094#1080#1103' '#1042#1080#1085#1082#1077#1083#1100#1084#1072#1085#1072
              TabOrder = 1
            end
            object ChkBoxAndrCryptorhism: TCheckBox
              Left = 16
              Top = 72
              Width = 145
              Height = 17
              Caption = #1085#1080#1079#1074#1077#1076#1077#1085#1080#1077' '#1103#1080#1095#1082#1072
              TabOrder = 2
            end
            object ChkBoxAndrParotit: TCheckBox
              Left = 192
              Top = 24
              Width = 145
              Height = 17
              Caption = #1089#1074#1080#1085#1082#1072' ('#1101#1087#1080#1076'.'#1087#1072#1088#1086#1090#1080#1090')'
              TabOrder = 3
            end
            object ChkBoxAndrCastracio: TCheckBox
              Left = 192
              Top = 48
              Width = 209
              Height = 17
              Caption = #1086#1076#1085#1086'- ('#1076#1074#1091#1093'-) '#1089#1090#1086#1088#1086#1085#1085#1103#1103' '#1082#1072#1089#1090#1088#1072#1094#1080#1103
              TabOrder = 4
            end
            object ChkBoxAndrAdenomOper: TCheckBox
              Left = 192
              Top = 72
              Width = 153
              Height = 17
              Caption = #1072#1076#1077#1085#1086#1084#1101#1082#1090#1086#1084#1080#1103
              TabOrder = 5
            end
            object ChkBoxAndrCircumcisio: TCheckBox
              Left = 16
              Top = 96
              Width = 97
              Height = 17
              Caption = #1086#1073#1088#1077#1079#1072#1085#1080#1077
              TabOrder = 6
            end
          end
          object GroupBox7: TGroupBox
            Left = 428
            Top = 4
            Width = 413
            Height = 261
            Caption = '         '#1055#1086#1083#1086#1074#1086#1081' '#1072#1085#1072#1084#1085#1077#1079'   '
            TabOrder = 1
            object LblSexPartner: TLabel
              Left = 16
              Top = 24
              Width = 100
              Height = 13
              Caption = #1087#1086#1083#1086#1074#1072#1103' '#1087#1072#1088#1090#1085#1077#1088#1096#1072
            end
            object LblAndrCoitusCount: TLabel
              Left = 16
              Top = 83
              Width = 119
              Height = 13
              Caption = #1095#1072#1089#1090#1086#1090#1072' '#1087#1086#1083#1086#1074#1086#1081' '#1078#1080#1079#1085#1080
            end
            object LblAndrOrgasmCount: TLabel
              Left = 16
              Top = 110
              Width = 130
              Height = 13
              Caption = #1095#1072#1089#1090#1086#1090#1072' '#1089#1077#1084#1103#1080#1079#1074#1077#1088#1078#1077#1085#1080#1081
            end
            object LblAndrOrgasmPeriod: TLabel
              Left = 208
              Top = 110
              Width = 58
              Height = 13
              Caption = #1088#1072#1079' '#1074' '#1089#1091#1090#1082#1080
            end
            object LblAndrZPPP: TLabel
              Left = 16
              Top = 149
              Width = 109
              Height = 13
              Caption = #1087#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1048#1055#1055#1055
            end
            object CbBoxSexPartnFemaleCount: TComboBox
              Left = 16
              Top = 40
              Width = 181
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 0
              Text = #1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1072#1103
              OnChange = CbBoxSexPartnFemaleCountChange
              Items.Strings = (
                #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
                #1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1072#1103
                #1085#1077#1089#1082#1086#1083#1100#1082#1086)
            end
            object CbBoxSexPartnFemaleRamdom: TComboBox
              Left = 208
              Top = 40
              Width = 181
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 1
              Text = #1087#1086#1089#1090#1086#1103#1085#1085#1072#1103' + '#1089#1083#1091#1095#1072#1081#1085#1099#1077
              Items.Strings = (
                #1087#1086#1089#1090#1086#1103#1085#1085#1072#1103' + '#1089#1083#1091#1095#1072#1081#1085#1099#1077
                #1074#1089#1077' '#1087#1086#1089#1090#1086#1103#1085#1085#1099#1077
                #1074#1089#1077' '#1089#1083#1091#1095#1072#1081#1085#1099#1077)
            end
            object SpnEdtAndrCoitusCount: TSpinEdit
              Left = 153
              Top = 79
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 2
              Value = 1
            end
            object CbBoxAndrCoitusPeriod: TComboBox
              Left = 208
              Top = 79
              Width = 97
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 3
              Text = #1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
              Items.Strings = (
                #1077#1078#1077#1076#1085#1077#1074#1085#1086
                #1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                #1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094
                #1088#1072#1079' '#1074' '#1075#1086#1076)
            end
            object SpnEdtAndrOrgasmCount: TSpinEdit
              Left = 153
              Top = 106
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 4
              Value = 1
            end
            object RchEdtAndrZPPP: TRichEdit
              Left = 16
              Top = 168
              Width = 305
              Height = 73
              Lines.Strings = (
                'RchEdtAndrZPPP')
              ScrollBars = ssVertical
              TabOrder = 5
            end
            object BtnTemplAndrZPPP: TButton
              Left = 328
              Top = 167
              Width = 75
              Height = 25
              Caption = #1096#1072#1073#1083#1086#1085
              TabOrder = 6
              OnClick = BtnTemplAndrZPPPClick
            end
          end
          object GroupBox11: TGroupBox
            Left = 4
            Top = 140
            Width = 413
            Height = 125
            Caption = '         '#1057#1077#1084#1077#1081#1085#1099#1081' '#1072#1085#1072#1084#1085#1077#1079'   '
            TabOrder = 2
            object CbBoxAndrMarriage: TComboBox
              Left = 16
              Top = 24
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = #1093#1086#1083#1086#1089#1090
              Items.Strings = (
                #1093#1086#1083#1086#1089#1090
                #1078#1077#1085#1072#1090
                #1088#1072#1079#1074#1077#1076#1077#1085)
            end
            object ChkBoxAndrChild: TCheckBox
              Left = 16
              Top = 56
              Width = 281
              Height = 17
              Caption = #1085#1072#1083#1080#1095#1080#1077' '#1076#1077#1090#1077#1081' '#1086#1090' '#1087#1072#1094#1080#1077#1085#1090#1072' '#1091' '#1083#1102#1073#1086#1081' '#1080#1079' '#1087#1072#1088#1090#1085#1077#1088#1096
              TabOrder = 1
              OnClick = ChkBoxAndrChildClick
            end
            object ChkBoxAndrPregnancy: TCheckBox
              Left = 16
              Top = 80
              Width = 337
              Height = 17
              Caption = #1085#1072#1083#1080#1095#1080#1077' '#1073#1077#1088#1077#1084#1077#1085#1085#1086#1089#1090#1077#1081' '#1086#1090' '#1087#1072#1094#1080#1077#1085#1090#1072' '#1091' '#1083#1102#1073#1086#1081' '#1080#1079' '#1087#1072#1088#1090#1085#1077#1088#1096
              TabOrder = 2
            end
            object SpnEdtAndrChildCount: TSpinEdit
              Left = 297
              Top = 53
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 1
              TabOrder = 3
              Value = 1
            end
          end
          object ChkBoxAndrOperation: TCheckBox
            Left = 20
            Top = 2
            Width = 16
            Height = 17
            TabOrder = 3
            OnClick = ChkBoxAndrOperationClick
          end
          object ChkBoxAnamnesFamily: TCheckBox
            Left = 20
            Top = 138
            Width = 16
            Height = 17
            TabOrder = 4
            OnClick = ChkBoxAnamnesFamilyClick
          end
          object ChkBoxAnamnesAndrSex: TCheckBox
            Left = 444
            Top = 2
            Width = 17
            Height = 17
            TabOrder = 5
            OnClick = ChkBoxAnamnesAndrSexClick
          end
        end
        object TabSheet12: TTabSheet
          Caption = #1043#1080#1085#1077#1082#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1072#1085#1072#1084#1085#1077#1079
          ImageIndex = 2
          object GroupBox14: TGroupBox
            Left = 4
            Top = 4
            Width = 413
            Height = 261
            Caption = '         '#1040#1082#1091#1096#1077#1088#1089#1082#1086'-'#1075#1080#1085#1077#1082#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1072#1085#1072#1084#1085#1077#1079'   '
            TabOrder = 0
            object LblGinMenarhe: TLabel
              Left = 16
              Top = 24
              Width = 50
              Height = 13
              Caption = 'menarhe c'
            end
            object LblGinMensesPeriod1: TLabel
              Left = 16
              Top = 64
              Width = 71
              Height = 13
              Caption = 'menses '#1095#1077#1088#1077#1079' '
            end
            object LblGinMensesPeriod2: TLabel
              Left = 140
              Top = 64
              Width = 27
              Height = 13
              Caption = #1076#1085#1077#1081' '
            end
            object LblGinMensesPeriod4: TLabel
              Left = 263
              Top = 64
              Width = 24
              Height = 13
              Caption = #1076#1085#1077#1081
            end
            object LblGinMensesPeriod3: TLabel
              Left = 196
              Top = 64
              Width = 12
              Height = 13
              Caption = #1087#1086
            end
            object LblGinLastMenses: TLabel
              Left = 16
              Top = 100
              Width = 93
              Height = 13
              Caption = #1087#1086#1089#1083#1077#1076#1085#1080#1077' menses'
            end
            object LblGinPregnancy: TLabel
              Left = 16
              Top = 144
              Width = 79
              Height = 13
              Caption = #1073#1077#1088#1077#1084#1077#1085#1085#1086#1089#1090#1077#1081
            end
            object LblGinChildBirth: TLabel
              Left = 174
              Top = 144
              Width = 30
              Height = 13
              Caption = #1088#1086#1076#1086#1074
            end
            object LblGinAbortion: TLabel
              Left = 280
              Top = 144
              Width = 41
              Height = 13
              Caption = #1072#1073#1086#1088#1090#1086#1074
            end
            object Bevel3: TBevel
              Left = 16
              Top = 48
              Width = 369
              Height = 2
            end
            object Bevel4: TBevel
              Left = 16
              Top = 128
              Width = 369
              Height = 2
            end
            object Bevel5: TBevel
              Left = 16
              Top = 176
              Width = 369
              Height = 2
            end
            object LblGinMarriage: TLabel
              Left = 16
              Top = 186
              Width = 109
              Height = 13
              Caption = #1089#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
            end
            object LblGinMenopauseAge1: TLabel
              Left = 234
              Top = 24
              Width = 6
              Height = 13
              Caption = #1089
            end
            object LblGinMenopauseAge2: TLabel
              Left = 294
              Top = 24
              Width = 17
              Height = 13
              Caption = #1083#1077#1090
            end
            object SpnEdtGinMenarhe: TSpinEdit
              Left = 74
              Top = 21
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 8
              TabOrder = 0
              Value = 8
            end
            object SpnEdtGinMensesPeriod: TSpinEdit
              Left = 92
              Top = 61
              Width = 45
              Height = 22
              MaxValue = 60
              MinValue = 7
              TabOrder = 1
              Value = 28
            end
            object SpnEdtGinMensesAge: TSpinEdit
              Left = 216
              Top = 61
              Width = 45
              Height = 22
              MaxValue = 10
              MinValue = 1
              TabOrder = 2
              Value = 5
            end
            object ChkBoxGinMenopause: TCheckBox
              Left = 152
              Top = 23
              Width = 81
              Height = 17
              Caption = #1084#1077#1085#1086#1087#1072#1091#1079#1072
              TabOrder = 3
              OnClick = ChkBoxGinMenopauseClick
            end
            object DTPickGinLastMensesDate: TDateTimePicker
              Left = 120
              Top = 96
              Width = 97
              Height = 21
              Date = 39854.394088541670000000
              Time = 39854.394088541670000000
              TabOrder = 4
            end
            object SpnEdtGinPregnancyCount: TSpinEdit
              Left = 103
              Top = 141
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 5
              Value = 0
            end
            object SpnEdtGinChildBirthCount: TSpinEdit
              Left = 211
              Top = 141
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 6
              Value = 0
            end
            object SpnEdtGinAbortionCount: TSpinEdit
              Left = 328
              Top = 141
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 7
              Value = 0
            end
            object SpnEdtGinMenopauseAge: TSpinEdit
              Left = 247
              Top = 21
              Width = 45
              Height = 22
              MaxValue = 60
              MinValue = 10
              TabOrder = 8
              Value = 45
            end
            object CbBoxGinMarriage: TComboBox
              Left = 136
              Top = 184
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 9
              Text = #1085#1077#1079#1072#1084#1091#1078#1077#1084
              Items.Strings = (
                #1085#1077#1079#1072#1084#1091#1078#1077#1084
                #1079#1072#1084#1091#1078#1077#1084
                #1088#1072#1079#1074#1077#1076#1077#1085#1072)
            end
          end
          object GroupBox15: TGroupBox
            Left = 428
            Top = 4
            Width = 413
            Height = 261
            Caption = '         '#1055#1086#1083#1086#1074#1086#1081' '#1072#1085#1072#1084#1085#1077#1079'   '
            TabOrder = 1
            object LblSexPartnerFemale: TLabel
              Left = 16
              Top = 24
              Width = 86
              Height = 13
              Caption = #1087#1086#1083#1086#1074#1086#1081' '#1087#1072#1088#1090#1085#1077#1088
            end
            object LblGinCoitusCount: TLabel
              Left = 16
              Top = 83
              Width = 119
              Height = 13
              Caption = #1095#1072#1089#1090#1086#1090#1072' '#1087#1086#1083#1086#1074#1086#1081' '#1078#1080#1079#1085#1080
            end
            object LblGinZPPP: TLabel
              Left = 16
              Top = 117
              Width = 109
              Height = 13
              Caption = #1087#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1048#1055#1055#1055
            end
            object CbBoxSexPartnMaleCount: TComboBox
              Left = 16
              Top = 40
              Width = 181
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 0
              Text = #1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1099#1081
              OnChange = CbBoxSexPartnMaleCountChange
              Items.Strings = (
                #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
                #1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1099#1081
                #1085#1077#1089#1082#1086#1083#1100#1082#1086)
            end
            object CbBoxSexPartnMaleRamdom: TComboBox
              Left = 208
              Top = 40
              Width = 181
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 1
              Text = #1087#1086#1089#1090#1086#1103#1085#1085#1099#1081' + '#1089#1083#1091#1095#1072#1081#1085#1099#1077
              Items.Strings = (
                #1087#1086#1089#1090#1086#1103#1085#1085#1099#1081' + '#1089#1083#1091#1095#1072#1081#1085#1099#1077
                #1074#1089#1077' '#1087#1086#1089#1090#1086#1103#1085#1085#1099#1077
                #1074#1089#1077' '#1089#1083#1091#1095#1072#1081#1085#1099#1077)
            end
            object SpnEdtGinCoitusCount: TSpinEdit
              Left = 153
              Top = 79
              Width = 45
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 2
              Value = 3
            end
            object CbBoxGinCoitusPeriod: TComboBox
              Left = 208
              Top = 79
              Width = 97
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 3
              Text = #1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
              Items.Strings = (
                #1077#1078#1077#1076#1085#1077#1074#1085#1086
                #1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                #1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094
                #1088#1072#1079' '#1074' '#1075#1086#1076)
            end
            object RchEdtGinZPPP: TRichEdit
              Left = 16
              Top = 136
              Width = 305
              Height = 73
              Lines.Strings = (
                'RchEdtAndrZPPP')
              ScrollBars = ssVertical
              TabOrder = 4
            end
            object BtnTemplGinZPPP: TButton
              Left = 328
              Top = 135
              Width = 75
              Height = 25
              Caption = #1096#1072#1073#1083#1086#1085
              TabOrder = 5
              OnClick = BtnTemplGinZPPPClick
            end
          end
          object ChkBoxAnamnesGinek: TCheckBox
            Left = 20
            Top = 2
            Width = 16
            Height = 17
            TabOrder = 2
            OnClick = ChkBoxAnamnesGinekClick
          end
          object ChkBoxAnamnesGinSex: TCheckBox
            Left = 445
            Top = 2
            Width = 15
            Height = 17
            TabOrder = 3
            OnClick = ChkBoxAnamnesGinSexClick
          end
        end
      end
      object Panel19: TPanel
        Left = -7
        Top = 249
        Width = 857
        Height = 2
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Status praesens et localis'
      ImageIndex = 2
      DesignSize = (
        865
        553)
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 848
        Height = 173
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '   '#1054#1073#1098#1077#1082#1090#1080#1074#1085#1099#1081' '#1089#1090#1072#1090#1091#1089'   '
        TabOrder = 0
        DesignSize = (
          848
          173)
        object BtnTemplateStPraesens: TButton
          Left = 764
          Top = 42
          Width = 75
          Height = 25
          Hint = 
            #1048#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091', '#1095#1090#1086#1073#1099' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1086#1073#1098#1077#1082#1090#1080#1074#1085#1086#1075#1086#13#10#1089 +
            #1090#1072#1090#1091#1089#1072' '#1087#1086' '#1075#1086#1090#1086#1074#1086#1084#1091' '#1096#1072#1073#1083#1086#1085#1091'. '#1055#1088#1080' '#1101#1090#1086#1084' '#1080#1084#1077#1102#1097#1080#1081#1089#1103' '#1090#1077#1082#1089#1090' '#1073#1091#1076#1077#1090' '#13#10#1079#1072#1084 +
            #1077#1085#1077#1085' '#1085#1072' '#1074#1085#1086#1074#1100' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1081'.'
          Anchors = [akRight, akBottom]
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnTemplateStPraesensClick
        end
        object Panel2: TPanel
          Left = 3
          Top = 16
          Width = 689
          Height = 25
          BevelOuter = bvNone
          TabOrder = 0
          object RdBtnStPraesensTempl: TRadioButton
            Left = 4
            Top = 4
            Width = 127
            Height = 17
            Caption = #1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1086#1087#1080#1089#1072#1090#1100
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RdBtnStPraesensTemplClick
          end
          object RdBtnStPraesensNonParticular: TRadioButton
            Left = 164
            Top = 4
            Width = 127
            Height = 17
            Caption = #1073#1077#1079' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081
            TabOrder = 1
            OnClick = RdBtnStPraesensNonParticularClick
          end
          object RdBtnStPreasensNonDynamics: TRadioButton
            Left = 324
            Top = 4
            Width = 175
            Height = 17
            Caption = #1073#1077#1079' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1086#1081' '#1076#1080#1085#1072#1084#1080#1082#1080
            TabOrder = 2
            OnClick = RdBtnStPreasensNonDynamicsClick
          end
        end
        object BtnStPraesensFoto: TButton
          Left = 764
          Top = 74
          Width = 75
          Height = 25
          Hint = 
            #1042#1086#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077#1089#1100' '#1082#1085#1086#1087#1082#1086#1081', '#1095#1090#1086#1073#1099' '#13#10#1079#1072#1075#1088#1091#1079#1080#1090#1100'/'#1087#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1074#1072#1096#1080' '#1080#1079#1086#1073#1088 +
            #1072#1078#1077#1085#1080#1103' '#13#10#1082#1072#1082#1080#1093'-'#1085#1080#1073#1091#1076#1100' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081' '#1089#1090#1088#1086#1077#1085#1080#1103', '#13#10#1072#1085#1086#1084#1072#1083#1080#1081', '#1087#1072#1090#1086#1083#1086#1075 +
            #1080#1095#1077#1089#1082#1080#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081'.'
          Anchors = [akRight, akBottom]
          Caption = #1057#1085#1080#1084#1082#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnStPraesensFotoClick
        end
        object RichEditStPraesens: TRichEdit
          Left = 16
          Top = 44
          Width = 727
          Height = 121
          Lines.Strings = (
            'RichEditStPraesens')
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object GroupBox12: TGroupBox
        Left = 8
        Top = 188
        Width = 848
        Height = 173
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '   '#1051#1086#1082#1072#1083#1100#1085#1099#1081' '#1089#1090#1072#1090#1091#1089'   '
        TabOrder = 1
        DesignSize = (
          848
          173)
        object BtnTemplateStLocalis: TButton
          Left = 764
          Top = 42
          Width = 75
          Height = 25
          Hint = 
            #1048#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091', '#1095#1090#1086#1073#1099' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1086#1087#1080#1089#1072#1085#1080#1103' '#1075#1077#1085#1080#1090#1072 +
            #1083#1080#1081#13#10#1087#1086' '#1075#1086#1090#1086#1074#1086#1084#1091' '#1096#1072#1073#1083#1086#1085#1091'. '#1055#1088#1080' '#1101#1090#1086#1084' '#1080#1084#1077#1102#1097#1080#1081#1089#1103' '#1090#1077#1082#1089#1090' '#1073#1091#1076#1077#1090' '#13#10#1079#1072#1084#1077#1085 +
            #1077#1085' '#1085#1072' '#1074#1085#1086#1074#1100' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1081'.'
          Anchors = [akRight, akBottom]
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnTemplateStLocalisClick
        end
        object Panel3: TPanel
          Left = 3
          Top = 16
          Width = 542
          Height = 25
          BevelOuter = bvNone
          TabOrder = 0
          object RdBtnStLocalisTempl: TRadioButton
            Left = 4
            Top = 4
            Width = 113
            Height = 17
            Caption = #1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1086#1087#1080#1089#1072#1090#1100
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RdBtnStLocalisTemplClick
          end
          object RdBtnStLocalisNonPathology: TRadioButton
            Left = 164
            Top = 4
            Width = 113
            Height = 17
            Caption = #1073#1077#1079' '#1087#1072#1090#1086#1083#1086#1075#1080#1080
            TabOrder = 1
            OnClick = RdBtnStLocalisNonPathologyClick
          end
          object RdBtnStLocalisNonDynamics: TRadioButton
            Left = 324
            Top = 4
            Width = 181
            Height = 17
            Caption = #1073#1077#1079' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1086#1081' '#1076#1080#1085#1072#1084#1080#1082#1080
            TabOrder = 2
            OnClick = RdBtnStLocalisNonDynamicsClick
          end
        end
        object BtnStLocalisFoto: TButton
          Left = 764
          Top = 74
          Width = 75
          Height = 25
          Hint = 
            #1042#1086#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077#1089#1100' '#1082#1085#1086#1087#1082#1086#1081', '#1095#1090#1086#1073#1099' '#13#10#1079#1072#1075#1088#1091#1079#1080#1090#1100'/'#1087#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1074#1072#1096#1080' '#1080#1079#1086#1073#1088 +
            #1072#1078#1077#1085#1080#1103' '#13#10#1082#1072#1082#1080#1093'-'#1085#1080#1073#1091#1076#1100' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081' '#1089#1090#1088#1086#1077#1085#1080#1103', '#13#10#1072#1085#1086#1084#1072#1083#1080#1081', '#1087#1072#1090#1086#1083#1086#1075 +
            #1080#1095#1077#1089#1082#1080#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081'.'
          Anchors = [akRight, akBottom]
          Caption = #1057#1085#1080#1084#1082#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnStLocalisFotoClick
        end
        object RichEditStLocalis: TRichEdit
          Left = 16
          Top = 44
          Width = 727
          Height = 121
          Lines.Strings = (
            'RichEditStLocalis')
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object GroupBox13: TGroupBox
        Left = 8
        Top = 372
        Width = 848
        Height = 173
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '   Prostata per rectum   '
        TabOrder = 2
        DesignSize = (
          848
          173)
        object BtnTemplateProstata: TButton
          Left = 764
          Top = 42
          Width = 75
          Height = 25
          Hint = 
            #1048#1089#1087#1086#1083#1100#1079#1091#1081#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091', '#1095#1090#1086#1073#1099' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1086#1087#1080#1089#1072#1085#1080#1103' '#13#10#1087#1088#1086#1089 +
            #1090#1072#1090#1099' '#1087#1086' '#1075#1086#1090#1086#1074#1086#1084#1091' '#1096#1072#1073#1083#1086#1085#1091'. '#1055#1088#1080' '#1101#1090#1086#1084' '#1080#1084#1077#1102#1097#1080#1081#1089#1103' '#1090#1077#1082#1089#1090' '#1073#1091#1076#1077#1090' '#13#10#1079#1072#1084#1077#1085 +
            #1077#1085' '#1085#1072' '#1074#1085#1086#1074#1100' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1081'.'
          Anchors = [akRight, akBottom]
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnTemplateProstataClick
        end
        object Panel4: TPanel
          Left = 3
          Top = 16
          Width = 550
          Height = 25
          BevelOuter = bvNone
          TabOrder = 0
          object RdBtnProstataTempl: TRadioButton
            Left = 4
            Top = 4
            Width = 113
            Height = 17
            Caption = #1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1086#1087#1080#1089#1072#1090#1100
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RdBtnProstataTemplClick
          end
          object RdBtnProstataNonPathology: TRadioButton
            Left = 164
            Top = 4
            Width = 113
            Height = 17
            Caption = #1073#1077#1079' '#1087#1072#1090#1086#1083#1086#1075#1080#1080
            TabOrder = 1
            OnClick = RdBtnProstataNonPathologyClick
          end
          object RdBtnProstataExamRefuse: TRadioButton
            Left = 324
            Top = 4
            Width = 197
            Height = 17
            Caption = #1086#1090' '#1086#1089#1084#1086#1090#1088#1072' '#1074#1086#1079#1076#1077#1088#1078#1072#1083#1089#1103
            TabOrder = 2
            OnClick = RdBtnProstataExamRefuseClick
          end
        end
        object RichEditProstata: TRichEdit
          Left = 16
          Top = 44
          Width = 727
          Height = 121
          Lines.Strings = (
            'RichEditProstata')
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1099#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
      ImageIndex = 3
      object Label16: TLabel
        Left = 16
        Top = 14
        Width = 210
        Height = 13
        Alignment = taRightJustify
        Caption = #1042#1082#1083#1072#1076#1099#1096'-'#1083#1080#1089#1090' '#1086#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 442
        Top = 14
        Width = 123
        Height = 13
        Caption = #1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1101#1103#1082#1091#1083#1103#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 442
        Top = 46
        Width = 159
        Height = 13
        Caption = #1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1075#1086#1088#1084#1086#1085#1086#1074' '#1082#1088#1086#1074#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 16
        Top = 46
        Width = 202
        Height = 13
        Caption = #1054#1073#1097#1077#1082#1083#1080#1085#1080#1095#1077#1089#1082#1080#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1082#1088#1086#1074#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GpBox2: TGroupBox
        Left = 435
        Top = 72
        Width = 413
        Height = 152
        Caption = '   '#1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056'   '
        TabOrder = 7
        object LblDatePCR: TLabel
          Left = 16
          Top = 22
          Width = 59
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = 'LblDatePCR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnPCRTemlate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#13#10#1072#1085#1072#1083#1080#1079#1086#1074' '#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnPCRTemlateClick
        end
        object Panel6: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnFotoPCR: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 2
          OnClick = BtnFotoPCRClick
        end
        object RichEditPCR: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 94
          Lines.Strings = (
            'RichEditPCR')
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object GpBox3: TGroupBox
        Left = 9
        Top = 395
        Width = 413
        Height = 152
        Caption = '   '#1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1048#1060#1040'   '
        TabOrder = 4
        object LblDateIFA: TLabel
          Left = 16
          Top = 22
          Width = 53
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1048#1060#1040
          Caption = 'LblDateIFA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Panel7: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnIFATemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#13#10#1072#1085#1072#1083#1080#1079#1086#1074' '#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1048#1060#1040
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnIFATemplateClick
        end
        object BtnFotoIFA: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 2
          OnClick = BtnFotoIFAClick
        end
        object RichEditIFA: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 94
          ScrollBars = ssVertical
          TabOrder = 3
          OnChange = RichEditIFAChange
        end
      end
      object GrBoxMazUr: TGroupBox
        Left = 435
        Top = 232
        Width = 413
        Height = 152
        Caption = '   GrBoxMazUr   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object LblDateMazUr: TLabel
          Left = 16
          Top = 22
          Width = 68
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1084#1080#1082#1088#1086#1089#1082#1086#1087#1080#1080' '#1089#1086#1089#1082#1086#1073#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Caption = 'LblDateMazUr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnMazUrTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#13#10#1084#1080#1082#1088#1086#1089#1082#1086#1087#1080#1080' '#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnMazUrTemplateClick
        end
        object Panel9: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnFotoMazUr: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1080#13#10#1076#1072#1085#1085#1086#1075#1086' '#1084#1072#1079#1082#1072' '#1080#1079' '#1091#1088#1077#1090#1088#1099
          Caption = #1057#1085#1080#1084#1082#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnFotoMazUrClick
        end
        object RichEditMazUr: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 94
          Lines.Strings = (
            'RichEditMazUr')
          ScrollBars = ssVertical
          TabOrder = 3
          OnChange = RichEditMazUrChange
        end
      end
      object GpBoxMazProst: TGroupBox
        Left = 435
        Top = 395
        Width = 413
        Height = 152
        Caption = '   '#1052#1072#1079#1086#1082' '#1089#1086#1082#1072' '#1087#1088#1086#1089#1090#1072#1090#1099'   '
        TabOrder = 9
        object LblDateMazProst: TLabel
          Left = 16
          Top = 22
          Width = 81
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1084#1080#1082#1088#1086#1089#1082#1086#1087#1080#1080' '#1089#1086#1082#1072' '#1087#1088#1086#1089#1090#1072#1090#1099
          Caption = 'LblDateMazProst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Panel10: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object BtnMazProstTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#13#10#1084#1080#1082#1088#1086#1089#1082#1086#1087#1080#1080' '#1089#1086#1082#1072' '#1087#1088#1086#1089#1090#1072#1090#1099
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnMazProstTemplateClick
        end
        object BtnFotoMazProst: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1080#13#10#1076#1072#1085#1085#1086#1075#1086' '#1084#1072#1079#1082#1072' '#1089#1086#1082#1072' '#1087#1088#1086#1089#1090#1072#1090#1099
          Caption = #1057#1085#1080#1084#1082#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnFotoMazProstClick
        end
        object RichEditMazProst: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 94
          Lines.Strings = (
            'RichEditMazProst')
          ScrollBars = ssVertical
          TabOrder = 3
          OnChange = RichEditMazProstChange
        end
      end
      object GpBox1: TGroupBox
        Left = 9
        Top = 72
        Width = 413
        Height = 152
        Caption = '   '#1042#1048#1063', '#1075#1077#1087#1072#1090#1080#1090' B, '#1089#1080#1092#1080#1083#1080#1089'   '
        TabOrder = 2
        object LblDate: TLabel
          Left = 146
          Top = 17
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LblRez: TLabel
          Left = 250
          Top = 17
          Width = 52
          Height = 13
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LblAIDS: TLabel
          Left = 34
          Top = 54
          Width = 23
          Height = 13
          Caption = #1042#1048#1063
        end
        object LblHBsAg: TLabel
          Left = 34
          Top = 90
          Width = 33
          Height = 13
          Caption = 'HBsAg'
        end
        object LblRW: TLabel
          Left = 34
          Top = 126
          Width = 43
          Height = 13
          Caption = #1050#1057#1056' RW'
        end
        object ChBoxAIDS: TCheckBox
          Left = 16
          Top = 52
          Width = 17
          Height = 17
          Hint = #1054#1090#1084#1077#1090#1100#1090#1077' '#1072#1085#1072#1083#1080#1079' '#1075#1072#1083#1086#1095#1082#1086#1081', '#1077#1089#1083#1080' '#13#10#1078#1077#1083#1072#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1077#1075#1086' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ChBoxAIDSClick
        end
        object ChBoxHBsAg: TCheckBox
          Left = 16
          Top = 88
          Width = 17
          Height = 17
          Hint = #1054#1090#1084#1077#1090#1100#1090#1077' '#1072#1085#1072#1083#1080#1079' '#1075#1072#1083#1086#1095#1082#1086#1081', '#1077#1089#1083#1080' '#13#10#1078#1077#1083#1072#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1077#1075#1086' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = ChBoxHBsAgClick
        end
        object ChBoxRW: TCheckBox
          Left = 16
          Top = 124
          Width = 17
          Height = 17
          Hint = #1054#1090#1084#1077#1090#1100#1090#1077' '#1072#1085#1072#1083#1080#1079' '#1075#1072#1083#1086#1095#1082#1086#1081', '#1077#1089#1083#1080' '#13#10#1078#1077#1083#1072#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1077#1075#1086' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = ChBoxRWClick
        end
        object DTPickAIDS: TDateTimePicker
          Left = 99
          Top = 48
          Width = 97
          Height = 21
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1085#1072' '#1042#1048#1063'-'#1080#1085#1092#1077#1082#1094#1080#1102
          Date = 39093.988285949080000000
          Time = 39093.988285949080000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = DTPickAIDSChange
        end
        object DTPickHBsAg: TDateTimePicker
          Left = 99
          Top = 84
          Width = 97
          Height = 21
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1074#1080#1088#1091#1089' '#1085#1072' '#1075#1077#1087#1072#1090#1080#1090#1072' '#1042
          Date = 39093.988391203710000000
          Time = 39093.988391203710000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = DTPickHBsAgChange
        end
        object DTPickRW: TDateTimePicker
          Left = 99
          Top = 120
          Width = 97
          Height = 21
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089
          Date = 39093.988458657400000000
          Time = 39093.988458657400000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnChange = DTPickRWChange
        end
        object CbBoxAIDS: TComboBox
          Left = 222
          Top = 48
          Width = 101
          Height = 21
          Hint = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1072#1085#1072#1083#1080#1079#1072' '#1085#1072' '#1042#1048#1063'-'#1080#1085#1092#1077#1082#1094#1080#1102
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = #1086#1090#1088#1080#1094'.'
          OnChange = CbBoxAIDSChange
          Items.Strings = (
            #1086#1090#1088#1080#1094'.'
            #1087#1086#1083#1086#1078'.')
        end
        object CbBoxHBsAg: TComboBox
          Left = 222
          Top = 84
          Width = 101
          Height = 21
          Hint = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1072#1085#1072#1083#1080#1079#1072' '#1085#1072' '#1074#1080#1088#1091#1089' '#1075#1077#1087#1072#1090#1080#1090#1072' '#1042
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = #1086#1090#1088#1080#1094'.'
          OnChange = CbBoxHBsAgChange
          Items.Strings = (
            #1086#1090#1088#1080#1094'.'
            #1087#1086#1083#1086#1078'.')
        end
        object CbBoxRW: TComboBox
          Left = 222
          Top = 120
          Width = 101
          Height = 21
          Hint = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1072#1085#1072#1083#1080#1079#1072' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          Text = #1086#1090#1088#1080#1094'.'
          OnChange = CbBoxRWChange
          Items.Strings = (
            #1086#1090#1088#1080#1094'.'
            #1087#1086#1083#1086#1078'.')
        end
        object BtnFotoAIDS: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 3
          OnClick = BtnFotoAIDSClick
        end
        object BtnFotoHBV: TButton
          Left = 329
          Top = 84
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 7
          OnClick = BtnFotoHBVClick
        end
        object BtnFotoRW: TButton
          Left = 329
          Top = 120
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1086#1082
          TabOrder = 11
          OnClick = BtnFotoRWClick
        end
      end
      object GpBox4: TGroupBox
        Left = 9
        Top = 232
        Width = 413
        Height = 152
        Caption = '    '#1040#1085#1072#1083#1080#1079#1099' '#1084#1086#1095#1080'   '
        TabOrder = 3
        object LblDateOAM: TLabel
          Left = 16
          Top = 22
          Width = 61
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#13#10#1086#1073#1097#1077#1075#1086' '#1072#1085#1072#1083#1080#1079#1072' '#1084#1086#1095#1080
          Caption = 'LblDateOAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnOAMTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074#13#10#1086#1073#1097#1077#1075#1086' '#1072#1085#1072#1083#1080#1079#1072' '#1084#1086#1095#1080
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnOAMTemplateClick
        end
        object Panel8: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object RichEditOAM: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 94
          Lines.Strings = (
            'RichEditOAM')
          ScrollBars = ssVertical
          TabOrder = 2
          OnChange = RichEditOAMChange
        end
      end
      object Panel11: TPanel
        Left = 16
        Top = 31
        Width = 233
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 10
      end
      object BtnLuesListClickt: TButton
        Left = 338
        Top = 8
        Width = 75
        Height = 25
        Hint = 
          #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1080#1083#1080' '#1079#1072#1087#1086#1083#1085#1080#1090#1100' '#1083#1080#1089#1090'-'#1074#1082#1083#1072#1076#1099#1096' '#13#10'"'#1054#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ' +
          #1073#1086#1083#1100#1085#1086#1075#1086' '#1085#1072' '#1089#1080#1092#1080#1083#1080#1089'"'#13#10#1082' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1082#1072#1088#1090#1077' '#1072#1084#1073#1091#1083#1072#1090#1086#1088#1085#1086#1075#1086' '#1073#1086#1083#1100#1085#1086#1075#1086 +
          ','#13#10#1091#1090#1074#1077#1088#1078#1076#1077#1085#1085#1086#1075#1086' '#1087#1088#1080#1082#1072#1079#1086#1084' '#8470'2 '#1052#1080#1085#1079#1076#1088#1072#1074#1072' '#1056#1060' '#1086#1090' 10.01.1995 '#1075'.'
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnLuesListClicktClick
      end
      object BtnSpermGrList: TButton
        Left = 764
        Top = 8
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        TabOrder = 5
        OnClick = BtnSpermGrListClick
      end
      object Panel13: TPanel
        Left = 442
        Top = 31
        Width = 233
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 11
      end
      object Panel5: TPanel
        Left = 442
        Top = 63
        Width = 233
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 12
      end
      object BtnBloodHormon: TButton
        Left = 764
        Top = 40
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        TabOrder = 6
        OnClick = BtnBloodHormonClick
      end
      object Panel12: TPanel
        Left = 16
        Top = 63
        Width = 233
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 13
      end
      object BtnBloodTest: TButton
        Left = 338
        Top = 40
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        TabOrder = 1
        OnClick = BtnBloodTestClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1083#1100#1085#1099#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
      ImageIndex = 4
      object GrBoxUZIren: TGroupBox
        Left = 8
        Top = 8
        Width = 413
        Height = 264
        Caption = '   '#1059#1047#1048' '#1087#1086#1095#1077#1082' '#1080' '#1084#1086#1095#1077#1074#1086#1075#1086' '#1087#1091#1079#1099#1088#1103'   '
        TabOrder = 0
        object LblUZIRen: TLabel
          Left = 16
          Top = 22
          Width = 52
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = 'LblUZIRen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnUZIRenTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1059#1047#1048' '#1087#1086#1095#1077#1082' '#1080' '#1084#1086#1095#1077#1074#1086#1075#1086' '#1087#1091#1079#1099#1088#1103
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnUZIRenTemplateClick
        end
        object BtnUZIRenFotos: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1082#1080
          TabOrder = 1
          OnClick = BtnUZIRenFotosClick
        end
        object RichEditUZIRen: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditUZIRen')
          ScrollBars = ssVertical
          TabOrder = 2
          OnChange = RichEditUZIRenChange
        end
        object Panel14: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
      object GrBoxDryUr: TGroupBox
        Left = 435
        Top = 8
        Width = 413
        Height = 264
        Caption = '   "'#1057#1091#1093#1072#1103'" '#1087#1077#1088#1077#1076#1085#1103#1103' '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1103'   '
        TabOrder = 2
        object LblUrScopiaDry: TLabel
          Left = 16
          Top = 22
          Width = 74
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = 'LblUrScopiaDry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnUrScopiaDryTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1087#1077#1088#1077#1076#1085#1077#1081' '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1080
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnUrScopiaDryTemplateClick
        end
        object BtnUrScopiaDryFotos: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1082#1080
          TabOrder = 1
          OnClick = BtnUrScopiaDryFotosClick
        end
        object RichEditUrScopiaDry: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditUrScopiaDry')
          ScrollBars = ssVertical
          TabOrder = 2
          OnChange = RichEditUrScopiaDryChange
        end
        object Panel16: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
      object GrBoxUZIprost: TGroupBox
        Left = 8
        Top = 282
        Width = 413
        Height = 264
        Caption = '   '#1059#1047#1048' '#1075#1077#1085#1080#1090#1072#1083#1080#1081' '#1080' '#1087#1088#1086#1089#1090#1072#1090#1099'   '
        TabOrder = 1
        object LblUziGenit: TLabel
          Left = 16
          Top = 22
          Width = 54
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = 'LblUziGenit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnUZIGenitTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1059#1047#1048' '#1075#1077#1085#1080#1090#1072#1083#1080#1081' '#1080' '#1087#1088#1086#1089#1090#1072#1090#1099
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnUZIGenitTemplateClick
        end
        object BtnUZIGenitFotos: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1082#1080
          TabOrder = 1
          OnClick = BtnUZIGenitFotosClick
        end
        object RichEditUZIGenit: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditUZIGenit')
          ScrollBars = ssVertical
          TabOrder = 2
          OnChange = RichEditUZIGenitChange
        end
        object Panel15: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
      object GrBoxIrrigUr: TGroupBox
        Left = 435
        Top = 282
        Width = 414
        Height = 264
        Caption = '   '#1048#1088#1088#1080#1075#1072#1094#1080#1086#1085#1085#1072#1103' '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1103'   '
        TabOrder = 3
        object LblUrScopiaIrrig: TLabel
          Left = 16
          Top = 22
          Width = 75
          Height = 13
          Hint = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1072#1085#1072#1083#1080#1079#1072#13#10#1085#1072' '#1048#1055#1055#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1055#1062#1056
          Caption = 'LblUrScopiaIrrig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object BtnUrScopiaIrrigTemplate: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1064#1072#1073#1083#1086#1085' '#1074#1074#1086#1076#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1080#1088#1088#1080#1075#1072#1094#1080#1086#1085#1085#1086#1081' '#1091#1088#1077#1090#1088#1086#1089#1082#1086#1087#1080#1080
          Caption = #1064#1072#1073#1083#1086#1085
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnUrScopiaIrrigTemplateClick
        end
        object BtnUrScopiaIrrigFotos: TButton
          Left = 329
          Top = 48
          Width = 75
          Height = 25
          Caption = #1057#1085#1080#1084#1082#1080
          TabOrder = 1
          OnClick = BtnUrScopiaIrrigFotosClick
        end
        object RichEditUrScopiaIrrig: TRichEdit
          Left = 16
          Top = 48
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditUrScopiaIrrig')
          ScrollBars = ssVertical
          TabOrder = 2
          OnChange = RichEditUrScopiaIrrigChange
        end
        object Panel17: TPanel
          Left = 16
          Top = 39
          Width = 233
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1051#1077#1095#1077#1085#1080#1077' '#1080' '#1076#1080#1072#1075#1085#1086#1079
      ImageIndex = 5
      object Bevel1: TBevel
        Left = 8
        Top = 283
        Width = 841
        Height = 2
      end
      object Bevel2: TBevel
        Left = 8
        Top = 291
        Width = 841
        Height = 2
      end
      object GroupBox18: TGroupBox
        Left = 8
        Top = 8
        Width = 413
        Height = 264
        Caption = '   '#1052#1077#1076#1080#1082#1072#1084#1077#1085#1090#1086#1079#1085#1086#1077' '#1083#1077#1095#1077#1085#1080#1077'   '
        TabOrder = 0
        object RichEditDrug: TRichEdit
          Left = 16
          Top = 24
          Width = 305
          Height = 225
          Lines.Strings = (
            'RichEditDrugs')
          ScrollBars = ssVertical
          TabOrder = 1
          OnChange = RichEditDrugChange
        end
        object BtnSelDrug: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1041#1099#1089#1090#1088#1099#1081' '#1074#1074#1086#1076' '#1089#1087#1080#1089#1082#1072' '#1084#1077#1076#1080#1082#1072#1084#1077#1085#1090#1086#1074
          Caption = #1042#1099#1073#1088#1072#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnSelDrugClick
        end
      end
      object GroupBox19: TGroupBox
        Left = 435
        Top = 8
        Width = 413
        Height = 264
        Caption = '   '#1052#1077#1089#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'   '
        TabOrder = 1
        object BtnSelManip: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1041#1099#1089#1090#1088#1099#1081' '#1074#1074#1086#1076' '#1089#1087#1080#1089#1082#1072' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081
          Caption = #1042#1099#1073#1088#1072#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnSelManipClick
        end
        object RichEditManip: TRichEdit
          Left = 16
          Top = 24
          Width = 305
          Height = 225
          Lines.Strings = (
            'RichEditManip')
          ScrollBars = ssVertical
          TabOrder = 1
          OnChange = RichEditManipChange
        end
      end
      object GroupBox20: TGroupBox
        Left = 8
        Top = 304
        Width = 413
        Height = 242
        Caption = '   '#1044#1080#1072#1075#1085#1086#1079'   '
        TabOrder = 2
        object RichEditDs: TRichEdit
          Left = 16
          Top = 26
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditDs')
          ScrollBars = ssVertical
          TabOrder = 1
          OnChange = RichEditDsChange
        end
        object BtnSelDs: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1041#1099#1089#1090#1088#1099#1081' '#1074#1074#1086#1076' '#1089#1087#1080#1089#1082#1072' '#1076#1080#1072#1075#1085#1086#1079#1086#1074
          Caption = #1042#1099#1073#1088#1072#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnSelDsClick
        end
      end
      object GroupBox21: TGroupBox
        Left = 435
        Top = 304
        Width = 413
        Height = 242
        Caption = '   '#1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080'   '
        TabOrder = 3
        object RichEditRecom: TRichEdit
          Left = 16
          Top = 26
          Width = 305
          Height = 201
          Lines.Strings = (
            'RichEditRecom')
          ScrollBars = ssVertical
          TabOrder = 1
          OnChange = RichEditRecomChange
        end
        object BtnSelRecom: TButton
          Left = 329
          Top = 16
          Width = 75
          Height = 25
          Hint = #1041#1099#1089#1090#1088#1099#1081' '#1074#1074#1086#1076' '#1089#1087#1080#1089#1082#1072' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1081
          Caption = #1042#1099#1073#1088#1072#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnSelRecomClick
        end
      end
    end
  end
  object BtnCancel: TButton
    Left = 798
    Top = 633
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object BtnSave: TButton
    Left = 718
    Top = 633
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnPrev: TButton
    Left = 528
    Top = 633
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '<< '#1053#1072#1079#1072#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnPrevClick
  end
  object BtnNext: TButton
    Left = 608
    Top = 633
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077' >>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnNextClick
  end
  object BtnHlp: TButton
    Left = 8
    Top = 633
    Width = 75
    Height = 25
    Caption = #1055#1086#1084#1086#1097#1100
    Enabled = False
    TabOrder = 5
  end
  object NiceSetFrmStatPat: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\test'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 784
    Top = 8
  end
end
