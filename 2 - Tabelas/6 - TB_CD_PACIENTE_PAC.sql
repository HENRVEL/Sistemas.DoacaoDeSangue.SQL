USE [BD_DOACAO]
GO

/****** Object:  Table [dbo].[TB_CD_PACIENTE_HOSP_PAH]    Script Date: 07/08/2016 18:21:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TB_CD_PACIENTE_PAC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](255) NOT NULL,
	[SOBRENOME] [varchar](255) NOT NULL,
	[SEXO] [char](1) NOT NULL,
	[CPF] [bigint] NOT NULL,
	[TIPO_SANGUINEO] [char](1) NOT NULL,
	[FATOR_RH] [char](1) NOT NULL,
	[HOSP] bit NOT NULL,
	[LAB]  bit NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


