object FrmTblManip: TFrmTblManip
  Left = 229
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1080' '#1087#1088#1086#1094#1077#1076#1091#1088
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
    TabOrder = 4
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
  object PnlEdtTblManip: TPanel
    Left = 0
    Top = 41
    Width = 1022
    Height = 112
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 210
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080' ('#1087#1088#1086#1094#1077#1076#1091#1088#1099')'
    end
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 267
      Height = 13
      Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1086#1094#1077#1076#1091#1088#1099' ('#1077#1078#1077#1076#1085#1077#1074#1085#1086', '#1095#1077#1088#1077#1079' '#1076#1077#1085#1100' '#1080' '#1090'.'#1076'.)'
    end
    object Label3: TLabel
      Left = 288
      Top = 57
      Width = 185
      Height = 13
      Caption = #1050#1091#1088#1089' '#1083#1077#1095#1077#1085#1080#1103' ('#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1094#1077#1076#1091#1088')'
    end
    object EdtManipName: TEdit
      Left = 8
      Top = 24
      Width = 537
      Height = 21
      Hint = 
        #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1081' '#1080#1083#1080' '#1083#1077#1095#1077#1073#1085#1086#1081' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080#13#10'('#1084#1072#1082#1089 +
        #1080#1084#1072#1083#1100#1085#1072#1103' '#1076#1083#1080#1085#1072' '#1089#1090#1088#1086#1082#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 100 '#1079#1085#1072#1082#1086#1074')'
      MaxLength = 100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'EdtManipName'
    end
    object EdtManipUse: TEdit
      Left = 8
      Top = 73
      Width = 257
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1082#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'EdtManipUse'
    end
    object EdtManipCure: TEdit
      Left = 288
      Top = 74
      Width = 257
      Height = 21
      Hint = 
        #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1080#1083#1080' '#13#10#1086#1073#1097#1080#1081' '#1082#1091#1088#1089' '#1083#1077#1095#1077#1085#1080#1103' '#1074' '#1076#1085#1103#1093', ' +
        #1085#1077#1076#1077#1083#1103#1093', '#1084#1077#1089#1103#1094#1072#1093' '#1080' '#1090'.'#1076'.'
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'EdtManipCure'
    end
  end
  object PnlViewTblManip: TPanel
    Left = 0
    Top = 153
    Width = 563
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      563
      441)
    object SpBtnManipAdd: TSpeedButton
      Left = 541
      Top = 7
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1102' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
      OnClick = SpBtnManipAddClick
    end
    object SpBtnManipEdit: TSpeedButton
      Left = 541
      Top = 26
      Width = 17
      Height = 17
      Hint = 
        #1054#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1086#1081' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl' +
        '> + E)'
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
      OnClick = SpBtnManipEditClick
    end
    object SpBtnManipDelete: TSpeedButton
      Left = 541
      Top = 45
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1091#1102' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1102' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
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
      OnClick = SpBtnManipDeleteClick
    end
    object Lbl2: TLabel
      Left = 16
      Top = 421
      Width = 546
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 
        '            '#1076#1083#1103' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1074#1099#1073#1086#1088#1072' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1085#1072#1079#1074#1072#1085#1080#1081' '#1084#1072#1085#1080#1087#1091 +
        #1083#1103#1094#1080#1081' '#1091#1076#1077#1088#1078#1080#1074#1072#1081#1090#1077' '#1085#1072#1078#1072#1090#1086#1081' '#1082#1083#1072#1074#1080#1096#1091' Ctrl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Lbl1: TLabel
      Left = 16
      Top = 421
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
    object DBGridTblManip: TDBGridEh
      Left = 8
      Top = 8
      Width = 528
      Height = 407
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSViewTblManip
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      DrawMemoText = True
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
      PopupMenu = PpMnuTblManip
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridTblManipCellClick
      OnDblClick = DBGridTblManipDblClick
      OnDragDrop = DBGridTblManipDragDrop
      OnDragOver = DBGridTblManipDragOver
      OnDrawColumnCell = DBGridTblManipDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'ManipName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080' ('#1087#1088#1086#1094#1077#1076#1091#1088#1099')'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Title.ToolTips = True
          ToolTips = True
          Width = 308
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'ManipCure'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Caption = #1050#1091#1088#1089' '#1083#1077#1095#1077#1085#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.ToolTips = True
          ToolTips = True
          Width = 87
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'ManipUse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1086#1094#1077#1076#1091#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.ToolTips = True
          ToolTips = True
          Width = 98
        end>
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 594
    Width = 1022
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1022
      45)
    object LblWarning: TLabel
      Left = 136
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
      Left = 772
      Top = 7
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
      Left = 693
      Top = 7
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
      Left = 933
      Top = 7
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
      Left = 854
      Top = 7
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1074' '#1089#1087#1080#1089#1086#1082' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnChoiceClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 4
      OnClick = BtnHlpClick
    end
  end
  object PnlChoiceTblManip: TPanel
    Left = 563
    Top = 153
    Width = 459
    Height = 441
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      459
      441)
    object DBGridChoiceManip: TDBGridEh
      Left = 104
      Top = 8
      Width = 345
      Height = 407
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSChoiceTblManip
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
      ShowHint = False
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleHeight = 3
      UseMultiTitle = True
      OnDragDrop = DBGridChoiceManipDragDrop
      OnDragOver = DBGridChoiceManipDragOver
      OnDrawColumnCell = DBGridChoiceManipDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ManipName'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1087#1088#1086#1094#1077#1076#1091#1088#1099
          Title.ToolTips = True
          ToolTips = True
          Width = 300
        end>
    end
    object BtnFwdOne: TButton
      Left = 3
      Top = 80
      Width = 75
      Height = 25
      Hint = #1055#1077#1088#1077#1085#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080' '#1089#1083#1077#1074#1072' '#1085#1072#1087#1088#1072#1074#1086' (<Ctrl> + <'#1089#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086'>)'
      Caption = '>'
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
      TabOrder = 4
      OnClick = BtnRtnAllClick
    end
  end
  object PpMnuTblManip: TPopupMenu
    Left = 264
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1102
      OnClick = SpBtnManipAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
      OnClick = SpBtnManipEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1102' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = SpBtnManipDeleteClick
    end
  end
  object NiceSetFrmTblManip: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 296
    Top = 8
  end
  object MTEChoiceTblManip: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdChoiceTblManip
    Left = 848
    Top = 241
  end
  object dsdChoiceTblManip: TDataSetDriverEh
    ProviderDataSet = DSetChoiceTblManip
    Left = 816
    Top = 241
  end
  object MTEViewTblManip: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdViewTblManip
    Left = 352
    Top = 241
  end
  object dsdViewTblManip: TDataSetDriverEh
    ProviderDataSet = DMFIB.DSetManip
    Left = 320
    Top = 241
  end
  object DSChoiceTblManip: TDataSource
    DataSet = MTEChoiceTblManip
    Left = 880
    Top = 241
  end
  object DSViewTblManip: TDataSource
    DataSet = MTEViewTblManip
    Left = 384
    Top = 241
  end
  object DSetChoiceTblManip: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 784
    Top = 241
    poUseBooleanField = False
    oRefreshDeletedRecord = True
  end
  object AppEventsManip: TApplicationEvents
    OnShortCut = AppEventsManipShortCut
    Left = 328
    Top = 8
  end
end
