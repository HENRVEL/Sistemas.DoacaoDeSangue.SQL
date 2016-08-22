USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 08/08/2016	
**/

ALTER PROCEDURE CriarPacienteLaboratorio
(
	 @NOME varchar(255)
    ,@SOBRENOME varchar(255)
    ,@SEXO char(1)
	,@DATA_NASCIMENTO VARCHAR(50)
    ,@CPF bigint
    ,@TIPO_SANGUINEO char(1)
    ,@FATOR_RH char(1)
	)
AS 
BEGIN
	
	DECLARE @COUNT INT
	
	 SELECT TOP 1 @COUNT = COUNT(*)
		FROM [TB_CD_PACIENTE_PAC] WITH(NOLOCK)
	 WHERE [CPF] = @CPF
	 AND [LAB] = 1
	
	IF (@COUNT = 0)
	BEGIN
		INSERT INTO [dbo].[TB_CD_PACIENTE_PAC]
           ([NOME]
           ,[SOBRENOME]
           ,[SEXO]
           ,[CPF]
           ,[TIPO_SANGUINEO]
           ,[FATOR_RH]
		   ,[HOSP]
		   ,[LAB])
		 VALUES
		   (UPPER(@NOME)
           ,UPPER(@SOBRENOME)
           ,@SEXO
           ,@CPF
           ,@TIPO_SANGUINEO
           ,@FATOR_RH
		   ,0
		   ,1   
		   ) 
	END
	
END 
GO 
