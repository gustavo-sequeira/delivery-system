unit uProduto;

interface

uses
  System.SysUtils;

type
  TProduto = class
  private
    FID: Integer;
    FNome: string;
    FDescricao: string;
    FPreco: Currency;
    FEstoque: Integer;
    FCategoria: string;
    FSubCategoria: string;
    FDataCadastro: TDateTime;
    FDataValidade: TDateTime;
    FCodigo: string;
    FObservacao: string;

    procedure SetID(const Value: Integer);
    function GetID: Integer;

    procedure SetNome(const Value: string);
    function GetNome: string;

    procedure SetCodigo(const Value: string);
    function GetCodigo: string;

    procedure SetDescricao(const Value: string);
    function GetDescricao: string;

    procedure SetPreco(const Value: Currency);
    function GetPreco: Currency;

    procedure SetEstoque(const Value: Integer);
    function GetEstoque: Integer;

    procedure SetCategoria(const Value: string);
    function GetCategoria: string;

    procedure SetSubCategoria(const Value: string);
    function GetSubCategoria: string;

    procedure SetDataCadastro(const Value: TDateTime);
    function GetDataCadastro: TDateTime;

    procedure SetDataValidade(const Value: TDateTime);
    function GetDataValidade: TDateTime;

    procedure SetObservacao(const Value: string);
    function GetObservacao: string;


  public
    constructor Create;
    property ID: Integer read GetID write SetID;
    property Nome: string read GetNome write SetNome;
    property Descricao: string read GetDescricao write SetDescricao;
    property Preco: Currency read GetPreco write SetPreco;
    property Estoque: Integer read GetEstoque write SetEstoque;
    property Categoria: string read GetCategoria write SetCategoria;
    property SubCategoria: string read GetSubCategoria write SetSubCategoria;
    property DataCadastro: TDateTime read GetDataCadastro write SetDataCadastro;
    property DataValidade: TDateTime read GetDataValidade write SetDataValidade;
    property Codigo: string read GetCodigo write SetCodigo;
    property Observacao: string read GetObservacao write SetObservacao;
  end;


implementation

{ TProduto }

constructor TProduto.Create;
begin
  FDataCadastro := Now;
end;

function TProduto.GetID: Integer;
begin
  Result := FID;
end;

procedure TProduto.SetID(const Value: Integer);
begin
  FID := Value;
end;

function TProduto.GetNome: string;
begin
  Result := FNome;
end;

function TProduto.GetObservacao: string;
begin
  Result := FObservacao;
end;

procedure TProduto.SetNome(const Value: string);
begin
  FNome := UpperCase(Value);
end;

procedure TProduto.SetObservacao(const Value: string);
begin
  FObservacao := UpperCase(Value);
end;

function TProduto.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TProduto.SetDescricao(const Value: string);
begin
  FDescricao := UpperCase(Value);
end;

function TProduto.GetPreco: Currency;
begin
  Result := FPreco;
end;

function TProduto.GetSubCategoria: string;
begin
  Result := FSubCategoria;
end;

procedure TProduto.SetPreco(const Value: Currency);
begin
  FPreco := Value;
end;

procedure TProduto.SetSubCategoria(const Value: string);
begin
  FSubCategoria := UpperCase(Value);
end;

function TProduto.GetEstoque: Integer;
begin
  Result := FEstoque;
end;

procedure TProduto.SetEstoque(const Value: Integer);
begin
  FEstoque := Value;
end;

function TProduto.GetCategoria: string;
begin
  Result := FCategoria;
end;

function TProduto.GetCodigo: string;
begin
  Result := FCodigo;
end;

procedure TProduto.SetCategoria(const Value: string);
begin
  FCategoria := UpperCase(Value);
end;

procedure TProduto.SetCodigo(const Value: string);
begin
  FCodigo := UpperCase(Value);
end;

function TProduto.GetDataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

function TProduto.GetDataValidade: TDateTime;
begin
  Result := FDataValidade;
end;

procedure TProduto.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TProduto.SetDataValidade(const Value: TDateTime);
begin
  FDataValidade := Value;
end;

end.

