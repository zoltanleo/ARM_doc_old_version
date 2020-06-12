object FrmChoiceForm: TFrmChoiceForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 127
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    357
    127)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 16
    Width = 328
    Height = 26
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1080#1085#1080#1082#1080' '#1087#1077#1088#1077#1076' '#1085#1072#1095#1072#1083#1086#1084' '#1087#1077#1095#1072#1090#1080' '#1090#1080#1090#1091#1083#1100#1085#1086#1075#1086' '#13#10#1083#1080#1089#1090 +
      #1072' '#1072#1084#1073#1091#1083#1072#1090#1086#1088#1085#1086#1081' '#1082#1072#1088#1090#1099' '#1087#1072#1094#1080#1077#1085#1090#1072
  end
  object LblClinicEmptyWarning: TLabel
    Left = 13
    Top = 88
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
  object BtnPrintTitul: TButton
    Left = 193
    Top = 94
    Width = 75
    Height = 25
    Hint = #1055#1077#1095#1072#1090#1100' (<Ctrl> + <Enter>)'
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 0
    OnClick = BtnPrintTitulClick
  end
  object BtnPrintClose: TButton
    Left = 274
    Top = 94
    Width = 75
    Height = 25
    Hint = #1054#1090#1082#1072#1079' '#1086#1090' '#1087#1077#1095#1072#1090#1080' (<Esc>)'
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BtnPrintCloseClick
  end
  object CbBoxInfoClinic: TComboBox
    Left = 8
    Top = 45
    Width = 321
    Height = 21
    Style = csDropDownList
    Anchors = [akTop, akRight]
    DropDownCount = 10
    Enabled = False
    ItemHeight = 13
    TabOrder = 2
    OnChange = CbBoxInfoClinicChange
  end
  object BitBtnEdtClinic: TBitBtn
    Left = 330
    Top = 45
    Width = 19
    Height = 19
    Anchors = [akTop, akRight]
    TabOrder = 3
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
  object DSetInfoClinic: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_CLINIC,'
      '    CLIN_NAME'
      'FROM TBL_CLINIC'
      'ORDER BY 2')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 16
    Top = 88
  end
  object AppEventsChioceForm: TApplicationEvents
    OnShortCut = AppEventsChioceFormShortCut
    Left = 48
    Top = 88
  end
  object DBDSetTitul: TfrxDBDataset
    UserName = 'frxDBDsetTitul'
    CloseDataSource = False
    DataSet = DSetTitul
    BCDToCurrency = False
    Left = 112
    Top = 88
  end
  object DSetTitul: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      
        '    A.ANKLASTNAME||'#39' '#39'||A.ANKFIRSTNAME||'#39' '#39'||A.ANKTHIRDNAME AS F' +
        'ULL_FIO,'
      '--    A.ANKLASTNAME,'
      '--    A.ANKFIRSTNAME||'#39' '#39'||A.ANKTHIRDNAME AS FULL_IO,'
      '    IIF(A.SEX = 1,'#39#1084#1091#1078#1089#1082#1086#1081#39','#39#1078#1077#1085#1089#1082#1080#1081#39') AS FULL_SEX,'
      '    A.ANKDATEBORN,'
      '    COALESCE(A.ANKPHONE,'#39#1085#1077#1090' '#1076#1072#1085#1085#1099#1093#39') AS CONTACTPHONE,'
      
        '    IIF(T.CITYCHECK = 1,'#39#1075'. '#39','#39'c. '#39')||T.TOWNVILLAGE AS SWEETHOME' +
        ','
      '    COALESCE(A.ANKADRESS,'#39#1085#1077#1090' '#1076#1072#1085#1085#1099#1093#39') AS FULLADRESS,'
      '    COALESCE(A.ANKPHONE,'#39#1085#1077#1090' '#1076#1072#1085#1085#1099#1093#39') AS FHONE,'
      '    IIF(A.SOCIAL = 0,'#39#1074#1088#1077#1084#1077#1085#1085#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090#39','
      '        IIF(A.SOCIAL = 1,'#39#1076#1086#1084#1086#1093#1086#1079#1103#1081#1082#1072#39','
      '            IIF(A.SOCIAL = 2,'#39#1080#1085#1074#1072#1083#1080#1076#39','
      '                IIF(A.SOCIAL = 3,'#39#1087#1077#1085#1089#1080#1086#1085#1077#1088#39','
      '                    IIF(A.SOCIAL = 4,'#39#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100#39','
      '                        IIF(A.SOCIAL = 5,'#39#1088#1072#1073#1086#1095#1080#1081#39','
      '                            IIF(A.SOCIAL = 6,'#39#1089#1083#1091#1078#1072#1097#1080#1081#39','
      
        '                                IIF(A.SOCIAL = 7,'#39#1089#1090#1091#1076#1077#1085#1090#39','#39#1091#1095#1072#1097 +
        #1080#1081#1089#1103#39')))))))) AS SOCIALSTATUS,'
      '    C.CLIN_NAME,'
      '    C.CLIN_ADRESS,'
      '    C.CLIN_PHONE,'
      '    C.CLIN_REKVIZIT,'
      '    C.CLIN_LOGOS,'
      '    C.CLIN_LICENSE,'
      '    CURRENT_DATE'
      
        '    , '#39#1058#1080#1090#1091#1083#1100#1085#1099#1081'_'#1083#1080#1089#1090'_'#1072#1084#1073'_'#1082#1072#1088#1090#1099'_'#39'||A.ANKLASTNAME||'#39'_'#39'||UPPER(LEF' +
        'T(A.ANKFIRSTNAME,1))||UPPER(LEFT(A.ANKTHIRDNAME,1))||'#39'_'#39'||'
      '    EXTRACT(YEAR FROM  A.ANKDATEBORN) AS REPORT_TITUL'
      'FROM'
      '    TBL_CLINIC C,'
      '    TBL_TOWN T'
      '        INNER JOIN TBL_ANKETA A ON (T.ID_TOWN = A.ANK_LINKTOWN)'
      
        'WHERE C.ID_CLINIC = :prmID_CLINIC AND A.ID_ANKETA= :prmID_PATIEN' +
        'T')
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 80
    Top = 88
  end
end
