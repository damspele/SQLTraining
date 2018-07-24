/****** Object:  Procedure [dbo].[RRofferAccepted]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure RRofferAccepted
(
@RRID int,
@RRPlus numeric(18,2),
@RRNeg numeric(18,2)
)
as
update regulatingreserve
 set accepted = 'Y',
  RRp_Accepted= @RRPlus,
  RRN_Accepted = @RRNeg *-1,
  AcceptedDate = getdate()
  where RegulatingReserveID = @RRID
  
  if @@RowCount > 0
  return 1
  else
  return 0