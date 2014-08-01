USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateInterestRate]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateInterestRate]
		(@InterestId AS INT, @InterestRate AS DECIMAL(7,4), @Per AS VARCHAR(50), @MinRange AS DECIMAL(18, 2), @MaxRange AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	UPDATE INTEREST_RATE SET InterestRate = @InterestRate, Per = @Per, MinimumRange = @MinRange, MaximumRange = @MaxRange, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE InterestId = @InterestId;
END
















GO
