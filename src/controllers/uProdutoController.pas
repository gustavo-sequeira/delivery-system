unit uProdutoController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uProduto;

type
  TProdutoController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure InserirProduto(AProduto: TProduto);
    procedure AlterarProduto(AProduto: TProduto);
    procedure ExcluirProduto(AID_Produto: Integer);
    function ListarProdutos(AProduto: TProduto): TFDQuery;
  end;

implementation

uses
  uConexaoFirebird;

{ TClienteController }

constructor TProdutoController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TProdutoController.Destroy;
begin
  FConnection.Free;
  inherited;
end;

procedure TProdutoController.InserirProduto(AProduto: TProduto);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_INSERIR_PRODUTO(:P_NOME, :P_DESCRICAO, :P_PRECO, :P_ESTOQUE, :P_CATEGORIA, :P_SUBCATEGORIA, :P_CODIGO, :P_DATA_VALIDADE, :P_OBSERVACAO)';

    FDQuery.ParamByName('P_NOME').AsString := AProduto.Nome;
    FDQuery.ParamByName('P_DESCRICAO').AsString := AProduto.Descricao;
    FDQuery.ParamByName('P_PRECO').AsFloat := AProduto.Preco;
    FDQuery.ParamByName('P_ESTOQUE').AsInteger := AProduto.Estoque;
    FDQuery.ParamByName('P_CATEGORIA').AsString := AProduto.Categoria;
    FDQuery.ParamByName('P_SUBCATEGORIA').AsString := AProduto.SubCategoria;
    FDQuery.ParamByName('P_CODIGO').AsString := AProduto.Codigo;
    FDQuery.ParamByName('P_DATA_VALIDADE').AsDate := AProduto.DataValidade;
    FDQuery.ParamByName('P_OBSERVACAO').AsString := AProduto.Observacao;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

procedure TProdutoController.AlterarProduto(AProduto: TProduto);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'EXECUTE PROCEDURE SP_ALTERAR_PRODUTO(:P_ID INTEGER, :P_NOME VARCHAR(100), :P_DESCRICAO VARCHAR(255), :P_PRECO DECIMAL(10,2), :P_ESTOQUE INTEGER, :P_CATEGORIA VARCHAR(50), :P_SUBCATEGORIA VARCHAR(50), :P_CODIGO VARCHAR(10), :P_DATA_VALIDADE TIMESTAMP, :P_OBSERVACAO VARCHAR(255))';

    FDQuery.ParamByName('P_ID').AsInteger := AProduto.ID;
    FDQuery.ParamByName('P_NOME').AsString := AProduto.Nome;
    FDQuery.ParamByName('P_DESCRICAO').AsString := AProduto.Descricao;
    FDQuery.ParamByName('P_PRECO').AsFloat := AProduto.Preco;
    FDQuery.ParamByName('P_ESTOQUE').AsInteger := AProduto.Estoque;
    FDQuery.ParamByName('P_CATEGORIA').AsString := AProduto.Categoria;
    FDQuery.ParamByName('P_SUBCATEGORIA').AsString := AProduto.SubCategoria;
    FDQuery.ParamByName('P_CODIGO').AsString := AProduto.Codigo;
    FDQuery.ParamByName('P_DATA_VALIDADE').AsDate := AProduto.DataValidade;
    FDQuery.ParamByName('P_OBSERVACAO').AsString := AProduto.Observacao;

    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

procedure TProdutoController.ExcluirProduto(AID_Produto: Integer);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'DELETE FROM PRODUTOS WHERE ID_PRODUTO = :P_ID';
    FDQuery.ParamByName('P_ID').AsInteger := AID_Produto;
    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

function TProdutoController.ListarProdutos(AProduto: TProduto): TFDQuery;
var
  FDQuery: TFDQuery;
  vWhere: string;
begin

  vWhere := ' WHERE 1 =1 ';

  if Assigned(AProduto) then
  begin
    if AProduto.Nome <> '' then
      vWhere := vWhere + ' AND UPPER(NOME) LIKE ' + QuotedStr('%' + UpperCase(AProduto.Nome) + '%');

    if AProduto.Descricao <> '' then
      vWhere := vWhere + ' AND UPPER(DESCRICAO) LIKE ' + QuotedStr('%' + UpperCase(AProduto.Descricao) + '%');

    if AProduto.Preco > 0 then
      vWhere := vWhere + ' AND PRECO = ' + FloatToStr(AProduto.Preco) ;

    if AProduto.Estoque > 0 then
      vWhere := vWhere + ' AND ESTOQUE = ' + IntToStr(AProduto.Estoque);

    if AProduto.Categoria <> '' then
      vWhere := vWhere + ' AND CATEGORIA ' + QuotedStr('%' + UpperCase(AProduto.Categoria) + '%');

    if AProduto.SubCategoria <> '' then
      vWhere := vWhere + ' AND SUBCATEGORIA LIKE ' + QuotedStr('%' + UpperCase(AProduto.SubCategoria) + '%');

  //  if AProduto.DataValidade <> '' then
  //    vWhere := vWhere + ' AND DATA_VALIDADE LIKE ' + QuotedStr('%' +DateToStr(AProduto.DataValidade) + '%');

    if AProduto.Observacao <> '' then
      vWhere := vWhere + ' AND OBSERVACAO LIKE ' + QuotedStr('%' + UpperCase(AProduto.Observacao) + '%');

     if AProduto.Codigo <> '' then
      vWhere := vWhere + ' AND CODIGO LIKE ' + QuotedStr('%' + UpperCase(AProduto.Codigo) + '%');

  end;

  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
//  FDQuery.FormatOptions.StrsEncoding := setUTF8;
  FDQuery.SQL.Text := 'SELECT * FROM PRODUTOS ' + vWhere + ' ORDER BY CODIGO';
  FDQuery.Open;

  Result := FDQuery;
end;

end.

