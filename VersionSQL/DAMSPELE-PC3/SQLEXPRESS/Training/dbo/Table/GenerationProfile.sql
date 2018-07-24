/****** Object:  Table [dbo].[GenerationProfile]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[GenerationProfile](
	[CompanyID] [int] NOT NULL,
	[AvailableUnits] [nvarchar](50) NULL,
	[InstalledCapacity] [nvarchar](50) NULL,
	[GenerationCapacity] [nvarchar](50) NULL,
	[UnitsOnBar] [nvarchar](50) NULL,
	[UnitsOnBarCapacity] [nvarchar](50) NULL,
 CONSTRAINT [PK_GenerationProfile] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [UK_GenerationProfile_CompanyID] ON [dbo].[GenerationProfile]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
ALTER TABLE [dbo].[GenerationProfile]  WITH CHECK ADD  CONSTRAINT [FK_GenerationProfile_Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
ALTER TABLE [dbo].[GenerationProfile] CHECK CONSTRAINT [FK_GenerationProfile_Company_CompanyID]
