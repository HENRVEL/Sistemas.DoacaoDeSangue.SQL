USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 06/08/2016	
**/

ALTER PROCEDURE CriarPacienteHospitalar
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
		   ,1
		   ,0   
		   ) 

END 
GO 
