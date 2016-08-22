USE [BD_DOACAO]
GO

/**
Banco: BD_DOACAO
Date: 04/08/2016	
**/

CREATE PROCEDURE CriarAgendaDoador
(
	@ID_LAB int,
	@ID_DOA int,
	@ID_AGL int, 
	@CANCELADO bit = 0,
	@MOTIVO_CANCELAMENTO varchar(255)
)
AS 
BEGIN
	INSERT INTO [dbo].[TB_CD_AGENDAMENTO_DOADOR_AGD]
           ([ID_LAB]
           ,[ID_DOA]
           ,[ID_AGL]
           ,[CANCELADO]
           ,[MOTIVO_CANCELAMENTO])
     VALUES
           (@ID_LAB
           ,@ID_DOA
           ,@ID_AGL
           ,@CANCELADO
           ,@MOTIVO_CANCELAMENTO)
END 
GO 

