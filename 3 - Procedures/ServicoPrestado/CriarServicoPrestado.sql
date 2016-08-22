USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 06/08/2016	
**/

ALTER PROCEDURE CriarServicoPrestado
(
	 @ID_LAB int
    ,@TIPO_SERVICO varchar(255)
	,@VALOR money
)
AS 
BEGIN
	
	INSERT INTO [dbo].[TB_CD_SERVICO_PRESTADO_SPR]
           ([ID_LAB]
           ,[TIPO_SERVICO]
           ,[VALOR]
		   ,[DATA_CRIACAO])
     VALUES
           (@ID_LAB
           ,@TIPO_SERVICO
           ,@VALOR
		   ,GETDATE()
		   )
END 
GO 
