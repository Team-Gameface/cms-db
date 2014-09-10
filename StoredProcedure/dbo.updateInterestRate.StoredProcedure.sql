USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateInterestRate]    Script Date: 09/10/2014 17:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateInterestRate]
		(@TypeId AS INT, @InterestRate AS DECIMAL(7,4), @MinRange AS DECIMAL(18, 2))
AS
BEGIN
	UPDATE INTEREST_RATE SET InterestRate = @InterestRate, MinimumRange = @MinRange WHERE AccountTypeId = @TypeId;
END


















GO

