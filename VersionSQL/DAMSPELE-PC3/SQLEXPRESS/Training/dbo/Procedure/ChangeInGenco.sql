/****** Object:  Procedure [dbo].[ChangeInGenco]    Committed by VersionSQL https://www.versionsql.com ******/

 CREATE procedure ChangeInGenco
(
@CompanyId INT,
@InstructedMw NUMERIC(18,2),
@ChangeDate DATETIME,
@ChangeDirection int
)

AS 
--declare a variable to store the difference in balance
declare @RRBalancePlus Numeric (18,2), @RRBalanceNeg Numeric (18,2)
declare @RRP_Accepted numeric (18,2), @RRN_Accepted numeric(18,2)
declare @RRID int
declare @RecordRank int

select @recordrank = coalesce( max(recordrank),0)
from dbo.RR_ChangeInGenco 
where companyid= @CompanyID and cast( changedate as date)  = cast(@changedate as date)

set @RecordRank = @RecordRank + 1

if (select count(companyid) 
 from dbo.RR_ChangeInGenco
 where companyid= @CompanyID and cast( changedate as date)  = cast(@changedate as date)) = 0
begin
select @RRP_Accepted=rrp_accepted,
@RRN_Accepted = rrn_accepted ,
@RRID = RR.Regulatingreserveid
   from  RegulatingReserve RR
where companyid=@CompanyId and accepted='Y'
and cast(RR.offerdate as date) = cast (@ChangeDate as date)
order by recordrank desc
end
else
begin

select @RRP_Accepted=rrp_balance,
@RRN_Accepted = rrn_balance 
from dbo.RR_ChangeInGenco where companyid=@CompanyId and 
cast(ChangeDate as date) = cast (@ChangeDate as date)
and recordrank = ( select max(recordrank) from dbo.RR_ChangeInGenco where companyid=@CompanyId and 
cast(ChangeDate as date) = cast (@ChangeDate as date))
end
if @ChangeDirection > 0
begin
set @RRBalancePlus = @RRP_Accepted - @InstructedMW
SET @RRBalanceNeg=@RRN_Accepted 
end
else
begin
set @RRBalanceneg = @RRN_Accepted -(@InstructedMW * @ChangeDirection)
SET @RRBalancePlus =@RRP_Accepted
end

 insert into dbo.RR_ChangeInGenco
         ( CompanyID ,
           InstructedMW ,
           RRP_Balance ,
           RRN_Balance ,
           ChangeDate,
           RecordRank
         )

 values( @CompanyId,@InstructedMW,@RRBalancePlus,@RRBalanceneg,@ChangeDate,@recordrank)