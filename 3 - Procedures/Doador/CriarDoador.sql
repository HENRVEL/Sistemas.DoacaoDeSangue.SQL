USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 30/07/2016	
**/

ALTER PROCEDURE CriarDoador
(
	 @NOME varchar(255)
    ,@SOBRENOME varchar(255)
    ,@SEXO char(1)
    ,@CPF bigint
    ,@CIDADE varchar(50)
    ,@ESTADO varchar(50)
    ,@BAIRRO varchar(50)
    ,@COMPLEMENTO varchar(50)
    ,@CEP varchar(50)
    ,@EMAIL varchar(50)
    ,@TELEFONE varchar(50)
    ,@CELULAR varchar(50)
    ,@TIPO_SANGUINEO char(1)
    ,@FATOR_RH char(1)
    ,@DOADOR_DE_SANGUE bit
    ,@ULTIMA_DOACAO date
)
AS 
BEGIN
	INSERT INTO [dbo].[TB_CD_DOADOR_DOA]
           ([NOME]
           ,[SOBRENOME]
           ,[SEXO]
           ,[CPF]
           ,[CIDADE]
           ,[ESTADO]
           ,[BAIRRO]
           ,[COMPLEMENTO]
           ,[CEP]
           ,[EMAIL]
           ,[TELEFONE]
           ,[CELULAR]
           ,[TIPO_SANGUINEO]
           ,[FATOR_RH]
           ,[DOADOR_DE_SANGUE]
           ,[ULTIMA_DOACAO])
     VALUES
           (UPPER(@NOME)
           ,UPPER(@SOBRENOME)
           ,@SEXO
           ,@CPF
           ,@CIDADE
           ,@ESTADO
           ,@BAIRRO
           ,@COMPLEMENTO
           ,@CEP
           ,@EMAIL
           ,@TELEFONE
           ,@CELULAR
           ,@TIPO_SANGUINEO
           ,@FATOR_RH
           ,@DOADOR_DE_SANGUE
           ,@ULTIMA_DOACAO)

END 
GO 
