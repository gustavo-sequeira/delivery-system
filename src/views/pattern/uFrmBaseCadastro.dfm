object frmBaseCadastro: TfrmBaseCadastro
  Left = 0
  Top = 0
  Margins.Top = 23
  Margins.Bottom = 20
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmBaseCadastro'
  ClientHeight = 622
  ClientWidth = 1141
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object pnlMenu: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 23
    Width = 217
    Height = 579
    Margins.Top = 23
    Margins.Bottom = 20
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 531
      Width = 177
      Height = 28
      Hint = 'Sair da tela'
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alBottom
      Caption = 'SAIR'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = Label1Click
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
      ExplicitWidth = 44
    end
    object lblMenuPesquisa: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 75
      Width = 177
      Height = 28
      Hint = 'Pesquisa de resgistros'
      Margins.Left = 20
      Margins.Right = 20
      Align = alTop
      Caption = 'PESQUISA'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = lblMenuPesquisaClick
      OnMouseEnter = lblMenuPesquisaMouseEnter
      OnMouseLeave = lblMenuPesquisaMouseLeave
      ExplicitWidth = 94
    end
    object lblMenuNovo: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 109
      Width = 177
      Height = 28
      Hint = 'Incluir um novo registro'
      Margins.Left = 20
      Margins.Right = 20
      Align = alTop
      Caption = 'NOVO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = lblMenuNovoClick
      OnMouseEnter = lblMenuNovoMouseEnter
      OnMouseLeave = lblMenuNovoMouseLeave
      ExplicitWidth = 59
    end
    object lblMenuSalvar: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 143
      Width = 177
      Height = 28
      Hint = 'Salvar registro'
      Margins.Left = 20
      Margins.Right = 20
      Align = alTop
      Caption = 'SALVAR'
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = lblMenuSalvarClick
      OnMouseEnter = lblMenuSalvarMouseEnter
      OnMouseLeave = lblMenuSalvarMouseLeave
      ExplicitWidth = 73
    end
    object lblMenuCancelar: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 177
      Width = 177
      Height = 28
      Hint = 'Cancelar opera'#231#227'o'
      Margins.Left = 20
      Margins.Right = 20
      Align = alTop
      Caption = 'CANCELAR'
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = lblMenuCancelarClick
      OnMouseEnter = lblMenuCancelarMouseEnter
      OnMouseLeave = lblMenuCancelarMouseLeave
      ExplicitWidth = 102
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 217
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object pnlCentral: TPanel
    Left = 223
    Top = 0
    Width = 918
    Height = 622
    Margins.Top = 23
    Margins.Bottom = 20
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 918
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 211
        Height = 66
        Align = alLeft
        Caption = 'CADASTRO'
        ExplicitHeight = 54
      end
      object Panel3: TPanel
        Left = 217
        Top = 0
        Width = 701
        Height = 72
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Shape1: TShape
          AlignWithMargins = True
          Left = 3
          Top = 58
          Width = 695
          Height = 5
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitWidth = 444
        end
        object Shape2: TShape
          AlignWithMargins = True
          Left = 20
          Top = 47
          Width = 678
          Height = 5
          Margins.Left = 20
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 444
        end
        object Shape3: TShape
          AlignWithMargins = True
          Left = 40
          Top = 36
          Width = 658
          Height = 5
          Margins.Left = 40
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 444
        end
        object Shape4: TShape
          AlignWithMargins = True
          Left = 60
          Top = 25
          Width = 638
          Height = 5
          Margins.Left = 60
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 444
        end
        object Shape5: TShape
          AlignWithMargins = True
          Left = 80
          Top = 14
          Width = 618
          Height = 5
          Margins.Left = 80
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 444
        end
        object Shape6: TShape
          AlignWithMargins = True
          Left = 100
          Top = 3
          Width = 598
          Height = 5
          Margins.Left = 100
          Align = alTop
          Brush.Color = clCream
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 444
        end
      end
    end
    object pnlManutencao: TPanel
      Left = 0
      Top = 72
      Width = 918
      Height = 534
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      Visible = False
      object Panel5: TPanel
        Left = 0
        Top = 493
        Width = 918
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Label16: TLabel
          Left = 370
          Top = 7
          Width = 177
          Height = 28
          Hint = 'Pesquisar registro'
          Alignment = taCenter
          AutoSize = False
          Caption = 'PESQUISAR'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          OnClick = Label16Click
          OnMouseEnter = Label16MouseEnter
          OnMouseLeave = Label16MouseLeave
        end
      end
    end
    object pnlPesquisa: TPanel
      Left = 489
      Top = 166
      Width = 673
      Height = 385
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      Visible = False
      object DBGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 667
        Height = 70
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridDrawColumnCell
      end
    end
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 240
    Top = 24
  end
  object DataSource: TDataSource
    DataSet = FDMemTable
    Left = 240
    Top = 80
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 144
  end
  object ImageList1: TImageList
    Left = 391
    Top = 128
    Bitmap = {
      494C010102000804040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
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
      C020E00700000000FFF0F00F00000000}
  end
end
