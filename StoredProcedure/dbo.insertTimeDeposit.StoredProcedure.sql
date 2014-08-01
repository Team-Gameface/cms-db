USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertTimeDeposit]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertTimeDeposit]
	(@CertificateNo AS VARCHAR(15), @AccountTypeId AS INT, @AccountNo AS VARCHAR(15), @Amount AS DECIMAL(18, 2), @Maturity AS DATE)
AS
BEGIN
	INSERT INTO TIME_DEPOSIT(CertificateNo, AccountTypeId, AccountNo, DepositAmount, Maturity, DateCreated, isHold, Status)
	VALUES(@CertificateNo, @AccountTypeId, @AccountNo, @Amount, @Maturity, CURRENT_TIMESTAMP,0, 1)
END








GO
