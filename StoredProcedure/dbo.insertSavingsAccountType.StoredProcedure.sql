USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertSavingsAccountType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertSavingsAccountType] 
	(@Name AS VARCHAR(50), @InitDeposit AS DECIMAL(18, 2), @MaxWith AS DECIMAL(18, 2), @AccountHolders AS INT, @isMaintainingBalance AS INT,
	@isDormancy AS INT, @isInterestRates AS INT, @isTimeDeposit AS INT, @Status AS INT)
AS
BEGIN
	INSERT INTO SAVINGS_ACCOUNT_TYPE(SavingsTypeName, InitialDeposit, MaximumWithdrawal, NoOfAccountHolders, isMaintainingBalance, isInterestRate, isDormancy, isTimeDeposit, Status, DateCreated, DateModified)
	VALUES(@Name, @InitDeposit, @MaxWith, @AccountHolders, @isMaintainingBalance, @isInterestRates, @isDormancy, @isTimeDeposit, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
END






GO
