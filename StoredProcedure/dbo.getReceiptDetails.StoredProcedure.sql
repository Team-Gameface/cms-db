USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getReceiptDetails]    Script Date: 9/14/2014 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[getReceiptDetails] 
	-- Add the parameters for the stored procedure here
	@ORNo int
AS
BEGIN

	SET NOCOUNT ON;

	Declare @PType varchar(30)

SELECT @Ptype = PaymentType FROM PAYMENT WHERE ORNo = @ORNo

IF (@PType = 'Loan')
SELECT ORNo AS 'OR', p.PaymentDate AS 'Time', p.AccountNo AS 'AccountNo', CONCAT(m.LastName, ', ', m.FirstName, ' ', m.MiddleName) AS 'Name', CONCAT('Loan Payment (',lt.LoanTypeName, ' - ',li.ApprovedAmount,')') AS 'Particulars', p.Amount AS 'Amount' FROM PAYMENT p INNER JOIN MEMBER m ON m.AccountNo = p.AccountNo INNER JOIN LOAN_INFORMATION li ON li.LoanApplicationId = p.LoanApplicationId INNER JOIN LOAN_TYPE lt ON lt.LoanTypeId = li.LoanTypeId WHERE p.ORNo = @ORNo
ELSE
SELECT p.ORNo AS 'OR', p.PaymentDate AS 'Time', p.AccountNo AS 'AccountNo', CONCAT(m.LastName, ', ', m.FirstName, ' ', m.MiddleName) AS 'Name', f.Description AS 'Particulars', f.Amount AS 'Amount' FROM PAYMENT p INNER JOIN PAYMENT_FEE pf ON p.ORNo = pf.ORNo INNER JOIN FEE f ON f.FeeId = pf.FeeId INNER JOIN MEMBER m ON m.AccountNo = p.AccountNo WHERE p.ORNo = @ORNo
END

GO
