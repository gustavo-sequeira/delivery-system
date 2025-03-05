inherited frmProdutos: TfrmProdutos
  Caption = 'frmProdutos'
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
        Width = 172
        Height = 66
        Caption = 'Produtos'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 172
      end
      inherited Panel3: TPanel
        Left = 178
        Width = 495
        StyleElements = [seFont, seClient, seBorder]
        inherited Shape1: TShape
          Width = 489
        end
        inherited Shape2: TShape
          Width = 472
        end
        inherited Shape3: TShape
          Width = 452
        end
        inherited Shape4: TShape
          Width = 432
        end
        inherited Shape5: TShape
          Width = 412
        end
        inherited Shape6: TShape
          Width = 392
        end
      end
    end
    inherited pnlManutencao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Label16: TLabel
        Left = 218
        Top = 368
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 218
        ExplicitTop = 368
      end
      object Label4: TLabel
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
      object Label3: TLabel
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
      object Label5: TLabel
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
      object Label6: TLabel
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
      object Label7: TLabel
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
      object Label8: TLabel
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
      object Label9: TLabel
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
      object Label10: TLabel
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
      object Label11: TLabel
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
      object edtNome: TEdit
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
      object Edit1: TEdit
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
      object Edit2: TEdit
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
      object Edit3: TEdit
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
      object Edit4: TEdit
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
      object Edit5: TEdit
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
      object Edit6: TEdit
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
      object Edit7: TEdit
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
      object Edit8: TEdit
        Left = 272
        Top = 316
        Width = 250
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    inherited pnlPesquisa: TPanel
      Left = 5850
      Top = 2
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 5850
      ExplicitTop = 2
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VALIDADE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBCATEGORIA'
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
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
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
end
