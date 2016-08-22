USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 06/08/2016	
**/

ALTER PROCEDURE CriarSolicitacaoBolsaDeSangue
(
	 @ID_UHP int
    ,@ID_LAB int
	,@MOTIVO_DOACAO varchar(255)
    ,@DIAGNOSTICO varchar(255)
)
AS 
BEGIN
	
	DECLARE @ID_PAC INT

	 SELECT TOP 1 @ID_PAC = ID
		FROM [TB_CD_PACIENTE_PAC] WITH(NOLOCK)
	 WHERE [HOSP] = 1
	 ORDER BY ID DESC
	
	INSERT INTO [dbo].[TB_CD_SOLICITACAO_BOLSA_DE_SANGUE_BDS]
           ([ID_UHP]
           ,[ID_LAB]
           ,[ID_PAC]
           ,[MOTIVO_DOACAO]
           ,[DIAGNOSTICO]
		   ,[DATA_SOLICITACAO])
     VALUES
           ( @ID_UHP 
			,@ID_LAB 
			,@ID_PAC 
			,@MOTIVO_DOACAO
			,@DIAGNOSTICO 
			,GETDATE()
			)
END 
GO 
