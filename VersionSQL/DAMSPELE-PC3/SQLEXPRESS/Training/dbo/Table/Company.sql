/****** Object:  Table [dbo].[Company]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](600) NOT NULL,
	[CompanyTypeID] [int] NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[FormerName] [nvarchar](50) NULL,
	[CompanyEmailA] [nvarchar](50) NULL,
	[CompanyEmailB] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompanyID] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_CompanyType] ON [dbo].[Company]
(
	[CompanyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
ALTER TABLE [dbo].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_CompanyType] FOREIGN KEY([CompanyTypeID])
REFERENCES [dbo].[CompanyType] ([CompanyTypeID])
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_CompanyType]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[company_AspNet_SqlCacheNotification_Trigger] ON [dbo].[Company]
                       FOR INSERT, UPDATE, DELETE AS BEGIN
                       SET NOCOUNT ON
                       EXEC dbo.AspNet_SqlCacheUpdateChangeIdStoredProcedure N'company'
                       END

