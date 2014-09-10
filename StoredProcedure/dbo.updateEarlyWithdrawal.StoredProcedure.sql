USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateEarlyWithdrawal]    Script Date: 09/10/2014 14:32:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateEarlyWithdrawal](
	@InterestReduction AS DECIMAL(7, 4), @TermsElapsedFrom AS INT, @TermsElapsedTo AS INT, @Status AS INT)
AS
BEGIN
	UPDATE EARLY_WITHDRAWAL SET InterestReduction = @InterestReduction, TermsElapsedFrom = @TermsElapsedFrom, TermsElapsedTo = @TermsElapsedTo, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE EarlyWithdrawalId = @Id;
END

















GO

