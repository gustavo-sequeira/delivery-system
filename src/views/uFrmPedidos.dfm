inherited frmPedidos: TfrmPedidos
  Caption = 'frmPedidos'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = -184
  ExplicitTop = 2
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
        Width = 149
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
          TabOrder = 2
          OnChange = cbxClienteChange
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
          TabOrder = 3
          Visible = False
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 918
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
          Left = 155
          Top = 28
          Width = 678
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
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
              Title.Caption = 'Item'
              Width = 200
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
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              Visible = True
            end>
        end
      end
      inherited Panel5: TPanel
        Top = 441
        Align = alTop
        TabOrder = 2
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 0
        ExplicitTop = 493
        ExplicitWidth = 918
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
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
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 256
    Top = 152
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'QUANTIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
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
      4144425310000000AE020000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050016000000460044004D0065006D
      005400610062006C0065003100060000000000070000080032000000090000FF
      0AFF0B040014000000490044005F00500052004F004400550054004F00050014
      000000490044005F00500052004F004400550054004F000C00010000000E000D
      000F0001100001110001120001130014000000490044005F00500052004F0044
      00550054004F00FEFF0B04000C00000043004F004400490047004F0005000C00
      000043004F004400490047004F000C00020000000E00140015000A0000000F00
      0116000110000117000111000112000113000C00000043004F00440049004700
      4F0018000A000000FEFF0B0400080000004E004F004D0045000500080000004E
      004F004D0045000C00030000000E0014001500640000000F0001100001110001
      1200011300080000004E004F004D004500180064000000FEFF0B040012000000
      440045005300430052004900430041004F000500120000004400450053004300
      52004900430041004F000C00040000000E0014001500FF0000000F0001160001
      1000011700011100011200011300120000004400450053004300520049004300
      41004F001800FF000000FEFF0B0400140000005100550041004E005400490044
      004100440045000500140000005100550041004E005400490044004100440045
      000C00050000000E000D000F0001100001110001120001130014000000510055
      0041004E00540049004400410044004500FEFEFF19FEFF1AFEFF1BFF1C1D0000
      000000FF1E00000D0000000100060000004D45442D3032020009000000494E46
      4C55454E5A41030007000000564143494E4153040002000000FEFEFEFEFEFF1F
      FEFF20210003000000FF22FEFEFE0E004D0061006E0061006700650072001E00
      5500700064006100740065007300520065006700690073007400720079001200
      5400610062006C0065004C006900730074000A005400610062006C0065000800
      4E0061006D006500140053006F0075007200630065004E0061006D0065000A00
      54006100620049004400240045006E0066006F0072006300650043006F006E00
      730074007200610069006E00740073001E004D0069006E0069006D0075006D00
      43006100700061006300690074007900180043006800650063006B004E006F00
      74004E0075006C006C00140043006F006C0075006D006E004C00690073007400
      0C0043006F006C0075006D006E00100053006F00750072006300650049004400
      0E006400740049006E0074003300320010004400610074006100540079007000
      65001400530065006100720063006800610062006C0065000800420061007300
      650012004F0049006E0055007000640061007400650010004F0049006E005700
      68006500720065001A004F0072006900670069006E0043006F006C004E006100
      6D00650018006400740041006E007300690053007400720069006E0067000800
      530069007A006500120041006C006C006F0077004E0075006C006C0014004F00
      41006C006C006F0077004E0075006C006C00140053006F007500720063006500
      530069007A0065001C0043006F006E00730074007200610069006E0074004C00
      690073007400100056006900650077004C006900730074000E0052006F007700
      4C00690073007400060052006F0077000A0052006F0077004900440010004F00
      72006900670069006E0061006C001800520065006C006100740069006F006E00
      4C006900730074001C0055007000640061007400650073004A006F0075007200
      6E0061006C001200530061007600650050006F0069006E0074000E0043006800
      61006E00670065007300}
    object FDMemTable1ID_PRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object FDMemTable1CODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 10
    end
    object FDMemTable1NOME: TStringField
      DisplayWidth = 100
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDMemTable1DESCRICAO: TStringField
      DisplayWidth = 255
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object FDMemTable1QUANTIDADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
  end
end
