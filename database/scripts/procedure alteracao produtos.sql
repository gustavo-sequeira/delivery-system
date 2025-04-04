CREATE OR ALTER PROCEDURE SP_ALTERAR_PRODUTO (P_ID INTEGER, P_NOME VARCHAR(100), P_DESCRICAO VARCHAR(255), P_PRECO DECIMAL(10,2), P_ESTOQUE INTEGER, P_CATEGORIA VARCHAR(50), P_SUBCATEGORIA VARCHAR(50), P_CODIGO VARCHAR(10), P_DATA_VALIDADE TIMESTAMP, P_OBSERVACAO VARCHAR(255))
AS
BEGIN  
UPDATE PRODUTOS SET 
	NOME=:P_NOME, 
	DESCRICAO=:P_DESCRICAO, 
	PRECO=:P_PRECO, 
	ESTOQUE=:P_ESTOQUE, 
	CATEGORIA=:P_CATEGORIA, 
	DATA_CADASTRO=CURRENT_TIMESTAMP, 
	CODIGO=:P_CODIGO, 
	DATA_VALIDADE=:P_DATA_VALIDADE, 
	SUBCATEGORIA=:P_SUBCATEGORIA, 
	OBSERVACAO=:P_OBSERVACAO 
WHERE ID_PRODUTO=:P_ID;
END;

CREATE DATABASE 'C:\projetos\repositorios\portfolio\delivery-system\database\DELIVERY-SYSTEM.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
DEFAULT CHARACTER SET NONE;