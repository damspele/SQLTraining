/****** Object:  Procedure [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS

         BEGIN 
             UPDATE dbo.AspNet_SqlCacheTablesForChangeNotification WITH (ROWLOCK) SET changeId = changeId + 1 
             WHERE tableName = @tableName
         END
   