object frmFinalizacaoPedido: TfrmFinalizacaoPedido
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmFinalizacaoPedido'
  ClientHeight = 311
  ClientWidth = 491
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 1
    Width = 1
    Height = 309
    Align = alLeft
    Shape = bsLeftLine
    ExplicitTop = 0
    ExplicitHeight = 311
  end
  object Label1: TLabel
    Left = 0
    Top = 39
    Width = 491
    Height = 28
    Alignment = taCenter
    AutoSize = False
    Caption = 'FINALIZA'#199#195'O DE PEDIDOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 8
    Top = 75
    Width = 467
    Height = 28
    AutoSize = False
    Caption = 'Alguma observa'#231#227'o sobre a entrega do pedido?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label16: TLabel
    Left = 157
    Top = 276
    Width = 177
    Height = 28
    Hint = 'Pesquisar registro'
    Alignment = taCenter
    AutoSize = False
    Caption = 'FINALIZAR'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    OnClick = Label16Click
    OnMouseEnter = Label16MouseEnter
    OnMouseLeave = Label16MouseLeave
  end
  object Bevel2: TBevel
    Left = 490
    Top = 1
    Width = 1
    Height = 309
    Align = alRight
    Shape = bsRightLine
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitHeight = 311
  end
  object Bevel3: TBevel
    Left = 0
    Top = 310
    Width = 491
    Height = 1
    Align = alBottom
    Shape = bsBottomLine
    ExplicitTop = 0
  end
  object Bevel4: TBevel
    Left = 0
    Top = 0
    Width = 491
    Height = 1
    Align = alTop
    Shape = bsTopLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 491
    Height = 32
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object Label6: TLabel
      AlignWithMargins = True
      Left = 467
      Top = 4
      Width = 13
      Height = 24
      Margins.Right = 10
      Align = alRight
      Alignment = taCenter
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = Label6Click
      ExplicitHeight = 28
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 104
    Width = 475
    Height = 169
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
