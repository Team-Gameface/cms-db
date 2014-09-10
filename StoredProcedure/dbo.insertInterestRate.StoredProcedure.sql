USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertInterestRate]    Script Date: 09/10/2014 17:27:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertInterestRate]
		(@TypeId AS INT, @InterestRate AS DECIMAL(7,4), @MinRange AS DECIMAL(18, 2))
AS
BEGIN
	INSERT INTO INTEREST_RATE(AccountTypeId, InterestRate, MinimumRange)
	VALUES (@TypeId, @InterestRate, @MinRange);
END















GO

