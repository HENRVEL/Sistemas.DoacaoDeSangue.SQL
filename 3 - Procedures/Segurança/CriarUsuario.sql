USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 29/08/2016	
**/

ALTER PROCEDURE CriarUsuario
(
	 @USUARIO varchar(30),
     @SENHA varchar(30),
     @TIPO_USUARIO varchar(3),
     @ID_DOA int,
     @ID_UHP int,
     @ID_LAB int
)
AS 
BEGIN
	DECLARE @SENHA_AUX varbinary(100) 
	SET @SENHA_AUX = PWDENCRYPT(@SENHA)


	INSERT INTO [dbo].[TB_CD_USUARIO_USA]
           ([USUARIO]
           ,[SENHA]
           ,[TIPO_USUARIO]
           ,[ID_DOA]
           ,[ID_UHP]
           ,[ID_LAB])
     VALUES
           (@USUARIO
           ,@SENHA_AUX
           ,@TIPO_USUARIO
           ,@ID_DOA
           ,@ID_UHP
           ,@ID_LAB
		   )
END 
GO 
