/****** Object:  Table [dbo].[AspNet_SqlCacheTablesForChangeNotification]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification](
	[tableName] [nvarchar](450) NOT NULL,
	[notificationCreated] [datetime] NOT NULL,
	[changeId] [int] NOT NULL,
 CONSTRAINT [PK__AspNet_S__93F7AC6913BCEBC1] PRIMARY KEY CLUSTERED 
(
	[tableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  CONSTRAINT [DF__AspNet_Sq__notif__15A53433]  DEFAULT (getdate()) FOR [notificationCreated]
ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  CONSTRAINT [DF__AspNet_Sq__chang__1699586C]  DEFAULT ((0)) FOR [changeId]
