/****** Object:  Table [dbo].[RR_ChangeInGenco]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RR_ChangeInGenco](
	[ChangeInGencoMwID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[InstructedMW] [numeric](18, 2) NOT NULL,
	[RRP_Balance] [numeric](18, 2) NULL,
	[RRN_Balance] [numeric](18, 2) NULL,
	[ChangeDate] [datetime] NOT NULL,
	[RecordRank] [int] NULL,
 CONSTRAINT [PK_RR_ChangeInGenco] PRIMARY KEY CLUSTERED 
(
	[ChangeInGencoMwID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[RR_ChangeInGenco]  WITH CHECK ADD  CONSTRAINT [FK_RR_ChangeInGenco_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
ALTER TABLE [dbo].[RR_ChangeInGenco] CHECK CONSTRAINT [FK_RR_ChangeInGenco_Company]
