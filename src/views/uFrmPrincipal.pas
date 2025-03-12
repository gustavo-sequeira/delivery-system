unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  uFrmClientes, uFrmProdutos, uFrmPedidos, uFrmEntregas, uFrmEntregadores;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    lblMenuClientes: TLabel;
    lblMenuProdutos: TLabel;
    lblMenuPedidos: TLabel;
    lblMenuSairSistema: TLabel;
    lblMenuEntregas: TLabel;
    lblMenuEntregadores: TLabel;
    Image1: TImage;
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
    frmClientes: TFrmClientes;
    frmProdutos: TFrmProdutos;
    frmEntregadores: TFrmEntregadores;
    frmPedidos: TFrmPedidos;
    frmEntregas: TfrmEntregas;

    function IsFormCreated(AFormClass: TFormClass): Boolean;

    { Private declarations }
  public
    destructor Destroy; override;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  uConexaoFirebird, uFrmBaseCadastro;

procedure TfrmPrincipal.lblMenuEntregasClick(Sender: TObject);
begin
  if not (IsFormCreated(TfrmEntregas)) then
    frmEntregas := TfrmEntregas.Create(Self);
  frmEntregas.Parent := Panel2;
  frmEntregas.Show;
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
begin
  if not (IsFormCreated(TFrmEntregadores)) then
    frmEntregadores := TFrmEntregadores.Create(Self);
  frmEntregadores.Parent := Panel2;
  frmEntregadores.Show;
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
begin
  if not (IsFormCreated(TfrmClientes)) then
    frmClientes := TFrmClientes.Create(Self);
  frmClientes.Parent := Panel2;
  frmClientes.Show;
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
begin
  if not (IsFormCreated(TFrmPedidos)) then
    frmPedidos := TFrmPedidos.Create(Self);
  frmPedidos.Parent := Panel2;
  frmPedidos.Show;
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
begin
  if not (IsFormCreated(TFrmProdutos)) then
    frmProdutos := TFrmProdutos.Create(Self);
  frmProdutos.Parent := Panel2;
  frmProdutos.Show;
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

destructor TfrmPrincipal.Destroy;
begin
  if IsFormCreated(TFrmClientes) then
    frmClientes.Free;
  if IsFormCreated(TFrmProdutos) then
    frmProdutos.Free;
  if IsFormCreated(TFrmEntregadores) then
    frmEntregadores.Free;
  if IsFormCreated(TFrmPedidos) then
    frmPedidos.Free;
  if IsFormCreated(TfrmEntregas) then
    frmEntregas.Free;

  inherited;
end;

function TfrmPrincipal.IsFormCreated(AFormClass: TFormClass): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I] is AFormClass then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

end.

