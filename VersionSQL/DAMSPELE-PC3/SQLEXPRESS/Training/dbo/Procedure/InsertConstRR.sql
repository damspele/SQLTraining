/****** Object:  Procedure [dbo].[InsertConstRR]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[InsertConstRR]
	(
	@CompanyID int,
	@RegulatingReserveP numeric(18,2),
	@RegulatingReserveN numeric(18,2),
	@OfferDate Datetime
	)
AS
-- declare a variable to store the most recent record the 
declare @RecordRank Int

select @RecordRank = 
 coalesce( max( recordrank),0)  from RegulatingReserve
where companyid=@CompanyID
 and cast( OfferDate as date)=  cast( @OfferDate as date)
 
select @RecordRank = @RecordRank + 1

	Insert RegulatingReserveConst
	(
	CompanyID,
	RegulatingReserveP,
	RegulatingReserveN,
	RecordRank,
	Offerdate
	)

	Values
	(
	@CompanyID,
	@RegulatingReserveP,
	@RegulatingReserveN *-1,
	@RecordRank,
	@OfferDate
	)

	
	if @@Rowcount > 0
	Return 1
	else
	return 0