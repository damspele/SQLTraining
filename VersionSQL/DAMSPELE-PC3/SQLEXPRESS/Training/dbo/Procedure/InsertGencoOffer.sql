/****** Object:  Procedure [dbo].[InsertGencoOffer]    Committed by VersionSQL https://www.versionsql.com ******/

 CREATE PROCEDURE [dbo].[InsertGencoOffer]
	(
	@CompanyID int,
	@RegulatingReserveP numeric(18,2),
	@RegulatingReserveN numeric(18,2),
	@OfferDate datetime,
	@Whosent nvarchar(1),
	@RecordType nvarchar(1)
	)
AS

-- declare a variable to store the most recent record the 
declare @RecordRank Int

select @RecordRank = 
 coalesce( max( recordrank),0)  from RegulatingReserve
where companyid=@CompanyID
 and cast( OfferDate as date)=  cast( @OfferDate as date)
 
select @RecordRank = @RecordRank + 1


	Insert RegulatingReserve
	(
	CompanyID,
	RegulatingReserveP,
	RegulatingReserveN,
	OfferDate,
	RecordRank,
	RecordType
	)

	Values
	(
	@CompanyID,
	@RegulatingReserveP,
	@RegulatingReserveN *-1,
	@OfferDate,
	@RecordRank,
	@RecordType
	)

	
	
	if @@Rowcount > 0
	Return 1
	else
	return 0