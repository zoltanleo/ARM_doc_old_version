object frmShowFullImg: TfrmShowFullImg
  Left = 0
  Top = 0
  Caption = #1055#1086#1083#1085#1086#1088#1072#1079#1084#1077#1088#1085#1086#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
  ClientHeight = 574
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlImg: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 529
    Align = alClient
    Caption = 'pnlImg'
    TabOrder = 0
    DesignSize = (
      519
      529)
    object scrboxFull: TScrollBox
      Left = 8
      Top = 8
      Width = 501
      Height = 515
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object imgFull: TImage
        Left = 5
        Top = 5
        Width = 105
        Height = 105
        AutoSize = True
        Proportional = True
        Stretch = True
      end
    end
  end
  object pnlBtn: TPanel
    Left = 0
    Top = 529
    Width = 519
    Height = 45
    Align = alBottom
    Caption = 'pnlBtn'
    TabOrder = 1
    DesignSize = (
      519
      45)
    object btnClose: TButton
      Left = 434
      Top = 10
      Width = 75
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' <Esc>'
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object NiceSetfrmShowFullImg: TNiceSettings
    StoredProps.Strings = (
      'Left'
      'Top'
      'Width'
      'Height')
    RegKey = 'Software\docsoft\Andrology'
    IniFile = 'Settings.ini'
    StoreTarget = stIniFile
    Left = 192
    Top = 24
  end
end
