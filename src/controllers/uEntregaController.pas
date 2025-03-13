unit uEntregaController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Data.DB, FireDAC.DApt, FireDAC.Stan.Async, uPedido, uItemPedido, uEntregador,
  System.Generics.Collections;

type
  TEntregaController = class
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    function ListarPedidos: TFDQuery;
    function ListarPedidosEmRota: TFDQuery;
    function ListarEnderecos(AID_Entregador: Integer): TFDQuery;

  end;

implementation

uses
  uConexaoFirebird, uPedidoController;

{ TEntregaController }


constructor TEntregaController.Create;
var
  vConexao: TConexaoFirebird;
begin
  vConexao := TConexaoFirebird.Create;
  FConnection := vConexao.GetConnection;
end;

destructor TEntregaController.Destroy;
begin
  FConnection.Free;
  inherited;
end;

function TEntregaController.ListarEnderecos(AID_Entregador: Integer): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text :=
        ' WITH VPROD AS                                                                    ' +
        '   (SELECT MIN(LEVEL) LEVEL,                                                      ' +
        '                      ID_PEDIDO                                                   ' +
        '    FROM                                                                          ' +
        '      (SELECT P.*,                                                                ' +
        '              1 AS LEVEL                                                          ' +
        '       FROM PRODUTOS P                                                            ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                                       ' +
        '         AND P.SUBCATEGORIA = ''SENSIVEIS''                                       ' +
        '       UNION ALL SELECT P.*,                                                      ' +
        '                        2 AS LEVEL                                                ' +
        '       FROM PRODUTOS P                                                            ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                                       ' +
        '         AND P.SUBCATEGORIA = ''CONTROLADOS''                                     ' +
        '       UNION ALL SELECT P.*,                                                      ' +
        '                        3 AS LEVEL                                                ' +
        '       FROM PRODUTOS P                                                            ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                                       ' +
        '         AND P.SUBCATEGORIA = ''PERECIVEIS''                                      ' +
        '       UNION ALL SELECT P.*,                                                      ' +
        '                        4 AS LEVEL                                                ' +
        '       FROM PRODUTOS P                                                            ' +
        '       WHERE P.SUBCATEGORIA NOT IN (''SENSIVEIS'',                                ' +
        '                                    ''CONTROLADOS'',                              ' +
        '                                    ''PERECIVEIS'')) PROD                         ' +
        '    JOIN ITENS_PEDIDO IP ON IP.ID_PRODUTO = PROD.ID_PRODUTO                       ' +
        '    GROUP BY ID_PEDIDO)                                                           ' +
        ' SELECT LEVEL,                                                                    ' +
        '        P.ID_PEDIDO,                                                              ' +
        '        P.STATUS,                                                                 ' +
        '        P.DATA_ENTREGA,                                                           ' +
        '        C.NOME,                                                                   ' +
        '        C.LOGRADOURO || '', ''||C.LOGRADOURO_NUMERO || '' ''||C.BAIRRO || '' ''|| ' +
        '        C.CIDADE ||'' - ''||C.CEP AS ENDERECO                                     ' +
        ' FROM VPROD                                                                       ' +
        ' JOIN PEDIDOS P ON VPROD.ID_PEDIDO = P.ID_PEDIDO                                  ' +
        ' JOIN CLIENTES C ON P.ID_CLIENTE = C.ID_CLIENTE                                   ' +
        ' WHERE P.ID_ENTREGADOR = :ID_Entregador                                            ' +
        '   AND P.DATA_ENTREGA IS NULL                                                     ' +
        '   AND P.STATUS = ''EM ROTA''                                                     ' +
        ' ORDER BY LEVEL,                                                                  ' +
        ' 		 C.CEP                                                                       ' ;

  FDQuery.ParamByName('ID_Entregador').AsInteger := AID_Entregador;
  FDQuery.Open;
  Result := FDQuery;
end;

function TEntregaController.ListarPedidos: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text :=
        '	WITH VPROD AS                                                  ' +
        '	  (SELECT MIN(LEVEL) LEVEL,                                    ' +
        '	                     ID_PEDIDO                                 ' +
        '	   FROM                                                        ' +
        '	     (SELECT P.*,                                              ' +
        '	             1 AS LEVEL                                        ' +
        '	      FROM PRODUTOS P                                          ' +
        '	      WHERE P.CATEGORIA = ''MEDICAMENTOS''                     ' +
        '	        AND P.SUBCATEGORIA = ''SENSIVEIS''                     ' +
        '	      UNION ALL SELECT P.*,                                    ' +
        '	                       2 AS LEVEL                              ' +
        '	      FROM PRODUTOS P                                          ' +
        '	      WHERE P.CATEGORIA = ''MEDICAMENTOS''                     ' +
        '	        AND P.SUBCATEGORIA = ''CONTROLADOS''                   ' +
        '	      UNION ALL SELECT P.*,                                    ' +
        '	                       3 AS LEVEL                              ' +
        '	      FROM PRODUTOS P                                          ' +
        '	      WHERE P.SUBCATEGORIA = ''PERECIVEIS''                    ' +
        '	      UNION ALL SELECT P.*,                                    ' +
        '	                       4 AS LEVEL                              ' +
        '	      FROM PRODUTOS P                                          ' +
        '	      WHERE P.SUBCATEGORIA NOT IN (''SENSIVEIS'',              ' +
        '	                                   ''CONTROLADOS'',            ' +
        '	                                   ''PERECIVEIS'')) PROD       ' +
        '	   JOIN ITENS_PEDIDO IP ON IP.ID_PRODUTO = PROD.ID_PRODUTO     ' +
        '	   GROUP BY ID_PEDIDO)                                         ' +
        '	SELECT LEVEL,                                                  ' +
        '	       P.ID_PEDIDO,                                            ' +
        '	       P.STATUS,                                               ' +
        '	       P.DATA_ENTREGA,                                         ' +
        '	       C.NOME,                                                 ' +
        '	       C.LOGRADOURO || '', ''||C.LOGRADOURO_NUMERO || '' ''||  ' +
        '		     C.BAIRRO || '' ''||C.CIDADE ||'' - ''||C.CEP AS ENDERECO' +
        '	FROM VPROD                                                     ' +
        '	JOIN PEDIDOS P ON VPROD.ID_PEDIDO = P.ID_PEDIDO                ' +
        '	JOIN CLIENTES C ON P.ID_CLIENTE = C.ID_CLIENTE                 ' +
        'WHERE P.STATUS = ''PENDENTE''                                   ' +
        '	ORDER BY LEVEL,                                                ' +
        '	         DATA_ENTREGA,                                         ' +
        '	         P.ID_PEDIDO                                           ' ;

  FDQuery.Open;

  Result := FDQuery;
end;

function TEntregaController.ListarPedidosEmRota: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConnection;
  FDQuery.SQL.Text :=
        ' WITH VPROD AS                                                   ' +
        '   (SELECT MIN(LEVEL) LEVEL,                                     ' +
        '                      ID_PEDIDO                                  ' +
        '    FROM                                                         ' +
        '      (SELECT P.*,                                               ' +
        '              1 AS LEVEL                                         ' +
        '       FROM PRODUTOS P                                           ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                      ' +
        '         AND P.SUBCATEGORIA = ''SENSIVEIS''                      ' +
        '       UNION ALL SELECT P.*,                                     ' +
        '                        2 AS LEVEL                               ' +
        '       FROM PRODUTOS P                                           ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                      ' +
        '         AND P.SUBCATEGORIA = ''CONTROLADOS''                    ' +
        '       UNION ALL SELECT P.*,                                     ' +
        '                        3 AS LEVEL                               ' +
        '       FROM PRODUTOS P                                           ' +
        '       WHERE P.CATEGORIA = ''MEDICAMENTOS''                      ' +
        '         AND P.SUBCATEGORIA = ''PERECIVEIS''                     ' +
        '       UNION ALL SELECT P.*,                                     ' +
        '                        4 AS LEVEL                               ' +
        '       FROM PRODUTOS P                                           ' +
        '       WHERE P.SUBCATEGORIA NOT IN (''SENSIVEIS'',               ' +
        '                                    ''CONTROLADOS'',             ' +
        '                                    ''PERECIVEIS'')) PROD        ' +
        '    JOIN ITENS_PEDIDO IP ON IP.ID_PRODUTO = PROD.ID_PRODUTO      ' +
        '    GROUP BY ID_PEDIDO)                                          ' +
        ' SELECT LEVEL,                                                   ' +
        '        P.ID_PEDIDO,                                             ' +
        '        P.STATUS,                                                ' +
        '        E.NOME AS ENTREGADOR,                                    ' +
        '        C.NOME AS CLIENTE,                                       ' +
        '        C.LOGRADOURO || '', ''||C.LOGRADOURO_NUMERO || '' ''||   ' +
        '        C.BAIRRO || '' ''||C.CIDADE ||'' - ''||C.CEP AS ENDERECO ' +
        ' FROM VPROD                                                      ' +
        ' JOIN PEDIDOS P ON VPROD.ID_PEDIDO = P.ID_PEDIDO                 ' +
        ' JOIN CLIENTES C ON P.ID_CLIENTE = C.ID_CLIENTE                  ' +
        ' JOIN ENTREGADORES E ON P.ID_ENTREGADOR  = E.ID_ENTREGADOR       ' +
        ' WHERE P.STATUS = ''EM ROTA''                                    ' +
        ' ORDER BY E.NOME,                                                ' +
        '          LEVEL,                                                 ' +
        ' 	     C.CEP                                                    ' ;

  FDQuery.Open;
  Result := FDQuery;
end;

end.
