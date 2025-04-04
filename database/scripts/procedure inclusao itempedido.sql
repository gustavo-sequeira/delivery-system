SET TERM ^ ;

CREATE OR ALTER PROCEDURE SP_INSERIR_ITEM_PEDIDO (P_ID_PEDIDO INTEGER, P_ID_PRODUTO INTEGER, P_QUANTIDADE INTEGER, P_PRECO DECIMAL(10,2))
AS
DECLARE VARIABLE V_ID INTEGER;
DECLARE VARIABLE V_SUBTOTAL DECIMAL(10,2);
BEGIN  
	
	V_ID = NEXT VALUE FOR SEQ_ITEM_PEDIDO_ID;
	V_SUBTOTAL = :P_QUANTIDADE * :P_PRECO;
	
	INSERT INTO 
	ITENS_PEDIDO (ID_ITEM, ID_PEDIDO, ID_PRODUTO, QUANTIDADE, PRECO_UNITARIO, SUBTOTAL) 
	VALUES(:V_ID, :P_ID_PEDIDO, :P_ID_PRODUTO, :P_QUANTIDADE, :P_PRECO, :V_SUBTOTAL);


	UPDATE PRODUTOS SET ESTOQUE = ESTOQUE - :P_QUANTIDADE WHERE ID_PRODUTO = :P_ID_PRODUTO;
	
	UPDATE PEDIDOS SET TOTAL = TOTAL + :V_SUBTOTAL WHERE ID_PEDIDO = :P_ID_PEDIDO; 
	
END^

SET TERM ; ^