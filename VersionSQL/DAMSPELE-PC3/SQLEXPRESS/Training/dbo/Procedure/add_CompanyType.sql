/****** Object:  Procedure [dbo].[add_CompanyType]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE add_CompanyType
(
@CompanyType NVARCHAR(50)
)
AS
INSERT INTO
dbo.CompanyType (
	CompanyType
) 
VALUES 
(@CompanyType)

IF
@@ROWCOUNT > 0
RETURN
1
ELSE
RETURN 0




