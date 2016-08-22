USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 06/08/2016	
**/

ALTER PROCEDURE CriarResultadoDeExames
(
	 @ID_LAB int
	,@CPF bigint
    ,@CODIGO int
    ,@RESULTADO varchar(255)
)
AS 
BEGIN
	
	DECLARE @ID_PAC INT
	DECLARE @ID_EXA INT

	 SELECT TOP 1 @ID_PAC = [ID]
		FROM [TB_CD_PACIENTE_PAC] WITH(NOLOCK)
	 WHERE [CPF] = @CPF
	 AND [LAB] = 1

	SELECT TOP 1 @ID_EXA = [ID]
		FROM [dbo].[TB_CD_EXAME_EXA] WITH(NOLOCK)
	WHERE [CODIGO] = @CODIGO



	INSERT INTO [dbo].[TB_CD_RESULTADO_EXAME_RES]
           ([ID_LAB]
           ,[ID_PAC]
           ,[ID_EXA]
           ,[RESULTADO])
     VALUES
           (@ID_LAB
           ,@ID_PAC
           ,@ID_EXA
           ,@RESULTADO
		   )
END 
GO 
