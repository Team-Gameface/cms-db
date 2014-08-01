USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertSavingsTransaction]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertSavingsTransaction]
	(@SavingsAccountNo AS VARCHAR(15), @TransactionMode AS VARCHAR(10), @Amount AS DECIMAL(18, 2), @Representative AS VARCHAR(50), @SavingsPassbookNo AS INT)
AS
BEGIN
	INSERT INTO SAVINGS_TRANSACTION(SavingsAccountNo, TransactionMode, Amount, Representative, SavingsPassbookNo, DateCreated)
	VALUES(@SavingsAccountNo, @TransactionMode, @Amount, @Representative, @SavingsPassbookNo, CURRENT_TIMESTAMP)
END









GO
