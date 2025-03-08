unit uFrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastro, Data.DB,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPedidos = class(TfrmBaseCadastro)
    Panel4: TPanel;
    Label9: TLabel;
    edtPedido: TEdit;
    Label3: TLabel;
    edtData: TEdit;
    Label4: TLabel;
    edtCliente: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

uses
  uFrmItensPedido;

{$R *.dfm}

procedure TfrmPedidos.Label5Click(Sender: TObject);
var
  frmItensPedido: TFrmItensPedido;
begin
  frmItensPedido := TFrmItensPedido.Create(Self);
  try
    frmItensPedido.ShowModal;
    if frmItensPedido.ItemPedido.ID_Produto > 0 then
    begin

  //  frmItensPedido.ItemPedido.ID_Produto;
    end;
  finally
   frmItensPedido.Free;
  end;
end;

end.
