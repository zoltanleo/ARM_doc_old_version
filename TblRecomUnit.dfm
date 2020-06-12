object FrmTblRecom: TFrmTblRecom
  Left = 234
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1081
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
    TabOrder = 0
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
  object PnlEdtTblRecom: TPanel
    Left = 0
    Top = 41
    Width = 1022
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 150
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080
    end
    object EdtRecomStr: TEdit
      Left = 8
      Top = 32
      Width = 572
      Height = 21
      Hint = #1058#1077#1082#1089#1090' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080
      MaxLength = 100
      TabOrder = 0
      Text = 'EdtRecomStr'
    end
  end
  object PnlViewTblRecom: TPanel
    Left = 0
    Top = 113
    Width = 588
    Height = 476
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      588
      476)
    object SpBtnRecomAdd: TSpeedButton
      Left = 566
      Top = 8
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1085#1086#1074#1086#1081' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
      OnClick = SpBtnRecomAddClick
    end
    object SpBtnRecomEdit: TSpeedButton
      Left = 566
      Top = 27
      Width = 17
      Height = 17
      Hint = 
        #1054#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1076#1072#1085#1085#1086#1081' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl> ' +
        '+ E)'
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
      OnClick = SpBtnRecomEditClick
    end
    object SpBtnRecomDelete: TSpeedButton
      Left = 566
      Top = 46
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1091#1102' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1102' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
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
      OnClick = SpBtnRecomDeleteClick
    end
    object Lbl2: TLabel
      Left = 8
      Top = 456
      Width = 578
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 
        '            '#1076#1083#1103' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1074#1099#1073#1086#1088#1072' '#1089#1088#1072#1079#1091' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1085#1072#1079#1074#1072#1085#1080#1081' ' +
        #1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1091#1076#1077#1088#1078#1080#1074#1072#1081#1090#1077' '#1085#1072#1078#1072#1090#1086#1081' '#1082#1083#1072#1074#1080#1096#1091' Ctrl'
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
      Top = 456
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
    object DBGridTblRecom: TDBGridEh
      Left = 8
      Top = 8
      Width = 549
      Height = 444
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSViewTblRecom
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
      PopupMenu = PpMnuTblRecom
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridTblRecomCellClick
      OnDblClick = DBGridTblRecomDblClick
      OnDragDrop = DBGridTblRecomDragDrop
      OnDragOver = DBGridTblRecomDragOver
      OnDrawColumnCell = DBGridTblRecomDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'RecomStr'
          Footers = <>
          Title.Caption = #1057#1087#1080'c'#1086#1082' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1081
          Title.ToolTips = True
          ToolTips = True
          Width = 524
        end>
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 589
    Width = 1022
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      1022
      50)
    object LblWarning: TLabel
      Left = 288
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
      Left = 776
      Top = 12
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = BtnCancelClick
    end
    object BtnSave: TButton
      Left = 697
      Top = 12
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = BtnSaveClick
    end
    object BtnClose: TButton
      Left = 937
      Top = 12
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1074#1099#1073#1086#1088#1072' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnCloseClick
    end
    object BtnChoice: TButton
      Left = 857
      Top = 12
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1089#1090#1088#1086#1082#1080' '#1074' '#1089#1087#1080#1089#1086#1082' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
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
  object PnlChoiceTblRecom: TPanel
    Left = 588
    Top = 113
    Width = 434
    Height = 476
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      434
      476)
    object DBGridChoiceRecom: TDBGridEh
      Left = 112
      Top = 8
      Width = 313
      Height = 444
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSChoiceTblRecom
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind]
      ParentShowHint = False
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleHeight = 3
      UseMultiTitle = True
      OnDragDrop = DBGridChoiceRecomDragDrop
      OnDragOver = DBGridChoiceRecomDragOver
      OnDrawColumnCell = DBGridChoiceRecomDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'RecomStr'
          Footers = <>
          Title.Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080
          Title.ToolTips = True
          ToolTips = True
          Width = 270
        end>
    end
    object BtnFwdOne: TButton
      Left = 3
      Top = 80
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080' '#1089#1083#1077#1074#1072' '#1085#1072#1087#1088#1072#1074#1086' (<Ctrl> + <'#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086'>)'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnFwdAllClick
    end
    object BtnRtnOne: TButton
      Left = 3
      Top = 149
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080' '#1089#1087#1088#1072#1074#1072' '#1085#1072#1083#1077#1074#1086' (<Ctrl> + <'#1089#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086'>)'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BtnRtnAllClick
    end
  end
  object PpMnuTblRecom: TPopupMenu
    Left = 200
    Top = 40
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1102
      OnClick = SpBtnRecomAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080
      OnClick = SpBtnRecomEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1102' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = SpBtnRecomDeleteClick
    end
  end
  object NiceSetFrmTblRecom: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 232
    Top = 41
  end
  object dsdChoiceTblRecom: TDataSetDriverEh
    ProviderDataSet = DSetChoiceTblRecom
    Left = 800
    Top = 193
  end
  object MTEChoiceTblRecom: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdChoiceTblRecom
    Left = 832
    Top = 193
  end
  object DSChoiceTblRecom: TDataSource
    DataSet = MTEChoiceTblRecom
    Left = 864
    Top = 193
  end
  object DSetChoiceTblRecom: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 768
    Top = 193
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object dsdViewTblRecom: TDataSetDriverEh
    ProviderDataSet = DMFIB.DSetRecom
    Left = 312
    Top = 177
  end
  object MTEViewTblRecom: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdViewTblRecom
    Left = 344
    Top = 177
  end
  object DSViewTblRecom: TDataSource
    DataSet = MTEViewTblRecom
    Left = 376
    Top = 177
  end
  object AppEventsRecom: TApplicationEvents
    OnShortCut = AppEventsRecomShortCut
    Left = 264
    Top = 40
  end
end
