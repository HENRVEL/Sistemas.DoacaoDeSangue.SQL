USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 31/07/2016	
**/

ALTER PROCEDURE CriarLaboratorio
(
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
	INSERT INTO [dbo].[TB_CD_LABORATORIO_CONVENIADO_LAB]
           ([NOME]
           ,[CIDADE]
           ,[ESTADO]
           ,[BAIRRO]
           ,[COMPLEMENTO]
           ,[CNPJ]
           ,[RESPONSAVEL]
           ,[EMAIL]
           ,[TELEFONE]
           ,[ID_SUS]
           ,[ATIVO])
     VALUES
           (@NOME
           ,@CIDADE
           ,@ESTADO
           ,@BAIRRO
           ,@COMPLEMENTO 
           ,@CNPJ
           ,@RESPONSAVEL 
           ,@EMAIL
           ,@TELEFONE
           ,@ID_SUS 
           ,@ATIVO)
END 
GO 

