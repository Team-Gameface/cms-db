USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertSavingsAccount]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertSavingsAccount]
	(@SavingsAccountNo AS VARCHAR(15), @WithMode AS VARCHAR(3), @TypeId AS INT, @Balance AS DECIMAL(18, 2))
AS
BEGIN
	INSERT INTO SAVINGS_ACCOUNT(SavingsAccountNo, WithdrawalMode, Balance, Status, DateCreated, AccountTypeId)
	VALUES (@SavingsAccountNo, @WithMode, @Balance, 1, CURRENT_TIMESTAMP, @TypeId)
END






GO
