/****** Object:  Procedure [dbo].[getAcptdOfferNCC]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure getAcptdOfferNCC

as

select Company,RRP_Accepted,RRN_Accepted
FROM RegulatingReserve  RR JOIN Company C ON RR.CompanyID=c.CompanyID
WHERE 
CAST( RR.AcceptedDate as date) = cast( GETDATE() as date) 
AND cast (RR.OfferDate AS DATE) = CAST(GETDATE() AS DATE)
RETURN 0;
