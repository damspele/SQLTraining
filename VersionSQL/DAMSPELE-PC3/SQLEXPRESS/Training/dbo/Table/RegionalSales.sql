/****** Object:  Table [dbo].[RegionalSales]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RegionalSales](
	[SalesID] [int] IDENTITY(1,1) NOT NULL,
	[SalesGroup] [nvarchar](30) NOT NULL,
	[Country] [nvarchar](30) NOT NULL,
	[AnnualSales] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

