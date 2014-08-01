USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateLoanType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateLoanType]
(@LoanTypeId as INT, @LoanTypeName as VARCHAR(50), @MinimumPaymentDuration AS INT, @MinPDStatus AS VARCHAR(10), @MaximumPaymentDuration AS INT,
@MaxPDStatus AS VARCHAR(10), @MaxLoanableAmt AS DECIMAL(10,2), @MaxLoanableAmtStatus AS VARCHAR(5), @Deduction AS VARCHAR(30),
@CoMaker AS int, @isCollateral as BIT, @Status AS BIT)

AS
BEGIN

UPDATE LOAN_TYPE SET LoanTypeName=@LoanTypeName, MinimumPaymentDuration=@MinimumPaymentDuration,
MinPDStatus=@MinPDStatus, MaximumPaymentDuration=@MaximumPaymentDuration, MaxPDStatus=@MaxPDStatus, MaxLoanableAmt=@MaxLoanableAmt,
MaxLoanableAmtStatus=@MaxLoanableAmtStatus, Deduction=@Deduction, CoMaker=@CoMaker, isCollateral=@isCollateral, Status=@Status, DateModified=CURRENT_TIMESTAMP where LoanTypeId=@LoanTypeId;

END


















GO
