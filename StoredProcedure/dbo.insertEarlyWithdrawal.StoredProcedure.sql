USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertEarlyWithdrawal]    Script Date: 09/10/2014 14:32:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertEarlyWithdrawal](
	@InterestReduction AS DECIMAL(7, 4), @TermsElapsedFrom AS INT, @TermsElapsedTo AS INT, @Status AS INT)
AS
BEGIN
	INSERT INTO EARLY_WITHDRAWAL(InterestReduction, TermsElapsedFrom, TermsElapsedTo, Status, DateCreated, DateModified)
	VALUES(@InterestReduction, @TermsElapsedFrom, @TermsElapsedTo, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
END

















GO

