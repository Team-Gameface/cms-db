USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertLoanInformation]    Script Date: 9/15/2014 3:32:17 PM ******/
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
	@LessCharges as decimal(10,2),
	@LessLoanBalance as decimal(10,2),
	@LessPenalties as decimal(10,2),
	@LessInterest as decimal(10,2),
	@NetLoanProceeds as decimal(15,2)
	)
AS
BEGIN
	Insert into LOAN_INFORMATION(AccountNo,LoanTypeId,Purpose,PaymentDurationStatus,PaymentDurationValue,Terms,LoanAmount,ApprovedAmount,DateFiled,DateApproved,MaturityDate,LessCharges, LessLoanBalance, LessPenalties, LessInterest,NetLoanProceeds,isCleared,isAmnestized,DateCreated) VALUES
	(@AccountNo,@LoanTypeId,@Purpose,@PaymentDurationStatus,@PaymentDurationValue,@Terms,@LoanAmount,@ApprovedAmount,@DateFiled,@DateApproved,@MaturityDate,@LessCharges, @LessLoanBalance, @LessPenalties, @LessInterest,@NetLoanProceeds,0,0,CURRENT_TIMESTAMP);
END

















GO

