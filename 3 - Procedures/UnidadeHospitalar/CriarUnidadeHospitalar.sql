USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 02/08/2016	
**/

ALTER PROCEDURE CriarUnidadeHospitalar
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
    @ATIVO bit
)
AS 
BEGIN
	INSERT INTO [dbo].[TB_CD_UNIDADE_HOSPITALAR_UHP]
           ([NOME]
           ,[CIDADE]
           ,[ESTADO]
           ,[BAIRRO]
           ,[COMPLEMENTO]
           ,[CNPJ]
           ,[RESPONSAVEL]
           ,[EMAIL]
           ,[TELEFONE]
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
           ,@ATIVO)
END 
GO 

