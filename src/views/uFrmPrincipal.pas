unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lblMenuClientes: TLabel;
    lblMenuProdutos: TLabel;
    lblMenuPedidos: TLabel;
    lblMenuSairSistema: TLabel;
    lblMenuEntregas: TLabel;
    lblMenuEntregadores: TLabel;
    procedure lblMenuClientesMouseEnter(Sender: TObject);
    procedure lblMenuClientesMouseLeave(Sender: TObject);
    procedure lblMenuClientesClick(Sender: TObject);
    procedure lblMenuProdutosClick(Sender: TObject);
    procedure lblMenuProdutosMouseEnter(Sender: TObject);
    procedure lblMenuProdutosMouseLeave(Sender: TObject);
    procedure lblMenuPedidosMouseLeave(Sender: TObject);
    procedure lblMenuPedidosMouseEnter(Sender: TObject);
    procedure lblMenuSairSistemaClick(Sender: TObject);
    procedure lblMenuSairSistemaMouseEnter(Sender: TObject);
    procedure lblMenuSairSistemaMouseLeave(Sender: TObject);
    procedure lblMenuEntregasMouseLeave(Sender: TObject);
    procedure lblMenuEntregasMouseEnter(Sender: TObject);
    procedure lblMenuPedidosClick(Sender: TObject);
    procedure lblMenuEntregasClick(Sender: TObject);
    procedure lblMenuEntregadoresClick(Sender: TObject);
    procedure lblMenuEntregadoresMouseEnter(Sender: TObject);
    procedure lblMenuEntregadoresMouseLeave(Sender: TObject);
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
  uConexaoFirebird, uFrmBaseCadastro, uFrmClientes, uFrmProdutos, uFrmPedidos, uFrmEntregas,
  uFrmEntregadores;

procedure TfrmPrincipal.lblMenuEntregasClick(Sender: TObject);
var
  frmEntregas: TfrmEntregas;
begin
  frmEntregas := TfrmEntregas.Create(Self);
  try
    frmEntregas.Parent := Panel2;
    frmEntregas.Show;
  finally
   // frmEntregas.Free;
  end;
end;

procedure TfrmPrincipal.lblMenuEntregasMouseEnter(Sender: TObject);
begin
  if lblMenuEntregas.Enabled then
    lblMenuEntregas.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuEntregasMouseLeave(Sender: TObject);
begin
  lblMenuEntregas.Color := clWhite;
end;

procedure TfrmPrincipal.lblMenuEntregadoresClick(Sender: TObject);
var
  frmEntregadores: TFrmEntregadores;
begin
  frmEntregadores := TFrmEntregadores.Create(Self);
  try
    frmEntregadores.Parent := Panel2;
    frmEntregadores.Show;
  finally
   // frmClientes.Free;
  end;
end;
procedure TfrmPrincipal.lblMenuEntregadoresMouseEnter(Sender: TObject);
begin
  if lblMenuEntregadores.Enabled then
    lblMenuEntregadores.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuEntregadoresMouseLeave(Sender: TObject);
begin
  lblMenuEntregadores.Color := clWhite;
end;


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

procedure TfrmPrincipal.lblMenuPedidosClick(Sender: TObject);
var
  frmPedidos: TFrmPedidos;
begin
  frmPedidos := TFrmPedidos.Create(Self);
  try
    frmPedidos.Parent := Panel2;
    frmPedidos.Show;
  finally
   // frmProdutos.Free;
  end;
end;

procedure TfrmPrincipal.lblMenuPedidosMouseEnter(Sender: TObject);
begin
  if lblMenuPedidos.Enabled then
    lblMenuPedidos.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuPedidosMouseLeave(Sender: TObject);
begin
  lblMenuPedidos.Color := clWhite;
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

procedure TfrmPrincipal.lblMenuSairSistemaClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrincipal.lblMenuSairSistemaMouseEnter(Sender: TObject);
begin
  if lblMenuSairSistema.Enabled then
    lblMenuSairSistema.Color := clSilver;
end;

procedure TfrmPrincipal.lblMenuSairSistemaMouseLeave(Sender: TObject);
begin
  lblMenuSairSistema.Color := clWhite;
end;

end.

