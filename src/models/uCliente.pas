unit uCliente;

interface

type
  TCliente = class
  private
    FID: Integer;
    FNome: string;
    FCPF: string;
    FTelefone: string;
    FEmail: string;
    FDataCadastro: TDateTime;
    FCEP: string;
    FLogradouro: string;
    FNumero: string;
    FCidade: string;
    FBairro: string;

    procedure SetID(const Value: Integer);
    function GetID: Integer;

    procedure SetNome(const Value: string);
    function GetNome: string;

    procedure SetCPF(const Value: string);
    function GetCPF: string;

    procedure SetTelefone(const Value: string);
    function GetTelefone: string;


    procedure SetEmail(const Value: string);
    function GetEmail: string;

    procedure SetDataCadastro(const Value: TDateTime);
    function GetDataCadastro: TDateTime;

    procedure SetCEP(const Value: String);
    function GetCEP: String;
    function GetBairro: string;
    function GetCidade: string;
    function GetLogradouro: string;
    function GetNumero: string;
    procedure SetBairro(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetNumero(const Value: string);

  public
    constructor create;
    property ID: Integer read GetID write SetID;
    property Nome: string read GetNome write SetNome;
    property CPF: string read GetCPF write SetCPF;
    property Telefone: string read GetTelefone write SetTelefone;
    property Email: string read GetEmail write SetEmail;
    property DataCadastro: TDateTime read GetDataCadastro write SetDataCadastro;
    property CEP: string read GetCEP write SetCEP;
    property Logradouro: string read GetLogradouro write SetLogradouro;
    property Numero: string read GetNumero write SetNumero;
    property Cidade: string read GetCidade write SetCidade;
    property Bairro: string read GetBairro write SetBairro;

  end;

implementation

uses
  System.SysUtils;

{ TCliente }

function TCliente.GetID: Integer;
begin
  Result := FID;
end;

function TCliente.GetLogradouro: string;
begin
  Result := FLogradouro;
end;

procedure TCliente.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TCliente.SetLogradouro(const Value: string);
begin
  FLogradouro := UpperCase(Value);
end;

function TCliente.GetNome: string;
begin
  Result := FNome;
end;

function TCliente.GetNumero: string;
begin
  Result := FNumero;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := UpperCase(Value);
end;

procedure TCliente.SetNumero(const Value: string);
begin
  FNumero := UpperCase(Value);
end;

constructor TCliente.create;
begin
  inherited Create;
  FDataCadastro := Now;
end;

function TCliente.GetBairro: string;
begin
  Result := FBairro;
end;

function TCliente.GetCEP: String;
begin
  Result := FCEP;
end;

function TCliente.GetCidade: string;
begin
  Result := FCidade;
end;

function TCliente.GetCPF: string;
begin
  Result := FCPF;
end;

function TCliente.GetDataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

procedure TCliente.SetBairro(const Value: string);
begin
  FBairro := UpperCase(Value);
end;

procedure TCliente.SetCEP(const Value: String);
begin
  FCEP := UpperCase(Value);
end;

procedure TCliente.SetCidade(const Value: string);
begin
  FCidade := UpperCase(Value);
end;

procedure TCliente.SetCPF(const Value: string);
begin
  FCPF := UpperCase(Value);
end;

procedure TCliente.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

function TCliente.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TCliente.SetTelefone(const Value: string);
begin
  FTelefone := UpperCase(Value);
end;

function TCliente.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TCliente.SetEmail(const Value: string);
begin
  FEmail := UpperCase(Value);
end;

end.

