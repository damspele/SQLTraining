/****** Object:  Table [dbo].[ChangeInGencoConst]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ChangeInGencoConst](
	[ChangeInGencoConstID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[InstructedMW] [numeric](18, 2) NULL,
	[RRP_Balance] [numeric](18, 2) NULL,
	[RRN_Balance] [numeric](18, 2) NULL,
	[ChangeDate] [datetime] NULL,
	[RecordRank] [int] NULL
) ON [PRIMARY]

