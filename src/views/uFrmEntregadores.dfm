inherited frmEntregadores: TfrmEntregadores
  Caption = 'frmEntregadores'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlMenu: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuPesquisa: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuNovo: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuSalvar: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuCancelar: TLabel
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
        Width = 251
        Caption = 'Entregadores'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 251
      end
      inherited Panel3: TPanel
        Left = 257
        Width = 661
        StyleElements = [seFont, seClient, seBorder]
        inherited Shape1: TShape
          Width = 655
        end
        inherited Shape2: TShape
          Width = 638
        end
        inherited Shape3: TShape
          Width = 618
        end
        inherited Shape4: TShape
          Width = 598
        end
        inherited Shape5: TShape
          Width = 578
        end
        inherited Shape6: TShape
          Width = 558
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      object Label4: TLabel [0]
        Left = 144
        Top = 40
        Width = 49
        Height = 21
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [1]
        Left = 144
        Top = 71
        Width = 77
        Height = 21
        Caption = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel [2]
        Left = 144
        Top = 102
        Width = 67
        Height = 21
        Caption = 'VEICULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel [3]
        Left = 144
        Top = 133
        Width = 50
        Height = 21
        Caption = 'PLACA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel5: TPanel
        TabOrder = 4
        StyleElements = [seFont, seClient, seBorder]
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      object edtNome: TEdit
        Left = 272
        Top = 37
        Width = 250
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtTelefone: TEdit
        Left = 272
        Top = 68
        Width = 250
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtCidade: TEdit
        Left = 272
        Top = 99
        Width = 250
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtBairro: TEdit
        Left = 272
        Top = 130
        Width = 250
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited pnlPesquisa: TPanel
      Left = 601
      Top = 146
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 601
      ExplicitTop = 146
    end
  end
  inherited ImageList1: TImageList
    Left = 103
  end
end
