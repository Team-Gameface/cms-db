USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertSavingsAccountType]    Script Date: 09/07/2014 11:32:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertSavingsAccountType] 
	(@Name AS VARCHAR(50), @InitDeposit AS DECIMAL(18, 2), @MaxWith AS DECIMAL(18, 2), @AccountHolders AS INT, @isMaintainingBalance AS INT,
	@isDormancy AS INT, @isInterestRates AS INT, @Status AS INT)
AS
BEGIN
	INSERT INTO SAVINGS_ACCOUNT_TYPE(SavingsTypeName, InitialDeposit, MaximumWithdrawal, NoOfAccountHolders, isMaintainingBalance, isInterestRate, isDormancy, Status, DateCreated, DateModified)
	VALUES(@Name, @InitDeposit, @MaxWith, @AccountHolders, @isMaintainingBalance, @isInterestRates, @isDormancy, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
END







GO

