/****** Object:  Procedure [dbo].[getGencoOfferNCC]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure getGencoOfferNCC

as

select [RegulatingReserveID]
      ,RR.[CompanyID] as TheID,
      C.Company,
      [RegulatingReserveP]
      ,[RegulatingReserveN]
      ,[OfferDate]
      ,[Accepted]
      ,[RRP_Accepted]
      ,[RRN_Accepted]
      ,[RecordRank]
      ,[RecordType]
      ,[AcceptedBy]
      ,[AcceptedDate] 
      from regulatingreserve RR join company C on RR.CompanyID = C.CompanyID
where cast( offerdate as date) = cast( getdate() as date) or 
cast( offerdate as date ) = cast( dateadd(day,1,getdate()) as date)