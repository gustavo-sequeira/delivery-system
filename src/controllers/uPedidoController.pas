unit uPedidoController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uPedido, uItemPedido;

type
  TPedidoController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure InserirPedido(APedido: TPedido);
    procedure AlterarPedido(APedido: TPedido);
    procedure ExcluirPedido(AID_Pedido: Integer);
    function ListarPedido(APedido: TPedido): TFDQuery;
    function gerarNumeracaoPedido: Integer;
  end;

implementation

uses
  uConexaoFirebird;

{ TPedidoController }

procedure TPedidoController.AlterarPedido(APedido: TPedido);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_ALTERAR_PEDIDO(:P_ID, :P_STATUS, :P_DATA_ENTREGA, :P_ID_ENTREGADOR)';

    FDQuery.ParamByName('P_ID').AsInteger := APedido.IDPedido;
    FDQuery.ParamByName('P_STATUS').AsString := APedido.Status;
    FDQuery.ParamByName('P_DATA_ENTREGA').AsDate := APedido.DataEntrega;
    FDQuery.ParamByName('P_ID_ENTREGADOR').AsInteger := APedido.IDEntregador;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

constructor TPedidoController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TPedidoController.Destroy;
begin
  FConnection.Free;
  inherited;
end;

procedure TPedidoController.ExcluirPedido(AID_Pedido: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;

    FDQuery.SQL.Text := 'DELETE FROM ITENS_PEDIDO WHERE ID_PEDIDO = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Pedido;
    FDQuery.ExecSQL;

    FDQuery.SQL.Text := 'DELETE FROM PEDIDOS WHERE ID_PEDIDO = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Pedido;
    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TPedidoController.gerarNumeracaoPedido: Integer;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;

    FDQuery.Open('SELECT NEXT VALUE FOR SEQ_PEDIDO_ID FROM RDB$DATABASE');
    Result := FDQuery.FieldByName('NEXT_VALUE').AsInteger;

  finally
    FDQuery.Free;
  end;
end;

procedure TPedidoController.InserirPedido(APedido: TPedido);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_PEDIDO(:P_ID, :P_ID_CLIENTE, :P_DATA_PEDIDO, :P_TOTAL)';

    FDQuery.ParamByName('P_ID').AsInteger := APedido.IDPedido;
    FDQuery.ParamByName('P_ID_CLIENTE').AsInteger := APedido.IDCliente;
    FDQuery.ParamByName('P_DATA_PEDIDO').AsDate := APedido.DataPedido;
    FDQuery.ParamByName('P_TOTAL').AsFloat := APedido.Total;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TPedidoController.ListarPedido(APedido: TPedido): TFDQuery;
begin
  Result := nil;
end;

end.

