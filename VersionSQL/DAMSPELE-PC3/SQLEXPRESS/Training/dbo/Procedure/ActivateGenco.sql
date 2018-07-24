/****** Object:  Procedure [dbo].[ActivateGenco]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ActivateGenco]
    (
      @RRID INT ,
      @Activate INT
    )
AS
    IF ( @Activate > 0 )
        UPDATE  RegulatingReserveConst
        SET     Active = 'Y'
        WHERE   RegulatingReserveID = @RRID

    ELSE
        UPDATE  RegulatingReserveConst
        SET     Active = 'N'
        WHERE   RegulatingReserveID = @RRID


    IF @@RowCount > 0
        RETURN 1
    ELSE
        RETURN 0


