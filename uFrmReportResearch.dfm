object FrmReportResearch: TFrmReportResearch
  Left = 229
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1081
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
  object PnlSrc: TPanel
    Left = 0
    Top = 116
    Width = 368
    Height = 468
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'PnlSrc'
    TabOrder = 0
    DesignSize = (
      368
      468)
    object GridEhSrc: TDBGridEh
      Left = 8
      Top = 4
      Width = 353
      Height = 458
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = DSSrc
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghRecordMoving]
      ReadOnly = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDragDrop = GridEhSrcDragDrop
      OnDragOver = GridEhSrcDragOver
      OnDrawColumnCell = GridEhSrcDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'BASEPRICE_PROC_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1073#1080#1088#1072#1077#1084#1086#1081' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.ToolTips = True
          ToolTips = True
          Width = 200
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'COST_PROC_PRICE'
          Footers = <>
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 100
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
    TabOrder = 3
    DesignSize = (
      1022
      55)
    object BtnClose: TButton
      Left = 931
      Top = 12
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = BtnCloseClick
    end
    object BtnPrint: TButton
      Left = 852
      Top = 12
      Width = 75
      Height = 25
      Hint = #1055#1077#1095#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' (<Ctrl> + <Enter>)'
      Anchors = [akRight, akBottom]
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = BtnPrintClick
    end
    object BtnHlp: TButton
      Left = 8
      Top = 12
      Width = 75
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 2
      OnClick = BtnHlpClick
    end
  end
  object PnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 116
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      1022
      116)
    object LblCapt: TLabel
      Left = 16
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
    object LblIssueEmptyWarning: TLabel
      Left = 689
      Top = 7
      Width = 192
      Height = 13
      Caption = #1079#1072#1087#1086#1083#1085#1080#1090#1077' '#1090#1072#1073#1083#1080#1094#1091' '#1088#1072#1079#1076#1077#1083#1086#1074' '#1087#1088#1072#1081#1089#1072' !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblPriceNameEmptyWarning: TLabel
      Left = 688
      Top = 24
      Width = 181
      Height = 13
      Caption = #1089#1086#1079#1076#1072#1081#1090#1077' '#1093#1086#1090#1103' '#1073#1099' '#1086#1076#1080#1085' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090' !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblNullPriceWarning: TLabel
      Left = 160
      Top = 12
      Width = 96
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'LblNullPriceWarning'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object LblPatientsFIO: TLabel
      Left = 64
      Top = 16
      Width = 84
      Height = 13
      Caption = 'LblPatientsFIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 41
      Top = 81
      Width = 84
      Height = 13
      Caption = #1056#1072#1079#1076#1077#1083#1099' '#1087#1088#1072#1081#1089#1072
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 115
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072
    end
    object Label3: TLabel
      Left = 587
      Top = 81
      Width = 105
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1053#1072#1087#1088#1072#1074#1083#1103#1102#1097#1080#1081' '#1074#1088#1072#1095
    end
    object Label4: TLabel
      Left = 568
      Top = 56
      Width = 124
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1053#1072#1087#1088#1072#1074#1083#1103#1102#1097#1072#1103' '#1082#1083#1080#1085#1080#1082#1072
    end
    object LblClinicEmptyWarning: TLabel
      Left = 344
      Top = 8
      Width = 237
      Height = 13
      Caption = #1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1051#1055#1059' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090' !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblDocEmptyWarning: TLabel
      Left = 344
      Top = 24
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
    object CbBoxIssue: TComboBox
      Left = 132
      Top = 78
      Width = 329
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbBoxIssueChange
    end
    object CbBoxPriceName: TComboBox
      Left = 132
      Top = 53
      Width = 329
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 10
      Enabled = False
      ItemHeight = 13
      TabOrder = 0
      OnChange = CbBoxPriceNameChange
    end
    object BitBtnEdtPrice: TBitBtn
      Left = 462
      Top = 54
      Width = 19
      Height = 19
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = BitBtnEdtPriceClick
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
    object Panel1: TPanel
      Left = 1
      Top = 41
      Width = 1020
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvLowered
      TabOrder = 7
    end
    object Panel2: TPanel
      Left = 1
      Top = 109
      Width = 1020
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvLowered
      TabOrder = 8
    end
    object CbBoxInfoClinic: TComboBox
      Left = 699
      Top = 53
      Width = 292
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      DropDownCount = 10
      Enabled = False
      ItemHeight = 13
      TabOrder = 3
    end
    object BitBtnEdtClinic: TBitBtn
      Left = 992
      Top = 54
      Width = 19
      Height = 19
      Anchors = [akTop, akRight]
      TabOrder = 4
      OnClick = BitBtnEdtClinicClick
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
    object CbBoxInfoDoc: TComboBox
      Left = 699
      Top = 78
      Width = 292
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      DropDownCount = 10
      Enabled = False
      ItemHeight = 13
      TabOrder = 5
    end
    object BitBtnEdtDoctor: TBitBtn
      Left = 992
      Top = 79
      Width = 19
      Height = 19
      Anchors = [akTop, akRight]
      TabOrder = 6
      OnClick = BitBtnEdtDoctorClick
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
  object PnlDest: TPanel
    Left = 368
    Top = 116
    Width = 654
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PnlDest'
    TabOrder = 2
    DesignSize = (
      654
      468)
    object GridEhDest: TDBGridEh
      Left = 84
      Top = 4
      Width = 558
      Height = 458
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      ColumnDefValues.Footer.ToolTips = True
      ColumnDefValues.ToolTips = True
      DataSource = DSDest
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      DrawGraphicData = True
      DrawMemoText = True
      Flat = False
      FooterColor = clInfoBk
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghRecordMoving]
      SumList.Active = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDragDrop = GridEhDestDragDrop
      OnDragOver = GridEhDestDragOver
      OnDrawColumnCell = GridEhDestDrawColumnCell
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'LABORISSUE_NAME'
          Footers = <>
          Title.Caption = #1056#1072#1079#1076#1077#1083' '#1087#1088#1072#1081#1089#1072
          Title.ToolTips = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'BASEPRICE_PROC_NAME'
          Footer.Alignment = taRightJustify
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.Value = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072':'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.ToolTips = True
          Width = 200
        end
        item
          AutoFitColWidth = False
          DisplayFormat = '# ##0.00 '#1088#1091#1073
          EditButtons = <>
          FieldName = 'COST_PROC_PRICE'
          Footer.DisplayFormat = '# ##0.00 '#1088#1091#1073
          Footer.FieldName = 'COST_PROC_PRICE'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1081' '#1091#1089#1083#1091#1075#1080
          Title.ToolTips = True
          Width = 100
        end>
    end
    object BtnFwdOne: TButton
      Left = 3
      Top = 84
      Width = 75
      Height = 25
      Caption = '>'
      TabOrder = 0
      OnClick = BtnFwdOneClick
    end
    object BtnFwdAll: TButton
      Left = 3
      Top = 116
      Width = 75
      Height = 25
      Caption = '>>'
      TabOrder = 1
      OnClick = BtnFwdAllClick
    end
    object BtnRtnOne: TButton
      Left = 3
      Top = 153
      Width = 75
      Height = 25
      Caption = '<'
      TabOrder = 2
      OnClick = BtnRtnOneClick
    end
    object BtnRtnAll: TButton
      Left = 3
      Top = 185
      Width = 75
      Height = 25
      Caption = '<<'
      TabOrder = 3
      OnClick = BtnRtnAllClick
    end
  end
  object NiceSetFrmReportResearch: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 488
    Top = 328
  end
  object MTESrc: TMemTableEh
    AggregatesActive = True
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdSrc
    SortOrder = 'BASEPRICE_ID'
    Left = 104
    Top = 212
  end
  object DSSrc: TDataSource
    DataSet = MTESrc
    Left = 136
    Top = 213
  end
  object DSetResIssue: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    LABORISSUE_ID,'
      '    LABORISSUE_NAME'
      'FROM'
      '    TBL_LABORISSUE'
      'order by 1 ')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 136
    Top = 248
    poUseBooleanField = False
    oRefreshDeletedRecord = True
  end
  object DSDest: TDataSource
    DataSet = MTEDest
    Left = 136
    Top = 285
  end
  object MTEDest: TMemTableEh
    AggregatesActive = True
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdDest
    Left = 104
    Top = 285
  end
  object frxDBDSetRes: TfrxDBDataset
    UserName = 'frxDBDSetRes'
    CloseDataSource = False
    DataSource = DSDest
    BCDToCurrency = False
    Left = 552
    Top = 208
  end
  object DSetResPriceName: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT MAX(ID_PRICE) MAX_ID, NAME_PRICE'
      'FROM TBL_PRICE'
      'GROUP BY NAME_PRICE'
      'ORDER BY 1 DESC')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 72
    Top = 249
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object FIBDSetInfoDoc: TpFIBDataSet
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
    Left = 584
    Top = 241
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object FIBDSetInfoPat: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_ANKETA,'
      '    TRIM('
      '    TRIM(ANKLASTNAME)||'#39' '#39'||'
      '    TRIM(ANKFIRSTNAME)||'#39' '#39'||'
      '    TRIM(ANKTHIRDNAME)||'#39', '#39'||'
      
        '    IIF(CHAR_LENGTH(EXTRACT(DAY FROM ANKDATEBORN)) < 2,'#39'0'#39'||EXTR' +
        'ACT(DAY FROM ANKDATEBORN),EXTRACT(DAY FROM ANKDATEBORN))||'#39'.'#39'||'
      
        '    IIF(CHAR_LENGTH(EXTRACT(MONTH FROM ANKDATEBORN)) < 2,'#39'0'#39'||EX' +
        'TRACT(MONTH FROM ANKDATEBORN),EXTRACT(MONTH FROM ANKDATEBORN))||' +
        #39'.'#39'||'
      '    EXTRACT(YEAR FROM ANKDATEBORN)||'#39' '#1075'.'#1088'.'#39'||'
      '    COALESCE('#39' ('#1082#1086#1085'.'#1090#1077#1083'. '#39'||TRIM(ANKPHONE)||'#39')'#39','#39#39')'
      '    ) AS FULL_PATINFO,'
      '    TRIM('
      '    TRIM(ANKLASTNAME)||'#39' '#39'||'
      '    UPPER(LEFT(TRIM(ANKFIRSTNAME),1))||'#39'.'#39'||'
      '    UPPER(LEFT(TRIM(ANKTHIRDNAME),1))||'#39', '#39'||'
      
        '    IIF(CHAR_LENGTH(EXTRACT(DAY FROM ANKDATEBORN)) < 2,'#39'0'#39'||EXTR' +
        'ACT(DAY FROM ANKDATEBORN),EXTRACT(DAY FROM ANKDATEBORN))||'#39'.'#39'||'
      
        '    IIF(CHAR_LENGTH(EXTRACT(MONTH FROM ANKDATEBORN)) < 2,'#39'0'#39'||EX' +
        'TRACT(MONTH FROM ANKDATEBORN),EXTRACT(MONTH FROM ANKDATEBORN))||' +
        #39'.'#39'||'
      '    EXTRACT(YEAR FROM ANKDATEBORN)||'#39' '#1075'.'#1088'.'#39
      '    ) AS SHORT_PATINFO,'
      '    ANKLASTNAME'
      '    , CURRENT_TIMESTAMP AS TIME_PRINT_REPORT'
      
        '    , TRIM(ANKLASTNAME)||'#39'_'#39'||UPPER(LEFT(ANKFIRSTNAME,1))||UPPER' +
        '(LEFT(ANKTHIRDNAME,1))||'#39'_'#39'||'
      '      EXTRACT(YEAR FROM ANKDATEBORN)||'#39'_'#1089#1087#1080#1089#1086#1082'_'#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1081'_'#39'||'
      
        '      EXTRACT(DAY FROM CURRENT_DATE)||'#39'.'#39'||EXTRACT(MONTH FROM CU' +
        'RRENT_DATE)||'#39'.'#39'||EXTRACT(YEAR FROM CURRENT_DATE)'
      '      AS REPORT_NAME'
      'FROM TBL_ANKETA '
      'ORDER BY ANKLASTNAME')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 648
    Top = 241
    oRefreshDeletedRecord = True
  end
  object FIBDSetInfoClinic: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_CLINIC,'
      '    CLIN_NAME,'
      '    CLIN_ADRESS,'
      '    CLIN_PHONE,'
      '    CLIN_REKVIZIT,'
      '    CLIN_LOGOS,'
      '    CLIN_LICENSE'
      'FROM TBL_CLINIC'
      'ORDER BY 2')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 616
    Top = 241
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object frxDBDSetInfoDoc: TfrxDBDataset
    UserName = 'Tbl_Doctor'
    CloseDataSource = False
    DataSet = FIBDSetInfoDoc
    BCDToCurrency = False
    Left = 584
    Top = 209
  end
  object frxDBDSetInfoClinic: TfrxDBDataset
    UserName = 'Tbl_Clinic'
    CloseDataSource = False
    DataSet = FIBDSetInfoClinic
    BCDToCurrency = False
    Left = 616
    Top = 209
  end
  object frxDBDSetInfoPat: TfrxDBDataset
    UserName = 'Tbl_Patient'
    CloseDataSource = False
    DataSet = FIBDSetInfoPat
    BCDToCurrency = False
    Left = 648
    Top = 208
  end
  object DSetSrc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BP.BASEPRICE_ID, '
      '    BP.BASEPRICE_PROC_NAME,'
      '    P.COST_PROC_PRICE,'
      '    LI.LABORISSUE_NAME,'
      '    P.NAME_PRICE'
      'FROM TBL_LABORISSUE LI'
      
        '   JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PRO' +
        'C_ISSUE_FK)'
      '   JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE)'
      'WHERE (P.COST_PROC_PRICE > 0)'
      'ORDER BY 1')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 40
    Top = 212
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object DSetDest: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BP.BASEPRICE_ID,'
      '    BP.BASEPRICE_PROC_NAME,'
      '    P.COST_PROC_PRICE,'
      '    LI.LABORISSUE_NAME,'
      '    P.NAME_PRICE'
      'FROM TBL_LABORISSUE LI'
      
        '   JOIN TBL_BASEPRICE BP ON (LI.LABORISSUE_ID = BP.BASEPRICE_PRO' +
        'C_ISSUE_FK)'
      '   JOIN TBL_PRICE P ON (BP.BASEPRICE_ID = P.FK_BASEPRICE)'
      'WHERE (1=2) AND(P.COST_PROC_PRICE > 0)')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    Left = 40
    Top = 284
    poUseBooleanField = False
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
  object dsdSrc: TDataSetDriverEh
    ProviderDataSet = DSetSrc
    Left = 72
    Top = 212
  end
  object dsdDest: TDataSetDriverEh
    ProviderDataSet = DSetDest
    Left = 72
    Top = 284
  end
  object AppEventsRepResearch: TApplicationEvents
    OnShortCut = AppEventsRepResearchShortCut
    Left = 520
    Top = 327
  end
end
