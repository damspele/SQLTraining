/****** Object:  Procedure [dbo].[GetGridView]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[GetGridView]
AS 
SELECT 
RegulatingReserveID,
CompanyID,
RegulatingReserveP,
RegulatingReserveN,
RRP_Accepted,
RRN_Accepted,
OfferDate,
Accepted



 FROM RegulatingReserve
 
 WHERE 
 cast (OfferDate AS DATE) = CAST(GETDATE() AS DATE)
 
 ORDER BY
 RecordRank
 




