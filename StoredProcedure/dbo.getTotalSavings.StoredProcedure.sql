USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getTotalSavings]    Script Date: 9/16/2014 12:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getTotalSavings] 
	@year datetime
AS
BEGIN
	SET NOCOUNT ON;

SELECT sat.AccountTypeId AS 'AccountType', sat.SavingsTypeName AS 'Description' INTO #Temp1 FROM SAVINGS_ACCOUNT_TYPE sat WHERE sat.Status = 1

DECLARE @acctType int
DECLARE @desc varchar(50)
DECLARE @ctPres int
DECLARE @ctPrev int
DECLARE @totalPres decimal(18,2)
DECLARE @totalPrev decimal(18,2)

CREATE TABLE #Temp2 (
[Description] varchar(50) not null,
[CountPresent] int not null,
[CountPrevious] int not null,
[TotalPresent] decimal(18,2) not null,
[TotalPrevious] decimal(18,2) not null

)

WHILE (SELECT COUNT(*) FROM #Temp1) > 0
BEGIN

SELECT TOP 1 @acctType = [AccountType], @desc = Description FROM #Temp1
--------------------------------------------------------------------------

SELECT TransactionId, TransactionMode, Amount INTO #Temp3 FROM SAVINGS_TRANSACTION st INNER JOIN SAVINGS_ACCOUNT sa ON st.SavingsAccountNo = sa.SavingsAccountNo INNER JOIN SAVINGS_ACCOUNT_TYPE sat ON sa.AccountTypeId = sat.AccountTypeId WHERE sa.Status = 1 AND st.DateCreated <= DATEADD(yy,DATEDIFF(yy,0,@year)+1,-1) AND sat.AccountTypeId = @acctType --gets all transactions
PRINT CONCAT('Account', @acctType)
Declare @transId int
Declare @mode varchar(30)
Declare @amt decimal(18,2)
Declare @bal decimal(24,2) = 0

While (SELECT COUNT(*) FROM #Temp3) > 0
	BEGIN

	SELECT TOP 1 @transId = TransactionId, @mode = TransactionMode, @amt = Amount FROM #Temp3

	if (@mode = 'Deposit' OR @mode = 'Interest')
		SELECT @bal = @bal + @amt
	else
		SELECT @bal = @bal - @amt

DELETE FROM #Temp3 WHERE TransactionId = @transId
END
SELECT @totalPres = @bal
Print @totalPres
DROP TABLE #Temp3
--------------------------------------------------------------------------
SELECT @ctPres = ISNULL((SELECT COUNT(sa.SavingsAccountNo) FROM SAVINGS_ACCOUNT sa INNER JOIN MEMBER_SAVINGS_ACCOUNT msa ON sa.SavingsAccountNo = msa.SavingsAccountNo INNER JOIN MEMBER m ON msa.MemberAccountNo = m.AccountNo INNER JOIN SAVINGS_ACCOUNT_TYPE sat ON sat.AccountTypeId = sa.AccountTypeId WHERE m.Status = 1 AND sa.Status = 1 AND m.AccountNo NOT IN (SELECT AccountNo FROM TERMINATION) AND sa.DateCreated <= DATEADD(yy,DATEDIFF(yy,0,@year)+1,-1) AND sat.AccountTypeId = @acctType GROUP BY sat.SavingsTypeName),0)
--------------------------------------------------------------------------
SELECT @bal = 0;
PRINT CONCAT('Account', @acctType)
SELECT TransactionId, TransactionMode, Amount INTO #Temp4 FROM SAVINGS_TRANSACTION st INNER JOIN SAVINGS_ACCOUNT sa ON st.SavingsAccountNo = sa.SavingsAccountNo INNER JOIN SAVINGS_ACCOUNT_TYPE sat ON sa.AccountTypeId = sat.AccountTypeId WHERE sa.Status = 1 AND st.DateCreated <= DATEADD(yy,DATEDIFF(yy,0,@year-1)+1,-1) AND sat.AccountTypeId = @acctType --gets all transactions

While (SELECT COUNT(*) FROM #Temp4) > 0
	BEGIN

	SELECT TOP 1 @transId = TransactionId, @mode = TransactionMode, @amt = Amount FROM #Temp4

	if (@mode = 'Deposit' OR @mode = 'Interest')
		SELECT @bal = @bal + @amt
	else
		SELECT @bal = @bal - @amt

DELETE FROM #Temp4 WHERE TransactionId = @transId
END
SELECT @totalPrev = @bal
DROP TABLE #Temp4
--------------------------------------------------------------------------


SELECT @ctPrev = ISNULL((SELECT COUNT(sa.SavingsAccountNo) FROM SAVINGS_ACCOUNT sa INNER JOIN MEMBER_SAVINGS_ACCOUNT msa ON sa.SavingsAccountNo = msa.SavingsAccountNo INNER JOIN MEMBER m ON msa.MemberAccountNo = m.AccountNo INNER JOIN SAVINGS_ACCOUNT_TYPE sat ON sat.AccountTypeId = sa.AccountTypeId WHERE m.Status = 1 AND sa.Status = 1 AND m.AccountNo NOT IN (SELECT AccountNo FROM TERMINATION) AND sa.DateCreated <= DATEADD(yy,DATEDIFF(yy,0,@year-1)+1,-1) AND sat.AccountTypeId = @acctType GROUP BY sat.SavingsTypeName),0)
INSERT INTO #Temp2 VALUES (@desc,@ctPres, @ctPrev,@totalPres,@totalPrev)

DELETE FROM #Temp1 WHERE [AccountType] = @acctType
END

SELECT * FROM #Temp2
DROP TABLE #Temp1, #Temp2

END

GO
