object FrmTblClinic: TFrmTblClinic
  Left = 236
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1083#1077#1095#1077#1073#1085#1099#1093' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1081
  ClientHeight = 627
  ClientWidth = 938
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
    Width = 938
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object LblCapt: TLabel
      Left = 197
      Top = 18
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = 'LblCapt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 573
    Width = 938
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      938
      54)
    object LblWarning: TLabel
      Left = 144
      Top = 24
      Width = 203
      Height = 13
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1042#1072#1096#1072' '#1090#1072#1073#1083#1080#1094#1072' '#1085#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1072'.'
    end
    object BtnClose: TButton
      Left = 852
      Top = 11
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BtnCloseClick
    end
    object BtnSave: TButton
      Left = 772
      Top = 11
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = BtnSaveClick
    end
    object BtnCancel: TButton
      Left = 692
      Top = 11
      Width = 75
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = BtnCancelClick
    end
    object BtnHlp: TButton
      Left = 9
      Top = 11
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 3
      OnClick = BtnHlpClick
    end
  end
  object PnlEdtTblClinic: TPanel
    Left = 0
    Top = 41
    Width = 938
    Height = 289
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label9: TLabel
      Left = 728
      Top = 139
      Width = 90
      Height = 13
      Alignment = taCenter
      Caption = #1053#1077#1090' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ImageLogos: TImage
      Left = 640
      Top = 27
      Width = 262
      Height = 262
      Hint = 
        #1051#1086#1075#1086#1090#1080#1087' '#1083#1077#1095#1077#1073#1085#1086'-'#1087#1088#1086#1092#1080#1083#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103'. '#1055#1086#1079#1074#1086#1083#1103#1077#1090' '#13#10#1086#1090#1086#1073#1088#1072 +
        #1078#1072#1090#1100' '#1085#1072#1088#1103#1076#1091' '#1089' '#1090#1077#1082#1089#1090#1086#1074#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081' '#1083#1086#1075#1086#1090#1080#1087' '#1051#1055#1059' '#13#10#1074' '#1074#1080#1076#1077' '#1082#1072#1088#1090#1080#1085#1082 +
        #1080' .'#13#10#1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1084#1086#1078#1077#1090' '#1073#1099#1090#1100' '#1082#1072#1082' '#1095#1077#1088#1085#1086'-'#1073#1077#1083#1099#1084',  '#1090#1072#1082' '#1094#1074#1077#1090#1085#1099#1084', '#13#10#1085#1086' ' +
        #1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086' '#1074' '#1092#1086#1088#1084#1072#1090#1077' JPG '#1080#1083#1080' BMP. '
      Center = True
      ParentShowHint = False
      Proportional = True
      ShowHint = True
      Stretch = True
    end
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 194
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
    end
    object Label2: TLabel
      Left = 8
      Top = 51
      Width = 219
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1080' '#1092#1072#1082#1089#1099' ('#1084#1086#1078#1085#1086' '#1095#1077#1088#1077#1079' '#1079#1072#1087#1103#1090#1091#1102')'
    end
    object Label3: TLabel
      Left = 9
      Top = 96
      Width = 270
      Height = 13
      Caption = #1055#1086#1095#1090#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' ('#1078#1077#1083#1072#1090#1077#1083#1100#1085#1086' '#1084#1077#1085#1077#1077' 70 '#1079#1085#1072#1082#1086#1074'):'
    end
    object Label4: TLabel
      Left = 8
      Top = 194
      Width = 119
      Height = 13
      Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
    end
    object Label5: TLabel
      Left = 328
      Top = 3
      Width = 184
      Height = 13
      Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1077' '#1080' '#1080#1085#1090#1077#1088#1085#1077#1090'-'#1088#1077#1082#1074#1080#1079#1080#1090#1099
    end
    object Label6: TLabel
      Left = 640
      Top = 11
      Width = 69
      Height = 13
      Caption = #1051#1086#1075#1086#1090#1080#1087' '#1051#1055#1059
    end
    object SpBtnPictLoad: TSpeedButton
      Left = 913
      Top = 27
      Width = 17
      Height = 17
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1083#1086#1075#1086#1090#1080#1087' (<Shift> + 1)'
      Flat = True
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Wingdings 2'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777700777
        7777777777700777777777777770077777777777000000007777777700000000
        7777777777700777777777777770077777777777777007777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnPictLoadClick
    end
    object SpBtnPictErase: TSpeedButton
      Left = 913
      Top = 46
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077' (<Ctrl> + 1)'
      Flat = True
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Wingdings 2'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000008000
        00000080000080800000000080008000800000808000C0C0C00080808000FF00
        000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777770777077777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777777707770777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpBtnPictEraseClick
    end
    object Label7: TLabel
      Left = 328
      Top = 96
      Width = 218
      Height = 13
      Caption = #1053#1072#1083#1086#1075#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' ('#1054#1050#1040#1058#1054', '#1041#1048#1050' '#1080' '#1090'.'#1076'.)'
    end
    object Label8: TLabel
      Left = 328
      Top = 194
      Width = 304
      Height = 13
      Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1084#1077#1076#1080#1094'.'#1083#1080#1094#1077#1085#1079#1080#1080' ('#1078#1077#1083#1072#1090#1077#1083#1100#1085#1086' '#1084#1077#1085#1077#1077' 90 '#1079#1085#1072#1082#1086#1074'):'
    end
    object EdtName: TEdit
      Left = 8
      Top = 20
      Width = 265
      Height = 21
      Hint = 
        #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103' ('#1085#1077' '#1073#1086#1083#1077#1077' 100 '#1089#1080#1084#1074#1086#1083#1086#1074 +
        ')'
      MaxLength = 100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'EdtName'
    end
    object EdtPhone: TEdit
      Left = 8
      Top = 68
      Width = 265
      Height = 21
      Hint = #1058#1077#1083#1077#1092#1086#1085#1099' '#1080' '#1092#1072#1082#1089#1099' '#1051#1055#1059' ('#1085#1077' '#1073#1086#1083#1077#1077' 100 '#1089#1080#1084#1074#1086#1083#1086#1074')'
      MaxLength = 100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'EdtPhone'
    end
    object REAdress: TRichEdit
      Left = 8
      Top = 112
      Width = 265
      Height = 71
      Hint = #1055#1086#1095#1090#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1051#1055#1059
      Lines.Strings = (
        'REAdress')
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object RERekvizit: TRichEdit
      Left = 8
      Top = 209
      Width = 265
      Height = 71
      Hint = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1051#1055#1059
      Lines.Strings = (
        'RERekvizit')
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object REInternet: TRichEdit
      Left = 328
      Top = 18
      Width = 265
      Height = 71
      Hint = #1048#1085#1090#1077#1088#1085#1077#1090'-'#1089#1090#1088#1072#1085#1080#1094#1099', e-mail '#1051#1055#1059' '#1080' '#1090'.'#1076'.'
      Lines.Strings = (
        'REInternet')
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object RENalog: TRichEdit
      Left = 328
      Top = 112
      Width = 265
      Height = 71
      Hint = #1053#1072#1083#1086#1075#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1051#1055#1059' ('#1041#1048#1050', '#1054#1050#1040#1058#1054', '#1088#1072#1089#1095#1077#1090#1085#1099#1077' '#1089#1095#1077#1090#1072' '#1080' '#1090'.'#1076'.)'
      Lines.Strings = (
        'RENalog')
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object RELicense: TRichEdit
      Left = 328
      Top = 209
      Width = 265
      Height = 71
      Hint = 
        #1056#1077#1082#1074#1080#1079#1080#1090#1099', '#1091#1082#1072#1079#1072#1085#1085#1099#1077' '#1074' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1080' '#13#10'(' +
        #1085#1086#1084#1077#1088' '#1083#1080#1094#1077#1085#1079#1080#1080', '#1079#1072#1103#1074#1083#1077#1085#1085#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100', '#1087#1077#1088#1077#1095#1077#1085#1100' '#1091#1089#1083#1091#1075' '#1080' '#1090'.'#1076'.)'
      Lines.Strings = (
        'RELicense')
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 6
    end
  end
  object PnlViewTblClinic: TPanel
    Left = 0
    Top = 330
    Width = 938
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      938
      243)
    object SpBtnClinAdd: TSpeedButton
      Left = 916
      Top = 8
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1085#1086#1074#1086#1075#1086' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103' (<Ctrl> + N)'
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
      OnClick = SpBtnClinAddClick
    end
    object SpBtnClinEdit: TSpeedButton
      Left = 916
      Top = 27
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103' (<Ctrl> + E)'
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
      OnClick = SpBtnClinEditClick
    end
    object SpBtnClinDelete: TSpeedButton
      Left = 916
      Top = 46
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103' (<Ctrl> + D)'
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
      OnClick = SpBtnClinDeleteClick
    end
    object DBGridClinic: TDBGridEh
      Left = 8
      Top = 8
      Width = 903
      Height = 228
      Anchors = [akLeft, akTop, akRight, akBottom]
      ColumnDefValues.ToolTips = True
      DataSource = DMFIB.DSClinic
      DrawGraphicData = True
      DrawMemoText = True
      EvenRowColor = clWindow
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 2
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind]
      ParentShowHint = False
      PopupMenu = PpMnuTblClinic
      RowHeight = 3
      RowLines = 2
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
      OnDrawColumnCell = DBGridClinicDrawColumnCell
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'CLIN_NAME'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1077#1095#1077#1073#1085#1086#1075#1086' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
          Title.TitleButton = True
          Title.ToolTips = True
          Width = 105
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'CLIN_PHONE'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1080' '#1092#1072#1082#1089
          Title.ToolTips = True
          Width = 104
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CLIN_ADRESS'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1055#1086#1095#1090#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Title.ToolTips = True
          Width = 150
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CLIN_REKVIZIT'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Title.ToolTips = True
          Width = 150
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CLIN_INTERNET'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Title.ToolTips = True
          Width = 150
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CLIN_LICENSE'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1051#1080#1094#1077#1085#1079#1080#1086#1085#1085#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Title.ToolTips = True
          Width = 150
          WordWrap = True
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CLIN_NALOG'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = #1053#1072#1083#1086#1075#1086#1074#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Title.ToolTips = True
          Width = 150
          WordWrap = True
        end>
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1077' '#1092#1072#1081#1083#1099' (*.bmp;*.jpg;*.jpeg)|*.bmp;*.jpg;*.jpeg'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = #1054#1090#1082#1088#1099#1090#1100' '#1083#1086#1075#1086#1090#1080#1087' '#1051#1055#1059
    Left = 336
    Top = 8
  end
  object PpMnuTblClinic: TPopupMenu
    Left = 304
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1077' '#1051#1055#1059
      OnClick = SpBtnClinAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1051#1055#1059
      OnClick = SpBtnClinEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1051#1055#1059' '#1080#1079' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnClick = SpBtnClinDeleteClick
    end
  end
  object NiceSetFrmTblClinic: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      '')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 272
    Top = 8
  end
  object AppEventsFrmClinic: TApplicationEvents
    OnShortCut = AppEventsFrmClinicShortCut
    Left = 368
    Top = 8
  end
end
