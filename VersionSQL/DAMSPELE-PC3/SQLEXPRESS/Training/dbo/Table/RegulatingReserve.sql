/****** Object:  Table [dbo].[RegulatingReserve]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RegulatingReserve](
	[RegulatingReserveID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[RegulatingReserveP] [numeric](18, 2) NOT NULL,
	[RegulatingReserveN] [numeric](18, 2) NOT NULL,
	[OfferDate] [datetime] NOT NULL,
	[Accepted] [nvarchar](1) NOT NULL,
	[RecordRank] [int] NOT NULL,
	[RecordTYpe] [nvarchar](1) NOT NULL,
	[RRP_Accepted] [numeric](18, 2) NULL,
	[RRN_Accepted] [numeric](18, 2) NULL,
	[AcceptedBY] [nvarchar](50) NULL,
	[AcceptedDate] [datetime] NULL,
 CONSTRAINT [PK_RegulatingReserve] PRIMARY KEY CLUSTERED 
(
	[RegulatingReserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[RegulatingReserve] ADD  CONSTRAINT [DF_RegulatingReserve_Accepted]  DEFAULT (N'N') FOR [Accepted]
