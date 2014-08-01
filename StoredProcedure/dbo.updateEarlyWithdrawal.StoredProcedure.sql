USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateEarlyWithdrawal]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateEarlyWithdrawal](
	@EarlyWithdrawalId AS INT, @Penalty AS DECIMAL(18, 2), @Per AS VARCHAR(50), @Duration AS INT, @DurationStatus AS VARCHAR(50), @MinRange AS DECIMAL(18, 2), @MaxRange AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	UPDATE EARLY_WITHDRAWAL SET PenaltyValue = @Penalty, PenaltyStatus = @Per, BalanceDurationValue = @Duration, BalanceDurationStatus = @DurationStatus, MinimumRange = @MinRange, MaximumRange = @MaxRange, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE EarlyWithdrawalId = @EarlyWithdrawalId;
END
















GO
