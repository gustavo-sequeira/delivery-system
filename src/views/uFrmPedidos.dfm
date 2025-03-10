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
    inherited Panel1: TPanel
      StyleElements = [seFont, seClient, seBorder]
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
      object Panel4: TPanel [0]
        Left = 0
        Top = 0
        Width = 918
        Height = 169
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label9: TLabel
          Left = 50
          Top = 7
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
          Left = 50
          Top = 40
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
          Left = 50
          Top = 72
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
        object lblObservacao: TLabel
          Left = 50
          Top = 105
          Width = 104
          Height = 21
          Caption = 'OBSERVA'#199#195'O'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object edtPedido: TEdit
          Left = 165
          Top = 4
          Width = 250
          Height = 27
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          OnExit = edtPedidoExit
          OnKeyPress = edtPedidoKeyPress
        end
        object dtpDataPedido: TDatePicker
          Left = 165
          Top = 37
          Width = 250
          Height = 27
          Date = 45725.000000000000000000
          DateFormat = 'dd/mm/yyyy'
          DropDownCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MinYear = 2025
          TabOrder = 1
        end
        object cbxCliente: TComboBox
          Left = 165
          Top = 70
          Width = 508
          Height = 29
          AutoComplete = False
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = cbxClienteChange
          OnExit = cbxClienteExit
          OnSelect = cbxClienteSelect
        end
        object memObservacao: TMemo
          Left = 166
          Top = 105
          Width = 507
          Height = 60
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 4
          Visible = False
        end
        object chbPesquisaData: TCheckBox
          Left = 424
          Top = 43
          Width = 209
          Height = 17
          Caption = 'Usar data na pesquisa?'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 2
          Visible = False
          OnClick = chbPesquisaDataClick
        end
      end
      object pnlNovoItem: TPanel [1]
        Left = 0
        Top = 169
        Width = 918
        Height = 272
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 912
          Height = 23
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            Left = 414
            Top = 0
            Width = 177
            Height = 23
            Hint = 'Incluir um novo registro'
            Margins.Left = 20
            Margins.Right = 20
            Alignment = taCenter
            AutoSize = False
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
            OnMouseEnter = Label5MouseEnter
            OnMouseLeave = Label5MouseLeave
          end
        end
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 9
          Top = 28
          Width = 900
          Height = 238
          BorderStyle = bsNone
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_PEDIDO'
              Visible = False
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
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Produto'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORIA'
              Title.Caption = 'Categoria'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCATEGORIA'
              Title.Caption = 'SubCategoria'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Qtd'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              Width = 40
              Visible = True
            end>
        end
      end
      inherited Panel5: TPanel
        TabOrder = 2
        StyleElements = [seFont, seClient, seBorder]
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Left = 743
      Top = 122
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 743
      ExplicitTop = 122
      inherited DBGrid: TDBGrid
        Font.Height = -16
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleHotTrack]
        ParentFont = False
        TitleFont.Height = -16
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Title.Caption = 'Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATA_PEDIDO'
            Title.Caption = 'Data'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_ENTREGADOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATA_ENTREGA'
            Title.Caption = 'Entrega'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            Width = 40
            Visible = True
          end>
      end
      object DBGridItens: TDBGrid
        Left = 3
        Top = 130
        Width = 673
        Height = 217
        BorderStyle = bsNone
        DataSource = DataSource1
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
        OnDrawColumnCell = DBGridItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Visible = False
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
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Produto'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Caption = 'Categoria'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBCATEGORIA'
            Title.Caption = 'Subcategoria'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited FDGUIxWaitCursor: TFDGUIxWaitCursor
    Left = 200
    Top = 272
  end
  inherited DataSource: TDataSource
    Left = 288
    Top = 352
  end
  inherited FDMemTable: TFDMemTable
    AfterScroll = FDMemTableAfterScroll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    StoreDefs = True
    Left = 216
    Top = 88
    object FDMemTableID_PEDIDO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDMemTableNOME: TStringField
      FieldName = 'NOME'
    end
    object FDMemTableID_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDMemTableDATA_PEDIDO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object FDMemTableTOTAL: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object FDMemTableSTATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FDMemTableID_ENTREGADOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ENTREGADOR'
      Origin = 'ID_ENTREGADOR'
    end
    object FDMemTableDATA_ENTREGA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
  end
  object DataSource1: TDataSource [5]
    DataSet = FDMemTable1
    Left = 360
    Top = 128
  end
  object FDMemTable1: TFDMemTable [6]
    Active = True
    FieldDefs = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SUBCATEGORIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRECO'
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
    Left = 320
    Top = 208
    Content = {
      414442531000000049040000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050016000000460044004D0065006D
      005400610062006C0065003100060000000000070000080032000000090000FF
      0AFF0B040012000000490044005F00500045004400490044004F000500120000
      00490044005F00500045004400490044004F000C00010000000E000D000F0001
      100001110001120001130001140012000000490044005F005000450044004900
      44004F00FEFF0B0400140000005100550041004E005400490044004100440045
      000500140000005100550041004E005400490044004100440045000C00020000
      000E000D000F0001100001110001120001130001140014000000510055004100
      4E00540049004400410044004500FEFF0B040014000000490044005F00500052
      004F004400550054004F00050014000000490044005F00500052004F00440055
      0054004F000C00030000000E000D000F00011000011100011200011300011400
      14000000490044005F00500052004F004400550054004F00FEFF0B04000C0000
      0043004F004400490047004F0005000C00000043004F004400490047004F000C
      00040000000E00150016000A0000000F00011700011800011000011100011200
      0113000114000C00000043004F004400490047004F0019000A000000FEFF0B04
      00080000004E004F004D0045000500080000004E004F004D0045000C00050000
      000E0015001600640000000F0001170001180001100001110001120001130001
      1400080000004E004F004D004500190064000000FEFF0B040012000000440045
      005300430052004900430041004F000500120000004400450053004300520049
      00430041004F000C00060000000E0015001600FF0000000F0001170001180001
      1000011100011200011300011400120000004400450053004300520049004300
      41004F001900FF000000FEFF0B040012000000430041005400450047004F0052
      0049004100050012000000430041005400450047004F005200490041000C0007
      0000000E0015001600320000000F000117000118000110000111000112000113
      0001140012000000430041005400450047004F00520049004100190032000000
      FEFF0B040018000000530055004200430041005400450047004F005200490041
      00050018000000530055004200430041005400450047004F005200490041000C
      00080000000E0015001600320000000F00011700011800011000011100011200
      01130001140018000000530055004200430041005400450047004F0052004900
      4100190032000000FEFF0B04000A00000050005200450043004F0005000A0000
      0050005200450043004F000C00090000000E001A001B00120000001C00020000
      000F000110000111000112000113000114000A00000050005200450043004F00
      1D00120000001E0002000000FEFEFF1FFEFF20FEFF21FEFEFEFF22FEFF232400
      17000000FF25FEFEFE0E004D0061006E0061006700650072001E005500700064
      0061007400650073005200650067006900730074007200790012005400610062
      006C0065004C006900730074000A005400610062006C00650008004E0061006D
      006500140053006F0075007200630065004E0061006D0065000A005400610062
      0049004400240045006E0066006F0072006300650043006F006E007300740072
      00610069006E00740073001E004D0069006E0069006D0075006D004300610070
      0061006300690074007900180043006800650063006B004E006F0074004E0075
      006C006C00140043006F006C0075006D006E004C006900730074000C0043006F
      006C0075006D006E00100053006F007500720063006500490044000E00640074
      0049006E00740033003200100044006100740061005400790070006500140053
      0065006100720063006800610062006C0065000800420061007300650014004F
      0041006C006C006F0077004E0075006C006C0012004F0049006E005500700064
      0061007400650010004F0049006E00570068006500720065001A004F00720069
      00670069006E0043006F006C004E0061006D00650018006400740041006E0073
      00690053007400720069006E0067000800530069007A006500120041006C006C
      006F0077004E0075006C006C00100052006500610064004F006E006C00790014
      0053006F007500720063006500530069007A00650010006400740046006D0074
      00420043004400120050007200650063006900730069006F006E000A00530063
      0061006C0065001E0053006F0075007200630065005000720065006300690073
      0069006F006E00160053006F0075007200630065005300630061006C0065001C
      0043006F006E00730074007200610069006E0074004C00690073007400100056
      006900650077004C006900730074000E0052006F0077004C0069007300740018
      00520065006C006100740069006F006E004C006900730074001C005500700064
      0061007400650073004A006F00750072006E0061006C00120053006100760065
      0050006F0069006E0074000E004300680061006E00670065007300}
    object FDMemTable1ID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object FDMemTable1QUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object FDMemTable1ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object FDMemTable1CODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object FDMemTable1NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object FDMemTable1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object FDMemTable1CATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object FDMemTable1SUBCATEGORIA: TStringField
      FieldName = 'SUBCATEGORIA'
      Size = 50
    end
    object FDMemTable1PRECO: TFMTBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object FDConnection1: TFDConnection [7]
    Params.Strings = (
      
        'Database=C:\projetos\repositorios\portfolio\delivery-system\data' +
        'base\DELIVERY.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 560
    Top = 296
  end
  object FDQuery1: TFDQuery [8]
    Connection = FDConnection1
    SQL.Strings = (
      ''
      #9'  '
      'WITH VPRODUTOS AS('#9'  '
      
        'SELECT P.*, 1 AS LEVEL FROM PRODUTOS p WHERE p.CATEGORIA = '#39'MEDI' +
        'CAMENTOS'#39' AND p.SUBCATEGORIA = '#39'SENSIVEIS'#39' '#9'  '
      'UNION ALL'
      
        'SELECT P.*, 2 AS LEVEL FROM PRODUTOS p WHERE p.CATEGORIA = '#39'MEDI' +
        'CAMENTOS'#39' AND p.SUBCATEGORIA = '#39'CONTROLADOS'#39' '
      'UNION ALL'
      
        'SELECT P.*, 3 AS LEVEL FROM PRODUTOS p WHERE p.CATEGORIA = '#39'MEDI' +
        'CAMENTOS'#39' AND p.SUBCATEGORIA = '#39'PERECIVEIS'#39' '#9
      'UNION ALL'
      
        'SELECT P.*, 4 AS LEVEL FROM PRODUTOS p WHERE p.SUBCATEGORIA NOT ' +
        'IN ('#39'SENSIVEIS'#39','#39'CONTROLADOS'#39','#39'PERECIVEIS'#39')'
      ') SELECT * FROM VPRODUTOS v'
      'JOIN ITENS_PEDIDO ip ON ip.ID_PRODUTO = V.ID_PRODUTO'
      'JOIN PEDIDOS p ON IP.ID_PEDIDO = P.ID_PEDIDO'
      'WHERE P.STATUS = '#39'PENDENTE'#39
      'ORDER BY LEVEL, NOME')
    Left = 304
    Top = 272
  end
end
