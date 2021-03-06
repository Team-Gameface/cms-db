USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getTotalShare]    Script Date: 9/16/2014 12:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getTotalShare] 
	@year datetime
AS
BEGIN
	SET NOCOUNT ON;

SELECT mt.MemberTypeNo AS 'MemType', mt.Description INTO #Temp1 FROM MEMBER_TYPE mt WHERE mt.Status = 1 AND mt.hasShareCapital = 1

DECLARE @memType int
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

SELECT TOP 1 @memType = [MemType], @desc = Description FROM #Temp1

SELECT @totalPres = ISNULL((SELECT SUM(c.ShareCapital) FROM MEMBER_SHARECAPITAL c INNER JOIN MEMBER m ON c.accountNo = m.AccountNo INNER JOIN MEMBER_TYPE mt ON m.MemberTypeNo = mt.MemberTypeNo WHERE m.Status = 1 AND m.AccountNo  NOT IN (SELECT AccountNo FROM TERMINATION) AND c.DateOfTransaction <= DATEADD(yy,DATEDIFF(yy,0,@year)+1,-1) AND m.MemberTypeNo = @memType),0)
SELECT @totalPrev = ISNULL((SELECT SUM(c.ShareCapital) FROM MEMBER_SHARECAPITAL c INNER JOIN MEMBER m ON c.accountNo = m.AccountNo INNER JOIN MEMBER_TYPE mt ON m.MemberTypeNo = mt.MemberTypeNo WHERE m.Status = 1 AND m.AccountNo  NOT IN (SELECT AccountNo FROM TERMINATION) AND c.DateOfTransaction <= DATEADD(yy,DATEDIFF(yy,0,@year-1)+1,-1) AND m.MemberTypeNo = @memType),0)

INSERT INTO #Temp2 VALUES (@desc,@totalPres,@totalPrev)

DELETE FROM #Temp1 WHERE [MemType] = @memType
END

SELECT * FROM #Temp2
DROP TABLE #Temp1, #Temp2

END

GO
