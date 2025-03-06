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
        ExplicitWidth = 701
        inherited Shape1: TShape
          Width = 757
        end
        inherited Shape2: TShape
          Width = 740
        end
        inherited Shape3: TShape
          Width = 720
        end
        inherited Shape4: TShape
          Width = 700
        end
        inherited Shape5: TShape
          Width = 680
        end
        inherited Shape6: TShape
          Width = 660
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 918
      inherited Label16: TLabel
        StyleElements = [seFont, seClient, seBorder]
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
