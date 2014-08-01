USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertComaker]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertComaker]
	(
	@LoanApplicationId as int,
	@AccountNo as varchar(15),
	@ResidentCertificateNo as varchar(20),
	@RPlaceIssued as varchar(30),
	@RDateIssued as date,
	@SpouseCertificateNo as varchar(20),
	@SPlaceIssued as varchar(30),
	@SDateIssued as varchar(10)
	)
AS
BEGIN
	Insert into COMAKER(LoanApplicationId,AccountNo,ResidentCertificateNo,RPlaceIssued,RDateIssued,SpouseCertificateNo,SPlaceIssued,SDateIssued) VALUES
	(@LoanApplicationId,@AccountNo,@ResidentCertificateNo,@RPlaceIssued,@RDateIssued,@SpouseCertificateNo,@SPlaceIssued,@SDateIssued);
END

















GO
