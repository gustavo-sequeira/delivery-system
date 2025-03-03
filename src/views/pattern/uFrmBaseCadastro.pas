unit uFrmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmBaseCadastro = class(TForm)
    pnlMenu: TPanel;
    pnlCentral: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    pnlManutencao: TPanel;
    pnlPesquisa: TPanel;
    pnlPesquisaFiltro: TPanel;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormResize(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCadastro: TfrmBaseCadastro;

implementation

{$R *.dfm}

procedure TfrmBaseCadastro.FormResize(Sender: TObject);
begin
  pnlMenu.Align := alLeft;
  pnlMenu.Width := Round(Self.ClientWidth * 0.2);


  pnlCentral.Width := Round(Self.ClientWidth * 0.6);
  pnlCentral.Left := ((Self.Width + pnlMenu.Width) div 2) - (pnlCentral.Width div 2);
end;

procedure TfrmBaseCadastro.Label1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmBaseCadastro.Label3Click(Sender: TObject);
begin
  pnlPesquisa.Visible := true;
  pnlManutencao.Visible := false;
end;

procedure TfrmBaseCadastro.Label6Click(Sender: TObject);
begin
  pnlManutencao.Visible := true;
  pnlPesquisa.Visible := false;
end;

end.
