inherited frmClientes: TfrmClientes
  Caption = 'frmClientes'
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
        Width = 149
        Caption = 'Clientes'
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
          ExplicitWidth = 512
        end
        inherited Shape2: TShape
          Width = 740
          ExplicitWidth = 495
        end
        inherited Shape3: TShape
          Width = 720
          ExplicitWidth = 475
        end
        inherited Shape4: TShape
          Width = 700
          ExplicitWidth = 455
        end
        inherited Shape5: TShape
          Width = 680
          ExplicitWidth = 435
        end
        inherited Shape6: TShape
          Width = 660
          ExplicitWidth = 415
        end
      end
    end
    inherited pnlManutencao: TPanel
      Top = 75
      Width = 669
      Align = alNone
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 75
      ExplicitWidth = 669
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
      object Label5: TLabel [1]
        Left = 144
        Top = 71
        Width = 28
        Height = 21
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [2]
        Left = 144
        Top = 102
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
      object Label9: TLabel [3]
        Left = 144
        Top = 133
        Width = 48
        Height = 21
        Caption = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel [4]
        Left = 144
        Top = 164
        Width = 29
        Height = 21
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel [5]
        Left = 144
        Top = 195
        Width = 110
        Height = 21
        Caption = 'LOGRADOURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel [6]
        Left = 144
        Top = 226
        Width = 71
        Height = 21
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel [7]
        Left = 144
        Top = 258
        Width = 59
        Height = 21
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel [8]
        Left = 144
        Top = 289
        Width = 58
        Height = 21
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel5: TPanel
        Width = 669
        TabOrder = 9
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 80
        ExplicitTop = 469
        ExplicitWidth = 669
        inherited Label16: TLabel
          Left = 246
          Top = 2
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 246
          ExplicitTop = 2
        end
      end
      object edtNome: TEdit
        Left = 272
        Top = 37
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
      object edtCpf: TEdit
        Left = 272
        Top = 68
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
      object edtTelefone: TEdit
        Left = 272
        Top = 99
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
      object edtEmail: TEdit
        Left = 272
        Top = 130
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
      object edtCEP: TEdit
        Left = 272
        Top = 161
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
      object edtLogradouro: TEdit
        Left = 272
        Top = 192
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
      object edtLogradouroNumero: TEdit
        Left = 272
        Top = 223
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
      object edtCidade: TEdit
        Left = 272
        Top = 255
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
      object edtBairro: TEdit
        Left = 272
        Top = 286
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
      Left = 552
      Top = 118
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 552
      ExplicitTop = 118
      inherited DBGrid: TDBGrid
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Title.Caption = 'Cpf'
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
            FieldName = 'EMAIL'
            Title.Caption = 'Email'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CADASTRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRADOURO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRADOURO_NUMERO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
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
    Active = True
    FieldDefs = <
      item
        Name = 'ID_CLIENTE'
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
        Name = 'CPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LOGRADOURO_NUMERO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 100
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
      41444253100000007C060000FF00010001FF02FF03040014000000460044004D
      0065006D005400610062006C006500050014000000460044004D0065006D0054
      00610062006C006500060000000000070000080032000000090000FF0AFF0B04
      0014000000490044005F0043004C00490045004E005400450005001400000049
      0044005F0043004C00490045004E00540045000C00010000000E000D000F0001
      100001110001120001130001140014000000490044005F0043004C0049004500
      4E0054004500FEFF0B0400080000004E004F004D0045000500080000004E004F
      004D0045000C00020000000E0015001600640000000F00011000011100011200
      011400080000004E004F004D004500170064000000FEFF0B0400060000004300
      500046000500060000004300500046000C00030000000E00150016000E000000
      0F00011800011000011900011100011200011400060000004300500046001700
      0E000000FEFF0B040010000000540045004C00450046004F004E004500050010
      000000540045004C00450046004F004E0045000C00040000000E00150016000F
      0000000F0001180001100001190001110001120001140010000000540045004C
      00450046004F004E00450017000F000000FEFF0B04000A00000045004D004100
      49004C0005000A00000045004D00410049004C000C00050000000E0015001600
      640000000F000118000110000119000111000112000114000A00000045004D00
      410049004C00170064000000FEFF0B04001A00000044004100540041005F0043
      004100440041005300540052004F0005001A00000044004100540041005F0043
      004100440041005300540052004F000C00060000000E001A000F000118000110
      000119000111000112000114001A00000044004100540041005F004300410044
      0041005300540052004F00FEFF0B040006000000430045005000050006000000
      4300450050000C00070000000E00150016000A0000000F000118000110000119
      000111000112000114000600000043004500500017000A000000FEFF0B040014
      0000004C004F0047005200410044004F00550052004F000500140000004C004F
      0047005200410044004F00550052004F000C00080000000E0015001600C80000
      000F00011800011000011900011100011200011400140000004C004F00470052
      00410044004F00550052004F001700C8000000FEFF0B0400220000004C004F00
      47005200410044004F00550052004F005F004E0055004D00450052004F000500
      220000004C004F0047005200410044004F00550052004F005F004E0055004D00
      450052004F000C00090000000E0015001600640000000F000118000110000119
      00011100011200011400220000004C004F0047005200410044004F0055005200
      4F005F004E0055004D00450052004F00170064000000FEFF0B04000C00000043
      004900440041004400450005000C0000004300490044004100440045000C000A
      0000000E0015001600640000000F000118000110000119000111000112000114
      000C000000430049004400410044004500170064000000FEFF0B04000C000000
      420041004900520052004F0005000C000000420041004900520052004F000C00
      0B0000000E0015001600640000000F0001180001100001190001110001120001
      14000C000000420041004900520052004F00170064000000FEFEFF1BFEFF1CFE
      FF1DFF1E1F0000000000FF200000010000000100000000000200000000000300
      000000000400000000000500E907030004000E002F0030004A02000006000000
      00000700000000000800000000000900000000000A0000000000FEFEFF1E1F00
      01000000FF200000050000000100070000004755535441564F02000300000030
      333103000000000004000500000053455155450500E907030004000F0021001B
      00640200000600000000000700000000000800000000000900000000000A0000
      000000FEFEFF1E1F0002000000FF200000070000000100010000003102000100
      00003103000100000031040001000000310500E907030004000F0033001D001C
      030000060001000000310700010000003108000100000031090001000000310A
      0000000000FEFEFF1E1F0003000000FF20000008000000010001000000330200
      010000003303000100000033040001000000330500E907030004001000190030
      0010020000060001000000330700000000000800010000003309000100000033
      0A000100000033FEFEFEFEFEFF21FEFF22230008000000FF24FEFEFE0E004D00
      61006E0061006700650072001E00550070006400610074006500730052006500
      67006900730074007200790012005400610062006C0065004C00690073007400
      0A005400610062006C00650008004E0061006D006500140053006F0075007200
      630065004E0061006D0065000A0054006100620049004400240045006E006600
      6F0072006300650043006F006E00730074007200610069006E00740073001E00
      4D0069006E0069006D0075006D00430061007000610063006900740079001800
      43006800650063006B004E006F0074004E0075006C006C00140043006F006C00
      75006D006E004C006900730074000C0043006F006C0075006D006E0010005300
      6F007500720063006500490044000E006400740049006E007400330032001000
      4400610074006100540079007000650014005300650061007200630068006100
      62006C0065000800420061007300650012004F0049006E005500700064006100
      7400650010004F0049006E00570068006500720065000C004F0049006E004B00
      650079001A004F0072006900670069006E0043006F006C004E0061006D006500
      18006400740041006E007300690053007400720069006E006700080053006900
      7A006500140053006F007500720063006500530069007A006500120041006C00
      6C006F0077004E0075006C006C0014004F0041006C006C006F0077004E007500
      6C006C001E00640074004400610074006500540069006D006500530074006100
      6D0070001C0043006F006E00730074007200610069006E0074004C0069007300
      7400100056006900650077004C006900730074000E0052006F0077004C006900
      73007400060052006F0077000A0052006F0077004900440010004F0072006900
      670069006E0061006C001800520065006C006100740069006F006E004C006900
      730074001C0055007000640061007400650073004A006F00750072006E006100
      6C001200530061007600650050006F0069006E0074000E004300680061006E00
      670065007300}
    object FDMemTableID_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMemTableNOME: TStringField
      DisplayWidth = 100
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDMemTableCPF: TStringField
      DisplayWidth = 14
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object FDMemTableTELEFONE: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object FDMemTableEMAIL: TStringField
      DisplayWidth = 100
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object FDMemTableDATA_CADASTRO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object FDMemTableCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDMemTableLOGRADOURO: TStringField
      DisplayWidth = 200
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 200
    end
    object FDMemTableLOGRADOURO_NUMERO: TStringField
      DisplayWidth = 100
      FieldName = 'LOGRADOURO_NUMERO'
      Origin = 'LOGRADOURO_NUMERO'
      Size = 100
    end
    object FDMemTableCIDADE: TStringField
      DisplayWidth = 100
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object FDMemTableBAIRRO: TStringField
      DisplayWidth = 100
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
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
