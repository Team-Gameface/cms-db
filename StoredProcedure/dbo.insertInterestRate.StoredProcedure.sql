USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertInterestRate]    Script Date: 09/07/2014 11:32:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertInterestRate]
		(@TypeId AS INT, @InterestRate AS DECIMAL(7,4), @Per AS VARCHAR(50), @MinRange AS DECIMAL(18, 2))
AS
BEGIN
	INSERT INTO INTEREST_RATE(AccountTypeId, InterestRate, Per, MinimumRange)
	VALUES (@TypeId, @InterestRate, @Per, @MinRange);
END














GO

