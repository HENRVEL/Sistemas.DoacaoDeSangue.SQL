USE [BD_DOACAO]
GO

/****** Object:  Table [dbo].[TB_CD_AGENDA_LABORATORIO_AGL]    Script Date: 02/08/2016 23:03:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TB_CD_AGENDA_LABORATORIO_AGL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_LAB] [int] NOT NULL,
	[DATA] [varchar](50) NOT NULL,
	[HORA] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TB_CD_AGENDA_LABORATORIO_AGL]  WITH CHECK ADD FOREIGN KEY([ID_LAB])
REFERENCES [dbo].[TB_CD_LABORATORIO_CONVENIADO_LAB] ([ID])
GO



