/****** Object:  Procedure [dbo].[ActivateGenco]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE procedure ActivateGenco
(
@RRID int,
@Activate Int
)
as

if(@Activate > 0)
update RegulatingReserveConst
set Active ='Y'
where RegulatingReserveID =@RRID

Else
Update RegulatingReserveConst
Set Active = 'N'
where RegulatingReserveID =@RRID

if @@RowCount > 0
  return 1
  else
  return 0


