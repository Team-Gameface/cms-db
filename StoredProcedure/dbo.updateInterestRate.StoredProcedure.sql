USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateInterestRate]    Script Date: 09/07/2014 11:33:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateInterestRate]
		(@TypeId AS INT, @InterestRate AS DECIMAL(7,4), @Per AS VARCHAR(50), @MinRange AS DECIMAL(18, 2))
AS
BEGIN
	UPDATE INTEREST_RATE SET InterestRate = @InterestRate, Per = @Per, MinimumRange = @MinRange WHERE AccountTypeId = @TypeId;
END

















GO

