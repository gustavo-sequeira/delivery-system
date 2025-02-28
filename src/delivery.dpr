program delivery;

uses
  Vcl.Forms,
  uFrmPrincipal in 'views\uFrmPrincipal.pas' {frmPrincipal},
  uCliente in 'models\uCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
