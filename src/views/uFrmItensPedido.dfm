object frmItensPedido: TfrmItensPedido
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frmItensPedido'
  ClientHeight = 306
  ClientWidth = 704
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label9: TLabel
    Left = 88
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
  object Label1: TLabel
    Left = 88
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
  object Label2: TLabel
    Left = 88
    Top = 105
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
    Left = 88
    Top = 138
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
    Left = 88
    Top = 171
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
    Left = 88
    Top = 204
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
    Top = 255
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
  end
  object edtCategoria: TEdit
    Left = 216
    Top = 135
    Width = 400
    Height = 29
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtSubCategoria: TEdit
    Left = 216
    Top = 168
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
  object edtQuantidade: TEdit
    Left = 216
    Top = 201
    Width = 400
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object cbxCodigo: TComboBox
    Left = 216
    Top = 35
    Width = 400
    Height = 29
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = cbxCodigoChange
  end
  object cbxNome: TComboBox
    Left = 216
    Top = 68
    Width = 400
    Height = 29
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = cbxNomeChange
  end
  object cbxDescricao: TComboBox
    Left = 216
    Top = 101
    Width = 400
    Height = 29
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = cbxDescricaoChange
  end
end
