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
    Label1: TLabel;
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
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
  uConexaoFirebird, uFrmBaseCadastro, uFrmClientes;

procedure TfrmPrincipal.Label1Click(Sender: TObject);
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

procedure TfrmPrincipal.Label1MouseEnter(Sender: TObject);
begin
  if Label1.Enabled then
    Label1.Color := clSilver;
end;

procedure TfrmPrincipal.Label1MouseLeave(Sender: TObject);
begin
 Label1.Color := clWhite;
end;

end.

