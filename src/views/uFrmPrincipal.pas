unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lblMenuClientes: TLabel;
    lblMenuProdutos: TLabel;
    procedure lblMenuClientesMouseEnter(Sender: TObject);
    procedure lblMenuClientesMouseLeave(Sender: TObject);
    procedure lblMenuClientesClick(Sender: TObject);
    procedure lblMenuProdutosClick(Sender: TObject);
    procedure lblMenuProdutosMouseEnter(Sender: TObject);
    procedure lblMenuProdutosMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  uConexaoFirebird, uFrmBaseCadastro, uFrmClientes,
  uFrmProdutos;

procedure TfrmPrincipal.lblMenuClientesClick(Sender: TObject);
var
  frmClientes: TFrmClientes;
begin
  frmClientes := TFrmClientes.Create(Self);
  try
    frmClientes.Parent := Panel2;
    frmClientes.Show;
  finally
   // frmClientes.Free;
  end;
end;

procedure TfrmPrincipal.lblMenuClientesMouseEnter(Sender: TObject);
begin
  if lblMenuClientes.Enabled then
    lblMenuClientes.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuClientesMouseLeave(Sender: TObject);
begin
 lblMenuClientes.Color := clWhite;
end;

procedure TfrmPrincipal.lblMenuProdutosClick(Sender: TObject);
var
  frmProdutos: TFrmProdutos;
begin
  frmProdutos := TFrmProdutos.Create(Self);
  try
    frmProdutos.Parent := Panel2;
    frmProdutos.Show;
  finally
   // frmProdutos.Free;
  end;
end;

procedure TfrmPrincipal.lblMenuProdutosMouseEnter(Sender: TObject);
begin
  if lblMenuProdutos.Enabled then
    lblMenuProdutos.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuProdutosMouseLeave(Sender: TObject);
begin
  lblMenuProdutos.Color := clWhite;
end;

end.

