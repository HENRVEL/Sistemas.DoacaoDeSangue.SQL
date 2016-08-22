USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 31/07/2016	
**/

ALTER PROCEDURE AlterarLaboratorio
(
	@ID  int,
	@NOME varchar(255),
    @CIDADE varchar(50),
    @ESTADO varchar(50),
    @BAIRRO varchar(50),
    @COMPLEMENTO varchar(50),
    @CNPJ varchar(50),
    @RESPONSAVEL varchar(50),
    @EMAIL varchar(50),
    @TELEFONE varchar(50),
    @ID_SUS  int,
    @ATIVO bit
)
AS 
BEGIN
	UPDATE [dbo].[TB_CD_LABORATORIO_CONVENIADO_LAB]
	   SET  NOME = @NOME
           ,CIDADE = @CIDADE
           ,ESTADO = @ESTADO
           ,BAIRRO = @BAIRRO
           ,COMPLEMENTO = @COMPLEMENTO 
           ,CNPJ = @CNPJ
           ,RESPONSAVEL = @RESPONSAVEL 
           ,EMAIL = @EMAIL
           ,TELEFONE = @TELEFONE
           ,ID_SUS = @ID_SUS 
           ,ATIVO = @ATIVO
	 WHERE ID = @ID
END
GO


