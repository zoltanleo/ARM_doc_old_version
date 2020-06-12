object FrmTblPrice: TFrmTblPrice
  Left = 250
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
  ClientHeight = 514
  ClientWidth = 809
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 666
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
  object PnlBtnBar: TPanel
    Left = 0
    Top = 472
    Width = 809
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      809
      42)
    object LblStoreCbBoxPriceLists: TLabel
      Left = 272
      Top = 16
      Width = 9
      Height = 13
      Caption = '-1'
      Visible = False
    end
    object LblStoreCbBoxPriceIssue: TLabel
      Left = 312
      Top = 16
      Width = 9
      Height = 13
      Caption = '-1'
      Visible = False
    end
    object BtnEscape: TButton
      Left = 726
      Top = 3
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1081#1090#1080
      TabOrder = 0
      OnClick = BtnEscapeClick
    end
    object BtnChoice: TButton
      Left = 646
      Top = 3
      Width = 75
      Height = 25
      Hint = 
        #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080' '#1080' '#1089#1091#1084#1084#1091' '#1080#1093' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1074' '#1086#1090#1076#1077#1083#1100#1085#1099#1081' '#1089#1087#1080#1089 +
        #1086#1082' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = BtnChoiceClick
    end
    object BtnClose: TButton
      Left = 567
      Top = 3
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1086#1084#1091' '#1087#1088#1072#1081#1089#1091'  (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = BtnCloseClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 3
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 3
      OnClick = BtnHlpClick
    end
  end
  object PnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object LblTitle: TLabel
      Left = 272
      Top = 14
      Width = 34
      Height = 13
      Caption = 'LblTitle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object PnlEdtGrid: TPanel
    Left = 0
    Top = 41
    Width = 809
    Height = 190
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PnlEdtGrid'
    TabOrder = 2
    DesignSize = (
      809
      190)
    object LblCautionZeroPrice: TLabel
      Left = 8
      Top = 175
      Width = 96
      Height = 13
      Caption = 'LblCautionZeroPrice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GridTblPriceEdit: TDBGridEh
      Left = 8
      Top = 4
      Width = 792
      Height = 177
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSPriceEdt
      DrawGraphicData = True
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghIncSearch, dghDialogFind]
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      UseMultiTitle = True
      OnDrawColumnCell = GridTblPriceEditDrawColumnCell
      OnKeyDown = GridTblPriceEditKeyDown
      Columns = <
        item
          AutoFitColWidth = False
          ButtonStyle = cbsNone
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'LABORISSUE_NAME'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1056#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 210
        end
        item
          AutoFitColWidth = False
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'BASEPRICE_PROC_CODE'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 90
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'BASEPRICE_PROC_NAME'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.EndEllipsis = True
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 360
        end
        item
          AutoFitColWidth = False
          ButtonStyle = cbsDropDown
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'COST_PROC_PRICE'
          Footers = <>
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 94
        end>
    end
    object StTxtNoGrant: TStaticText
      Left = 149
      Top = 88
      Width = 457
      Height = 72
      Alignment = taCenter
      AutoSize = False
      Caption = 'StaticText1'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = False
    end
  end
  object PnlViewGrid: TPanel
    Left = 0
    Top = 232
    Width = 809
    Height = 240
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      809
      240)
    object Lbl2: TLabel
      Left = 8
      Top = 214
      Width = 598
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 
        '            '#1076#1083#1103' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1089#1091#1084#1084#1099' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1086#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075' '#1074#1099#1076#1077#1083#1103#1081 +
        #1090#1077' '#1089#1090#1088#1086#1082#1080' '#1084#1099#1096#1082#1086#1081', '#1091#1076#1077#1088#1078#1080#1074#1072#1103' '#1085#1072#1078#1072#1090#1086#1081' '#1082#1083#1072#1074#1080#1096#1091' Ctrl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LblCautionEmptyPrice: TLabel
      Left = 120
      Top = 8
      Width = 103
      Height = 13
      Alignment = taCenter
      Caption = 'LblCautionEmptyPrice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpBtnCostAdd: TSpeedButton
      Left = 787
      Top = 64
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091' '#1074' '#1101#1090#1086#1090' '#1087#1088#1072#1081#1089' (<Ctrl> + N)'
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
      OnClick = SpBtnCostAddClick
    end
    object SpBtnCostDelete: TSpeedButton
      Left = 787
      Top = 83
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091' '#1080#1079' '#1101#1090#1086#1075#1086' '#1087#1088#1072#1081#1089#1072' (<Ctrl> + D)'
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
      OnClick = SpBtnCostDeleteClick
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = #1055#1088#1072#1081#1089#1099
    end
    object Label2: TLabel
      Left = 284
      Top = 8
      Width = 84
      Height = 13
      Caption = #1056#1072#1079#1076#1077#1083#1099' '#1087#1088#1072#1081#1089#1072
    end
    object LblWarningCbBox: TLabel
      Left = 400
      Top = 8
      Width = 118
      Height = 13
      Caption = #1044#1086#1073#1072#1074#1100#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1088#1072#1081#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpBtnPriceAdd: TSpeedButton
      Left = 220
      Top = 31
      Width = 17
      Height = 17
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1072#1081#1089' '#1089' '#1085#1086#1074#1099#1084' '#1085#1072#1079#1074#1072#1085#1080#1077#1084' (<Shift> + 1)'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777700777
        7777777777700777777777777770077777777777000000007777777700000000
        7777777777700777777777777770077777777777777007777777777777777777
        7777777777777777777777777777777777777777777777777777}
      OnClick = SpBtnPriceAddClick
    end
    object SpBtnPriceDel: TSpeedButton
      Left = 237
      Top = 31
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1088#1072#1081#1089' (<Ctrl> + 1)'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777000000007777777700000000
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      OnClick = SpBtnPriceDelClick
    end
    object Lbl1: TLabel
      Left = 8
      Top = 214
      Width = 33
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1074#1077#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GridTblPriceView: TDBGridEh
      Left = 8
      Top = 64
      Width = 774
      Height = 145
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      ColumnDefValues.ToolTips = True
      DataSource = DMFIB.DSPrice
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OddRowColor = clCream
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghEnterAsTab, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PpMnuTblPrice
      ShowHint = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      UseMultiTitle = True
      OnCellClick = GridTblPriceViewCellClick
      OnDblClick = SpBtnCostAddClick
      OnDrawColumnCell = GridTblPriceViewDrawColumnCell
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PROC_CODE'
          Footer.Color = clTeal
          Footers = <>
          ReadOnly = True
          Title.Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
          Title.TitleButton = True
          Title.ToolTips = True
          Width = 90
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PROC_NAME'
          Footer.Alignment = taRightJustify
          Footer.Color = clTeal
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.ToolTips = True
          Footer.Value = #1057#1091#1084#1084#1072#1088#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1080#1093' '#1091#1089#1083#1091#1075':   '
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.TitleButton = True
          Title.ToolTips = True
          Width = 550
        end
        item
          AutoFitColWidth = False
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'COST_PROC_PRICE'
          Footer.Color = clTeal
          Footer.FieldName = 'COST_PROC_PRICE'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.ToolTips = True
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.TitleButton = True
          Title.ToolTips = True
          Width = 94
        end>
    end
    object CbBoxPriceIssue: TComboBox
      Left = 284
      Top = 29
      Width = 227
      Height = 21
      Hint = 
        #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1091#1078#1085#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072#13#10#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080' '#1076#1072#1085#1085#1099#1093' '#1080' '#13#10#1073#1099#1089#1090#1088#1086#1081 +
        ' '#1085#1072#1074#1080#1075#1072#1094#1080#1080' '#1087#1086' '#1089#1087#1080#1089#1082#1091
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = CbBoxPriceIssueChange
    end
    object CbBoxPriceLists: TComboBox
      Left = 8
      Top = 29
      Width = 209
      Height = 21
      Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1091#1078#1085#1099#1081' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090' '#1080#1079' '#1075#1086#1090#1086#1074#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' '
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbBoxPriceListsChange
    end
  end
  object PpMnuTblPrice: TPopupMenu
    Left = 192
    Top = 16
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnClick = SpBtnPriceAddClick
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1088#1072#1081#1089' '#1080#1079' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnClick = SpBtnPriceDelClick
    end
    object N3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N4: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091' '#1074' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnClick = SpBtnCostAddClick
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091' '#1080#1079' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072
      OnClick = SpBtnCostDeleteClick
    end
  end
  object NiceSetFrmTblPrice: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'LblStoreCbBoxPriceLists.Caption'
      'LblStoreCbBoxPriceIssue.Caption')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 160
    Top = 16
  end
  object DSetPriceList: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 72
    Top = 104
    poUseBooleanField = False
    oRefreshDeletedRecord = True
  end
  object DSetPriceIssue: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 112
    Top = 104
    poUseBooleanField = False
    oRefreshDeletedRecord = True
  end
  object DSPriceEdt: TDataSource
    DataSet = DSetPriceEdt
    Left = 152
    Top = 145
  end
  object DSetPriceEdt: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TBL_PRICE'
      'SET '
      '--    FK_BASEPRICE = :FK_BASEPRICE,'
      '--    NAME_PRICE = :NAME_PRICE,'
      '    COST_PROC_PRICE = :COST_PROC_PRICE--,'
      '--    CHOICE_PROC_PRICE = :CHOICE_PROC_PRICE'
      'WHERE'
      '    ID_PRICE = :OLD_ID_PRICE'
      '    ')
    DeleteSQL.Strings = (
      '/*DELETE FROM'
      '    TBL_PRICE'
      'WHERE'
      '        ID_PRICE = :OLD_ID_PRICE*/')
    InsertSQL.Strings = (
      '/*INSERT INTO TBL_PRICE('
      '    ID_PRICE,'
      '    FK_BASEPRICE,'
      '    NAME_PRICE,'
      '    COST_PROC_PRICE,'
      '    CHOICE_PROC_PRICE'
      ')'
      'VALUES('
      '    :ID_PRICE,'
      '    :FK_BASEPRICE,'
      '    :NAME_PRICE,'
      '    :COST_PROC_PRICE,'
      '    :CHOICE_PROC_PRICE'
      ')*/')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_PRICE,'
      '    FK_BASEPRICE,'
      '    NAME_PRICE,'
      '    COST_PROC_PRICE,'
      '    CHOICE_PROC_PRICE'
      'FROM'
      '    TBL_PRICE '
      ''
      ' WHERE '
      '        TBL_PRICE.ID_PRICE = :OLD_ID_PRICE'
      '  '
      '/*SELECT '
      '     P.ID_PRICE, '
      '     P.FK_BASEPRICE, '
      '     P.NAME_PRICE, '
      '     P.COST_PROC_PRICE, '
      '     P.CHOICE_PROC_PRICE, '
      '     BP.BASEPRICE_ID, '
      '     BP.BASEPRICE_PROC_ISSUE_FK, '
      '     BP.BASEPRICE_PROC_CODE, '
      '     BP.BASEPRICE_PROC_NAME, '
      '     LI.LABORISSUE_ID, '
      '     LI.LABORISSUE_NAME, '
      '     LI.LABORISSUE_CODELITER '
      'FROM TBL_LABORISSUE LI '
      
        '     JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_P' +
        'ROC_ISSUE_FK) '
      '     JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE) '
      
        'WHERE (P.NAME_PRICE = :prmPriceName) and (P.COST_PROC_PRICE = 0)' +
        ' and (TBL_PRICE.ID_PRICE = :OLD_ID_PRICE)'
      'ORDER BY LABORISSUE_NAME*/')
    SelectSQL.Strings = (
      '/*SELECT'
      '    ID_PRICE,'
      '    FK_BASEPRICE,'
      '    NAME_PRICE,'
      '    COST_PROC_PRICE,'
      '    CHOICE_PROC_PRICE'
      'FROM'
      '    TBL_PRICE '
      'ORDER BY 1*/')
    BeforeInsert = DSetPriceEdtBeforeInsert
    BeforePost = DSetPriceEdtBeforePost
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    UpdateTransaction = WriteTransPriceEdt
    AutoCommit = True
    Left = 72
    Top = 145
  end
  object WriteTransPriceEdt: TpFIBTransaction
    DefaultDatabase = DMFIB.Database
    TimeoutAction = TARollback
    Left = 112
    Top = 145
  end
  object AppEventsFrmTblPrice: TApplicationEvents
    OnShortCut = AppEventsFrmTblPriceShortCut
    Left = 128
    Top = 16
  end
end
