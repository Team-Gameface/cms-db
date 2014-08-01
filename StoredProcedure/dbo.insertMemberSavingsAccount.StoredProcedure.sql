USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberSavingsAccount]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMemberSavingsAccount]
	(@MemberAccountNo AS VARCHAR(15), @SavingsAccountNo AS VARCHAR(15))
AS
BEGIN
	INSERT INTO MEMBER_SAVINGS_ACCOUNT(MemberAccountNo, SavingsAccountNo)
	VALUES (@MemberAccountNo, @SavingsAccountNo)
END




GO
