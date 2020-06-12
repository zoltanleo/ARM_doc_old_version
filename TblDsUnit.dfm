object FrmTblDs: TFrmTblDs
  Left = 233
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1080#1072#1075#1085#1086#1079#1086#1074
  ClientHeight = 639
  ClientWidth = 1022
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
  object PnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object LblCapt: TLabel
      Left = 208
      Top = 16
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
  object PnlEdtTblDs: TPanel
    Left = 0
    Top = 41
    Width = 1022
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 91
      Top = 12
      Width = 363
      Height = 13
      Caption = 
        #1044#1080#1072#1075#1085#1086#1079' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' ('#1074#1082#1083#1102#1095#1072#1103' '#1089#1090#1072#1076#1080#1102', '#1083#1086#1082#1072#1083#1080#1079#1072#1094#1080#1102', '#1093#1072#1088#1072#1082#1090#1077#1088' '#1090#1077#1095#1077#1085#1080#1103 +
        ')'
    end
    object Label2: TLabel
      Left = 8
      Top = 12
      Width = 70
      Height = 13
      Caption = #1050#1086#1076' '#1087#1086' '#1052#1050#1041'-X'
    end
    object EdtDsName: TEdit
      Left = 91
      Top = 32
      Width = 502
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1080#1072#1075#1085#1086#1079
      MaxLength = 100
      TabOrder = 1
      Text = 'EdtDsName'
      OnChange = EdtDsNameChange
    end
    object EdtDsNumber: TEdit
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1076' '#1087#1086' '#1052#1050#1041'-10'
      MaxLength = 20
      TabOrder = 0
      Text = 'EdtDsNumber'
    end
    object BitBtnMKBchoice: TBitBtn
      Left = 594
      Top = 33
      Width = 19
      Height = 19
      Hint = 
        #1042#1099#1073#1088#1072#1090#1100' '#1076#1080#1072#1075#1085#1086#1079' '#1089' '#1082#1086#1076#1086#1084' '#1087#1086' '#1052#1050#1041'-10'#13#10#1080#1079' '#1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1075#1086' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090 +
        #1086#1088#1072' '#1073#1086#1083#1077#1079#1085#1077#1081
      TabOrder = 2
      OnClick = BitBtnMKBchoiceClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777007007007777777700700700
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
    end
  end
  object PnlViewTblDs: TPanel
    Left = 0
    Top = 113
    Width = 623
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      623
      471)
    object SpBtnDsAdd: TSpeedButton
      Left = 601
      Top = 8
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1080#1072#1075#1085#1086#1079' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
      OnClick = SpBtnDsAddClick
    end
    object SpBtnDsEdit: TSpeedButton
      Left = 601
      Top = 27
      Width = 17
      Height = 17
      Hint = #1054#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1076#1080#1072#1075#1085#1086#1079#1072' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl> + E)'
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
      OnClick = SpBtnDsEditClick
    end
    object SpBtnDsDelete: TSpeedButton
      Left = 601
      Top = 46
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1080#1072#1075#1085#1086#1079' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072'  (<Ctrl> + D)'
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
      OnClick = SpBtnDsDeleteClick
    end
    object Lbl2: TLabel
      Left = 10
      Top = 451
      Width = 513
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 
        '            '#1076#1083#1103' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1074#1099#1073#1086#1088#1072' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1076#1080#1072#1075#1085#1086#1079#1086#1074' '#1089#1088#1072#1079#1091 +
        ' '#1091#1076#1077#1088#1078#1080#1074#1072#1081#1090#1077' '#1085#1072#1078#1072#1090#1086#1081' '#1082#1083#1072#1074#1080#1096#1091' Ctrl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Lbl1: TLabel
      Left = 8
      Top = 451
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
    object DBGridTblDs: TDBGridEh
      Left = 8
      Top = 8
      Width = 588
      Height = 437
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSViewTblDs
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
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
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PpMnuTblDs
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridTblDsCellClick
      OnDblClick = DBGridTblDsDblClick
      OnDragDrop = DBGridTblDsDragDrop
      OnDragOver = DBGridTblDsDragOver
      OnDrawColumnCell = DBGridTblDsDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DsName'
          Footers = <>
          Title.Caption = #1044#1080#1072#1075#1085#1086#1079
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.ToolTips = True
          ToolTips = True
          Width = 460
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DsNumber'
          Footers = <>
          Title.Caption = #1050#1086#1076' '#1087#1086' '#1052#1050#1041'-X'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.ToolTips = True
          ToolTips = True
          Width = 90
        end>
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 584
    Width = 1022
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1022
      55)
    object LblWarning: TLabel
      Left = 176
      Top = 17
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
    object BtnCancel: TButton
      Left = 770
      Top = 12
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      Visible = False
      OnClick = BtnCancelClick
    end
    object BtnSave: TButton
      Left = 691
      Top = 12
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      Visible = False
      OnClick = BtnSaveClick
    end
    object BtnClose: TButton
      Left = 931
      Top = 12
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1074#1099#1073#1086#1088#1072' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = BtnCloseClick
    end
    object BtnChoice: TButton
      Left = 852
      Top = 12
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1074' '#1089#1087#1080#1089#1086#1082' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 2
      OnClick = BtnChoiceClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 12
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 4
      OnClick = BtnHlpClick
    end
  end
  object PnlChoiceTblDs: TPanel
    Left = 623
    Top = 113
    Width = 399
    Height = 471
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      399
      471)
    object BtnFwdOne: TButton
      Left = 3
      Top = 80
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080' '#1089#1083#1077#1074#1072' '#1085#1072#1087#1088#1072#1074#1086' (<Ctrl> + <'#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086'>)'
      Caption = '>'
      TabOrder = 0
      OnClick = BtnFwdOneClick
    end
    object BtnFwdAll: TButton
      Left = 3
      Top = 112
      Width = 75
      Height = 25
      Hint = 
        #1055#1077#1088#1077#1085#1086#1089' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081' '#1089#1083#1077#1074#1072' '#1085#1072#1087#1088#1072#1074#1086' (<Ctrl> + <Shift> + <'#1089#1090#1088#1077#1083#1082#1072' ' +
        #1074#1087#1088#1072#1074#1086'>)'
      Caption = '>>'
      TabOrder = 1
      OnClick = BtnFwdAllClick
    end
    object BtnRtnOne: TButton
      Left = 3
      Top = 149
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080' '#1089#1087#1088#1072#1074#1072' '#1085#1072#1083#1077#1074#1086' (<Ctrl> + <'#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086'>)'
      Caption = '<'
      TabOrder = 2
      OnClick = BtnRtnOneClick
    end
    object BtnRtnAll: TButton
      Left = 3
      Top = 181
      Width = 75
      Height = 25
      Hint = 
        #1055#1077#1088#1077#1085#1086#1089' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081' '#1089#1087#1088#1072#1074#1072' '#1085#1072#1083#1077#1074#1086' (<Ctrl> + <Shift> + <'#1089#1090#1088#1077#1083#1082#1072' ' +
        #1074#1083#1077#1074#1086'>)'
      Caption = '<<'
      TabOrder = 3
      OnClick = BtnRtnAllClick
    end
    object DBGridChoiceTblDs: TDBGridEh
      Left = 107
      Top = 8
      Width = 282
      Height = 437
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSChoiceTblDs
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
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
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleHeight = 3
      TitleLines = 3
      UseMultiTitle = True
      OnDragDrop = DBGridChoiceTblDsDragDrop
      OnDragOver = DBGridChoiceTblDsDragOver
      OnDrawColumnCell = DBGridChoiceTblDsDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DSNAME'
          Footers = <>
          Title.Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1076#1080#1072#1075#1085#1086#1079
          Title.ToolTips = True
          ToolTips = True
          Width = 251
        end>
    end
  end
  object PpMnuTblDs: TPopupMenu
    Left = 296
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1076#1080#1072#1075#1085#1086#1079
      OnClick = SpBtnDsAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1076#1080#1072#1075#1085#1086#1079#1072
      OnClick = SpBtnDsEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1080#1072#1075#1085#1086#1079' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = SpBtnDsDeleteClick
    end
  end
  object NiceSetFrmTblDs: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 264
    Top = 8
  end
  object dsdViewTblDs: TDataSetDriverEh
    ProviderDataSet = DMFIB.DSetDs
    Left = 168
    Top = 217
  end
  object MTEViewTblDs: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdViewTblDs
    Left = 200
    Top = 217
  end
  object MTEChoiceTblDs: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdChoiceTblDs
    Left = 931
    Top = 209
  end
  object dsdChoiceTblDs: TDataSetDriverEh
    ProviderDataSet = DSetChoiceTblDs
    Left = 899
    Top = 209
  end
  object DSViewTblDs: TDataSource
    DataSet = MTEViewTblDs
    Left = 232
    Top = 217
  end
  object DSChoiceTblDs: TDataSource
    DataSet = MTEChoiceTblDs
    Left = 963
    Top = 209
  end
  object DSetChoiceTblDs: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 867
    Top = 209
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object AppEventsDs: TApplicationEvents
    OnShortCut = AppEventsDsShortCut
    Left = 328
    Top = 8
  end
end
