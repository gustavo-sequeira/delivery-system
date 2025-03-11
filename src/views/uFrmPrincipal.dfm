object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsNone
  Caption = 'frmPrincipal'
  ClientHeight = 700
  ClientWidth = 1011
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
    Width = 1011
    Height = 89
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 704
      Top = 1
      Width = 306
      Height = 87
      Align = alRight
      BevelOuter = bvNone
      Caption = 'pnlLogin'
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 1011
    Height = 611
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1011
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
      object lblMenuPedidos: TLabel
        AlignWithMargins = True
        Left = 471
        Top = 3
        Width = 150
        Height = 18
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'PEDIDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuPedidosClick
        OnMouseEnter = lblMenuPedidosMouseEnter
        OnMouseLeave = lblMenuPedidosMouseLeave
        ExplicitLeft = 431
        ExplicitTop = 6
      end
      object lblMenuSairSistema: TLabel
        AlignWithMargins = True
        Left = 858
        Top = 3
        Width = 150
        Height = 18
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'SAIR DO SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuSairSistemaClick
        OnMouseEnter = lblMenuSairSistemaMouseEnter
        OnMouseLeave = lblMenuSairSistemaMouseLeave
        ExplicitLeft = 587
        ExplicitTop = 6
      end
      object lblMenuEntregas: TLabel
        AlignWithMargins = True
        Left = 627
        Top = 3
        Width = 150
        Height = 18
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'ENTREGAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuEntregasClick
        OnMouseEnter = lblMenuEntregasMouseEnter
        OnMouseLeave = lblMenuEntregasMouseLeave
        ExplicitLeft = 579
        ExplicitTop = 5
      end
      object lblMenuEntregadores: TLabel
        AlignWithMargins = True
        Left = 315
        Top = 3
        Width = 150
        Height = 18
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'ENTREGADORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = lblMenuEntregadoresClick
        OnMouseEnter = lblMenuEntregadoresMouseEnter
        OnMouseLeave = lblMenuEntregadoresMouseLeave
        ExplicitLeft = 391
      end
    end
  end
end
