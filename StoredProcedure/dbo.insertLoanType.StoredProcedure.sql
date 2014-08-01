USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertLoanType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertLoanType]
(@LoanTypeName as VARCHAR(50), @MinimumPaymentDuration AS INT, @MinPDStatus AS VARCHAR(10), @MaximumPaymentDuration AS INT,
@MaxPDStatus AS VARCHAR(10), @MaxLoanableAmt AS DECIMAL(10,2), @MaxLoanableAmtStatus AS VARCHAR(5), @Deduction AS VARCHAR(30),
@CoMaker AS int, @isCollateral as BIT, @Status AS BIT,@isArchived AS BIT)

AS
BEGIN

INSERT INTO LOAN_TYPE(LoanTypeName, MinimumPaymentDuration, MinPDStatus, MaximumPaymentDuration, MaxPDStatus, 
MaxLoanableAmt, MaxLoanableAmtStatus, Deduction, CoMaker, isCollateral, Status, DateCreated, DateModified, isArchived)
VALUES(@LoanTypeName,@MinimumPaymentDuration,@MinPDStatus,@MaximumPaymentDuration,@MaxPDStatus,@MaxLoanableAmt,@MaxLoanableAmtStatus,
@Deduction,@CoMaker, @isCollateral, @Status,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,@isArchived)

END

















GO
