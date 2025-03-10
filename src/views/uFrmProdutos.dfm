inherited frmProdutos: TfrmProdutos
  Caption = 'frmProdutos'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -107
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
        Width = 172
        Caption = 'Produtos'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 172
      end
      inherited Panel3: TPanel
        Left = 178
        Width = 740
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 178
        ExplicitWidth = 740
        inherited Shape1: TShape
          Width = 734
          ExplicitWidth = 734
        end
        inherited Shape2: TShape
          Width = 717
          ExplicitWidth = 717
        end
        inherited Shape3: TShape
          Width = 697
          ExplicitWidth = 697
        end
        inherited Shape4: TShape
          Width = 677
          ExplicitWidth = 677
        end
        inherited Shape5: TShape
          Width = 657
          ExplicitWidth = 657
        end
        inherited Shape6: TShape
          Width = 637
          ExplicitWidth = 637
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      object Label4: TLabel [0]
        Left = 144
        Top = 72
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
      object Label3: TLabel [1]
        Left = 144
        Top = 108
        Width = 88
        Height = 21
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel [2]
        Left = 144
        Top = 143
        Width = 51
        Height = 21
        Caption = 'PRE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel [3]
        Left = 144
        Top = 176
        Width = 71
        Height = 21
        Caption = 'ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel [4]
        Left = 144
        Top = 212
        Width = 87
        Height = 21
        Caption = 'CATEGORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [5]
        Left = 144
        Top = 247
        Width = 118
        Height = 21
        Caption = 'SUBCATEGORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel [6]
        Left = 144
        Top = 39
        Width = 62
        Height = 21
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel [7]
        Left = 144
        Top = 284
        Width = 123
        Height = 21
        Caption = 'DATA VALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel [8]
        Left = 144
        Top = 319
        Width = 104
        Height = 21
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNome: TEdit [9]
        Left = 272
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
      object edtDescricao: TEdit [10]
        Left = 272
        Top = 105
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
      object edtPreco: TEdit [11]
        Left = 272
        Top = 140
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtEstoque: TEdit [12]
        Left = 272
        Top = 173
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtCategoria: TEdit [13]
        Left = 272
        Top = 209
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtSubCategoria: TEdit [14]
        Left = 272
        Top = 244
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object edtCodigo: TEdit [15]
        Left = 272
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
      object edtDataValidade: TEdit [16]
        Left = 272
        Top = 281
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object memObservacao: TMemo [17]
        Left = 272
        Top = 317
        Width = 249
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      inherited Panel5: TPanel
        TabOrder = 9
        StyleElements = [seFont, seClient, seBorder]
        inherited Label16: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Left = 370
      Top = 78
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 370
      ExplicitTop = 78
      inherited DBGrid: TDBGrid
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descr'#231#227'o'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VALIDADE'
            Title.Caption = 'Validade'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'Pre'#231'o'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Caption = 'Estoque'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Caption = 'Categoria'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBCATEGORIA'
            Title.Caption = 'Subcategoria'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CADASTRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Visible = False
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
    end
  end
  inherited FDMemTable: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
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
        Name = 'PRECO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ESTOQUE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATA_VALIDADE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SUBCATEGORIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 255
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
    object FDMemTableID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object FDMemTableNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object FDMemTableDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object FDMemTablePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDMemTableESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Required = True
    end
    object FDMemTableCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object FDMemTableDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object FDMemTableCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object FDMemTableDATA_VALIDADE: TSQLTimeStampField
      FieldName = 'DATA_VALIDADE'
    end
    object FDMemTableSUBCATEGORIA: TStringField
      FieldName = 'SUBCATEGORIA'
      Size = 50
    end
    object FDMemTableOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010102000804040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000ACACAC00434343000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C0067676700D2D2D20000000000000000000000000000000000000000000000
      0000DEDDF7009794EA006561E1004E49DC004E49DC006561E1009894EA00DFDE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000020202005A5A5A009D9D
      9D009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009191
      9100313131001111110000000000000000000000000000000000000000009390
      E9004742DB004742DD004742DD004742DD004742DD004742DD004742DD004742
      DB009492EA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004848480052525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A00A0A0A0000000000000000000000000007672E4004742
      DD004742DD004742DD004742DD004742DD004742DD004742DD004742DD004742
      DD004742DD007672E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707070096969600000000000000
      0000000000009F9F9F0000000000000000000000000000000000000000000000
      0000000000003E3E3E005F5F5F0000000000000000008583E7004B49E0004D4B
      E1004C49E0004B48E0004843DD004742DD004742DD004742DD004742DD004742
      DD004742DD004742DD009492EA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00006C6C6C00000000000C0C0C006C6C6C000000000000000000000000000000
      0000000000003E3E3E005E5E5E0000000000CACAF5005353E5005353E5005353
      E5006969E8009F9FF1005757E6004F4DE2004944DE004D48DE009996EC005F5A
      E1004742DD004742DD004742DB00DFDEF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00009C9C9C000000000070707000151515002828280000000000000000000000
      0000000000003E3E3E005E5E5E00000000006F6DE6005353E5005353E5005353
      E500A0A0F100FFFFFF00CFCFF8005858E6005757E500CDCCF600FFFFFF009996
      EC004742DD004742DD004742DD009894EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00000000000004040400626262000E0E0E000000000037373700000000000000
      0000000000003E3E3E005E5E5E00000000005553E2005353E5005353E5005353
      E5005858E600CFCFF800FFFFFF00CFCFF800CFCFF800FFFFFF00CDCCF6004D48
      DE004742DD004742DD004742DD006561E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      0000000000005B5B5B00000000003D3D3D00C7C7C7000F0F0F00474747000000
      0000000000003E3E3E005E5E5E00000000005050E3005353E5005353E5005353
      E5005353E5005858E600CCCCF700FFFFFF00FFFFFF00D0D0F8005958E5004844
      DE004742DD004742DD004742DD004F4BDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      000000000000000000003B3B3B0011111100D4D4D400C3C3C300080808005A5A
      5A00000000003F3F3F005F5F5F00000000005151E3005353E5005353E5005353
      E5005353E5005757E600CCCCF700FFFFFF00FFFFFF00D0D0F8005959E6004F4D
      E2004742DD004742DD004742DD004F4ADC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      00000000000000000000000000002D2D2D001B1B1B0000000000B2B2B2000303
      03006F6F6F00BDBDBD00D1D1D100000000005453E1005353E5005353E5005353
      E5005858E600CFCFF800FFFFFF00CFCFF800CFCFF800FFFFFF00CFCFF8005757
      E6004743DD004742DD004742DD006561E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060096969600000000000000
      000000000000000000000000000000000000202020002828280000000000A0A0
      A000000000008686860000000000000000006E6EE6005353E5005353E5005353
      E5009F9FF100FFFFFF00CFCFF8005858E6005858E600CFCFF800FFFFFF009F9F
      F1004A46DF004742DD004742DD009794EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919190083838300000000000000
      000000000000000000000000000000000000DADADA0016161600363636000000
      00008B8B8B00000000009C9C9C0000000000C5C4F3005353E5005353E5005353
      E5006969E8009F9FF1005858E6005353E5005353E5005858E6009F9FF1006969
      E8004C49E0004742DD004742DB00DEDDF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A001F1F1F00DBDBDB000000
      00000000000000000000000000000000000000000000CDCDCD000D0D0D004747
      4700000000007676760002020200B8B8B800000000006A69E5005353E5005353
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5004C4AE1004742DD009390E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A00010101002525
      2500262626002626260026262600262626002626260081818100BEBEBE000606
      06005B5B5B0000000000494949003F3F3F0000000000000000005B59E3005353
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5004B48DF007671E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD007878
      78007676760076767600767676007676760076767600C1C1C10000000000ADAD
      AD00020202005A5A5A0034343400393939000000000000000000000000006B6A
      E5005353E5005353E5005353E5005353E5005353E5005353E5005353E5005353
      E5008A89E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2003333330034343400C7C7C7000000000000000000000000000000
      0000C5C4F3006D6CE5005453E1005252E4005150E3005655E200716FE700C8C7
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008003F00F000000000003E00700000000
      3FF9C003000000003BF980010000000030F90000000000003079000000000000
      383900000000000038190000000000003C090000000000003E41000000000000
      3F230000000000003F110000000000001F888001000000008004C00300000000
      C020E00700000000FFF0F00F0000000000000000000000000000000000000000
      000000000000}
  end
end
