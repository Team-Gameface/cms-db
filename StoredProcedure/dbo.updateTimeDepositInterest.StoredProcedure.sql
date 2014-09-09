USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateTimeDepositInterest]    Script Date: 09/09/2014 23:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateTimeDepositInterest](
	@InterestRate AS DECIMAL(7, 4), @MinimumRange AS DECIMAL(18, 2), @MaximumRange AS DECIMAL(18, 2), @Status AS INT, @Id AS INT)
AS
BEGIN
	UPDATE TIME_DEPOSIT_INTEREST SET InterestRate = @InterestRate, MinimumRange = @MinimumRange, MaximumRange = @MaximumRange, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE InterestId = @Id;
END

GO

