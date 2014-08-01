USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertLoanAmortization]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertLoanAmortization]
	(
	@LoanApplicationId as int,
	@AmortizationDueDate as date,
	@Amount as decimal(10,2)
	)
AS
BEGIN
	Insert into LOAN_AMORTIZATION(LoanApplicationId,AmortizationDueDate,Amount,isPaid) VALUES
	(@LoanApplicationId, @AmortizationDueDate, @Amount,0);
END


















GO
