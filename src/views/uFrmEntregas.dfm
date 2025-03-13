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
      Caption = 'ACOMPANHAR'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 143
    end
    inherited lblMenuNovo: TLabel
      Width = 177
      Caption = 'ASSOCIAR'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 96
    end
    inherited lblMenuSalvar: TLabel
      Width = 177
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblMenuCancelar: TLabel
      Width = 177
      Visible = False
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
      inherited Image2: TImage
        Left = 170
        ExplicitLeft = 170
      end
    end
    inherited pnlManutencao: TPanel [1]
      TabOrder = 2
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 75
      object Label4: TLabel [0]
        Left = 0
        Top = 0
        Width = 918
        Height = 21
        Align = alTop
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 60
      end
      object Label6: TLabel [1]
        AlignWithMargins = True
        Left = 3
        Top = 178
        Width = 912
        Height = 21
        Align = alTop
        Caption = 'ITENS DO PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 137
      end
      inherited Panel5: TPanel
        Left = 48
        Top = 502
        Align = alNone
        TabOrder = 4
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 48
        ExplicitTop = 502
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 21
        Width = 918
        Height = 154
        Align = alTop
        BorderStyle = bsNone
        DataSource = dsPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'LEVEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Title.Caption = 'Pedido'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ENTREGA'
            Title.Caption = 'Data Entrega'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 200
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end>
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 382
        Width = 912
        Height = 165
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object Shape7: TShape
          Left = 598
          Top = 0
          Width = 1
          Height = 165
          Align = alRight
          ExplicitLeft = 656
          ExplicitHeight = 132
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 592
          Height = 159
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 586
            Height = 21
            Align = alTop
            Alignment = taCenter
            Caption = 'INDICA'#199#195'O DE ROTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 158
          end
          object lblEndereco5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 138
            Width = 586
            Height = 21
            Align = alTop
            Caption = '5.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 12
          end
          object lblEndereco4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 111
            Width = 586
            Height = 21
            Align = alTop
            Caption = '4.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 12
          end
          object lblEndereco3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 84
            Width = 586
            Height = 21
            Align = alTop
            Caption = '3.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 12
          end
          object lblEndereco2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 57
            Width = 586
            Height = 21
            Align = alTop
            Caption = '2.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 12
          end
          object lblEndereco1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 30
            Width = 586
            Height = 21
            Align = alTop
            Caption = '1.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 12
          end
        end
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 602
          Top = 3
          Width = 307
          Height = 159
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label12: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 301
            Height = 21
            Align = alTop
            Alignment = taCenter
            Caption = 'LEGENDA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 73
          end
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 30
            Width = 301
            Height = 21
            Align = alTop
            Caption = 'PRIORIDADE M'#193'XIMA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 167
          end
          object Label14: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 57
            Width = 301
            Height = 21
            Align = alTop
            Caption = 'PRIORIDADE ALTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 137
          end
          object Label15: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 111
            Width = 301
            Height = 21
            Align = alTop
            Caption = 'SEM PRIORIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 133
          end
          object Label17: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 84
            Width = 301
            Height = 21
            Align = alTop
            Caption = 'PRIORIDADE BAIXA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 147
          end
        end
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 205
        Width = 912
        Height = 130
        Align = alTop
        BorderStyle = bsNone
        DataSource = dsItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtd'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Caption = 'Categoria'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBCATEGORIA'
            Title.Caption = 'Subcategoria'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Visible = False
          end>
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 341
        Width = 912
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Caption = 'mapa'
        TabOrder = 2
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 106
          Height = 29
          Align = alLeft
          Caption = 'ENTREGADOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 21
        end
        object lblMenuPedidos: TLabel
          AlignWithMargins = True
          Left = 649
          Top = 7
          Width = 253
          Height = 22
          Margins.Top = 7
          Margins.Right = 10
          Margins.Bottom = 6
          Align = alRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'ASSOCIAR PEDIDO(S) E CRIAR ROTA(S)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnClick = lblMenuPedidosClick
          OnMouseEnter = lblMenuPedidosMouseEnter
          OnMouseLeave = lblMenuPedidosMouseLeave
          ExplicitLeft = 656
          ExplicitTop = 3
          ExplicitHeight = 29
        end
        object cbxEntregador: TComboBox
          AlignWithMargins = True
          Left = 122
          Top = 3
          Width = 441
          Height = 29
          Margins.Left = 10
          Align = alLeft
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '1 - RELAMPAGO MCQUEEN'
            '2 - PENELOPE CHARMOSA'
            '3 - MARCHA LENTA')
        end
      end
    end
    inherited pnlPesquisa: TPanel [2]
      TabOrder = 1
      StyleElements = [seFont, seClient, seBorder]
      inherited DBGrid: TDBGrid
        Width = 912
        Height = 544
        Align = alClient
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'LEVEL'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTREGADOR'
            Title.Caption = 'Entregador'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endereco'
            Width = 430
            Visible = True
          end
          item
            Expanded = False
            Width = 40
            Visible = True
          end>
      end
    end
  end
  inherited FDGUIxWaitCursor: TFDGUIxWaitCursor
    Left = 96
    Top = 216
  end
  inherited DataSource: TDataSource
    Left = 128
    Top = 216
  end
  inherited FDMemTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'LEVEL'
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENTREGADOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CLIENTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 522
      end>
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    StoreDefs = True
    Left = 32
    Top = 264
    Content = {
      4144425310000000CF020000FF00010001FF02FF03040014000000460044004D
      0065006D005400610062006C006500050014000000460044004D0065006D0054
      00610062006C006500060000000000070000080032000000090000FF0AFF0B04
      000A0000004C004500560045004C0005000A0000004C004500560045004C000C
      00010000000E000D000F000110000111000112000113000114000115000E0000
      0022004C004500560045004C002200FEFF0B040012000000490044005F005000
      45004400490044004F00050012000000490044005F0050004500440049004400
      4F000C00020000000E000D000F00011100011300011400011500120000004900
      44005F00500045004400490044004F00FEFF0B04000C00000053005400410054
      005500530005000C0000005300540041005400550053000C00030000000E0016
      001700140000000F000110000111000112000113000114000115000C00000053
      0054004100540055005300180014000000FEFF0B04001400000045004E005400
      520045004700410044004F00520005001400000045004E005400520045004700
      410044004F0052000C00040000000E0016001700640000000F00011100011300
      0114000115001400000045004E005400520045004700410044004F0052001800
      64000000FEFF0B04000E00000043004C00490045004E005400450005000E0000
      0043004C00490045004E00540045000C00050000000E0016001700640000000F
      000111000113000114000115000E00000043004C00490045004E005400450018
      0064000000FEFF0B04001000000045004E00440045005200450043004F000500
      1000000045004E00440045005200450043004F000C00060000000E0016001700
      0A0200000F000110000111000112000113000114000115001000000045004E00
      440045005200450043004F0018000A020000FEFEFF19FEFF1AFEFF1BFEFEFEFF
      1CFEFF1D1E000C000000FF1FFEFEFE0E004D0061006E0061006700650072001E
      0055007000640061007400650073005200650067006900730074007200790012
      005400610062006C0065004C006900730074000A005400610062006C00650008
      004E0061006D006500140053006F0075007200630065004E0061006D0065000A
      0054006100620049004400240045006E0066006F0072006300650043006F006E
      00730074007200610069006E00740073001E004D0069006E0069006D0075006D
      0043006100700061006300690074007900180043006800650063006B004E006F
      0074004E0075006C006C00140043006F006C0075006D006E004C006900730074
      000C0043006F006C0075006D006E00100053006F007500720063006500490044
      000E006400740049006E00740033003200100044006100740061005400790070
      0065001400530065006100720063006800610062006C006500120041006C006C
      006F0077004E0075006C006C000800420061007300650014004F0041006C006C
      006F0077004E0075006C006C0012004F0049006E005500700064006100740065
      0010004F0049006E00570068006500720065001A004F0072006900670069006E
      0043006F006C004E0061006D00650018006400740041006E0073006900530074
      00720069006E0067000800530069007A006500140053006F0075007200630065
      00530069007A0065001C0043006F006E00730074007200610069006E0074004C
      00690073007400100056006900650077004C006900730074000E0052006F0077
      004C006900730074001800520065006C006100740069006F006E004C00690073
      0074001C0055007000640061007400650073004A006F00750072006E0061006C
      001200530061007600650050006F0069006E0074000E004300680061006E0067
      0065007300}
    object FDMemTableLEVEL: TIntegerField
      DisplayWidth = 10
      FieldName = 'LEVEL'
      Origin = '"LEVEL"'
    end
    object FDMemTableID_PEDIDO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      Required = True
    end
    object FDMemTableSTATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FDMemTableENTREGADOR: TStringField
      DisplayWidth = 100
      FieldName = 'ENTREGADOR'
      Origin = 'ENTREGADOR'
      Required = True
      Size = 100
    end
    object FDMemTableCLIENTE: TStringField
      DisplayWidth = 100
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 100
    end
    object FDMemTableENDERECO: TStringField
      DisplayWidth = 522
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 522
    end
  end
  inherited ImageList1: TImageList
    Left = 63
    Top = 216
    Bitmap = {
      494C010103000804040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000ACACAC00434343000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C0067676700D2D2D20000000000000000000000000000000000000000000000
      0000DEDDF7009794EA006561E1004E49DC004E49DC006561E1009894EA00DFDE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000002CB048002CB048002CB048002CB048002CB048002CB048000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000020202005A5A5A009D9D
      9D009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009191
      9100313131001111110000000000000000000000000000000000000000009390
      E9004742DB004742DD004742DD004742DD004742DD004742DD004742DD004742
      DB009492EA000000000000000000000000000000000000000000000000002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004848480052525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A00A0A0A0000000000000000000000000007672E4004742
      DD004742DD004742DD004742DD004742DD004742DD004742DD004742DD004742
      DD004742DD007672E400000000000000000000000000000000002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB0480000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707070096969600000000000000
      0000000000009F9F9F0000000000000000000000000000000000000000000000
      0000000000003E3E3E005F5F5F0000000000000000008583E7004B49E0004D4B
      E1004C49E0004B48E0004843DD004742DD004742DD004742DD004742DD004742
      DD004742DD004742DD009492EA0000000000000000002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB04800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00006C6C6C00000000000C0C0C006C6C6C000000000000000000000000000000
      0000000000003E3E3E005E5E5E0000000000CACAF5005353E5005353E5005353
      E5006969E8009F9FF1005757E6004F4DE2004944DE004D48DE009996EC005F5A
      E1004742DD004742DD004742DB00DFDEF700000000002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB04800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00009C9C9C000000000070707000151515002828280000000000000000000000
      0000000000003E3E3E005E5E5E00000000006F6DE6005353E5005353E5005353
      E500A0A0F100FFFFFF00CFCFF8005858E6005757E500CDCCF600FFFFFF009996
      EC004742DD004742DD004742DD009894EA002CB048002CB048002CB048002CB0
      48002CB048002CB04800FFFFFF00FFFFFF002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00000000000004040400626262000E0E0E000000000037373700000000000000
      0000000000003E3E3E005E5E5E00000000005553E2005353E5005353E5005353
      E5005858E600CFCFF800FFFFFF00CFCFF800CFCFF800FFFFFF00CDCCF6004D48
      DE004742DD004742DD004742DD006561E1002CB048002CB048002CB048002CB0
      48002CB04800FFFFFF00FFFFFF00FFFFFF00FFFFFF002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      0000000000005B5B5B00000000003D3D3D00C7C7C7000F0F0F00474747000000
      0000000000003E3E3E005E5E5E00000000005050E3005353E5005353E5005353
      E5005353E5005858E600CCCCF700FFFFFF00FFFFFF00D0D0F8005958E5004844
      DE004742DD004742DD004742DD004F4BDD002CB048002CB048002CB048002CB0
      4800FFFFFF00FFFFFF002CB048002CB04800FFFFFF00FFFFFF002CB048002CB0
      48002CB048002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      000000000000000000003B3B3B0011111100D4D4D400C3C3C300080808005A5A
      5A00000000003F3F3F005F5F5F00000000005151E3005353E5005353E5005353
      E5005353E5005757E600CCCCF700FFFFFF00FFFFFF00D0D0F8005959E6004F4D
      E2004742DD004742DD004742DD004F4ADC002CB048002CB048002CB04800FFFF
      FF00FFFFFF002CB048002CB048002CB048002CB04800FFFFFF00FFFFFF002CB0
      48002CB048002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00000000000000000000000000002D2D2D001B1B1B0000000000B2B2B2000303
      03006F6F6F00BDBDBD00D1D1D100000000005453E1005353E5005353E5005353
      E5005858E600CFCFF800FFFFFF00CFCFF800CFCFF800FFFFFF00CFCFF8005757
      E6004743DD004742DD004742DD006561E1002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB04800FFFFFF00FFFF
      FF002CB048002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      000000000000000000000000000000000000202020002828280000000000A0A0
      A000000000008686860000000000000000006E6EE6005353E5005353E5005353
      E5009F9FF100FFFFFF00CFCFF8005858E6005858E600CFCFF800FFFFFF009F9F
      F1004A46DF004742DD004742DD009794EA002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB04800FFFF
      FF00FFFFFF002CB048002CB048002CB048000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919190083838300000000000000
      000000000000000000000000000000000000DADADA0016161600363636000000
      00008B8B8B00000000009C9C9C0000000000C5C4F3005353E5005353E5005353
      E5006969E8009F9FF1005858E6005353E5005353E5005858E6009F9FF1006969
      E8004C49E0004742DD004742DB00DEDDF700000000002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB04800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A001F1F1F00DBDBDB000000
      00000000000000000000000000000000000000000000CDCDCD000D0D0D004747
      4700000000007676760002020200B8B8B800000000006A69E5005353E5005353
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5004C4AE1004742DD009390E90000000000000000002CB048002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB048002CB04800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A00010101002525
      2500262626002626260026262600262626002626260081818100BEBEBE000606
      06005B5B5B0000000000494949003F3F3F0000000000000000005B59E3005353
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5004B48DF007671E400000000000000000000000000000000002CB048002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048002CB0480000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD007878
      78007676760076767600767676007676760076767600C1C1C10000000000ADAD
      AD00020202005A5A5A0034343400393939000000000000000000000000006B6A
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5008A89E8000000000000000000000000000000000000000000000000002CB0
      48002CB048002CB048002CB048002CB048002CB048002CB048002CB048002CB0
      48002CB048000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2003333330034343400C7C7C7000000000000000000000000000000
      0000C5C4F3006D6CE5005453E1005252E4005150E3005655E200716FE700C8C7
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000002CB048002CB048002CB048002CB048002CB048002CB048000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008003F00FF81F00000003E007E0070000
      3FF9C003C00300003BF980018001000030F90000800100003079000000000000
      383900000000000038190000000000003C090000000000003E41000000000000
      3F230000000000003F110000800100001F888001800100008004C003C0030000
      C020E007E0070000FFF0F00FF81F000000000000000000000000000000000000
      000000000000}
  end
  object dsPedidos: TDataSource
    DataSet = memPedidos
    Left = 32
    Top = 216
  end
  object memPedidos: TFDMemTable
    Active = True
    AfterScroll = memPedidosAfterScroll
    FieldDefs = <
      item
        Name = 'LEVEL'
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_ENTREGA'
        DataType = ftTimeStamp
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 522
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 128
    Top = 264
    Content = {
      4144425310000000BF020000FF00010001FF02FF030400140000006D0065006D
      00500065006400690064006F0073000500140000006D0065006D005000650064
      00690064006F007300060000000000070000080032000000090000FF0AFF0B04
      000A0000004C004500560045004C0005000A0000004C004500560045004C000C
      00010000000E000D000F000110000111000112000113000114000115000A0000
      004C004500560045004C00FEFF0B040012000000490044005F00500045004400
      490044004F00050012000000490044005F00500045004400490044004F000C00
      020000000E000D000F0001110001130001140001150012000000490044005F00
      500045004400490044004F00FEFF0B04000C0000005300540041005400550053
      0005000C0000005300540041005400550053000C00030000000E001600170014
      0000000F000110000111000112000113000114000115000C0000005300540041
      00540055005300180014000000FEFF0B04001800000044004100540041005F00
      45004E005400520045004700410005001800000044004100540041005F004500
      4E00540052004500470041000C00040000000E0019000F000110000111000112
      000113000114000115001800000044004100540041005F0045004E0054005200
      450047004100FEFF0B0400080000004E004F004D0045000500080000004E004F
      004D0045000C00050000000E0016001700640000000F00011100011300011400
      011500080000004E004F004D004500180064000000FEFF0B0400100000004500
      4E00440045005200450043004F0005001000000045004E004400450052004500
      43004F000C00060000000E00160017000A0200000F0001100001110001120001
      13000114000115001000000045004E00440045005200450043004F0018000A02
      0000FEFEFF1AFEFF1BFEFF1CFEFEFEFF1DFEFF1E1F001F000000FF20FEFEFE0E
      004D0061006E0061006700650072001E00550070006400610074006500730052
      00650067006900730074007200790012005400610062006C0065004C00690073
      0074000A005400610062006C00650008004E0061006D006500140053006F0075
      007200630065004E0061006D0065000A0054006100620049004400240045006E
      0066006F0072006300650043006F006E00730074007200610069006E00740073
      001E004D0069006E0069006D0075006D00430061007000610063006900740079
      00180043006800650063006B004E006F0074004E0075006C006C00140043006F
      006C0075006D006E004C006900730074000C0043006F006C0075006D006E0010
      0053006F007500720063006500490044000E006400740049006E007400330032
      0010004400610074006100540079007000650014005300650061007200630068
      00610062006C006500120041006C006C006F0077004E0075006C006C00080042
      0061007300650014004F0041006C006C006F0077004E0075006C006C0012004F
      0049006E0055007000640061007400650010004F0049006E0057006800650072
      0065001A004F0072006900670069006E0043006F006C004E0061006D00650018
      006400740041006E007300690053007400720069006E0067000800530069007A
      006500140053006F007500720063006500530069007A0065001E006400740044
      00610074006500540069006D0065005300740061006D0070001C0043006F006E
      00730074007200610069006E0074004C00690073007400100056006900650077
      004C006900730074000E0052006F0077004C006900730074001800520065006C
      006100740069006F006E004C006900730074001C005500700064006100740065
      0073004A006F00750072006E0061006C001200530061007600650050006F0069
      006E0074000E004300680061006E00670065007300}
    object memPedidosLEVEL: TIntegerField
      FieldName = 'LEVEL'
    end
    object memPedidosID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object memPedidosSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object memPedidosDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object memPedidosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object memPedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 522
    end
  end
  object dsItens: TDataSource
    DataSet = memItens
    Left = 64
    Top = 264
  end
  object memItens: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID_PEDIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOME'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CATEGORIA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SUBCATEGORIA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRECO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 96
    Top = 264
    Content = {
      414442531000000040040000FF00010001FF02FF030400100000006D0065006D
      004900740065006E0073000500100000006D0065006D004900740065006E0073
      00060000000000070000080032000000090000FF0AFF0B040012000000490044
      005F00500045004400490044004F00050012000000490044005F005000450044
      00490044004F000C00010000000E000D000F0001100001110001120001130012
      000000490044005F00500045004400490044004F00FEFF0B0400140000005100
      550041004E005400490044004100440045000500140000005100550041004E00
      5400490044004100440045000C00020000000E000D000F000110000111000112
      00011300140000005100550041004E00540049004400410044004500FEFF0B04
      0014000000490044005F00500052004F004400550054004F0005001400000049
      0044005F00500052004F004400550054004F000C00030000000E000D000F0001
      100001110001120001130014000000490044005F00500052004F004400550054
      004F00FEFF0B04000C00000043004F004400490047004F0005000C0000004300
      4F004400490047004F000C00040000000E00140015000A0000000F0001160001
      17000110000118000119000111000112000113000C00000043004F0044004900
      47004F001A000A000000FEFF0B0400080000004E004F004D0045000500080000
      004E004F004D0045000C00050000000E0014001500640000000F000116000117
      00011000011800011900011100011200011300080000004E004F004D0045001A
      0064000000FEFF0B040012000000440045005300430052004900430041004F00
      050012000000440045005300430052004900430041004F000C00060000000E00
      14001500FF0000000F0001160001170001100001180001190001110001120001
      130012000000440045005300430052004900430041004F001A00FF000000FEFF
      0B040012000000430041005400450047004F0052004900410005001200000043
      0041005400450047004F005200490041000C00070000000E0014001500320000
      000F000116000117000110000118000119000111000112000113001200000043
      0041005400450047004F005200490041001A0032000000FEFF0B040018000000
      530055004200430041005400450047004F005200490041000500180000005300
      55004200430041005400450047004F005200490041000C00080000000E001400
      1500320000000F00011600011700011000011800011900011100011200011300
      18000000530055004200430041005400450047004F005200490041001A003200
      0000FEFF0B04000A00000050005200450043004F0005000A0000005000520045
      0043004F000C00090000000E001B001C00120000001D00020000000F00011000
      0111000112000113000A00000050005200450043004F001E00120000001F0002
      000000FEFEFF20FEFF21FEFF22FEFEFEFF23FEFF24250010000000FF26FEFEFE
      0E004D0061006E0061006700650072001E005500700064006100740065007300
      5200650067006900730074007200790012005400610062006C0065004C006900
      730074000A005400610062006C00650008004E0061006D006500140053006F00
      75007200630065004E0061006D0065000A005400610062004900440024004500
      6E0066006F0072006300650043006F006E00730074007200610069006E007400
      73001E004D0069006E0069006D0075006D004300610070006100630069007400
      7900180043006800650063006B004E006F0074004E0075006C006C0014004300
      6F006C0075006D006E004C006900730074000C0043006F006C0075006D006E00
      100053006F007500720063006500490044000E006400740049006E0074003300
      3200100044006100740061005400790070006500140053006500610072006300
      6800610062006C0065000800420061007300650012004F0049006E0055007000
      640061007400650010004F0049006E00570068006500720065001A004F007200
      6900670069006E0043006F006C004E0061006D00650018006400740041006E00
      7300690053007400720069006E0067000800530069007A006500120041006C00
      6C006F0077004E0075006C006C00100052006500610064004F006E006C007900
      14004F0041006C006C006F0077004E0075006C006C0012004F00520065006100
      64004F006E006C007900140053006F007500720063006500530069007A006500
      10006400740046006D0074004200430044001200500072006500630069007300
      69006F006E000A005300630061006C0065001E0053006F007500720063006500
      50007200650063006900730069006F006E00160053006F007500720063006500
      5300630061006C0065001C0043006F006E00730074007200610069006E007400
      4C00690073007400100056006900650077004C006900730074000E0052006F00
      77004C006900730074001800520065006C006100740069006F006E004C006900
      730074001C0055007000640061007400650073004A006F00750072006E006100
      6C001200530061007600650050006F0069006E0074000E004300680061006E00
      670065007300}
    object memItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object memItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object memItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object memItensCODIGO: TStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 10
    end
    object memItensNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 100
    end
    object memItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 255
    end
    object memItensCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ReadOnly = True
      Size = 50
    end
    object memItensSUBCATEGORIA: TStringField
      FieldName = 'SUBCATEGORIA'
      ReadOnly = True
      Size = 50
    end
    object memItensPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
