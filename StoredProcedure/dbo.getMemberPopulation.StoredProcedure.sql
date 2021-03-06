USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getMemberPopulation]    Script Date: 9/16/2014 12:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMemberPopulation] 
	@year datetime
AS
BEGIN
	SET NOCOUNT ON;

SELECT mt.MemberTypeNo AS 'MemType', mt.Description INTO #Temp1 FROM MEMBER_TYPE mt WHERE mt.Status = 1

DECLARE @memType int
DECLARE @desc varchar(50)
DECLARE @memCtPres int
DECLARE @memCtPrev int

CREATE TABLE #Temp2 (
[Description] varchar(50) not null,
[MembersPresent] int not null,
[MembersPrevious] int not null

)

WHILE (SELECT COUNT(*) FROM #Temp1) > 0
BEGIN

SELECT TOP 1 @memType = [MemType], @desc = Description FROM #Temp1

SELECT @memCtPres = ISNULL((SELECT COUNT(m.AccountNo) FROM MEMBER m INNER JOIN MEMBER_TYPE mt ON m.MemberTypeNo = mt.MemberTypeNo WHERE m.Status = 1 AND m.AccountNo  NOT IN (SELECT AccountNo FROM TERMINATION) AND m.MembershipDate <= DATEADD(yy,DATEDIFF(yy,0,@year)+1,-1) AND m.MemberTypeNo = @memType),0)
SELECT @memCtPrev = ISNULL((SELECT COUNT(m.AccountNo) FROM MEMBER m INNER JOIN MEMBER_TYPE mt ON m.MemberTypeNo = mt.MemberTypeNo WHERE m.Status = 1 AND m.AccountNo  NOT IN (SELECT AccountNo FROM TERMINATION) AND m.MembershipDate <= DATEADD(yy,DATEDIFF(yy,0,@year-1)+1,-1) AND m.MemberTypeNo = @memType),0)

INSERT INTO #Temp2 VALUES (@desc,@memCtPres,@memCtPrev)

DELETE FROM #Temp1 WHERE [MemType] = @memType
END

SELECT * FROM #Temp2
DROP TABLE #Temp1, #Temp2

END

GO
