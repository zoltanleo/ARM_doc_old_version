object FrmTblLaborIssue: TFrmTblLaborIssue
  Left = 353
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1079#1076#1077#1083#1099' '#1087#1088#1072#1081#1089#1072
  ClientHeight = 474
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBtnBar: TPanel
    Left = 0
    Top = 418
    Width = 472
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      472
      56)
    object BtnClose: TButton
      Left = 390
      Top = 13
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnCloseClick
    end
    object BtnSave: TButton
      Left = 310
      Top = 13
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
      Left = 230
      Top = 13
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      Visible = False
      OnClick = BtnCancelClick
    end
  end
  object PnlEdtTblLaborIssue: TPanel
    Left = 0
    Top = 50
    Width = 472
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      472
      65)
    object LblLaborIssue: TLabel
      Left = 80
      Top = 8
      Width = 216
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1088#1085#1077#1074#1086#1075#1086' '#1088#1072#1079#1076#1077#1083#1072' '#1087#1088#1072#1081#1089#1072
    end
    object LblCodeLiter: TLabel
      Left = 8
      Top = 8
      Width = 64
      Height = 13
      Caption = #1051#1080#1090#1077#1088#1072' '#1082#1086#1076#1072
    end
    object EdtLaborCodeLiter: TDBEditEh
      Left = 8
      Top = 28
      Width = 65
      Height = 21
      EditButtons = <>
      MaxLength = 5
      ShowHint = True
      TabOrder = 0
      Text = 'EdtLaborCodeLiter'
      Visible = True
      OnKeyPress = EdtLaborCodeLiterKeyPress
    end
    object EdtLaborIssue: TDBEditEh
      Left = 80
      Top = 28
      Width = 384
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditButtons = <>
      ShowHint = True
      TabOrder = 1
      Text = 'EdtLaborIssue'
      Visible = True
    end
  end
  object PnlViewTblLaborIssue: TPanel
    Left = 0
    Top = 115
    Width = 472
    Height = 303
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      472
      303)
    object SpBtnDelLaborIssue: TSpeedButton
      Left = 450
      Top = 63
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1073#1072#1079#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072' '#1080#1079' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + D)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = DEFAULT_CHARSET
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
      OnClick = SpBtnDelLaborIssueClick
    end
    object SpBtnAddLaborIssue: TSpeedButton
      Left = 450
      Top = 25
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1073#1072#1079#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072' (<Ctrl> + N)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = DEFAULT_CHARSET
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
      OnClick = SpBtnAddLaborIssueClick
    end
    object SpBtnEdtLaborIssue: TSpeedButton
      Left = 450
      Top = 44
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1073#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1079#1076#1077#1083#1072' '#1087#1088#1072#1081#1089#1072' (<Ctrl> + E)'
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = DEFAULT_CHARSET
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
      OnClick = SpBtnEdtLaborIssueClick
    end
    object LblEmptyWarn: TLabel
      Left = 108
      Top = 1
      Width = 203
      Height = 13
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1042#1072#1096#1072' '#1090#1072#1073#1083#1080#1094#1072' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1072'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object GridEhTblLaborIssue: TDBGridEh
      Left = 8
      Top = 26
      Width = 436
      Height = 274
      Hint = #1056#1072#1079#1076#1077#1083#1099' '#1073#1072#1079#1086#1074#1086#1075#1086' '#1087#1088#1072#1081#1089#1072
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DMFIB.DSLaborIssue
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghRowHighlight, dghDialogFind]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      UseMultiTitle = True
      OnDblClick = GridEhTblLaborIssueDblClick
      OnDrawColumnCell = GridEhTblLaborIssueDrawColumnCell
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'LABORISSUE_CODELITER'
          Footers = <>
          Title.Caption = #1051#1080#1090#1077#1088#1072' '#1082#1086#1076#1072' '#1088#1072#1079#1076#1077#1083#1072
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 80
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'LABORISSUE_NAME'
          Footers = <>
          Title.Caption = #1050#1086#1088#1085#1077#1074#1086#1081' '#1088#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 320
        end>
    end
  end
  object PnlCapt: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object LblCap: TLabel
      Left = 160
      Top = 17
      Width = 33
      Height = 13
      Caption = 'LblCap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object NiceSetFrmTblLaborIssue: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 232
    Top = 16
  end
  object AppEventsLaborIssue: TApplicationEvents
    OnShortCut = AppEventsLaborIssueShortCut
    Left = 264
    Top = 16
  end
end
