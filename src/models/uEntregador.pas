unit uEntregador;

interface

uses
  System.SysUtils;

type
  TEntregador = class
  private
    FID_Entregador: Integer;
    FNome: string;
    FTelefone: string;
    FVeiculo: string;
    FPlaca: string;
    FDataCadastro: TDateTime;
    procedure SetID_Entregador(const Value: Integer);
    function GetID_Entregador: Integer;

    procedure SetNome(const Value: string);
    function GetNome:string;

    procedure SetTelefone(const Value: string);
    function GetTelefone: string;

    procedure SetVeiculo(const Value: string);
    function GetVeiculo: string;

    procedure SetPlaca(const Value: string);
    function GetPlaca: string;

    procedure SetDataCadastro(const Value: TDateTime);
    function GetDataCadastro: TDateTime;
  public
    property ID_Entregador: Integer read GetID_Entregador write SetID_Entregador;
    property Nome: string read GetNome write SetNome;
    property Telefone: string read GetTelefone write SetTelefone;
    property Veiculo: string read GetVeiculo write SetVeiculo;
    property Placa: string read GetPlaca write SetPlaca;
    property DataCadastro: TDateTime read GetDataCadastro write SetDataCadastro;

    constructor Create; // Construtor para inicializar o objeto
  end;

implementation

{ TEntregador }

constructor TEntregador.Create;
begin
  inherited Create;
  FDataCadastro := Now; // Inicializa a data de cadastro com o valor atual
end;

procedure TEntregador.SetID_Entregador(const Value: Integer);
begin
  FID_Entregador := Value;
end;

procedure TEntregador.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TEntregador.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

procedure TEntregador.SetVeiculo(const Value: string);
begin
  FVeiculo := Value;
end;

procedure TEntregador.SetPlaca(const Value: string);
begin
  FPlaca := Value;
end;

function TEntregador.GetDataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

function TEntregador.GetID_Entregador: Integer;
begin
  Result := FID_Entregador;
end;

function TEntregador.GetNome: string;
begin
  Result := FNome;
end;

function TEntregador.GetPlaca: string;
begin
  Result := FPlaca;
end;

function TEntregador.GetTelefone: string;
begin
  Result := FTelefone;
end;

function TEntregador.GetVeiculo: string;
begin
  Result := FVeiculo;
end;

procedure TEntregador.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

end.

