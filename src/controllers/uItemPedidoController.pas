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
    procedure ExcluirItemPedido(AID_ItemPedido: Integer);
    procedure ExcluirTodosItemPedido(AID_Pedido: Integer);
    function ListarItensPedido(APedido: TPedido): TFDQuery;

  end;

implementation

uses
  uConexaoFirebird;

{ TItemPedidoController }


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

procedure TItemPedidoController.ExcluirItemPedido(AID_ItemPedido: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;

    FDQuery.SQL.Text := 'DELETE FROM ITENS_PEDIDO WHERE ID_ITEM = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_ItemPedido;
    FDQuery.ExecSQL;

  finally
    FDQuery.Free;
  end;
end;

procedure TItemPedidoController.ExcluirTodosItemPedido(AID_Pedido: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;

    FDQuery.SQL.Text := 'DELETE FROM ITENS_PEDIDO WHERE ID_PEDIDO = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Pedido;
    FDQuery.ExecSQL;

  finally
    FDQuery.Free;
  end;
end;

procedure TItemPedidoController.InserirItemPedido(AItemPedido: TItemPedido);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_ITEM_PEDIDO(:P_ID, :P_ID_PRODUTO, :P_QUANTIDADE, :P_PRECO)';

    FDQuery.ParamByName('P_ID').AsInteger := AItemPedido.ID_Pedido;
    FDQuery.ParamByName('P_ID_PRODUTO').AsInteger := AItemPedido.ID_Produto;
    FDQuery.ParamByName('P_QUANTIDADE').AsInteger := AItemPedido.Quantidade;
    FDQuery.ParamByName('P_PRECO').AsFloat := AItemPedido.PrecoUnitario;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TItemPedidoController.ListarItensPedido(APedido: TPedido): TFDQuery;
var
  FDQuery: TFDQuery;
  vWhere: String;
begin

  vWhere := ' WHERE 1 =1 ';

  if Assigned(APedido) then
  begin
      if APedido.IDPedido > 0 then
        vWhere := vWhere + ' AND IP.ID_PEDIDO = ' +IntToStr(APedido.IDPedido);

  end;

  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text := ' SELECT IP.ID_PEDIDO, IP.QUANTIDADE,  IP.ID_PRODUTO, P.CODIGO, P.NOME, P.DESCRICAO, P.CATEGORIA, P.SUBCATEGORIA ' +
	 ' ,IP.PRECO_UNITARIO AS PRECO FROM ITENS_PEDIDO ip ' +
	 ' JOIN PRODUTOS P ON IP.ID_PRODUTO = P.ID_PRODUTO '+vWhere+' ORDER BY ID_PEDIDO, P.CODIGO' ;
  FDQuery.Open;

  Result := FDQuery;
end;

end.

