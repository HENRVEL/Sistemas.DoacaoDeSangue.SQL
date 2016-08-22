USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 31/07/2016	
**/

ALTER PROCEDURE AlterarDoador
(
	 @ID   INT
	,@NOME varchar(255)
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

	UPDATE [dbo].[TB_CD_DOADOR_DOA]
	   SET  [NOME] =  UPPER(@NOME)
           ,[SOBRENOME] =  UPPER(@SOBRENOME)
           ,[SEXO] = @SEXO
           ,[CPF] =  @CPF
           ,[CIDADE] = @CIDADE
           ,[ESTADO] = @ESTADO
           ,[BAIRRO] = @BAIRRO
           ,[COMPLEMENTO] = @COMPLEMENTO
           ,[CEP] = @CEP
           ,[EMAIL] = @EMAIL
           ,[TELEFONE] = @TELEFONE
           ,[CELULAR] = @CELULAR
           ,[TIPO_SANGUINEO] = @TIPO_SANGUINEO
           ,[FATOR_RH] = @FATOR_RH
           ,[DOADOR_DE_SANGUE] = @DOADOR_DE_SANGUE
           ,[ULTIMA_DOACAO] =  @ULTIMA_DOACAO
	 WHERE ID = @ID
END 
GO 
