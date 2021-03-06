USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateLoanType]    Script Date: 1/1/2015 1:28:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateLoanType]
(@LoanTypeId as INT, @LoanTypeName as VARCHAR(50), @MinimumPaymentDuration AS INT, @MinPDStatus AS VARCHAR(10), @MaximumPaymentDuration AS INT,
@MaxPDStatus AS VARCHAR(10), @MaxLoanableAmtFixed AS DECIMAL(10,2), @MaxLoanableAmtShareCap AS DECIMAL(10,2),
@CoMaker AS int, @isCollateral as BIT, @Status AS BIT)

AS
BEGIN

UPDATE LOAN_TYPE SET LoanTypeName=@LoanTypeName, MinimumPaymentDuration=@MinimumPaymentDuration,
MinPDStatus=@MinPDStatus, MaximumPaymentDuration=@MaximumPaymentDuration, MaxPDStatus=@MaxPDStatus, MaxLoanableAmtFixed=@MaxLoanableAmtFixed,
MaxLoanableAmtShareCap=@MaxLoanableAmtShareCap, CoMaker=@CoMaker, isCollateral=@isCollateral, Status=@Status, DateModified=CURRENT_TIMESTAMP where LoanTypeId=@LoanTypeId;

END



















GO

