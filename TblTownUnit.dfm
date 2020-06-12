object FrmTblTown: TFrmTblTown
  Left = 258
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074
  ClientHeight = 509
  ClientWidth = 518
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBtnBar: TPanel
    Left = 0
    Top = 453
    Width = 518
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      518
      56)
    object LblKeyBrdLayot: TLabel
      Left = 128
      Top = 24
      Width = 48
      Height = 13
      Caption = '68748313'
      Visible = False
    end
    object BtnClose: TButton
      Left = 436
      Top = 13
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnCloseClick
    end
    object BtnSave: TButton
      Left = 356
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
      Left = 276
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
    object BtnHlp: TButton
      Left = 8
      Top = 13
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 3
      OnClick = BtnHlpClick
    end
  end
  object PnlEdtTblTown: TPanel
    Left = 0
    Top = 50
    Width = 518
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      518
      65)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 155
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072
    end
    object RBTown: TRadioButton
      Left = 431
      Top = 12
      Width = 57
      Height = 17
      Hint = #1054#1090#1084#1077#1090#1100#1090#1077', '#1077#1089#1083#1080' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090' - '#1075#1086#1088#1086#1076
      Anchors = [akTop, akRight]
      Caption = #1043#1086#1088#1086#1076
      Checked = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
    end
    object RBVillage: TRadioButton
      Left = 431
      Top = 36
      Width = 57
      Height = 17
      Hint = #1054#1090#1084#1077#1090#1100#1090#1077', '#1077#1089#1083#1080' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090' - '#1089#1077#1083#1086' '#1080#1083#1080' '#1076#1077#1088#1077#1074#1085#1103
      Anchors = [akTop, akRight]
      Caption = #1057#1077#1083#1086
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object EdtCity: TEdit
      Left = 8
      Top = 28
      Width = 397
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072#13#10#1076#1083#1080#1085#1086#1081' '#1085#1077' '#1073#1086#1083#1077#1077' 30 '#1089#1080#1084#1074#1086#1083#1086#1074
      Anchors = [akLeft, akTop, akRight]
      MaxLength = 30
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'EdtCity'
      OnChange = EdtCityChange
      OnKeyPress = EdtCityKeyPress
    end
  end
  object PnlVisTblTown: TPanel
    Left = 0
    Top = 115
    Width = 518
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      518
      338)
    object SpBtnDelTown: TSpeedButton
      Left = 496
      Top = 63
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1081' '#1087#1091#1085#1082#1090' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
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
      OnClick = SpBtnDelTownClick
    end
    object SpBtnAddTown: TSpeedButton
      Left = 496
      Top = 25
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
      OnClick = SpBtnAddTownClick
    end
    object SpBtnEditTown: TSpeedButton
      Left = 496
      Top = 44
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1090#1090#1088#1080#1073#1091#1090#1099' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072' (<Ctrl> + E)'
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
      OnClick = SpBtnEditTownClick
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
    object DBGridEhTblTown: TDBGridEh
      Left = 8
      Top = 26
      Width = 482
      Height = 309
      Hint = 
        '       '#1058#1072#1073#1083#1080#1094#1072', '#1082#1086#1090#1086#1088#1072#1103' '#1086#1090#1086#1073#1088#1072#1078#1072#1077#1090' '#1074#1074#1077#1076#1077#1085#1085#1099#1077' '#13#10#1074' '#1042#1072#1096#1091' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099 +
        #1093' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1077' '#1087#1091#1085#1082#1090#1099'. '#1057#1087#1080#1089#1086#1082' '#13#10#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1086#1088#1090#1080#1088#1091#1077#1090#1089#1103' '#1074' '#1072#1083#1092#1072#1074#1080 +
        #1090#1085#1086#1084' '#13#10#1087#1086#1088#1103#1076#1082#1077'.'
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DMFIB.DSTown
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
      PopupMenu = PpMnuTblTown
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
      OnDblClick = DBGridEhTblTownDblClick
      OnDrawColumnCell = DBGridEhTblTownDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          Checkboxes = False
          EditButtons = <>
          FieldName = 'CityCheck'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          PickList.Strings = (
            #1075#1086#1088#1086#1076
            #1089#1077#1083#1086)
          Title.Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'TownVillage'
          Footers = <>
          Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 362
        end>
    end
  end
  object PnlCapt: TPanel
    Left = 0
    Top = 0
    Width = 518
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
  object PpMnuTblTown: TPopupMenu
    Left = 256
    Top = 24
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
      OnClick = SpBtnAddTownClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
      OnClick = SpBtnEditTownClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
      OnClick = SpBtnDelTownClick
    end
  end
  object NiceSetFrmTblTown: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'LblKeyBrdLayot.Caption')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 224
    Top = 24
  end
  object AppEventsFrmTown: TApplicationEvents
    OnShortCut = AppEventsFrmTownShortCut
    Left = 288
    Top = 24
  end
end
