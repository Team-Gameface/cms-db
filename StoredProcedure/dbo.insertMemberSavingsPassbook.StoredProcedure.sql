USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberSavingsPassbook]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMemberSavingsPassbook]
	(@PassbookNo AS INT, @SavingsAccountNo AS VARCHAR(15))
AS
BEGIN
	INSERT INTO MEMBER_SAVINGS_PASSBOOK(SavingsPassbookNo, SavingsAccountNo, Status, DateCreated)
	VALUES (@PassbookNo, @SavingsAccountNo, 1, CURRENT_TIMESTAMP)
END















GO
