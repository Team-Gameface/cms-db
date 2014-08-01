USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertInitialDeposit]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertInitialDeposit]
		(@TypeId AS INT, @InitialDeposit AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	INSERT INTO INITIAL_DEPOSIT(AccountTypeId, InitialDeposit, Status, DateCreated, DateModified)
	VALUES(@TypeId, @InitialDeposit, @Status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
END
















GO
