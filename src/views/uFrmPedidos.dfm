inherited frmPedidos: TfrmPedidos
  Caption = 'frmPedidos'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlMenu: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      Width = 177
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuPesquisa: TLabel
      Width = 177
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuNovo: TLabel
      Width = 177
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuSalvar: TLabel
      Width = 177
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuCancelar: TLabel
      Width = 177
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Panel2: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlCentral: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 223
    ExplicitTop = 0
    ExplicitWidth = 918
    ExplicitHeight = 622
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 918
      inherited Label2: TLabel
        Width = 149
        Height = 66
        Caption = 'Pedidos'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 149
      end
      inherited Panel3: TPanel
        Left = 155
        Width = 763
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 155
        ExplicitWidth = 763
        inherited Shape1: TShape
          Width = 757
          ExplicitWidth = 757
        end
        inherited Shape2: TShape
          Width = 740
          ExplicitWidth = 740
        end
        inherited Shape3: TShape
          Width = 720
          ExplicitWidth = 720
        end
        inherited Shape4: TShape
          Width = 700
          ExplicitWidth = 700
        end
        inherited Shape5: TShape
          Width = 680
          ExplicitWidth = 680
        end
        inherited Shape6: TShape
          Width = 660
          ExplicitWidth = 660
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 918
      inherited Label16: TLabel
        Left = 0
        Top = 441
        Width = 918
        Align = alTop
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 3
        ExplicitTop = 447
        ExplicitWidth = 918
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 918
        Height = 169
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label9: TLabel
          Left = 270
          Top = 39
          Width = 60
          Height = 21
          Caption = 'PEDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 270
          Top = 72
          Width = 41
          Height = 21
          Caption = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 270
          Top = 104
          Width = 63
          Height = 21
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPedido: TEdit
          Left = 398
          Top = 36
          Width = 250
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtData: TEdit
          Left = 398
          Top = 69
          Width = 250
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtCliente: TEdit
          Left = 398
          Top = 101
          Width = 250
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 169
        Width = 918
        Height = 272
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 918
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            Left = 0
            Top = 0
            Width = 90
            Height = 23
            Hint = 'Incluir um novo registro'
            Margins.Left = 20
            Margins.Right = 20
            Align = alLeft
            Alignment = taCenter
            Caption = 'NOVO ITEM'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            OnClick = Label5Click
            ExplicitHeight = 21
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 23
          Width = 918
          Height = 249
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Left = 3850
      Top = 146
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 3850
      ExplicitTop = 146
    end
  end
end
