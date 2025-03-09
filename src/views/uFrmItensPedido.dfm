object frmItensPedido: TfrmItensPedido
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmItensPedido'
  ClientHeight = 345
  ClientWidth = 720
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Bevel1: TBevel
    Left = 719
    Top = 1
    Width = 1
    Height = 343
    Align = alRight
    Style = bsRaised
    ExplicitLeft = 0
    ExplicitTop = 33
    ExplicitHeight = 312
  end
  object Label9: TLabel
    Left = 96
    Top = 71
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
  object Label1: TLabel
    Left = 96
    Top = 104
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
  object Label2: TLabel
    Left = 96
    Top = 137
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
  object Label3: TLabel
    Left = 96
    Top = 170
    Width = 87
    Height = 21
    Caption = 'CATEGORIA'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 96
    Top = 203
    Width = 118
    Height = 21
    Caption = 'SUBCATEGORIA'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 96
    Top = 236
    Width = 106
    Height = 21
    Caption = 'QUANTIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 263
    Top = 286
    Width = 177
    Height = 28
    Hint = 'Pesquisar registro'
    Alignment = taCenter
    AutoSize = False
    Caption = 'INCLUIR'
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
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 720
    Height = 1
    Align = alTop
    Style = bsRaised
    ExplicitTop = 33
  end
  object Bevel3: TBevel
    Left = 0
    Top = 1
    Width = 1
    Height = 343
    Align = alLeft
    Style = bsRaised
    ExplicitTop = 34
    ExplicitHeight = 311
  end
  object Bevel4: TBevel
    Left = 0
    Top = 344
    Width = 720
    Height = 1
    Align = alBottom
    Style = bsRaised
    ExplicitTop = 34
  end
  object Label7: TLabel
    Left = 8
    Top = 36
    Width = 701
    Height = 21
    Margins.Left = 10
    Margins.Right = 10
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCategoria: TEdit
    Left = 224
    Top = 167
    Width = 400
    Height = 29
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtSubCategoria: TEdit
    Left = 224
    Top = 200
    Width = 400
    Height = 29
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edtQuantidade: TEdit
    Left = 224
    Top = 233
    Width = 400
    Height = 29
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '0'
    OnExit = edtQuantidadeExit
    OnKeyPress = edtQuantidadeKeyPress
  end
  object cbxCodigo: TComboBox
    Left = 224
    Top = 67
    Width = 400
    Height = 29
    AutoComplete = False
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = cbxCodigoChange
    OnSelect = cbxCodigoSelect
  end
  object cbxNome: TComboBox
    Left = 224
    Top = 100
    Width = 400
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
    OnChange = cbxNomeChange
    OnSelect = cbxNomeSelect
  end
  object cbxDescricao: TComboBox
    Left = 224
    Top = 133
    Width = 400
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
    OnChange = cbxDescricaoChange
    OnSelect = cbxDescricaoSelect
  end
  object Panel1: TPanel
    Left = 1
    Top = 1
    Width = 718
    Height = 32
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object Label6: TLabel
      AlignWithMargins = True
      Left = 694
      Top = 4
      Width = 13
      Height = 24
      Margins.Right = 10
      Align = alRight
      Alignment = taCenter
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = Label6Click
      ExplicitLeft = 695
      ExplicitHeight = 28
    end
  end
end
