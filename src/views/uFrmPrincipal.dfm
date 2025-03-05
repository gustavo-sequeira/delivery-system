object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'frmPrincipal'
  ClientHeight = 661
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 193
    Align = alTop
    Caption = 'pnlMenuSuperior'
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 688
      Top = 1
      Width = 306
      Height = 191
      Align = alRight
      Caption = 'pnlLogin'
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 995
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 995
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lblMenuClientes: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 150
        Height = 18
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuClientesClick
        OnMouseEnter = lblMenuClientesMouseEnter
        OnMouseLeave = lblMenuClientesMouseLeave
      end
      object lblMenuProdutos: TLabel
        AlignWithMargins = True
        Left = 159
        Top = 3
        Width = 150
        Height = 18
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuProdutosClick
        OnMouseEnter = lblMenuProdutosMouseEnter
        OnMouseLeave = lblMenuProdutosMouseLeave
        ExplicitLeft = 275
        ExplicitTop = 6
      end
    end
  end
end
