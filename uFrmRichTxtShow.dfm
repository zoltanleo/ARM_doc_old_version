object FrmRichTxtShow: TFrmRichTxtShow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'FrmRichTxtShow'
  ClientHeight = 341
  ClientWidth = 599
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 300
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      599
      300)
    object RichEdtShowTxt: TRichEdit
      Left = 8
      Top = 8
      Width = 583
      Height = 286
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      Lines.Strings = (
        'RichEdtShowTxt')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 599
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      599
      41)
    object BtnClose: TButton
      Left = 516
      Top = 6
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' (<Esc>)'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BtnCloseClick
    end
    object BtnPrintAnnot: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 1
      OnClick = BtnPrintAnnotClick
    end
  end
  object NiceSetFrmRichTxtShow: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'Width'
      'Height')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stRegistry
    Left = 472
    Top = 304
  end
  object AppEventsRichShowTxt: TApplicationEvents
    OnShortCut = AppEventsRichShowTxtShortCut
    Left = 440
    Top = 304
  end
  object prnDlgAnnot: TPrintDialog
    Left = 400
    Top = 304
  end
  object PgStpDlgAnnot: TPageSetupDialog
    MinMarginLeft = 0
    MinMarginTop = 0
    MinMarginRight = 0
    MinMarginBottom = 0
    MarginLeft = 2500
    MarginTop = 2500
    MarginRight = 2500
    MarginBottom = 2500
    PageWidth = 21000
    PageHeight = 29700
    Left = 368
    Top = 304
  end
end
