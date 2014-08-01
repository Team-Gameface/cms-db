USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateLoanInterestRate]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateLoanInterestRate]
(@InterestRateId as INT, @LoanTypeId AS INT, @InterestRateStatus AS VARCHAR(20), @InterestRateValue AS DECIMAL(10,2), @Per AS VARCHAR(20), @ActivationDate AS DATE, @Status AS BIT)

AS
BEGIN

UPDATE LOAN_INTEREST_RATE SET InterestRateStatus=@InterestRateStatus, InterestRateValue=@InterestRateValue, Per=@Per,
ActivationDate = @ActivationDate, Status=@Status, DateModified=CURRENT_TIMESTAMP where InterestRateId = @InterestRateId and LoanTypeId=@LoanTypeId;

END

















GO
