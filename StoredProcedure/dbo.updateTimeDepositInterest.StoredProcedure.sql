USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateTimeDepositInterest]    Script Date: 09/10/2014 13:36:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateTimeDepositInterest](
	@InterestRate AS DECIMAL(7, 4), @NoDays AS INT, @MinimumRange AS DECIMAL(18, 2), @MaximumRange AS DECIMAL(18, 2), @Status AS INT, @Id AS INT)
AS
BEGIN
	UPDATE TIME_DEPOSIT_INTEREST SET InterestRate = @InterestRate, NoDays = @NoDays, MinimumRange = @MinimumRange, MaximumRange = @MaximumRange, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE InterestId = @Id;
END

GO

