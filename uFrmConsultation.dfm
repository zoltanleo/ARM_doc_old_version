object FrmConsultation: TFrmConsultation
  Left = 239
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1087#1088#1080#1077#1084#1086#1074' '#1074#1088#1072#1095#1077#1081
  ClientHeight = 551
  ClientWidth = 1040
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
    1040
    551)
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBtnBar: TPanel
    Left = 0
    Top = 495
    Width = 1040
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1040
      56)
    object LblWarning: TLabel
      Left = 456
      Top = 25
      Width = 203
      Height = 13
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1042#1072#1096#1072' '#1090#1072#1073#1083#1080#1094#1072' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1072'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblStuffWarn: TLabel
      Left = 576
      Top = 8
      Width = 145
      Height = 13
      Caption = #1042#1088#1072#1095' '#1095#1080#1089#1083#1080#1090#1089#1103' '#1091#1074#1086#1083#1077#1085#1085#1099#1084' ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BtnClose: TButton
      Left = 956
      Top = 16
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = BtnCloseClick
    end
    object BtnCancel: TButton
      Left = 796
      Top = 16
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = BtnCancelClick
    end
    object BtnSave: TButton
      Left = 877
      Top = 16
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 5
      OnClick = BtnHlpClick
    end
    object BtnPrintDocSched: TButton
      Left = 89
      Top = 16
      Width = 75
      Height = 25
      Hint = 
        #1055#1077#1095#1072#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103'  '#1087#1088#1080#1077#1084#1072' '#1074#1088#1072#1095#1072#13#10'(<Ctrl>+<Shift>+<P>) - '#1076#1083#1103' '#1092#1086#1088#1084 +
        #1072#1090#1072' '#1040'4'#13#10'(<Ctrl>+<P>) - '#1076#1083#1103' '#1092#1086#1088#1084#1072#1090#1072' '#1040'5'
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 4
      OnClick = BtnPrintDocSchedClick
    end
    object CbBoxPrintFmt: TComboBox
      Left = 170
      Top = 18
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = #1092#1086#1088#1084#1072#1090' '#1040'5'
      OnChange = CbBoxPrintFmtChange
      Items.Strings = (
        #1092#1086#1088#1084#1072#1090' '#1040'5'
        #1092#1086#1088#1084#1072#1090' '#1040'4')
    end
  end
  object PnlViewTblConsult: TPanel
    Left = 0
    Top = 410
    Width = 1040
    Height = 76
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = 'PnlViewTblConsult'
    TabOrder = 1
    DesignSize = (
      1040
      76)
    object SpBtnConsAdd: TSpeedButton
      Left = 1018
      Top = 5
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1074#1088#1072#1095#1072' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Wingdings 2'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777711777
        7777777777711777777777777771177777777777111111117777777711111111
        7777777777711777777777777771177777777777777117777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnConsAddClick
    end
    object SpBtnConsEdit: TSpeedButton
      Left = 1018
      Top = 24
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1074#1088#1072#1095#1072' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl> + E)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Wingdings 2'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777117117117777777711711711
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnConsEditClick
    end
    object SpBtnConsDelete: TSpeedButton
      Left = 1018
      Top = 43
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Wingdings 2'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        777777777C777C7777777777CCC7CCC7777777777CCCCC777777777777CCC777
        777777777CCCCC7777777777CCC7CCC7777777777C777C777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnConsDeleteClick
    end
    object DBGridTblConsult: TDBGridEh
      Left = 10
      Top = -3
      Width = 1003
      Height = 71
      AllowedOperations = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DMFIB.DSConsult
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghColumnResize, dghAutoFitRowHeight]
      ParentShowHint = False
      ReadOnly = True
      RowHeight = 4
      RowLines = 3
      RowSizingAllowed = True
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      UseMultiTitle = True
      OnDrawColumnCell = DBGridTblConsultDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'FIODOC'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1042#1088#1072#1095
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 134
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'CLIN_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1051#1055#1059
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 121
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKMONDAY_STRGEN'
          Footers = <>
          Title.Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKTUESDAY_STRGEN'
          Footers = <>
          Title.Caption = #1042#1090#1086#1088#1085#1080#1082
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKWEDNES_STRGEN'
          Footers = <>
          Title.Caption = #1057#1088#1077#1076#1072
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKTHURS_STRGEN'
          Footers = <>
          Title.Caption = #1063#1077#1090#1074#1077#1088#1075
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKFRIDAY_STRGEN'
          Footers = <>
          Title.Caption = #1055#1103#1090#1085#1080#1094#1072
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKSATUR_STRGEN'
          Footers = <>
          Title.Caption = #1057#1091#1073#1073#1086#1090#1072
          ToolTips = True
          Width = 100
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'WORKSUNDAY_STRGEN'
          Footers = <>
          Title.Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
          ToolTips = True
          Width = 100
          WordWrap = True
        end>
    end
  end
  object PnlEdtTblCosult: TPanel
    Left = 0
    Top = 66
    Width = 1040
    Height = 335
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1040
      335)
    object Label9: TLabel
      Left = 320
      Top = 60
      Width = 85
      Height = 13
      Caption = #1063#1072#1089#1099' '#1087#1088#1080#1077#1084#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object LblWork09: TLabel
      Left = 152
      Top = 214
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork02: TLabel
      Left = 248
      Top = 106
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak01: TLabel
      Left = 473
      Top = 106
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak02: TLabel
      Left = 569
      Top = 106
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork03: TLabel
      Left = 152
      Top = 133
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork04: TLabel
      Left = 248
      Top = 133
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak03: TLabel
      Left = 473
      Top = 133
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak04: TLabel
      Left = 569
      Top = 133
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork05: TLabel
      Left = 152
      Top = 160
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork06: TLabel
      Left = 248
      Top = 160
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak05: TLabel
      Left = 473
      Top = 160
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak06: TLabel
      Left = 569
      Top = 160
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork07: TLabel
      Left = 152
      Top = 187
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork08: TLabel
      Left = 248
      Top = 187
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak07: TLabel
      Left = 473
      Top = 187
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak08: TLabel
      Left = 569
      Top = 187
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork10: TLabel
      Left = 248
      Top = 214
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak09: TLabel
      Left = 473
      Top = 214
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak10: TLabel
      Left = 569
      Top = 214
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork11: TLabel
      Left = 152
      Top = 241
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork12: TLabel
      Left = 248
      Top = 241
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak11: TLabel
      Left = 473
      Top = 241
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak12: TLabel
      Left = 569
      Top = 241
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork13: TLabel
      Left = 152
      Top = 268
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblWork14: TLabel
      Left = 248
      Top = 268
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblBreak13: TLabel
      Left = 473
      Top = 268
      Width = 6
      Height = 13
      Caption = #1089
    end
    object LblBreak14: TLabel
      Left = 569
      Top = 268
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object LblWork01: TLabel
      Left = 152
      Top = 106
      Width = 6
      Height = 13
      Caption = 'c'
    end
    object Label8: TLabel
      Left = 28
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
    object Label2: TLabel
      Left = 449
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
      Left = 1
      Top = 48
      Width = 1038
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvLowered
      TabOrder = 44
    end
    object CbBoxWorkBegMonday: TComboBox
      Left = 164
      Top = 102
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndMonday: TComboBox
      Left = 266
      Top = 102
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 4
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegMonday: TComboBox
      Left = 485
      Top = 102
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 6
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndMonday: TComboBox
      Left = 587
      Top = 102
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 7
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegTuesday: TComboBox
      Left = 164
      Top = 129
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 9
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndTuesday: TComboBox
      Left = 266
      Top = 129
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 10
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegTuesday: TComboBox
      Left = 485
      Top = 129
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 12
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndTuesday: TComboBox
      Left = 587
      Top = 129
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 13
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegWednes: TComboBox
      Left = 164
      Top = 156
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 15
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndWednes: TComboBox
      Left = 266
      Top = 156
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 16
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegWednes: TComboBox
      Left = 485
      Top = 156
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 18
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndWednes: TComboBox
      Left = 587
      Top = 156
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 19
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegThurs: TComboBox
      Left = 164
      Top = 183
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 21
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndThurs: TComboBox
      Left = 266
      Top = 183
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 22
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegThurs: TComboBox
      Left = 485
      Top = 183
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 24
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndThurs: TComboBox
      Left = 587
      Top = 183
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 25
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegFriday: TComboBox
      Left = 164
      Top = 210
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 27
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndFriday: TComboBox
      Left = 266
      Top = 210
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 28
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegFriday: TComboBox
      Left = 485
      Top = 210
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 30
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndFriday: TComboBox
      Left = 587
      Top = 210
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 31
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegSatur: TComboBox
      Left = 164
      Top = 237
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 33
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndSatur: TComboBox
      Left = 266
      Top = 237
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 34
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegSatur: TComboBox
      Left = 485
      Top = 237
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 36
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndSatur: TComboBox
      Left = 587
      Top = 237
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 37
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkBegSunday: TComboBox
      Left = 164
      Top = 264
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 39
      Text = '8:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxWorkEndSunday: TComboBox
      Left = 266
      Top = 264
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 29
      TabOrder = 40
      Text = '21:30'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakBegSunday: TComboBox
      Left = 485
      Top = 264
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 42
      Text = '12:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object CbBoxBreakEndSunday: TComboBox
      Left = 587
      Top = 264
      Width = 65
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 12
      TabOrder = 43
      Text = '13:00'
      Items.Strings = (
        '7:00'
        '7:30'
        '8:00'
        '8:30'
        '9:00'
        '9:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30')
    end
    object ChkBoxBreakMonday: TCheckBox
      Left = 400
      Top = 105
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 5
      OnClick = ChkBoxBreakMondayClick
    end
    object ChkBoxBreakTuesday: TCheckBox
      Left = 400
      Top = 132
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 11
      OnClick = ChkBoxBreakTuesdayClick
    end
    object ChkBoxBreakWednes: TCheckBox
      Left = 400
      Top = 159
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 17
      OnClick = ChkBoxBreakWednesClick
    end
    object ChkBoxBreakThurs: TCheckBox
      Left = 400
      Top = 186
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 23
      OnClick = ChkBoxBreakThursClick
    end
    object ChkBoxBreakFriday: TCheckBox
      Left = 400
      Top = 213
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 29
      OnClick = ChkBoxBreakFridayClick
    end
    object ChkBoxBreakSatur: TCheckBox
      Left = 400
      Top = 240
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 35
      OnClick = ChkBoxBreakSaturClick
    end
    object ChkBoxBreakSunday: TCheckBox
      Left = 400
      Top = 267
      Width = 70
      Height = 17
      Caption = #1087#1077#1088#1077#1088#1099#1074
      TabOrder = 41
      OnClick = ChkBoxBreakSundayClick
    end
    object ChkBoxWorkMonday: TCheckBox
      Left = 32
      Top = 105
      Width = 113
      Height = 17
      Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ChkBoxWorkMondayClick
    end
    object ChkBoxWorkTuesday: TCheckBox
      Left = 32
      Top = 132
      Width = 100
      Height = 17
      Caption = #1042#1090#1086#1088#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = ChkBoxWorkTuesdayClick
    end
    object ChkBoxWorkWednes: TCheckBox
      Left = 32
      Top = 159
      Width = 81
      Height = 17
      Caption = #1057#1088#1077#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = ChkBoxWorkWednesClick
    end
    object ChkBoxWorkThurs: TCheckBox
      Left = 32
      Top = 186
      Width = 100
      Height = 17
      Caption = #1063#1077#1090#1074#1077#1088#1075
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = ChkBoxWorkThursClick
    end
    object ChkBoxWorkFriday: TCheckBox
      Left = 32
      Top = 213
      Width = 100
      Height = 17
      Caption = #1055#1103#1090#1085#1080#1094#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
      OnClick = ChkBoxWorkFridayClick
    end
    object ChkBoxWorkSatur: TCheckBox
      Left = 32
      Top = 240
      Width = 100
      Height = 17
      Caption = #1057#1091#1073#1073#1086#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      OnClick = ChkBoxWorkSaturClick
    end
    object ChkBoxWorkSunday: TCheckBox
      Left = 32
      Top = 267
      Width = 100
      Height = 17
      Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
      OnClick = ChkBoxWorkSundayClick
    end
    object DBLookupCBDocChoice: TDBLookupComboboxEh
      Left = 124
      Top = 12
      Width = 263
      Height = 21
      EditButtons = <
        item
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1076#1086#1082#1090#1086#1088#1086#1074' (<Ctrl> + E)'
          Style = ebsEllipsisEh
          OnClick = DBLookupCBDocChoiceEditButtons0Click
        end>
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Tooltips = True
      Visible = True
    end
    object DBLookupCBClinChoice: TDBLookupComboboxEh
      Left = 554
      Top = 12
      Width = 263
      Height = 21
      EditButtons = <
        item
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1083#1077#1095#1077#1073#1085#1099#1093' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1081' (<Ctrl> + E)'
          Style = ebsEllipsisEh
          OnClick = DBLookupCBClinChoiceEditButtons0Click
        end>
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Tooltips = True
      Visible = True
    end
  end
  object PnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 1040
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object LblCapt: TLabel
      Left = 267
      Top = 24
      Width = 36
      Height = 13
      Caption = 'LblCapt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object NiceSetFrmConsultation: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'CbBoxPrintFmt.ItemIndex')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 408
    Top = 513
  end
  object AppEventsFrmConsult: TApplicationEvents
    OnShortCut = AppEventsFrmConsultShortCut
    Left = 376
    Top = 512
  end
  object DSetConsult: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      '    CONS.ID_CONSULT,'
      '--    CONS.CONS_LINKDOCTOR,'
      '--    CONS.CONS_LINKCLINIC,'
      '--    CONS.WORKMONDAY,'
      
        '    IIF(CONS.WORKMONDAY = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKB' +
        'EGMONDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDMONDAY_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKMONDAY = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089 +
        ' '#39'||CONS.BREAKBEGMONDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDMONDAY_STR|' +
        '|'#39' '#1095'.)'#39')'
      '            ) AS WORKMONDAY_TOTAL,'
      '--    CONS.WORKTUESDAY,'
      
        '    IIF(CONS.WORKTUESDAY = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORK' +
        'BEGTUESDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDTUESDAY_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKTUESDAY = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' ' +
        #1089' '#39'||CONS.BREAKBEGTUESDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDTUESDAY_S' +
        'TR||'#39' '#1095'.)'#39')'
      '            ) AS WORKTUESDAY_TOTAL,'
      '--    CONS.WORKWEDNES,'
      
        '    IIF(CONS.WORKWEDNES = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKB' +
        'EGWEDNES_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDWEDNES_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKWEDNES = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089 +
        ' '#39'||CONS.BREAKBEGWEDNES_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDWEDNES_STR|' +
        '|'#39' '#1095'.)'#39')'
      '            ) AS WORKWEDNES_TOTAL,'
      '--    CONS.WORKTHURS,'
      
        '    IIF(CONS.WORKTHURS = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKBE' +
        'GTHURS_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDTHURS_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKTHURS = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089' ' +
        #39'||CONS.BREAKBEGTHURS_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDTHURS_STR||'#39' ' +
        #1095'.)'#39')'
      '            ) AS WORKTHURS_TOTAL,'
      '--    CONS.WORKFRIDAY,'
      
        '    IIF(CONS.WORKFRIDAY = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKB' +
        'EGFRIDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDFRIDAY_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKFRIDAY = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089 +
        ' '#39'||CONS.BREAKBEGFRIDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDFRIDAY_STR|' +
        '|'#39' '#1095'.)'#39')'
      '            ) AS WORKFRIDAY_TOTAL,'
      '--    CONS.WORKSATUR,'
      
        '    IIF(CONS.WORKSATUR = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKBE' +
        'GSATUR_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDSATUR_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKSATUR = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089' ' +
        #39'||CONS.BREAKBEGSATUR_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDSATUR_STR||'#39' ' +
        #1095'.)'#39')'
      '            ) AS WORKSATUR_TOTAL,'
      '--    CONS.WORKSUNDAY,'
      
        '    IIF(CONS.WORKSUNDAY = 0,'#39#1085#1077#1090' '#1087#1088#1080#1077#1084#1072#39', '#39#1087#1088#1080#1077#1084' '#1089' '#39'||CONS.WORKB' +
        'EGSUNDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.WORKENDSUNDAY_STR||'#39' '#1095'.'#39'||'
      
        '        IIF(CONS.BREAKSUNDAY = 0, '#39' ('#1073#1077#1079' '#1087#1077#1088#1077#1088#1099#1074#1072')'#39','#39' ('#1087#1077#1088#1077#1088#1099#1074' '#1089 +
        ' '#39'||CONS.BREAKBEGSUNDAY_STR||'#39' '#1095'. '#1076#1086' '#39'||CONS.BREAKENDSUNDAY_STR|' +
        '|'#39' '#1095'.)'#39')'
      '            ) AS WORKSUNDAY_TOTAL,'
      '    D.DOC_LASTNAME,'
      '    D.DOC_FIRSTNAME,'
      '    D.DOC_THIRDNAME,'
      
        '    D.DOC_LASTNAME||'#39' '#39'||D.DOC_FIRSTNAME||'#39' '#39'||D.DOC_THIRDNAME A' +
        'S FULL_DOCNAME,'
      '    IIF(D.DOC_STEPEN = 0,'#39#39','
      
        '        IIF(D.DOC_STEPEN = 1,'#39#1082#1072#1085#1076'.'#1084#1077#1076'.'#1085#1072#1091#1082#39','#39#1076#1086#1082#1090'.'#1084#1077#1076'.'#1085#1072#1091#1082#39')||'#39 +
        ', '#39')||'
      '    IIF(UPPER(D.DOC_PROFIL) = '#39#1059#1047#1048#39','#39#1074#1088#1072#1095' '#1059#1047#1048#39',D.DOC_PROFIL)||'
      '    IIF(D.DOC_CATEGORY = 0,'#39#39','#39', '#1074#1088#1072#1095' '#39'||'
      
        '        IIF(D.DOC_CATEGORY = 1,'#39'II-'#1081' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1081' '#1082#1072#1090#1077#1075#1086#1088#1080#1080#39 +
        ','
      
        '            IIF(D.DOC_CATEGORY = 2,'#39'I-'#1081' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1081' '#1082#1072#1090#1077#1075#1086#1088 +
        #1080#1080#39','#39#1074#1099#1089#1096#1077#1081' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1081' '#1082#1072#1090#1077#1075#1086#1088#1080#1080#39'))) AS FULL_DOCINFO,'
      '    D.DOC_STUFFSTATUS,'
      '    D.DOC_CONTACTPHONE,'
      '    D.DOC_PHONENUMBACCESS,'
      '    CLIN.CLIN_NAME,'
      '    CLIN.CLIN_ADRESS,'
      '    CLIN.CLIN_PHONE,'
      '    CLIN.CLIN_LICENSE,'
      '    CLIN.CLIN_LOGOS'
      
        '    , '#39#1056#1072#1089#1087#1080#1089#1072#1085#1080#1077'_'#1087#1088#1080#1077#1084#1086#1074'_'#1074#1088#1072#1095'_'#39'||D.DOC_PROFIL||'#39'_'#39'||D.DOC_LASTN' +
        'AME||'#39'_'#39'||UPPER(LEFT(D.DOC_FIRSTNAME,1))||UPPER(LEFT(D.DOC_THIRD' +
        'NAME,1))||'#39'_'#39'||'
      '      CLIN.CLIN_NAME AS REPORT_CONSULT'
      'FROM TBL_DOCTOR D'
      
        '   JOIN TBL_CONSULTATION CONS ON (D.ID_DOCTOR = CONS.CONS_LINKDO' +
        'CTOR)'
      
        '   JOIN TBL_CLINIC CLIN ON (CONS.CONS_LINKCLINIC = CLIN.ID_CLINI' +
        'C)'
      'WHERE CONS.ID_CONSULT = :prmID_Cons -- 4 or 8'
      '')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 344
    Top = 512
    poUseBooleanField = False
    oFetchAll = True
  end
  object frxDBDSetConsultReport: TfrxDBDataset
    UserName = 'frxDBDSetConsultReport'
    CloseDataSource = False
    DataSet = DSetConsult
    BCDToCurrency = False
    Left = 304
    Top = 512
  end
end
