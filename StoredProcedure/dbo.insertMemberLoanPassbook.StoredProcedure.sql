USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberLoanPassbook]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertMemberLoanPassbook]
	(@LoanPassbook AS INT, @AccountNo AS varchar(20))
AS
BEGIN
	INSERT INTO MEMBER_LOAN_PASSBOOK(LoanPassbookNo, AccountNo, Status, DateCreated) VALUES(@LoanPassbook, @AccountNo, 1, CURRENT_TIMESTAMP)
END















GO
