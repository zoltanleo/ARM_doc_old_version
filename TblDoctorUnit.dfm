object FrmTblDoctor: TFrmTblDoctor
  Left = 270
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1074#1088#1072#1095#1077#1081
  ClientHeight = 551
  ClientWidth = 838
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
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    838
    551)
  PixelsPerInch = 96
  TextHeight = 13
  object PnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
  object PnlEdtTblDoctor: TPanel
    Left = 0
    Top = 50
    Width = 838
    Height = 175
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 39
      Top = 9
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      Left = 63
      Top = 43
      Width = 25
      Height = 13
      Caption = #1048#1084#1103' '
    end
    object Label3: TLabel
      Left = 41
      Top = 77
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label4: TLabel
      Left = 449
      Top = 9
      Width = 78
      Height = 13
      Hint = #1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1074#1088#1072#1095#1072': '#1091#1088#1086#1083#1086#1075', '#1075#1080#1085#1077#1082#1086#1083#1086#1075' '#1080' '#1090'.'#1076'.'
      Alignment = taRightJustify
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      WordWrap = True
    end
    object Label5: TLabel
      Left = 446
      Top = 77
      Width = 81
      Height = 13
      Caption = #1059#1095#1077#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
    end
    object Label6: TLabel
      Left = 474
      Top = 43
      Width = 53
      Height = 13
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    end
    object Label7: TLabel
      Left = 428
      Top = 111
      Width = 99
      Height = 13
      Caption = #1064#1090#1072#1090#1085#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
    end
    object Label8: TLabel
      Left = 25
      Top = 105
      Width = 63
      Height = 26
      Alignment = taRightJustify
      Caption = #1082#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
      WordWrap = True
    end
    object Label10: TLabel
      Left = 152
      Top = 112
      Width = 38
      Height = 13
      Caption = 'Label10'
    end
    object EdtLastName: TEdit
      Left = 96
      Top = 6
      Width = 258
      Height = 21
      Hint = 
        #1055#1086#1083#1077' '#1076#1083#1103' '#1074#1074#1086#1076#1072' '#1092#1072#1084#1080#1083#1080#1080' '#1074#1088#1072#1095#1072#13#10'('#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 20 '#1089#1080#1084#1074 +
        #1086#1083#1086#1074') '
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'EdtLastName'
      OnChange = EdtLastNameChange
      OnKeyPress = EdtLastNameKeyPress
    end
    object EdtFirstName: TEdit
      Left = 96
      Top = 40
      Width = 258
      Height = 21
      Hint = #1055#1086#1083#1077' '#1076#1083#1103' '#1080#1084#1077#1085#1080' '#1074#1088#1072#1095#1072#13#10'('#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 20 '#1089#1080#1084#1074#1086#1083#1086#1074')'
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'EdtFirstName'
      OnChange = EdtFirstNameChange
      OnKeyPress = EdtLastNameKeyPress
    end
    object EdtThirdName: TEdit
      Left = 96
      Top = 74
      Width = 258
      Height = 21
      Hint = #1055#1086#1083#1077' '#1076#1083#1103' '#1086#1090#1095#1077#1089#1090#1074#1072' '#1074#1088#1072#1095#1072#13#10'('#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 20 '#1089#1080#1084#1074#1086#1083#1086#1074')'
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'EdtThirdName'
      OnChange = EdtThirdNameChange
      OnKeyPress = EdtLastNameKeyPress
    end
    object EdtProfil: TEdit
      Left = 536
      Top = 6
      Width = 258
      Height = 21
      Hint = 
        #1055#1086#1083#1077' '#1076#1083#1103' '#1074#1074#1086#1076#1072' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1074#1088#1072#1095#1072#13#10'('#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 2' +
        '0 '#1089#1080#1084#1074#1086#1083#1086#1074')'
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = 'EdtProfil'
      OnExit = EdtProfilExit
      OnKeyPress = EdtLastNameKeyPress
    end
    object CBCategory: TComboBox
      Left = 536
      Top = 40
      Width = 258
      Height = 21
      Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102' '#1074#1088#1072#1095#1072' ('#1077#1089#1083#1080' '#1077#1089#1090#1100').'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = #1085#1077#1090
      Items.Strings = (
        #1085#1077#1090
        #1074#1090#1086#1088#1072#1103' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1090#1077#1075#1086#1088#1080#1103
        #1087#1077#1088#1074#1072#1103' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1090#1077#1075#1086#1088#1080#1103
        #1074#1099#1089#1096#1072#1103' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1090#1077#1075#1086#1088#1080#1103)
    end
    object CBStepen: TComboBox
      Left = 536
      Top = 74
      Width = 258
      Height = 21
      Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1091#1095#1077#1085#1091#1102' '#1089#1090#1077#1087#1077#1085#1100' '#1074#1088#1072#1095#1072' ('#1077#1089#1083#1080' '#1077#1089#1090#1100').'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = #1085#1077#1090
      Items.Strings = (
        #1085#1077#1090
        #1082#1072#1085#1076#1080#1076#1072#1090' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1080#1093' '#1085#1072#1091#1082' ('#1082'.'#1084'.'#1085'.)'
        #1076#1086#1082#1090#1086#1088' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1080#1093' '#1085#1072#1091#1082' ('#1076'.'#1084'.'#1085'.)')
    end
    object CbBoxDocJob: TComboBox
      Left = 536
      Top = 108
      Width = 258
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 8
      Text = #1096#1090#1072#1090#1085#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
      Items.Strings = (
        #1089#1086#1074#1084#1077#1089#1090#1080#1090#1077#1083#1100
        #1096#1090#1072#1090#1085#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
        #1091#1074#1086#1083#1077#1085)
    end
    object EdtContactPhone: TEdit
      Left = 96
      Top = 108
      Width = 258
      Height = 21
      MaxLength = 100
      TabOrder = 3
      Text = 'EdtContactPhone'
      OnChange = EdtContactPhoneChange
      OnKeyPress = EdtContactPhoneKeyPress
    end
    object ChkBoxVisiblePhone: TCheckBox
      Left = 32
      Top = 143
      Width = 322
      Height = 17
      Hint = 
        #1087#1086#1084#1077#1090#1100#1090#1077' '#1087#1091#1085#1082#1090', '#1095#1090#1086#1073#1099' '#1085#1086#1084#1077#1088' '#1073#1099#1083' '#1074#1080#1076#1077#1085' '#1090#1086#1083#1100#1082#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084' '#1089' '#1086#1087#1088 +
        #1077#1076#1077#1083#1077#1085#1085#1099#1084#1080' '#1087#1088#1072#1074#1072#1084#1080' '#1076#1086#1089#1090#1091#1087#1072
      Alignment = taLeftJustify
      Caption = #1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1085#1086#1084#1077#1088' '#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1089#1083#1091#1078#1077#1073#1085#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103
      TabOrder = 4
    end
  end
  object PnlViewTblDoctor: TPanel
    Left = 0
    Top = 232
    Width = 838
    Height = 252
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'PnlViewTblDoctor'
    TabOrder = 2
    DesignSize = (
      838
      252)
    object SpBtnDoctAdd: TSpeedButton
      Left = 816
      Top = 5
      Width = 17
      Height = 17
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1074#1088#1072#1095#1072' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (<Ctrl> + N)'
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
      OnClick = SpBtnDoctAddClick
    end
    object SpBtnDoctEdit: TSpeedButton
      Left = 816
      Top = 24
      Width = 17
      Height = 17
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1074#1088#1072#1095#1072' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' (<Ctrl> + E)'
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
      OnClick = SpBtnDoctEditClick
    end
    object SpBtnDoctDelete: TSpeedButton
      Left = 816
      Top = 47
      Width = 17
      Height = 17
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1072#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1074#1088#1072#1095#1072' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' (<Ctrl> + D)'
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
      OnClick = SpBtnDoctDeleteClick
    end
    object DBGridTblDoc: TDBGridEh
      Left = 8
      Top = 6
      Width = 802
      Height = 242
      Hint = #1055#1086#1083#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1074#1088#1072#1095#1072#1093' '
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DMFIB.DSDoctor
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
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PpMnuTblDoctor
      ReadOnly = True
      ShowHint = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      UseMultiTitle = True
      OnDblClick = DBGridTblDocDblClick
      OnDrawColumnCell = DBGridTblDocDrawColumnCell
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_LASTNAME'
          Footers = <>
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.TitleButton = True
          Width = 139
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_FIRSTNAME'
          Footers = <>
          Title.Caption = #1048#1084#1103
          Width = 112
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_THIRDNAME'
          Footers = <>
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Width = 113
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_PROFIL'
          Footers = <>
          Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          Width = 122
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_CATEGORY'
          Footers = <>
          KeyList.Strings = (
            '0'
            '1'
            '2'
            '3')
          PickList.Strings = (
            #1085#1077#1090
            #1074#1090#1086#1088#1072#1103
            #1087#1077#1088#1074#1072#1103
            #1074#1099#1089#1096#1072#1103)
          Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          Title.ToolTips = True
          ToolTips = True
          Width = 83
        end
        item
          Alignment = taCenter
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_STEPEN'
          Footers = <>
          KeyList.Strings = (
            '0'
            '1'
            '2')
          PickList.Strings = (
            #1085#1077#1090
            #1082'.'#1084'.'#1085'.'
            #1076'.'#1084'.'#1085'.')
          Title.Caption = #1059#1095#1077#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
          Title.ToolTips = True
          ToolTips = True
          Width = 75
        end
        item
          Alignment = taCenter
          Checkboxes = False
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DOC_STUFFSTATUS'
          Footers = <>
          KeyList.Strings = (
            '0'
            '1'
            '2')
          PickList.Strings = (
            #1089#1086#1074#1084#1077#1089#1090#1080#1090#1077#1083#1100
            #1096#1090#1072#1090#1085#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
            #1091#1074#1086#1083#1077#1085)
          Title.Caption = #1064#1090#1072#1090#1085#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Title.ToolTips = True
          ToolTips = True
          Width = 116
        end>
    end
  end
  object PnlBtnBar: TPanel
    Left = 0
    Top = 495
    Width = 838
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      838
      56)
    object LblWarning: TLabel
      Left = 240
      Top = 33
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
    object LblKeyBrdLayot: TLabel
      Left = 240
      Top = 17
      Width = 48
      Height = 13
      Caption = '68748313'
      Visible = False
    end
    object BtnClose: TButton
      Left = 754
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
      Left = 594
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
      Left = 675
      Top = 16
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (<Ctrl> + <Enter>)'
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object BtnConsultEdt: TButton
      Left = 88
      Top = 16
      Width = 97
      Height = 25
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1095#1072#1089#1072#1093' '#1087#1088#1080#1077#1084#1072' '#1074#1088#1072#1095#1072' (<Ctrl> + I)'
      Caption = #1063#1072#1089#1099' '#1087#1088#1080#1077#1084#1072
      TabOrder = 3
      OnClick = BtnConsultEdtClick
    end
    object BtnDocHlp: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 4
      OnClick = BtnDocHlpClick
    end
  end
  object PpMnuTblDoctor: TPopupMenu
    Left = 104
    Top = 16
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1074#1088#1072#1095#1072
      OnClick = SpBtnDoctAddClick
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074#1088#1072#1095#1072
      OnClick = SpBtnDoctEditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1088#1072#1095#1072' '#1080#1079' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnClick = SpBtnDoctDeleteClick
    end
  end
  object NiceSetFrmTblDoctor: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'LblKeyBrdLayot.Caption')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 76
    Top = 16
  end
  object AppEventsFrmDoctor: TApplicationEvents
    OnShortCut = AppEventsFrmDoctorShortCut
    Left = 48
    Top = 16
  end
end
