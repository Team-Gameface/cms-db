USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertLoanInformationAmnesty]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insertLoanInformationAmnesty]
(@LoanApplicationId as int, @Reason as varchar(160), @Penalty AS decimal(10,2), @Interest AS decimal(10,2), @WaivedPenaltyPercentage AS decimal(5,2),
@WaivedInterestPercentage as decimal(5,2), @LoanBalance as decimal(13,2), @DateApproved as date)

AS
BEGIN

INSERT INTO LOAN_INFORMATION_AMNESTY(LoanApplicationId, Reason, Penalty, Interest, WaivedPenaltyPercentage, WaivedInterestPercentage, LoanBalance,
 DateApproved, DateCreated)
VALUES(@LoanApplicationId, @Reason, @Penalty, @Interest, @WaivedPenaltyPercentage, @WaivedInterestPercentage, @LoanBalance,
 @DateApproved,CURRENT_TIMESTAMP)

END


















GO
