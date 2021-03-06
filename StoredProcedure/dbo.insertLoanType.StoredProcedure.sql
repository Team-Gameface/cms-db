USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertLoanType]    Script Date: 1/1/2015 1:28:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertLoanType]
(@LoanTypeName as VARCHAR(50), @MinimumPaymentDuration AS INT, @MinPDStatus AS VARCHAR(10), @MaximumPaymentDuration AS INT,
@MaxPDStatus AS VARCHAR(10), @MaxLoanableAmtFixed AS DECIMAL(10,2), @MaxLoanableAmtShareCap as DECIMAL(10,2),
@CoMaker AS int, @isCollateral as BIT, @Status AS BIT,@isArchived AS BIT)

AS
BEGIN

INSERT INTO LOAN_TYPE(LoanTypeName, MinimumPaymentDuration, MinPDStatus, MaximumPaymentDuration, MaxPDStatus, 
MaxLoanableAmtFixed, MaxLoanableAmtShareCap, CoMaker, isCollateral, Status, DateCreated, DateModified, isArchived)
VALUES(@LoanTypeName,@MinimumPaymentDuration,@MinPDStatus,@MaximumPaymentDuration,@MaxPDStatus,@MaxLoanableAmtFixed,@MaxLoanableAmtShareCap,@CoMaker, @isCollateral, @Status,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,@isArchived)

END


















GO

