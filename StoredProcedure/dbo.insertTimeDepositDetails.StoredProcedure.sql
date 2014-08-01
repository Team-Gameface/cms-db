USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertTimeDepositDetails]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertTimeDepositDetails]
	(@CertificateNo AS VARCHAR(15), @TotalAmount AS DECIMAL(18, 2), @Penalty AS DECIMAL(18,2))
AS
BEGIN
	INSERT INTO TIME_DEPOSIT_DETAILS(CertificateNo, Penalty, TotalAmount, DateCreated)
	VALUES(@CertificateNo, @Penalty, @TotalAmount, CURRENT_TIMESTAMP)
END









GO
