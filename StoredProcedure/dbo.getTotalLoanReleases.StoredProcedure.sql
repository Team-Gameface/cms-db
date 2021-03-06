USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getTotalLoanReleases]    Script Date: 9/16/2014 12:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getTotalLoanReleases] 
	@year datetime
AS
BEGIN
	SET NOCOUNT ON;

SELECT lt.LoanTypeId, lt.LoanTypeName INTO #Temp1 FROM LOAN_TYPE lt WHERE lt.Status = 1

DECLARE @loanType int
DECLARE @desc varchar(50)
DECLARE @totalPres decimal(18,2)
DECLARE @totalPrev decimal(18,2)

CREATE TABLE #Temp2 (
[Description] varchar(50) not null,
[TotalPresent] decimal(18,2) not null,
[TotalPrevious] decimal(18,2) not null

)

WHILE (SELECT COUNT(*) FROM #Temp1) > 0
BEGIN

SELECT TOP 1 @loanType = LoanTypeId, @desc = LoanTypeName FROM #Temp1

SELECT @totalPres = ISNULL((SELECT SUM(li.NetLoanProceeds) FROM LOAN_INFORMATION li INNER JOIN LOAN_TYPE lt ON li.LoanTypeId = lt.LoanTypeId WHERE li.DateApproved >= DATEADD(yy,DATEDIFF(yy,0,@year),0) AND li.DateApproved <= DATEADD(yy,DATEDIFF(yy,0,@year)+1,-1) AND li.LoanTypeId = @loanType),0)
SELECT @totalPrev = ISNULL((SELECT SUM(li.NetLoanProceeds) FROM LOAN_INFORMATION li INNER JOIN LOAN_TYPE lt ON li.LoanTypeId = lt.LoanTypeId WHERE li.DateApproved >= DATEADD(yy,DATEDIFF(yy,0,@year-1),0) AND li.DateApproved <= DATEADD(yy,DATEDIFF(yy,0,@year-1)+1,-1) AND li.LoanTypeId = @loanType),0)

INSERT INTO #Temp2 VALUES (@desc,@totalPres,@totalPrev)

DELETE FROM #Temp1 WHERE LoanTypeId = @loanType
END

SELECT * FROM #Temp2
DROP TABLE #Temp1, #Temp2

END
