USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertTimeDeposit]    Script Date: 09/10/2014 20:50:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertTimeDeposit]
	(@CertificateNo AS VARCHAR(15), @AccountNo AS VARCHAR(15), @Amount AS DECIMAL(18, 2), @Maturity AS DATE)
AS
BEGIN
	INSERT INTO TIME_DEPOSIT(CertificateNo, AccountNo, DepositAmount, Maturity, DateCreated, Status)
	VALUES(@CertificateNo, @AccountNo, @Amount, @Maturity, CURRENT_TIMESTAMP, 1)
END









GO

