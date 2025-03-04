object frmBaseCadastro: TfrmBaseCadastro
  Left = 0
  Top = 0
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
    TabOrder = 0
    ExplicitTop = 3
    ExplicitHeight = 616
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
      ExplicitLeft = 21
      ExplicitTop = 543
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
      ExplicitLeft = 21
      ExplicitTop = 110
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
      ExplicitLeft = 21
      ExplicitTop = 212
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
      ExplicitLeft = 21
      ExplicitTop = 246
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
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 215
    end
  end
  object pnlCentral: TPanel
    Left = 288
    Top = 24
    Width = 673
    Height = 577
    BevelOuter = bvNone
    Color = clWhite
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 673
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
        Width = 456
        Height = 72
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Shape1: TShape
          AlignWithMargins = True
          Left = 3
          Top = 58
          Width = 450
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
          Width = 433
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
          Width = 413
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
          Width = 393
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
          Width = 373
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
          Width = 353
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
      Width = 673
      Height = 534
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      Visible = False
      object Label16: TLabel
        Left = 220
        Top = 472
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
        Visible = False
        OnClick = Label16Click
        OnMouseEnter = Label16MouseEnter
        OnMouseLeave = Label16MouseLeave
      end
    end
    object pnlPesquisa: TPanel
      Left = 41
      Top = 135
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
        Height = 189
        Align = alTop
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
end
