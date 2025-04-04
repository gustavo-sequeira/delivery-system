unit uItemPedido;

interface

uses
  System.SysUtils;
type
  TItemPedido = class
  private
    FID_Item: Integer;
    FID_Pedido: Integer;
    FID_Produto: Integer;
    FNome: string;
    FDescricao: string;
    FCodigo: string;
    FQuantidade: Integer;
    FPrecoUnitario: Double;
    FSubtotal: Double;

    procedure SetID_Item(const Value: Integer);
    function GetID_Item: Integer;

    procedure SetID_Pedido(const Value: Integer);
    function GetID_Pedido: Integer;

    procedure SetID_Produto(const Value: Integer);
    function GetID_Produto: Integer;

    procedure SetQuantidade(const Value: Integer);
    function GetQuantidade: Integer;

    procedure SetPrecoUnitario(const Value: Double);
    function GetPrecoUnitario: Double;

    procedure SetSubtotal(const Value: Double);
    function GetSubtotal: Double;

    procedure SetNome(const Value: String);
    function GetNome: string;

    procedure SetDescricao(const Value: String);
    function GetDescricao: string;

    procedure SetCodigo(const Value: String);
    function GetCodigo: string;
  public
    property ID_Item: Integer read GetID_Item write SetID_Item;
    property ID_Pedido: Integer read GetID_Pedido write SetID_Pedido;
    property ID_Produto: Integer read GetID_Produto write SetID_Produto;
    property Codigo: string read GetCodigo write SetCodigo;
    property Nome: string read GetNome write SetNome;
    property Descricao: string read GetDescricao write SetDescricao;
    property Quantidade: Integer read GetQuantidade write SetQuantidade;
    property PrecoUnitario: Double read GetPrecoUnitario write SetPrecoUnitario;
    property Subtotal: Double read GetSubtotal write SetSubtotal;

    constructor Create;
    procedure CalcularSubtotal;
  end;

implementation

constructor TItemPedido.Create;
begin
  // Inicializa os valores
  FID_Item := 0;
  FID_Pedido := 0;
  FID_Produto := 0;
  FQuantidade := 0;
  FPrecoUnitario := 0.0;
  FSubtotal := 0.0;
end;

procedure TItemPedido.SetCodigo(const Value: String);
begin
  FCodigo := Value;
end;

procedure TItemPedido.SetDescricao(const Value: String);
begin
  FDescricao := UpperCase(Value);
end;

procedure TItemPedido.SetID_Item(const Value: Integer);
begin
  FID_Item := Value;
end;

function TItemPedido.GetCodigo: string;
begin
  Result := FCodigo;
end;

function TItemPedido.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TItemPedido.GetID_Item: Integer;
begin
  Result := FID_Item;
end;

procedure TItemPedido.SetID_Pedido(const Value: Integer);
begin
  FID_Pedido := Value;
end;

function TItemPedido.GetID_Pedido: Integer;
begin
  Result := FID_Pedido;
end;

procedure TItemPedido.SetID_Produto(const Value: Integer);
begin
  FID_Produto := Value;
end;

procedure TItemPedido.SetNome(const Value: String);
begin
  FNome := UpperCase(Value);
end;

function TItemPedido.GetID_Produto: Integer;
begin
  Result := FID_Produto
end;

function TItemPedido.GetNome: string;
begin
  Result := FNome;
end;

procedure TItemPedido.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
  CalcularSubtotal; // Recalcula o subtotal sempre que a quantidade for alterada
end;

function TItemPedido.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

procedure TItemPedido.SetPrecoUnitario(const Value: Double);
begin
  FPrecoUnitario := Value;
  CalcularSubtotal; // Recalcula o subtotal sempre que o pre�o unit�rio for alterado
end;

function TItemPedido.GetPrecoUnitario: Double;
begin
  Result := FPrecoUnitario;
end;

procedure TItemPedido.SetSubtotal(const Value: Double);
begin
  FSubtotal := Value;
end;

function TItemPedido.GetSubtotal: Double;
begin
  Result := FSubtotal;
end;

procedure TItemPedido.CalcularSubtotal;
begin
  FSubtotal := FQuantidade * FPrecoUnitario;
end;

end.
