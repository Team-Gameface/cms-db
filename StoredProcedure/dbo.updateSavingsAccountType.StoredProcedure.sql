USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateSavingsAccountType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateSavingsAccountType]
	(@Name AS VARCHAR(50), @InitDeposit AS DECIMAL(18, 2), @MaxWith AS DECIMAL(18, 2), @AccountHolders AS INT, @isMaintainingBalance AS INT,
	@isDormancy AS INT, @isInterestRates AS INT, @isTimeDeposit AS INT, @Status AS INT, @AccountTypeId AS INT)
AS
BEGIN
	UPDATE SAVINGS_ACCOUNT_TYPE SET SavingsTypeName = @Name, InitialDeposit = @InitDeposit, MaximumWithdrawal = @MaxWith, NoOfAccountHolders = @AccountHolders, isMaintainingBalance = @isMaintainingBalance, isInterestRate = @isInterestRates, isDormancy = @isDormancy, isTimeDeposit = @isTimeDeposit, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE AccountTypeId = @AccountTypeId;
END





GO
