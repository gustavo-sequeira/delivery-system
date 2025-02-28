unit uCliente;

interface

uses
  System.SysUtils;

type
  TCliente = class
  private
    FID: Integer;
    FNome: string;
    FCPF: string;
    FTelefone: string;
    FEndereco: string;
    FEmail: string;
    FDataCadastro: TDateTime;

    procedure SetID(const Value: Integer);
    function GetID: Integer;

    procedure SetNome(const Value: string);
    function GetNome: string;

    procedure SetCPF(const Value: string);
    function GetCPF: string;

    procedure SetTelefone(const Value: string);
    function GetTelefone: string;

    procedure SetEndereco(const Value: string);
    function GetEndereco: string;

    procedure SetEmail(const Value: string);
    function GetEmail: string;

    procedure SetDataCadastro(const Value: TDateTime);
    function GetDataCadastro: TDateTime;

  public
    property ID: Integer read GetID write SetID;
    property Nome: string read GetNome write SetNome;
    property CPF: string read GetCPF write SetCPF;
    property Telefone: string read GetTelefone write SetTelefone;
    property Endereco: string read GetEndereco write SetEndereco;
    property Email: string read GetEmail write SetEmail;
    property DataCadastro: TDateTime read GetDataCadastro write SetDataCadastro;
  end;

implementation

{ TCliente }

function TCliente.GetID: Integer;
begin
  Result := FID;
end;

procedure TCliente.SetID(const Value: Integer);
begin
  FID := Value;
end;

function TCliente.GetNome: string;
begin
  Result := FNome;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TCliente.GetCPF: string;
begin
  Result := FCPF;
end;

procedure TCliente.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

function TCliente.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TCliente.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

function TCliente.GetEndereco: string;
begin
  Result := FEndereco;
end;

procedure TCliente.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

function TCliente.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TCliente.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

function TCliente.GetDataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

procedure TCliente.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

end.

