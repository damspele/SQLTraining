/****** Object:  Procedure [dbo].[GetConstOffers]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure [dbo].[GetConstOffers]

as

select Company,RegulatingReserveP,RegulatingReserveN,Active
FROM RegulatingReserveConst  RR JOIN Company C ON RR.CompanyID=c.CompanyID

