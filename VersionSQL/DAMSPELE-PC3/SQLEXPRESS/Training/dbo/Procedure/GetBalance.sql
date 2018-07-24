/****** Object:  Procedure [dbo].[GetBalance]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure GetBalance
as

SELECT
Company,
RRP_Balance,
RRN_Balance,RecordRank
FROM RR_ChangeInGenco RR JOIN Company C ON RR.CompanyID=c.CompanyID
WHERE  CAST (ChangeDate AS DATE) = CAST (GETDATE() AS date) 

AND RecordRank= (SELECT MAX (RecordRank) FROM dbo.RR_ChangeInGenco WHERE CompanyID=CompanyID AND CAST(ChangeDate AS date)=CAST(GETDATE()AS date) )

