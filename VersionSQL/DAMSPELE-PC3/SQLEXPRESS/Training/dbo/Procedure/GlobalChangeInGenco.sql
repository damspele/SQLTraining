/****** Object:  Procedure [dbo].[GlobalChangeInGenco]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure GlobalChangeInGenco
(
@InstructedMW numeric (18,2),
@ChangeDirection int
)

As
declare @ChangeDate datetime
set @ChangeDate= CAST (GETDATE() as date)
insert into ChangeInGencoConst(InstructedMW,ChangeDate)


Values
(@InstructedMW,@ChangeDate)

if @@Rowcount > 0
	Return 1
	else
	return 0