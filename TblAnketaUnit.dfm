object FrmTblAnketa: TFrmTblAnketa
  Left = 293
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1072#1094#1080#1077#1085#1090#1072
  ClientHeight = 438
  ClientWidth = 598
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
  OnShow = FormShow
  DesignSize = (
    598
    438)
  PixelsPerInch = 96
  TextHeight = 13
  object LblKeyBrdLayot: TLabel
    Left = 108
    Top = 405
    Width = 48
    Height = 13
    Caption = '68748313'
    Visible = False
  end
  object BtnCancel: TButton
    Left = 515
    Top = 405
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1086#1082#1085#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' (<Esc>)'
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object BtnOK: TButton
    Left = 435
    Top = 405
    Width = 75
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1076#1072#1085#1085#1099#1093' (<Ctrl> + <Enter>)'
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 1
    OnClick = BtnOKClick
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 8
    Width = 583
    Height = 391
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '   '#1040#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1072#1094#1080#1077#1085#1090#1072'   '
    TabOrder = 0
    object Label1: TLabel
      Left = 95
      Top = 44
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label28: TLabel
      Left = 429
      Top = 26
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 122
      Top = 84
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label29: TLabel
      Left = 429
      Top = 66
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 98
      Top = 124
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label35: TLabel
      Left = 428
      Top = 106
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 66
      Top = 164
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label37: TLabel
      Left = 333
      Top = 146
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 51
      Top = 204
      Width = 95
      Height = 13
      Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
    end
    object LblWarnTblTown: TLabel
      Left = 338
      Top = 193
      Width = 203
      Height = 26
      Caption = 
        '      <-- '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' '#1089' '#1090#1086#1095#1082#1072#1084#1080' '#1095#1090#1086#1073#1099#13#10#1079#1072#1087#1086#1083#1085#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091' '#1085#1072#1089#1077 +
        #1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 333
      Top = 186
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 90
      Top = 244
      Width = 58
      Height = 13
      Caption = #1059#1083#1080#1094#1072', '#1076#1086#1084
    end
    object Label16: TLabel
      Left = 85
      Top = 274
      Width = 61
      Height = 26
      Alignment = taRightJustify
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077#13#10#1090#1077#1083#1077#1092#1086#1085#1099
    end
    object Label10: TLabel
      Left = 47
      Top = 324
      Width = 99
      Height = 13
      Caption = #1057#1086#1094#1080#1072#1083#1100#1085#1099#1081' '#1089#1090#1072#1090#1091#1089
    end
    object Label38: TLabel
      Left = 333
      Top = 306
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 16
      Top = 367
      Width = 66
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 87
      Top = 367
      Width = 93
      Height = 13
      Caption = #1087#1086#1083#1103', '#1087#1086#1084#1077#1095#1077#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 183
      Top = 357
      Width = 11
      Height = 32
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 193
      Top = 367
      Width = 157
      Height = 13
      Caption = ', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTPickDateBorn: TDateTimePicker
      Left = 159
      Top = 156
      Width = 169
      Height = 21
      Hint = 
        #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072'. '#1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077#13#10#1087#1086#1083#1077', '#1087#1088#1080' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1080' '#1085#1086#1074#1086#1075 +
        #1086' '#1087#1072#1094#1080#1077#1085#1090#1072#13#10#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1091#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103' '#1090#1077#1082#1091#1097#1072#1103' '#1076#1072#1090#1072'.'
      Date = 38957.506307060190000000
      Time = 38957.506307060190000000
      DateFormat = dfLong
      TabOrder = 3
    end
    object PnlSex: TPanel
      Left = 349
      Top = 156
      Width = 193
      Height = 25
      BevelOuter = bvNone
      TabOrder = 4
      object Label36: TLabel
        Left = 15
        Top = 8
        Width = 20
        Height = 13
        Caption = #1055#1086#1083
      end
      object RdBtnMale: TRadioButton
        Left = 47
        Top = 6
        Width = 49
        Height = 17
        Caption = #1084#1091#1078
        TabOrder = 0
      end
      object RdBtnFemale: TRadioButton
        Left = 103
        Top = 6
        Width = 49
        Height = 17
        Caption = #1078#1077#1085
        TabOrder = 1
      end
    end
    object DBLookupCBViewTown: TDBLookupComboboxEh
      Left = 159
      Top = 196
      Width = 169
      Height = 21
      Hint = 
        #1055#1086#1083#1077' '#1074#1099#1073#1086#1088#1072' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072','#13#10#1075#1076#1077' '#1087#1088#1086#1078#1080#1074#1072#1077#1090' '#1087#1072#1094#1080#1077#1085#1090'. '#1055#1088#1080' '#1085#1077#1086#1073 +
        #1093#1086#1076#1080#1084#1086#1089#1090#1080#13#10#1082#1085#1086#1087#1082#1072' "..." '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082'.'
      EditButtons = <
        item
          Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1082#1090#1086#1074' (<Ctrl> + E)'
          ShortCut = 0
          Style = ebsEllipsisEh
          OnClick = DBLookupCBViewTownEditButtons0Click
        end>
      KeyField = 'ID_TOWN'
      ListField = 'TOWNVILLAGE'
      ListSource = DMFIB.DSTown
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = True
    end
    object EdtAdress: TEdit
      Left = 159
      Top = 236
      Width = 266
      Height = 21
      Hint = 
        #1044#1077#1090#1072#1083#1080' '#1072#1076#1088#1077#1089#1072' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103' ('#1091#1083#1080#1094#1072', '#1082#1086#1088#1087#1091#1089', '#1076#1086#1084', '#1082#1074#1072#1088#1090#1080#1088#1072').'#13#10#1053#1077#1086#1073#1103#1079 +
        #1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077', '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1074#1074#1086#1076#1080#1090#1100' '#1076#1086' 255 '#1089#1080#1084#1074#1086#1083#1086#1074'.'
      MaxLength = 255
      TabOrder = 6
      Text = 'EdtAdress'
      OnKeyPress = EdtAdressKeyPress
    end
    object EdtPhone: TEdit
      Left = 159
      Top = 276
      Width = 265
      Height = 21
      Hint = 
        #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1090#1077#1083#1077#1092#1086#1085#1099' '#1087#1072#1094#1080#1077#1085#1090#1072' ('#1084#1086#1073#1080#1083#1100#1085#1099#1081', '#1089#1083#1091#1078#1077#1073#1085#1099#1081', '#1076#1086#1084#1072#1096#1085#1080#1081').'#13#10 +
        #1053#1077#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077', '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1074#1074#1086#1076#1080#1090#1100' '#1076#1086' 30 '#1089#1080#1084#1074#1086#1083#1086#1074'.'
      MaxLength = 30
      TabOrder = 7
      Text = 'EdtPhone'
      OnKeyPress = EdtPhoneKeyPress
    end
    object CBSocial: TComboBox
      Left = 159
      Top = 316
      Width = 169
      Height = 21
      Hint = #1057#1086#1094#1080#1072#1083#1100#1085#1099#1081' '#1089#1090#1072#1090#1091#1089' '#1087#1072#1094#1080#1077#1085#1090#1072' ('#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077').'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      Sorted = True
      TabOrder = 8
      Text = #1074#1088#1077#1084#1077#1085#1085#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090
      Items.Strings = (
        #1074#1088#1077#1084#1077#1085#1085#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090
        #1076#1086#1084#1086#1093#1086#1079#1103#1081#1082#1072
        #1080#1085#1074#1072#1083#1080#1076
        #1087#1077#1085#1089#1080#1086#1085#1077#1088
        #1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100
        #1088#1072#1073#1086#1095#1080#1081
        #1089#1083#1091#1078#1072#1097#1080#1081
        #1089#1090#1091#1076#1077#1085#1090
        #1091#1095#1072#1097#1080#1081#1089#1103)
    end
    object EdtLastName: TDBEditEh
      Tag = 1
      Left = 159
      Top = 36
      Width = 264
      Height = 21
      Hint = 
        #1060#1072#1084#1080#1083#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072' ('#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077','#13#10#1084#1086#1078#1077#1090' '#1089#1086#1076#1077#1088#1078#1072#1090#1100' '#1085#1077' '#1073#1086#1083#1077#1077' 3' +
        '0 '#1089#1080#1084#1074#1086#1083#1086#1074' '#13#10#1080' '#1090#1086#1083#1100#1082#1086' '#1073#1091#1082#1074#1072#1084#1080' '#1088#1091#1089#1089#1082#1086#1075#1086' '#1072#1083#1092#1072#1074#1080#1090#1072').'
      EditButtons = <>
      MaxLength = 30
      ShowHint = True
      TabOrder = 0
      Text = 'EdtLastName'
      Visible = True
      OnChange = EdtLastNameChange
      OnKeyPress = EdtFirstNameKeyPress
    end
    object EdtFirstName: TDBEditEh
      Tag = 2
      Left = 159
      Top = 76
      Width = 264
      Height = 21
      Hint = 
        #1048#1084#1103' '#1087#1072#1094#1080#1077#1085#1090#1072' ('#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077','#13#10#1084#1086#1078#1077#1090' '#1089#1086#1076#1077#1088#1078#1072#1090#1100' '#1085#1077' '#1073#1086#1083#1077#1077' 20 '#1089#1080 +
        #1084#1074#1086#1083#1086#1074' '#13#10#1080' '#1090#1086#1083#1100#1082#1086' '#1073#1091#1082#1074#1072#1084#1080' '#1088#1091#1089#1089#1082#1086#1075#1086' '#1072#1083#1092#1072#1074#1080#1090#1072').'
      EditButtons = <>
      MaxLength = 20
      ShowHint = True
      TabOrder = 1
      Text = 'EdtFirstName'
      Visible = True
      OnChange = EdtFirstNameChange
      OnKeyPress = EdtFirstNameKeyPress
    end
    object EdtThirdName: TDBEditEh
      Tag = 3
      Left = 159
      Top = 116
      Width = 263
      Height = 21
      Hint = 
        #1054#1090#1095#1077#1089#1090#1074#1086' '#1087#1072#1094#1080#1077#1085#1090#1072' ('#1085#1077#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1087#1086#1083#1077','#13#10#1084#1086#1078#1077#1090' '#1089#1086#1076#1077#1088#1078#1072#1090#1100' '#1085#1077' '#1073#1086#1083#1077 +
        #1077' 20 '#1089#1080#1084#1074#1086#1083#1086#1074' '#13#10#1080' '#1090#1086#1083#1100#1082#1086' '#1073#1091#1082#1074#1072#1084#1080' '#1088#1091#1089#1089#1082#1086#1075#1086' '#1072#1083#1092#1072#1074#1080#1090#1072').'
      EditButtons = <>
      MaxLength = 20
      ShowHint = True
      TabOrder = 2
      Text = 'EdtThirdName'
      Visible = True
      OnChange = EdtThirdNameChange
      OnKeyPress = EdtFirstNameKeyPress
    end
  end
  object BtnHlp: TButton
    Left = 8
    Top = 405
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 3
    OnClick = BtnHlpClick
  end
  object NiceSetFrmTblAnketa: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'LblKeyBrdLayot.Caption')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 328
    Top = 400
  end
  object AppEventsFrmAnketa: TApplicationEvents
    OnShortCut = AppEventsFrmAnketaShortCut
    Left = 296
    Top = 400
  end
  object DSetMRUAnketa: TpFIBDataSet
    Transaction = DMFIB.ReadTrans
    Database = DMFIB.Database
    AutoCommit = True
    Left = 264
    Top = 400
    poUseBooleanField = False
    oFreeHandlesAfterClose = True
    oRefreshDeletedRecord = True
    oFetchAll = True
  end
end
