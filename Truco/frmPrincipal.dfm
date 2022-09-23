object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 989
  ClientWidth = 1339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 41
    Width = 1339
    Height = 907
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 576
    ExplicitTop = 472
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlCartaExemplo: TPanel
      Left = 8
      Top = 9
      Width = 153
      Height = 216
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Ink Free'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object pnlRodCarta: TPanel
        Left = 1
        Top = 151
        Width = 151
        Height = 64
        Align = alBottom
        Caption = 'Q'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Ink Free'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 1
      end
      object pnlCabCarta: TPanel
        Left = 1
        Top = 1
        Width = 151
        Height = 64
        Align = alTop
        Caption = 'Q'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Ink Free'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object pnlCartaNaipe: TPanel
        Left = 1
        Top = 65
        Width = 151
        Height = 86
        Align = alClient
        Caption = 'X'
        TabOrder = 2
        ExplicitLeft = -32
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1339
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 568
    ExplicitTop = 456
    ExplicitWidth = 185
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 948
    Width = 1339
    Height = 41
    Align = alBottom
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 576
    ExplicitTop = 472
    ExplicitWidth = 185
  end
end
