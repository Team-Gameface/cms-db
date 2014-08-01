USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateInitialDeposit]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateInitialDeposit]
		(@TypeId AS INT, @InitialDeposit AS DECIMAL(18, 2), @Status AS INT)
AS
BEGIN
	UPDATE INITIAL_DEPOSIT SET InitialDeposit = @InitialDeposit, Status = @Status, DateModified = CURRENT_TIMESTAMP WHERE AccountTypeId = @TypeId;
END
















GO
