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
  uFrmBaseCadastro in 'views\pattern\uFrmBaseCadastro.pas' {frmBaseCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBaseCadastro, frmBaseCadastro);
  Application.Run;
end.
