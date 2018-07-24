/****** Object:  Table [dbo].[TransformersByDisco]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TransformersByDisco](
	[TransformerID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[TS132_133kv] [nvarchar](50) NULL,
	[Transformers132_33kv] [nvarchar](50) NULL,
	[DISCO_FED] [nchar](50) NULL,
 CONSTRAINT [PK_TransformersByDisco] PRIMARY KEY CLUSTERED 
(
	[TransformerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[TransformersByDisco]  WITH CHECK ADD  CONSTRAINT [FK_TransformersByDisco_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
ALTER TABLE [dbo].[TransformersByDisco] CHECK CONSTRAINT [FK_TransformersByDisco_Company]
