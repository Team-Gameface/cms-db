USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertLoanInterestRate]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertLoanInterestRate]
(@LoanTypeId AS INT, @InterestRateStatus AS VARCHAR(20), @InterestRateValue AS DECIMAL(10,2), @Per AS VARCHAR(20), @ActivationDate AS DATE, @Status AS BIT)

AS

BEGIN

INSERT INTO LOAN_INTEREST_RATE(LoanTypeId, InterestRateStatus, InterestRateValue, Per, ActivationDate, isArchived, Status, DateCreated, DateModified)
VALUES (@LoanTypeId, @InterestRateStatus, @InterestRateValue, @Per, @ActivationDate, 0, @Status, CURRENT_TIMESTAMP,
CURRENT_TIMESTAMP)

END

















GO
