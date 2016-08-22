USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 09/08/2016	
**/

ALTER PROCEDURE CriarLog
(
	 @TIPO_LOG varchar(50)
    ,@MENSAGEM varchar(255)
)
AS 
BEGIN
	
	INSERT INTO [dbo].[TB_CD_LOG_APLICACAO_LOG]
		([TIPO_LOG]
        ,[MENSAGEM]
		,[DATA_CRIACAO])
     VALUES(
			@TIPO_LOG
           ,@MENSAGEM
           ,GETDATE()
		   )
END 
GO 
