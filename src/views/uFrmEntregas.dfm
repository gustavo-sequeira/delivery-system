inherited frmEntregas: TfrmEntregas
  Caption = 'frmEntregas'
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
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label2: TLabel
        Width = 164
        Height = 66
        Caption = 'Entregas'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 164
      end
      inherited Panel3: TPanel
        Left = 170
        Width = 748
        StyleElements = [seFont, seClient, seBorder]
        inherited Shape1: TShape
          Width = 742
        end
        inherited Shape2: TShape
          Width = 725
        end
        inherited Shape3: TShape
          Width = 705
        end
        inherited Shape4: TShape
          Width = 685
        end
        inherited Shape5: TShape
          Width = 665
        end
        inherited Shape6: TShape
          Width = 645
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Panel5: TPanel
        StyleElements = [seFont, seClient, seBorder]
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
    end
    inherited pnlPesquisa: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
