CREATE OR ALTER PROCEDURE SP_ALTERAR_PEDIDO (P_ID INTEGER, P_STATUS VARCHAR(20), P_ID_ENTREGADOR INTEGER, P_DATA_ENTREGA TIMESTAMP)
AS
BEGIN  
	UPDATE PEDIDOS SET 
		STATUS= :P_STATUS, 
		ID_ENTREGADOR=:P_ID_ENTREGADOR, 
		DATA_ENTREGA=:P_DATA_ENTREGA 
     WHERE ID_PEDIDO=:P_ID;
END;
