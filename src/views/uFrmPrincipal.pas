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
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
  uConexaoFirebird, uFrmBaseCadastro;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  frm: TfrmBaseCadastro;
begin

  frm := TfrmBaseCadastro.Create(Self); // Cria o formulário filho
  frm.BorderStyle := bsNone; // Remove a borda
  frm.Parent := Panel2; // Define o Panel como o "pai" do Form
  frm.Align := alClient; // Faz o Form ocupar todo o Panel
  frm.Show;


end;

end.

