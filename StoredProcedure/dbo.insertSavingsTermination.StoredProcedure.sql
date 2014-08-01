USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertSavingsTermination]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertSavingsTermination]
	(@AccountNo AS VARCHAR(15), @Reason AS VARCHAR(50), @TerminationDate AS DATETIME)
AS
BEGIN
	INSERT INTO SAVINGS_TERMINATION(SavingsAccountNo, Reason, TerminationDate)
	VALUES(@AccountNo, @Reason, @TerminationDate);
END





GO
