program delivery;

uses
  Vcl.Forms,
  uFrmPrincipal in 'views\uFrmPrincipal.pas' {frmPrincipal},
  uCliente in 'models\uCliente.pas',
  uConexaoFirebird in 'config\uConexaoFirebird.pas',
  uEntregador in 'models\uEntregador.pas',
  uItemPedido in 'models\uItemPedido.pas',
  uPedido in 'models\uPedido.pas',
  uProduto in 'models\uProduto.pas',
  uFrmBaseCadastro in 'views\pattern\uFrmBaseCadastro.pas' {frmBaseCadastro},
  uFrmClientes in 'views\uFrmClientes.pas' {frmClientes},
  uClienteController in 'controllers\uClienteController.pas',
  uFrmProdutos in 'views\uFrmProdutos.pas' {frmProdutos},
  uProdutoController in 'controllers\uProdutoController.pas',
  uFrmPedidos in 'views\uFrmPedidos.pas' {frmPedidos},
  uFrmItensPedido in 'views\uFrmItensPedido.pas' {frmItensPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
