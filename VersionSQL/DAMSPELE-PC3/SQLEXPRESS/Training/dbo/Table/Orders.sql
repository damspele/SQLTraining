/****** Object:  Table [dbo].[Orders]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NULL,
	[OrderDate] [date] NULL,
	[OrderAmt] [money] NULL,
	[CustomerName] [nvarchar](50) NULL
) ON [PRIMARY]

