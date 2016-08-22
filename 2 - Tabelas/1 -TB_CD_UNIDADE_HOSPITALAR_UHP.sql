USE [BD_DOACAO]
GO

/****** Object:  Table [dbo].[TB_CD_UNIDADE_HOSPITALAR_UHP]    Script Date: 02/08/2016 19:49:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TB_CD_UNIDADE_HOSPITALAR_UHP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](255) NOT NULL,
	[CIDADE] [varchar](50) NULL,
	[ESTADO] [varchar](50) NULL,
	[BAIRRO] [varchar](50) NULL,
	[COMPLEMENTO] [varchar](50) NULL,
	[CNPJ] [varchar](50) NOT NULL,
	[RESPONSAVEL] [varchar](50) NOT NULL,
	[EMAIL] [varchar](50) NULL,
	[TELEFONE] [varchar](50) NULL,
	[ATIVO] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

