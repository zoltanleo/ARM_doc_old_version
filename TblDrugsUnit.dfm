object FrmTblDrugs: TFrmTblDrugs
  Left = 232
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1083#1077#1082#1072#1088#1089#1090#1074#1077#1085#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 639
  ClientWidth = 1022
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
      Left = 216
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
  object PnlEdtTblDrug: TPanel
    Left = 0
    Top = 41
    Width = 1022
    Height = 288
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 132
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
    end
    object Label2: TLabel
      Left = 16
      Top = 53
      Width = 70
      Height = 13
      Caption = #1056#1072#1079#1086#1074#1072#1103' '#1076#1086#1079#1072
    end
    object Label3: TLabel
      Left = 16
      Top = 101
      Width = 94
      Height = 13
      Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1080#1077#1084#1072
    end
    object Label4: TLabel
      Left = 16
      Top = 149
      Width = 138
      Height = 13
      Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103
    end
    object Label5: TLabel
      Left = 228
      Top = 5
      Width = 114
      Height = 13
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1077
    end
    object Label6: TLabel
      Left = 16
      Top = 197
      Width = 88
      Height = 13
      Caption = #1057#1087#1086#1089#1086#1073' '#1074#1074#1077#1076#1077#1085#1080#1103
    end
    object Label7: TLabel
      Left = 16
      Top = 245
      Width = 74
      Height = 13
      Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1077#1084#1072
    end
    object Label8: TLabel
      Left = 228
      Top = 149
      Width = 110
      Height = 13
      Caption = #1056#1077#1094#1077#1087#1090#1091#1088#1085#1072#1103' '#1087#1088#1086#1087#1080#1089#1100
    end
    object EdtDrugNamePill: TEdit
      Left = 16
      Top = 21
      Width = 185
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#13#10#1085#1072' '#1088#1091#1089#1089#1082#1086#1084' '#1103#1079#1099#1082#1077' '#1080#1083#1080' '#1083#1072#1090#1080#1085#1080#1094#1077
      MaxLength = 60
      TabOrder = 0
      Text = 'EdtDrugNamePill'
      OnChange = EdtDrugNamePillChange
    end
    object EdtDrugDose: TEdit
      Left = 16
      Top = 69
      Width = 153
      Height = 21
      Hint = #1044#1086#1079#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1085#1072' '#1086#1076#1080#1085' '#1087#1088#1080#1077#1084' ('#1084#1075' '#1080#1083#1080' '#1084#1083')'
      MaxLength = 20
      TabOrder = 1
      Text = 'EdtDrugDose'
    end
    object EdtDrugUse: TEdit
      Left = 16
      Top = 117
      Width = 153
      Height = 21
      Hint = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1080#1077#1084#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' ('#1088#1072#1079' '#1074' '#1089#1091#1090#1082#1080' '#1080#1083#1080' '#1089' '#1080#1085#1090#1077#1088#1074#1072#1083#1086#1084')'
      MaxLength = 20
      TabOrder = 2
      Text = 'EdtDrugUse'
    end
    object EdtDrugCure: TEdit
      Left = 16
      Top = 165
      Width = 153
      Height = 21
      Hint = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1082#1091#1088#1089#1072' '#1083#1077#1095#1077#1085#1080#1103' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1084' ('#1074' '#1076#1085#1103#1093' '#1080#1083#1080' '#8470')'
      MaxLength = 20
      TabOrder = 3
      Text = 'EdtDrugCure'
    end
    object CbBoxDrugInput: TComboBox
      Left = 16
      Top = 213
      Width = 153
      Height = 21
      Hint = #1055#1091#1090#1100' '#1074#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1074' '#1086#1088#1075#1072#1085#1080#1079#1084
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = #1074#1085#1091#1090#1088#1100
      Items.Strings = (
        #1074#1085#1091#1090#1088#1100
        #1088#1077#1082#1090#1072#1083#1100#1085#1086
        #1087#1086#1076#1082#1086#1078#1085#1086
        #1074#1085#1091#1090#1088#1080#1084#1099#1096#1077#1095#1085#1086
        #1074#1085#1091#1090#1088#1080#1074#1077#1085#1085#1086
        #1085#1072#1088#1091#1078#1085#1086)
    end
    object CbBoxDrugMethod: TComboBox
      Left = 16
      Top = 261
      Width = 153
      Height = 21
      Hint = #1057#1093#1077#1084#1072' '#1087#1088#1080#1077#1084#1072' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' '#1087#1086' '#1074#1088#1077#1084#1077#1085#1080
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = #1083#1102#1073#1086#1077
      Items.Strings = (
        #1083#1102#1073#1086#1077
        #1079#1072' 1 '#1095#1072#1089' '#1076#1086' '#1077#1076#1099
        #1095#1077#1088#1077#1079' 2 '#1095#1072#1089#1072' '#1087#1086#1089#1083#1077' '#1077#1076#1099
        #1085#1072#1090#1086#1097#1072#1082
        #1074#1086' '#1074#1088#1077#1084#1103' '#1080#1083#1080' '#1087#1086#1089#1083#1077' '#1077#1076#1099
        #1085#1072' '#1085#1086#1095#1100
        #1085#1072' '#1085#1086#1095#1100', '#1085#1072#1090#1086#1097#1072#1082
        #1079#1072' 30-60 '#1084#1080#1085' '#1076#1086' '#1087#1086#1083#1086#1074#1086#1075#1086' '#1072#1082#1090#1072)
    end
    object Panel1: TPanel
      Left = 216
      Top = 16
      Width = 2
      Height = 267
      BevelOuter = bvLowered
      Caption = 'Panel1'
      TabOrder = 10
    end
    object BtnRichFmtRecipe: TButton
      Left = 550
      Top = 163
      Width = 75
      Height = 25
      Hint = #1054#1090#1092#1086#1088#1084#1072#1090#1080#1088#1091#1081#1090#1077' '#1090#1077#1082#1089#1090' '#1074' '#1089#1090#1080#1083#1077' MS Word'
      Caption = #1060#1086#1088#1084#1072#1090
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BtnRichFmtRecipeClick
    end
    object BtnRichFmtDrugNote: TButton
      Left = 550
      Top = 20
      Width = 75
      Height = 25
      Hint = #1054#1090#1092#1086#1088#1084#1072#1090#1080#1088#1091#1081#1090#1077' '#1090#1077#1082#1089#1090' '#1074' '#1089#1090#1080#1083#1077' MS Word'
      Caption = #1060#1086#1088#1084#1072#1090
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BtnRichFmtDrugNoteClick
    end
    object RichEditDrugNote: TRichEdit
      Left = 228
      Top = 21
      Width = 317
      Height = 118
      Lines.Strings = (
        'RichEditDrugNote')
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object RichEditDrugRecipe: TRichEdit
      Left = 227
      Top = 165
      Width = 317
      Height = 118
      Lines.Strings = (
        'RichEditDrugRecipe')
      ScrollBars = ssVertical
      TabOrder = 8
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 596
    Width = 1022
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1022
      43)
    object LblWarning: TLabel
      Left = 406
      Top = 14
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
      Left = 775
      Top = 7
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
      Left = 696
      Top = 7
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
      Left = 936
      Top = 7
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1074#1099#1073#1086#1088#1072' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = BtnCloseClick
    end
    object BtnChoice: TButton
      Left = 857
      Top = 7
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1099#1073#1086#1088' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099' '#1074' '#1089#1087#1080#1089#1086#1082' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 2
      OnClick = BtnChoiceClick
    end
    object BtnHlp: TButton
      Left = 12
      Top = 7
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 4
      OnClick = BtnHlpClick
    end
    object BtnPrintRecipe: TButton
      Left = 93
      Top = 7
      Width = 75
      Height = 25
      Hint = #1055#1077#1095#1072#1090#1100' '#1088#1077#1094#1077#1087#1090#1091#1088#1085#1086#1081' '#1087#1088#1086#1087#1080#1089#1080' '#1087#1088#1077#1087#1072#1088#1072#1090#1072' (<Ctrl> + P)'
      Caption = #1056#1077#1094#1077#1087#1090
      TabOrder = 5
      OnClick = BtnPrintRecipeClick
    end
    object BtnDrugInfo: TButton
      Left = 174
      Top = 7
      Width = 75
      Height = 25
      Hint = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1077' (<Ctrl> + I)'
      Caption = #1040#1085#1085#1086#1090#1072#1094#1080#1103
      TabOrder = 6
      OnClick = BtnDrugInfoClick
    end
    object CbBoxPrintFmt: TComboBox
      Left = 255
      Top = 9
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = #1092#1086#1088#1084#1072#1090' '#1040'5'
      OnChange = CbBoxPrintFmtChange
      Items.Strings = (
        #1092#1086#1088#1084#1072#1090' '#1040'5'
        #1092#1086#1088#1084#1072#1090' '#1040'4')
    end
  end
  object PnlViewGridGeneral: TPanel
    Left = 0
    Top = 329
    Width = 1022
    Height = 267
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PnlViewGridGeneral'
    TabOrder = 3
    object PnlViewTblDrug: TPanel
      Left = 0
      Top = 56
      Width = 640
      Height = 211
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        640
        211)
      object Lbl2: TLabel
        Left = 7
        Top = 190
        Width = 602
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 
          '            '#1076#1083#1103' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1074#1099#1073#1086#1088#1072' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1089#1088#1072#1079#1091' '#1085#1077#1089#1082#1086 +
          #1083#1100#1082#1080#1093' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074' '#1091#1076#1077#1088#1078#1080#1074#1072#1081#1090#1077' '#1085#1072#1078#1072#1090#1086#1081' '#1082#1083#1072#1074#1080#1096#1091' Ctrl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object SpBtnDrugDelete: TSpeedButton
        Left = 618
        Top = 49
        Width = 17
        Height = 17
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1077' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
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
        OnClick = SpBtnDrugDeleteClick
      end
      object SpBtnDrugEdit: TSpeedButton
        Left = 618
        Top = 30
        Width = 17
        Height = 17
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl> + E)'
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
        OnClick = SpBtnDrugEditClick
      end
      object SpBtnDrugAdd: TSpeedButton
        Left = 618
        Top = 11
        Width = 17
        Height = 17
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1087#1072#1088#1072#1090' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
        OnClick = SpBtnDrugAddClick
      end
      object Lbl1: TLabel
        Left = 7
        Top = 190
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
      object DBGridTblDrug: TDBGridEh
        Left = 6
        Top = 11
        Width = 607
        Height = 175
        Anchors = [akLeft, akTop, akBottom]
        AutoFitColWidths = True
        DataSource = DSMTETblDrug
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
        OddRowColor = clCream
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PpMnuTblDrug
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        UseMultiTitle = True
        OnCellClick = DBGridTblDrugCellClick
        OnDblClick = DBGridTblDrugDblClick
        OnDragDrop = DBGridTblDrugDragDrop
        OnDragOver = DBGridTblDrugDragOver
        OnDrawColumnCell = DBGridTblDrugDrawColumnCell
        Columns = <
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'DrugNamePill'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 184
          end
          item
            DropDownBox.AutoFitColWidths = False
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'DrugDose'
            Footers = <>
            Title.Caption = #1056#1072#1079#1086#1074#1072#1103' '#1076#1086#1079#1072' '#1085#1072' '#1087#1088#1080#1077#1084
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 99
          end
          item
            DropDownBox.AutoFitColWidths = False
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'DrugUse'
            Footers = <>
            Title.Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1080#1077#1084#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 89
          end
          item
            DropDownBox.AutoFitColWidths = False
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'DrugCure'
            Footers = <>
            Title.Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1080#1077#1084#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 89
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'DrugInput'
            Footers = <>
            KeyList.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            PickList.Strings = (
              'per os'
              'per rectum'
              #1087'/'#1082
              #1074'/'#1084
              #1074'/'#1074
              #1085#1072#1088#1091#1078#1085#1086)
            Title.Caption = #1057#1087#1086#1089#1086#1073' '#1074#1074#1077#1076#1077#1085#1080#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 102
          end>
      end
    end
    object PnlChoiceTblDrug: TPanel
      Left = 640
      Top = 56
      Width = 382
      Height = 211
      Align = alRight
      BevelOuter = bvNone
      Caption = 'PnlChoiceTblDrug'
      TabOrder = 1
      Visible = False
      DesignSize = (
        382
        211)
      object DBGridChoiceDrug: TDBGridEh
        Left = 107
        Top = 11
        Width = 265
        Height = 175
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoFitColWidths = True
        DataSource = DSMTEChoiceDrug
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
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        UseMultiTitle = True
        OnDragDrop = DBGridChoiceDrugDragDrop
        OnDragOver = DBGridChoiceDrugDragOver
        OnDrawColumnCell = DBGridChoiceDrugDrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DRUGNAMEPILL'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.ToolTips = True
            ToolTips = True
            Width = 245
            WordWrap = True
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
    object PnlChoiceDocClin: TPanel
      Left = 0
      Top = 0
      Width = 1022
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 158
        Height = 13
        Caption = #1042#1088#1072#1095', '#1085#1072#1079#1085#1072#1095#1072#1102#1097#1080#1081' '#1087#1088#1077#1087#1072#1088#1072#1090#1099
      end
      object LblEmptyDocWarning: TLabel
        Left = 419
        Top = 28
        Width = 241
        Height = 13
        Caption = #1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1074#1088#1072#1095#1072#1093' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090' !'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CbBoxInfoDoc: TComboBox
        Left = 8
        Top = 24
        Width = 297
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = CbBoxInfoDocChange
      end
      object BitBtnEdtTblDoc: TBitBtn
        Left = 306
        Top = 24
        Width = 19
        Height = 19
        Hint = #1054#1090#1088#1077#1076#1072#1082#1090#1080#1088#1091#1081#1090#1077' '#1090#1072#1073#1083#1080#1094#1091' '#1089' '#1076#1086#1082#1090#1086#1088#1072#1084#1080
        TabOrder = 1
        OnClick = BitBtnEdtTblDocClick
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
  end
  object PpMnuTblDrug: TPopupMenu
    Left = 144
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1077#1087#1072#1088#1072#1090
      OnClick = SpBtnDrugAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
      OnClick = SpBtnDrugEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1087#1072#1088#1072#1090' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = SpBtnDrugDeleteClick
    end
  end
  object NiceSetFrmTblDrugs: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'CbBoxPrintFmt.ItemIndex')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 176
    Top = 8
  end
  object DSetChoiceDrug: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_DRUGS,'
      '    DRUGNAMEPILL,'
      '    DRUGDOSE,'
      '    DRUGUSE,'
      '    DRUGCURE,'
      '    DRUGINPUT,'
      '    DRUGMETHOD,'
      '    DRUGNOTE,'
      '    DRUGRECIPE'
      'FROM'
      '    TBL_DRUGS '
      'WHERE (1=2)'
      'ORDER BY DRUGNAMEPILL ')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 832
    Top = 473
    oRefreshAfterPost = False
    oFetchAll = True
  end
  object DSMTETblDrug: TDataSource
    DataSet = MTETblDrug
    Left = 192
    Top = 449
  end
  object dsdTblDrug: TDataSetDriverEh
    ProviderDataSet = DMFIB.DSetDrugs
    Left = 128
    Top = 449
  end
  object MTETblDrug: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdTblDrug
    Left = 160
    Top = 449
  end
  object dsdChoiceDrug: TDataSetDriverEh
    ProviderDataSet = DSetChoiceDrug
    Left = 864
    Top = 473
  end
  object MTEChoiceDrug: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdChoiceDrug
    Left = 896
    Top = 473
  end
  object DSMTEChoiceDrug: TDataSource
    DataSet = MTEChoiceDrug
    Left = 928
    Top = 473
  end
  object DSetReportRecipe: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      '    A.ID_ANKETA,'
      '    A.ANKLASTNAME,'
      '    A.ANKFIRSTNAME,'
      '    A.ANKTHIRDNAME,'
      '    A.ANKLASTNAME||'#39' '#39'||'
      '    UPPER(LEFT(A.ANKFIRSTNAME, 1))||'#39'.'#39'||'
      '    UPPER(LEFT(A.ANKTHIRDNAME, 1))||'#39'. '#39'||'
      
        '    CAST(EXTRACT(YEAR FROM A.ANKDATEBORN) AS VARCHAR(4))||'#39' '#1075'.'#1088'.' +
        #39
      '    AS FULLNAME_BORN,'
      '    A.ANKDATEBORN,'
      '    COALESCE(A.ANKADRESS,'#39#1072#1076#1088#1077#1089' '#1085#1077' '#1080#1079#1074#1077#1089#1090#1077#1085#39') AS Pat_Adress,'
      '    COALESCE(A.ANKPHONE,'#39#1090#1077#1083#1077#1092#1086#1085' '#1085#1077' '#1091#1082#1072#1079#1072#1085#39') AS Pat_Phone,'
      '    D.ID_DOCTOR,'
      '    D.DOC_LASTNAME||'#39' '#39'||'
      '    D.DOC_FIRSTNAME||'#39' '#39'||'
      '    D.DOC_THIRDNAME AS FULL_DOC,'
      '    DR.ID_DRUGS,'
      '    DR.DRUGRECIPE'
      
        '    ,'#39#1041#1083#1072#1085#1082'_'#1088#1077#1094#1077#1087#1090#1072'_'#39'||DR.DRUGNAMEPILL||'#39'_'#1087#1072#1094#1080#1077#1085#1090'_'#39'||A.ANKLASTNA' +
        'ME||'#39'_'#39'||UPPER(LEFT(A.ANKFIRSTNAME,1))||'
      
        '     UPPER(LEFT(A.ANKTHIRDNAME,1))||'#39'_'#39'||EXTRACT(YEAR FROM A.ANK' +
        'DATEBORN) AS REPORT_DRUG'
      'FROM TBL_DRUGS DR, TBL_DOCTOR D, TBL_ANKETA A'
      'WHERE (DR.ID_DRUGS = :prmID_DR)'
      '        AND'
      '      (D.ID_DOCTOR = :prmID_DOC)'
      '      AND'
      '      (A.ID_ANKETA = :prmID_Ank)')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 304
    Top = 489
    oFetchAll = True
  end
  object DSetReportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ID_DOCTOR,-- '#1082#1083#1102#1095#1077#1074#1086#1077' '#1087#1086#1083#1077' '#1076#1083#1103' '#1089#1083#1091#1078#1077#1073#1085#1099#1093' '#1094#1077#1083#1077#1081
      '/********* '#1087#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1076#1086#1082#1090#1086#1088#1077' **********/'
      '    TRIM('
      '    TRIM(CASE DOC_STEPEN'
      '           WHEN 0 THEN '#39#39
      '           WHEN 1 THEN '#39#1082'.'#1084'.'#1085'.,'#39
      '           WHEN 2 THEN '#39#1076'.'#1084'.'#1085'.,'#39
      '         END)||'#39' '#39'||'
      '    TRIM(CASE DOC_CATEGORY'
      '           WHEN 0 THEN '#39#1074#1088#1072#1095#39
      '           WHEN 1 THEN '#39#1074#1088#1072#1095' 2-'#1081' '#1082#1072#1090'.,'#39
      '           WHEN 2 THEN '#39#1074#1088#1072#1095' 1-'#1081' '#1082#1072#1090'.,'#39
      '           WHEN 3 THEN '#39#1074#1088#1072#1095' '#1074#1099#1089#1096'.'#1082#1072#1090'.,'#39
      '    END)||'#39' '#39'||'
      '    TRIM(DOC_PROFIL)||'#39' '#39'||'
      '    DOC_LASTNAME||'#39' '#39'||'
      '    UPPER(LEFT(DOC_FIRSTNAME, 1))||'#39'.'#39'||'
      '    UPPER(LEFT(DOC_THIRDNAME, 1))||'#39'.'#39'||'
      '    CASE DOC_PHONENUMBACCESS'
      
        '       WHEN 1 THEN COALESCE('#39' ('#1082#1086#1085'.'#1090#1077#1083'. '#39'||DOC_CONTACTPHONE||'#39')'#39 +
        ','#39#39')'
      '       ELSE '#39#39
      '    END) AS FULL_DOCINFO,'
      '/**************************************************/'
      ''
      '/********* '#1082#1086#1088#1086#1090#1082#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1076#1086#1082#1090#1086#1088#1077' **********/'
      '    TRIM('
      '    '#39#1074#1088#1072#1095' '#39'||'
      '    TRIM(DOC_PROFIL)||'#39' '#39'||'
      '    DOC_LASTNAME||'#39' '#39'||'
      '    UPPER(LEFT(DOC_FIRSTNAME, 1))||'#39'.'#39'||'
      '    UPPER(LEFT(DOC_THIRDNAME, 1))||'#39'.'#39') AS SHORT_DOCINFO,'
      '/**************************************************/'
      ''
      '/********* '#1082#1086#1085#1090#1072#1082#1090#1099' '#1076#1086#1082#1090#1086#1088#1072' **********/'
      '    CASE DOC_PHONENUMBACCESS'
      
        '       WHEN 1 THEN COALESCE('#39'('#1082#1086#1085'.'#1090#1077#1083'. '#39'||DOC_CONTACTPHONE||'#39')'#39',' +
        #39#39')'
      '       ELSE '#39#39
      '    END AS PHONE_DOCINFO,'
      '/**************************************************/'
      ''
      '    DOC_LASTNAME'
      'FROM TBL_DOCTOR '
      'ORDER BY DOC_LASTNAME ASC')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 305
    Top = 522
    oFetchAll = True
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDsetRecipe'
    CloseDataSource = False
    DataSet = DSetReportRecipe
    BCDToCurrency = False
    Left = 265
    Top = 490
  end
  object AppEventsDrug: TApplicationEvents
    OnShortCut = AppEventsDrugShortCut
    Left = 112
    Top = 8
  end
end
