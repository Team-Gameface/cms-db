USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertLoanInformation]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertLoanInformation]
	(
	@AccountNo as varchar(15),
	@LoanTypeId as int,
	@Purpose as varchar(160),
	@PaymentDurationStatus as varchar(30),
	@PaymentDurationValue as int,
	@Terms as varchar(30),
	@LoanAmount as decimal(10,2),
	@ApprovedAmount as decimal(10,2),
	@DateFiled as date,
	@DateApproved as date,
	@MaturityDate as date,
	@NetLoanProceeds as decimal(15,2)
	)
AS
BEGIN
	Insert into LOAN_INFORMATION(AccountNo,LoanTypeId,Purpose,PaymentDurationStatus,PaymentDurationValue,Terms,LoanAmount,ApprovedAmount,DateFiled,DateApproved,MaturityDate,NetLoanProceeds,isCleared,isAmnestized,DateCreated) VALUES
	(@AccountNo,@LoanTypeId,@Purpose,@PaymentDurationStatus,@PaymentDurationValue,@Terms,@LoanAmount,@ApprovedAmount,@DateFiled,@DateApproved,@MaturityDate,@NetLoanProceeds,0,0,CURRENT_TIMESTAMP);
END
















GO
