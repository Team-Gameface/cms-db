USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertEarlyWithdrawal]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertEarlyWithdrawal](
	@TypeId AS INT, @Penalty AS DECIMAL(18, 2), @Per AS VARCHAR(50), @Duration AS INT, @DurationStatus AS VARCHAR(50), @MinRange AS DECIMAL(18, 2), @MaxRange AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	INSERT INTO EARLY_WITHDRAWAL(PenaltyValue, PenaltyStatus, BalanceDurationValue, BalanceDurationStatus, MinimumRange, MaximumRange, Status, DateCreated, DateModified, AccountTypeId)
	VALUES(@Penalty, @Per, @Duration, @DurationStatus, @MinRange, @MaxRange, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, @TypeId);
END
















GO
