SET TERM ^ ;

CREATE PROCEDURE SP_INSERIR_ENTREGADOR (
    P_NOME VARCHAR(100),
    P_TELEFONE VARCHAR(20),
    P_VEICULO VARCHAR(50),
    P_PLACA VARCHAR(10)
)
AS 
DECLARE VARIABLE V_ID_ENTREGADOR INTEGER;
BEGIN

    V_ID_ENTREGADOR = NEXT VALUE FOR SEQ_ENTREGADOR_ID;


    INSERT INTO ENTREGADORES (
        ID_ENTREGADOR, NOME, TELEFONE, VEICULO, PLACA
    ) VALUES (
        :V_ID_ENTREGADOR, :P_NOME, :P_TELEFONE, :P_VEICULO, :P_PLACA
    );

END^

SET TERM ; ^
