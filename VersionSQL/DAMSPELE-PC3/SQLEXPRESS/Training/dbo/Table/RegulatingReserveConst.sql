/****** Object:  Table [dbo].[RegulatingReserveConst]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RegulatingReserveConst](
	[RegulatingReserveID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[RegulatingReserveP] [numeric](18, 2) NOT NULL,
	[RegulatingReserveN] [numeric](18, 2) NOT NULL,
	[RecordRank] [int] NOT NULL,
	[Active] [nvarchar](2) NULL,
	[OfferDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RegulatingReserveConst] PRIMARY KEY CLUSTERED 
(
	[RegulatingReserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[RegulatingReserveConst] ADD  CONSTRAINT [DF_RegulatingReserveConst_Active]  DEFAULT (N'Y') FOR [Active]
ALTER TABLE [dbo].[RegulatingReserveConst]  WITH CHECK ADD  CONSTRAINT [FK_RegulatingReserveConst_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
ALTER TABLE [dbo].[RegulatingReserveConst] CHECK CONSTRAINT [FK_RegulatingReserveConst_Company]
