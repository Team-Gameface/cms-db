USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertAmortizationPayment]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[insertAmortizationPayment]
(@PaymentType AS varchar(20), @AmountPaid AS decimal(10,2), @Penalty AS decimal(10,2), @Interest as decimal(10,2), @hasInterest as bit, @AccountNo AS varchar(20), @AmortizationId as int, @LoanApplicationId as int, @isFullyPaid AS BIT)

as
BEGIN

INSERT INTO PAYMENT(PaymentType, PaymentDate, Amount, Penalty, Interest, hasInterest, AccountNo, AmortizationId, LoanApplicationId, isFullyPaid)
VALUES (@PaymentType, CURRENT_TIMESTAMP, @AmountPaid, @Penalty, @Interest, @hasInterest, @AccountNo, @AmortizationId, @LoanApplicationId, @isFullyPaid)

END




















GO
