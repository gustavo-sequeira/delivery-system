unit uPedido;

interface

uses
  System.SysUtils;

type
  TPedido = class
  private
    FIDPedido: Integer;
    FIDCliente: Integer;
    FDataPedido: TDateTime;
    FTotal: Currency;
    FStatus: string;
    FFormaPagamento: string;
    FIDEntregador: Integer;
    FDataEntrega: TDateTime;

    procedure SetIDPedido(const Value: Integer);
    function GetIDPedido: Integer;

    procedure SetIDCliente(const Value: Integer);
    function GetIDCliente: Integer;

    procedure SetDataPedido(const Value: TDateTime);
    function GetDataPedido: TDateTime;

    procedure SetTotal(const Value: Currency);
    function GetTotal: Currency;

    procedure SetStatus(const Value: string);
    function GetStatus: string;

    procedure SetFormaPagamento(const Value: string);
    function GetFormaPagamento: string;

    procedure SetIDEntregador(const Value: Integer);
    function GetIDEntregador: Integer;

    procedure SetDataEntrega(const Value: TDateTime);
    function GetDataEntrega: TDateTime;

  public
    constructor Create;
    property IDPedido: Integer read GetIDPedido write SetIDPedido;
    property IDCliente: Integer read GetIDCliente write SetIDCliente;
    property DataPedido: TDateTime read GetDataPedido write SetDataPedido;
    property Total: Currency read GetTotal write SetTotal;
    property Status: string read GetStatus write SetStatus;
    property FormaPagamento: string read GetFormaPagamento write SetFormaPagamento;
    property IDEntregador: Integer read GetIDEntregador write SetIDEntregador;
    property DataEntrega: TDateTime read GetDataEntrega write SetDataEntrega;
  end;

implementation

constructor TPedido.Create;
begin
 // FDataPedido := Now;
  FStatus := 'PENDENTE';
end;

procedure TPedido.SetIDPedido(const Value: Integer);
begin
  FIDPedido := Value;
end;

function TPedido.GetIDPedido: Integer;
begin
  Result := FIDPedido;
end;

procedure TPedido.SetIDCliente(const Value: Integer);
begin
  FIDCliente := Value;
end;

function TPedido.GetIDCliente: Integer;
begin
  Result := FIDCliente;
end;

procedure TPedido.SetDataPedido(const Value: TDateTime);
begin
  FDataPedido := Value;
end;

function TPedido.GetDataPedido: TDateTime;
begin
  Result := FDataPedido;
end;

procedure TPedido.SetTotal(const Value: Currency);
begin
  FTotal := Value;
end;

function TPedido.GetTotal: Currency;
begin
  Result := FTotal;
end;

procedure TPedido.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TPedido.GetStatus: string;
begin
  Result := FStatus;
end;

procedure TPedido.SetFormaPagamento(const Value: string);
begin
  FFormaPagamento := Value;
end;

function TPedido.GetFormaPagamento: string;
begin
  Result := FFormaPagamento;
end;

procedure TPedido.SetIDEntregador(const Value: Integer);
begin
  FIDEntregador := Value;
end;

function TPedido.GetIDEntregador: Integer;
begin
  Result := FIDEntregador;
end;

procedure TPedido.SetDataEntrega(const Value: TDateTime);
begin
  FDataEntrega := Value;
end;

function TPedido.GetDataEntrega: TDateTime;
begin
  Result := FDataEntrega;
end;

end.

