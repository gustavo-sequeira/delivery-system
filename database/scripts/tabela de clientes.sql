-- CLIENTES definição

-- Drop table

-- DROP TABLE CLIENTES;

CREATE TABLE CLIENTES (
	ID_CLIENTE INTEGER NOT NULL,
	NOME VARCHAR(100) NOT NULL,
	CPF VARCHAR(14),
	TELEFONE VARCHAR(15),
	EMAIL VARCHAR(100),
	DATA_CADASTRO TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CEP VARCHAR(10),
	LOGRADOURO VARCHAR(200),
	LOGRADOURO_NUMERO VARCHAR(100),
	CIDADE VARCHAR(100),
	BAIRRO VARCHAR(100),
	CONSTRAINT INTEG_11 UNIQUE (EMAIL),
	CONSTRAINT INTEG_7 PRIMARY KEY (ID_CLIENTE),
	CONSTRAINT INTEG_9 UNIQUE (CPF)
);
CREATE UNIQUE INDEX RDB$4 ON CLIENTES (CPF);
CREATE UNIQUE INDEX "RDB$5" ON CLIENTES (EMAIL);
CREATE UNIQUE INDEX RDB$PRIMARY3 ON CLIENTES (ID_CLIENTE);