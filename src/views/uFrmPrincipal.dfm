object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmPrincipal'
  ClientHeight = 700
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 193
    Align = alTop
    Caption = 'pnlMenuSuperior'
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 704
      Top = 1
      Width = 306
      Height = 191
      Align = alRight
      Caption = 'pnlLogin'
      TabOrder = 0
      ExplicitHeight = 71
    end
    object Button1: TButton
      Left = 312
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 1011
    Height = 507
    Align = alClient
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 73
    ExplicitHeight = 627
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 24
      Align = alTop
      Caption = 'p'
      Color = clFuchsia
      ParentBackground = False
      TabOrder = 0
    end
  end
end
