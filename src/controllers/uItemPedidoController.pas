unit uItemPedidoController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uPedido, uItemPedido;

type
  TItemPedidoController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure InserirItemPedido(AItemPedido: TItemPedido);
    procedure AlterarItemPedido(AItemPedido: TItemPedido);
    procedure ExcluirItemPedido(AID_Pedido: Integer);
    function ListarItemPedido(AItemPedido: TItemPedido): TFDQuery;

  end;

implementation

uses
  uConexaoFirebird;

{ TPedidoController }


{ TItemPedidoController }

procedure TItemPedidoController.AlterarItemPedido(AItemPedido: TItemPedido);
begin
end;

constructor TItemPedidoController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TItemPedidoController.Destroy;
begin
  FConnection.Free;
  inherited;
end;

procedure TItemPedidoController.ExcluirItemPedido(AID_Pedido: Integer);
begin

end;

procedure TItemPedidoController.InserirItemPedido(AItemPedido: TItemPedido);
begin

end;

function TItemPedidoController.ListarItemPedido(
  AItemPedido: TItemPedido): TFDQuery;
begin
  Result := nil;
end;

end.

