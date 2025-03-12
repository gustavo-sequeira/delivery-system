inherited frmEntregadores: TfrmEntregadores
  Caption = 'frmEntregadores'
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
    inherited pnlManutencao: TPanel [0]
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
      object edtVeiculo: TEdit
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
      object edtPlaca: TEdit
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
    inherited pnlPesquisa: TPanel [1]
      StyleElements = [seFont, seClient, seBorder]
      inherited DBGrid: TDBGrid
        Width = 912
        Height = 544
        Align = alClient
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_ENTREGADOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Entregador'
            Width = 270
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEICULO'
            Title.Caption = 'Ve'#237'culo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Title.Caption = 'Placa'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CADASTRO'
            Visible = False
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
    inherited Panel1: TPanel [2]
      StyleElements = [seFont, seClient, seBorder]
      inherited Label2: TLabel
        Width = 251
        Height = 66
        Caption = 'Entregadores'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 251
      end
      inherited Image2: TImage
        Left = 257
        ExplicitLeft = 257
      end
    end
  end
  inherited FDMemTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID_ENTREGADOR'
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
        Name = 'TELEFONE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VEICULO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftTimeStamp
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
    Content = {
      4144425310000000E3020000FF00010001FF02FF03040014000000460044004D
      0065006D005400610062006C006500050014000000460044004D0065006D0054
      00610062006C006500060000000000070000080032000000090000FF0AFF0B04
      001A000000490044005F0045004E005400520045004700410044004F00520005
      001A000000490044005F0045004E005400520045004700410044004F0052000C
      00010000000E000D000F000110000111000112000113001A000000490044005F
      0045004E005400520045004700410044004F005200FEFF0B0400080000004E00
      4F004D0045000500080000004E004F004D0045000C00020000000E0014001500
      640000000F00011000011100011200011300080000004E004F004D0045001600
      64000000FEFF0B040010000000540045004C00450046004F004E004500050010
      000000540045004C00450046004F004E0045000C00030000000E001400150014
      0000000F0001100001110001120001130010000000540045004C00450046004F
      004E004500160014000000FEFF0B04000E000000560045004900430055004C00
      4F0005000E000000560045004900430055004C004F000C00040000000E001400
      1500320000000F000117000110000118000111000112000113000E0000005600
      45004900430055004C004F00160032000000FEFF0B04000A00000050004C0041
      004300410005000A00000050004C004100430041000C00050000000E00140015
      000A0000000F000117000110000118000111000112000113000A00000050004C
      0041004300410016000A000000FEFF0B04001A00000044004100540041005F00
      43004100440041005300540052004F0005001A00000044004100540041005F00
      43004100440041005300540052004F000C00060000000E0019000F0001170001
      10000118000111000112000113001A00000044004100540041005F0043004100
      440041005300540052004F00FEFEFF1AFEFF1BFEFF1CFEFEFEFF1DFEFF1EFF1F
      FEFEFE0E004D0061006E0061006700650072001E005500700064006100740065
      0073005200650067006900730074007200790012005400610062006C0065004C
      006900730074000A005400610062006C00650008004E0061006D006500140053
      006F0075007200630065004E0061006D0065000A005400610062004900440024
      0045006E0066006F0072006300650043006F006E00730074007200610069006E
      00740073001E004D0069006E0069006D0075006D004300610070006100630069
      0074007900180043006800650063006B004E006F0074004E0075006C006C0014
      0043006F006C0075006D006E004C006900730074000C0043006F006C0075006D
      006E00100053006F007500720063006500490044000E006400740049006E0074
      0033003200100044006100740061005400790070006500140053006500610072
      0063006800610062006C0065000800420061007300650012004F0049006E0055
      007000640061007400650010004F0049006E00570068006500720065001A004F
      0072006900670069006E0043006F006C004E0061006D00650018006400740041
      006E007300690053007400720069006E0067000800530069007A006500140053
      006F007500720063006500530069007A006500120041006C006C006F0077004E
      0075006C006C0014004F0041006C006C006F0077004E0075006C006C001E0064
      0074004400610074006500540069006D0065005300740061006D0070001C0043
      006F006E00730074007200610069006E0074004C006900730074001000560069
      00650077004C006900730074000E0052006F0077004C00690073007400180052
      0065006C006100740069006F006E004C006900730074001C0055007000640061
      007400650073004A006F00750072006E0061006C000E004300680061006E0067
      0065007300}
    object FDMemTableID_ENTREGADOR: TIntegerField
      FieldName = 'ID_ENTREGADOR'
      Required = True
    end
    object FDMemTableNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object FDMemTableTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
    end
    object FDMemTableVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 50
    end
    object FDMemTablePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object FDMemTableDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
  end
  inherited ImageList1: TImageList
    Left = 103
    Top = 24
  end
end
