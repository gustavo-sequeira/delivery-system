CREATE OR ALTER PROCEDURE SP_INSERIR_PEDIDO (P_ID INTEGER, P_ID_CLIENTE INTEGER, P_DATA_PEDIDO TIMESTAMP, P_TOTAL DECIMAL(10,2))
AS
BEGIN  
	INSERT INTO
	PEDIDOS (
		ID_PEDIDO, ID_CLIENTE, DATA_PEDIDO, TOTAL, STATUS)
	VALUES(
		:P_ID, :P_ID_CLIENTE, :P_DATA_PEDIDO, :P_TOTAL, 'PENDENTE');
END;
