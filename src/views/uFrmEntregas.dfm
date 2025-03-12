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
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Panel2: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlCentral: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pnlPesquisa: TPanel [0]
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Panel1: TPanel [1]
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
      end
    end
    inherited pnlManutencao: TPanel [2]
      StyleElements = [seFont, seClient, seBorder]
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
            Width = -1
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
    Left = 32
    Top = 264
  end
  inherited ImageList1: TImageList
    Left = 63
    Top = 216
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
