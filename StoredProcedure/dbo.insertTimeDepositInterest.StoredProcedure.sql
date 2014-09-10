USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertTimeDepositInterest]    Script Date: 09/10/2014 13:36:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertTimeDepositInterest](
	@InterestRate AS DECIMAL(7, 4), @NoDays AS INT, @MinimumRange AS DECIMAL(18, 2), @MaximumRange AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	INSERT INTO TIME_DEPOSIT_INTEREST(InterestRate, NoDays, MinimumRange, MaximumRange, Status, DateCreated, DateModified)
	VALUES(@InterestRate, @NoDays, @MinimumRange, @MaximumRange, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
END

GO

