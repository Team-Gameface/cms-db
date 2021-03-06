USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[selectTransactions]    Script Date: 9/14/2014 5:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectTransactions] 
	-- Add the parameters for the stored procedure here
	@accountNo varchar(15) 
AS
BEGIN
	
SELECT DateCreated, TransactionId, TransactionMode, Amount, Representative INTO #Temp1 FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @accountNo


Declare @date datetime
Declare @transId int
Declare @mode varchar(30)
Declare @amt decimal(18,2)
Declare @bal decimal(24,2) = 0
Declare @rep varchar(50)

CREATE TABLE #Temp2 (
	
	transDate datetime not null,
	transId int not null,
	mode varchar(30) not null,
	amt decimal(18,2) not null,
	bal decimal(24,2) not null,
	Representative varchar(50) null
)


While (SELECT COUNT(*) FROM #Temp1) > 0
	BEGIN

	SELECT TOP 1 @date = DateCreated, @transId = TransactionId, @mode = TransactionMode, @amt = Amount, @rep = Representative FROM #Temp1

	if (@mode = 'Deposit' OR @mode = 'Interest')
		SELECT @bal = @bal + @amt
	else
		SELECT @bal = @bal - @amt

INSERT INTO #Temp2 VALUES(@date,@transId, @mode,@amt,@bal,@rep)
DELETE FROM #Temp1 WHERE TransactionId = @transId
	END

SELECT transDate AS [Time], transId AS [Txn ID], mode AS [Trans. Type], amt AS [Amount], bal AS [Balance], Representative FROM #Temp2
DROP TABLE #Temp1, #Temp2

END

GO
