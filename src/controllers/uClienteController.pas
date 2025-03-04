unit uClienteController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uCliente;

type
  TClienteController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure InserirCliente(ACliente: TCliente);
    procedure AlterarCliente(ACliente: TCliente);
    procedure ExcluirCliente(AID_Cliente: Integer);
    function ListarClientes(ACliente: TCliente): TFDQuery;
  end;

implementation

uses
  uConexaoFirebird;

{ TClienteController }

constructor TClienteController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TClienteController.Destroy;
begin
  inherited;
  FConnection.Free;
end;

procedure TClienteController.InserirCliente(ACliente: TCliente);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_CLIENTE(:P_NOME, :P_CPF, :P_TELEFONE, :P_EMAIL, :P_CEP, :P_LOGRADOURO, :P_LOGRADOURO_NUMERO, :P_CIDADE, :P_BAIRRO)';

    FDQuery.ParamByName('P_NOME').AsString := ACliente.Nome;
    FDQuery.ParamByName('P_CPF').AsString := ACliente.CPF;
    FDQuery.ParamByName('P_TELEFONE').AsString := ACliente.Telefone;
    FDQuery.ParamByName('P_EMAIL').AsString := ACliente.Email;
    FDQuery.ParamByName('P_CEP').AsString := ACliente.CEP;
    FDQuery.ParamByName('P_LOGRADOURO').AsString := ACliente.Logradouro;
    FDQuery.ParamByName('P_LOGRADOURO_NUMERO').AsString := ACliente.Numero;
    FDQuery.ParamByName('P_CIDADE').AsString := ACliente.Cidade;
    FDQuery.ParamByName('P_BAIRRO').AsString := ACliente.Bairro;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

procedure TClienteController.AlterarCliente(ACliente: TCliente);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_ALTERAR_CLIENTE(:P_ID, :P_NOME, :P_CPF, :P_TELEFONE, :P_EMAIL, :P_CEP, :P_LOGRADOURO, :P_LOGRADOURO_NUMERO, :P_CIDADE, :P_BAIRRO)';

    FDQuery.ParamByName('P_ID').AsInteger := ACliente.ID;
    FDQuery.ParamByName('P_NOME').AsString := ACliente.Nome;
    FDQuery.ParamByName('P_CPF').AsString := ACliente.CPF;
    FDQuery.ParamByName('P_TELEFONE').AsString := ACliente.Telefone;
    FDQuery.ParamByName('P_EMAIL').AsString := ACliente.Email;
    FDQuery.ParamByName('P_CEP').AsString := ACliente.CEP;
    FDQuery.ParamByName('P_LOGRADOURO').AsString := ACliente.Logradouro;
    FDQuery.ParamByName('P_LOGRADOURO_NUMERO').AsString := ACliente.Numero;
    FDQuery.ParamByName('P_CIDADE').AsString := ACliente.Cidade;
    FDQuery.ParamByName('P_BAIRRO').AsString := ACliente.Bairro;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

procedure TClienteController.ExcluirCliente(AID_Cliente: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'DELETE FROM CLIENTES WHERE ID_CLIENTE = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Cliente;
    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TClienteController.ListarClientes(ACliente: TCliente): TFDQuery;
var
  FDQuery: TFDQuery;
  vWhere: String;
begin

  vWhere := ' WHERE 1 =1 ';

  if Assigned(ACliente) then
  begin
      if ACliente.Nome <> '' then
        vWhere := vWhere + ' AND UPPER(NOME) LIKE ' +QuotedStr('%'+UpperCase(ACliente.Nome)+'%');

      if ACliente.CPF <> '' then
        vWhere := vWhere + ' AND CPF LIKE ' +QuotedStr('%'+UpperCase(ACliente.CPF)+'%');

      if ACliente.Telefone <> '' then
        vWhere := vWhere + ' AND TELEFONE LIKE ' +QuotedStr('%'+UpperCase(ACliente.Telefone)+'%');

      if ACliente.Email <> '' then
        vWhere := vWhere + ' AND EMAIL LIKE ' +QuotedStr('%'+UpperCase(ACliente.Email)+'%');

      if ACliente.CEP <> '' then
        vWhere := vWhere + ' AND CEP LIKE ' +QuotedStr('%'+UpperCase(ACliente.CEP)+'%');

      if ACliente.Logradouro <> '' then
        vWhere := vWhere + ' AND LOGRADOURO LIKE ' +QuotedStr('%'+UpperCase(ACliente.Logradouro)+'%');

      if ACliente.Numero <> '' then
        vWhere := vWhere + ' AND LOGRADOURO_NUMERO LIKE ' +QuotedStr('%'+UpperCase(ACliente.Numero)+'%');

      if ACliente.Cidade <> '' then
        vWhere := vWhere + ' AND CIDADE LIKE ' +QuotedStr('%'+UpperCase(ACliente.Cidade)+'%');

      if ACliente.Bairro <> '' then
        vWhere := vWhere + ' AND BAIRRO LIKE ' +QuotedStr('%'+UpperCase(ACliente.Bairro)+'%');
  end;

  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text := 'SELECT * FROM CLIENTES '+vWhere+' ORDER BY ID_CLIENTE';
  FDQuery.Open;

  Result := FDQuery;
end;

end.

