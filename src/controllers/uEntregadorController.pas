unit uEntregadorController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uEntregador;

type
  TEntregadorController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure InserirEntregador(AEntregador: TEntregador);
    procedure AlterarEntregador(AEntregador: TEntregador);
    procedure ExcluirEntregador(AID_Entregador: Integer);
    function ListarEntregador(AEntregador: TEntregador): TFDQuery;
    function ListarEntregadorDisponivel: TFDQuery;
  end;

implementation

uses
  uConexaoFirebird;

{ TEntregadorController }

procedure TEntregadorController.AlterarEntregador(AEntregador: TEntregador);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_ALTERAR_ENTREGADOR(:P_ID, :P_NOME, :P_TELEFONE, :P_VEICULO, :P_PLACA)';

    FDQuery.ParamByName('P_ID').AsInteger := AEntregador.ID_Entregador;
    FDQuery.ParamByName('P_NOME').AsString := AEntregador.Nome;
    FDQuery.ParamByName('P_TELEFONE').AssTRING := AEntregador.Telefone;
    FDQuery.ParamByName('P_VEICULO').AsString := AEntregador.Veiculo;
    FDQuery.ParamByName('P_PLACA').AsString := AEntregador.Placa;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

constructor TEntregadorController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TEntregadorController.Destroy;
begin
  FConnection.Free;
  inherited;
end;

procedure TEntregadorController.ExcluirEntregador(AID_Entregador: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;

    FDQuery.SQL.Text := 'DELETE FROM ENTREGADORES WHERE ID_ENTREGADOR = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Entregador;
    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

procedure TEntregadorController.InserirEntregador(AEntregador: TEntregador);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_ENTREGADOR(:P_NOME, :P_TELEFONE, :P_VEICULO, :P_PLACA)';

    FDQuery.ParamByName('P_NOME').AsString := AEntregador.Nome;
    FDQuery.ParamByName('P_TELEFONE').AssTRING := AEntregador.Telefone;
    FDQuery.ParamByName('P_VEICULO').AsString := AEntregador.Veiculo;
    FDQuery.ParamByName('P_PLACA').AsString := AEntregador.Placa;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TEntregadorController.ListarEntregador(
  AEntregador: TEntregador): TFDQuery;
var
  FDQuery: TFDQuery;
  vWhere: string;
begin

  vWhere := ' WHERE 1 =1 ';

  if Assigned(AEntregador) then
  begin
    if AEntregador.ID_Entregador > 0 then
      vWhere := vWhere + ' AND E.ID_ENTREGADOR = ' + IntToStr(AEntregador.ID_Entregador);

    if AEntregador.Nome <> '' then
      vWhere := vWhere + ' AND E.NOME LIKE ' + QuotedStr('%'+AEntregador.Nome+'%');

    if AEntregador.Telefone <> '' then
      vWhere := vWhere + ' AND E.TELEFONE LIKE ' + QuotedStr('%'+AEntregador.Telefone+'%');

    if AEntregador.Veiculo <> '' then
      vWhere := vWhere + ' AND E.VEICULO LIKE ' + QuotedStr('%'+AEntregador.Veiculo+'%');

    if AEntregador.Placa <> '' then
      vWhere := vWhere + ' AND E.PLACA LIKE ' + QuotedStr('%'+AEntregador.Placa+'%');

  end;

  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text := 'SELECT E.* FROM ENTREGADORES E ' + vWhere + ' ORDER BY E.NOME';
  FDQuery.Open;

  Result := FDQuery;
end;

function TEntregadorController.ListarEntregadorDisponivel: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text :=
      '   SELECT E.NOME AS NOME                                   ' +
      '     FROM ENTREGADORES e                                   ' +
      'WHERE NOT EXISTS (  SELECT 1                               ' +
      '                    FROM PEDIDOS p                         ' +
      '                   WHERE P.ID_ENTREGADOR = E.ID_ENTREGADOR ' +
      '                     AND p.STATUS = ''EM ROTA'')           ' +
      ' ORDER BY NOME                                             ' ;
  FDQuery.Open;

  Result := FDQuery;
end;

end.
