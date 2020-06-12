object FrmPayment: TFrmPayment
  Left = 252
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1072#1073#1083#1080#1094#1072' '#1087#1083#1072#1090#1077#1078#1077#1081
  ClientHeight = 431
  ClientWidth = 594
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBtn: TPanel
    Left = 0
    Top = 387
    Width = 594
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      594
      44)
    object LblWarning: TLabel
      Left = 151
      Top = 16
      Width = 182
      Height = 13
      Caption = #1058#1072#1073#1083#1080#1094#1072' '#1087#1083#1072#1090#1077#1078#1077#1081' '#1087#1072#1094#1080#1077#1085#1090#1072' '#1087#1091#1089#1090#1072' !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BtnClose: TButton
      Left = 511
      Top = 11
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BtnCloseClick
    end
    object BtnSave: TButton
      Left = 430
      Top = 11
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      Visible = False
      OnClick = BtnSaveClick
    end
    object BtnCancel: TButton
      Left = 349
      Top = 11
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      Visible = False
      OnClick = BtnCancelClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 11
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 3
      OnClick = BtnHlpClick
    end
  end
  object PnlViewGrid: TPanel
    Left = 0
    Top = 175
    Width = 594
    Height = 212
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      594
      212)
    object SpBtnAddPayment: TSpeedButton
      Left = 572
      Top = 13
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1083#1072#1090#1077#1078' (<Ctrl> + N)'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777711777
        7777777777711777777777777771177777777777111111117777777711111111
        7777777777711777777777777771177777777777777117777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnAddPaymentClick
    end
    object SpBtnEdtPayment: TSpeedButton
      Left = 572
      Top = 32
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1083#1072#1090#1077#1078#1072' (<Ctrl> + E)'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777117117117777777711711711
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnEdtPaymentClick
    end
    object SpBtnDelPayment: TSpeedButton
      Left = 572
      Top = 51
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1083#1072#1090#1077#1078' (<Ctrl> + D)'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        777777777C777C7777777777CCC7CCC7777777777CCCCC777777777777CCC777
        777777777CCCCC7777777777CCC7CCC7777777777C777C777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnDelPaymentClick
    end
    object DBGridTblPayment: TDBGridEh
      Left = 8
      Top = 13
      Width = 559
      Height = 185
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DMFIB.DSPayment
      DrawGraphicData = True
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghEnterAsTab, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind]
      ParentShowHint = False
      PopupMenu = PpMnuTblPayment
      ReadOnly = True
      RowHeight = 4
      RowLines = 3
      RowSizingAllowed = True
      ShowHint = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      UseMultiTitle = True
      VTitleMargin = 20
      OnDblClick = DBGridTblPaymentDblClick
      OnDrawColumnCell = DBGridTblPaymentDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          DisplayFormat = 'dd.mm.yyyy'
          EditButtons = <>
          FieldName = 'PAYDATE'
          Footers = <>
          HighlightRequired = True
          Title.Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 99
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PAY_NOTE'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
          Title.ToolTips = True
          ToolTips = True
          Width = 214
        end
        item
          Alignment = taRightJustify
          AutoFitColWidth = False
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'CHARGESUM'
          Footers = <>
          Title.Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 105
        end
        item
          Alignment = taRightJustify
          AutoFitColWidth = False
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'PAYSUM'
          Footers = <>
          Title.Caption = #1059#1087#1083#1072#1095#1077#1085#1086
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 105
        end>
    end
  end
  object PnlEdtValue: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 175
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SpBtnCalcEdtChargeSum: TSpeedButton
      Left = 372
      Top = 56
      Width = 17
      Height = 17
      Hint = 
        #1057#1092#1086#1088#1084#1080#1088#1091#1081#1090#1077' '#1089#1091#1084#1084#1091' '#1087#1083#1072#1090#1077#1078#1072' '#1087#1091#1090#1077#1084' '#1074#1099#1073#1086#1088#1072' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1080#1079' '#1087#1088#1072#1081#1089#1072' (<C' +
        'trl> + E)'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777007007007777777700700700
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnCalcEdtChargeSumClick
    end
    object Label1: TLabel
      Left = 8
      Top = 39
      Width = 72
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
    end
    object Label2: TLabel
      Left = 200
      Top = 39
      Width = 55
      Height = 13
      Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
    end
    object Label3: TLabel
      Left = 416
      Top = 39
      Width = 49
      Height = 13
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086
    end
    object Label4: TLabel
      Left = 8
      Top = 86
      Width = 137
      Height = 13
      Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
    end
    object LblSubCaption: TLabel
      Left = 264
      Top = 10
      Width = 69
      Height = 13
      Caption = 'LblSubCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTPickPay: TDateTimePicker
      Left = 8
      Top = 55
      Width = 170
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091' '#1087#1083#1072#1090#1077#1078#1072
      Date = 39614.030476342600000000
      Time = 39614.030476342600000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object CalcEdtChargeSum: TJvCalcEdit
      Left = 201
      Top = 55
      Width = 170
      Height = 21
      Hint = #1053#1072#1095#1080#1089#1083#1077#1085#1086
      Flat = False
      ParentFlat = False
      ButtonHint = #1053#1072#1078#1084#1080#1090#1077', '#1095#1090#1086#1073#1099' '#1074#1088#1091#1095#1085#1091#1102' '#1088#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#13#10#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
      DecimalPlaceRound = True
      DisplayFormat = '# ##0.00 '#1088#1091#1073
      FormatOnEditing = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object CalcEdtPaySum: TJvCalcEdit
      Left = 415
      Top = 55
      Width = 170
      Height = 21
      Hint = #1054#1087#1083#1072#1095#1077#1085#1086
      ButtonHint = #1053#1072#1078#1084#1080#1090#1077', '#1095#1090#1086#1073#1099' '#1088#1072#1089#1089#1095#1080#1090#1072#1090#1100#13#10#1089#1091#1084#1084#1091' '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
      DecimalPlaceRound = True
      DisplayFormat = '# ##0.00 '#1088#1091#1073
      FormatOnEditing = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object RichEdtService: TRichEdit
      Left = 8
      Top = 102
      Width = 577
      Height = 65
      Hint = 
        #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1089#1102#1076#1072' '#1089#1087#1080#1089#1086#1082' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075' '#1074#1088#1091#1095#1085#1091#1102' '#13#10#1080#1083#1080' '#1089#1092#1086#1088#1084 +
        #1080#1088#1086#1074#1072#1090#1100' '#1077#1075#1086' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080', '#1074#1099#1073#1088#1072#1074' '#1091#1089#1083#1091#1075#1080' '#1080#1079' '#1087#1088#1072#1081#1089#1072
      Lines.Strings = (
        
          #1057#1087#1080#1089#1086#1082' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075' '#1073#1091#1076#1077#1090' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080', '#1077#1089#1083#1080' '#1088#1072#1089 +
          #1095#1077#1090' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075' '#1090#1072#1082#1078#1077' '
        #1087#1088#1086#1080#1079#1074#1086#1076#1080#1083#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' ('#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' '#1089' '#1084#1085#1086#1075#1086#1090#1086#1095#1080#1077#1084' '#1074#1099#1096#1077')')
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 3
      WantReturns = False
      OnEnter = RichEdtServiceEnter
    end
  end
  object PpMnuTblPayment: TPopupMenu
    Left = 472
    Top = 24
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1083#1072#1090#1077#1078
      OnClick = SpBtnAddPaymentClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1083#1072#1090#1077#1078
      OnClick = SpBtnEdtPaymentClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1083#1072#1090#1077#1078
      OnClick = SpBtnDelPaymentClick
    end
  end
  object NiceSetFrmPayment: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 440
    Top = 24
  end
  object DSetPmtTmp: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 408
    Top = 23
    poUseBooleanField = False
    oRefreshDeletedRecord = True
  end
  object AppEventsFrmTblPayment: TApplicationEvents
    OnShortCut = AppEventsFrmTblPaymentShortCut
    Left = 376
    Top = 24
  end
end
