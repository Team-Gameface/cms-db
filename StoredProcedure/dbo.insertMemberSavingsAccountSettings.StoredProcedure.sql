USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertMemberSavingsAccountSettings]    Script Date: 09/11/2014 03:51:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertMemberSavingsAccountSettings](
	@MemberTypeNo AS INT, @NoAllowed AS INT)
AS
BEGIN
	INSERT INTO MEMBER_SAVINGS_ACCOUNT_SETTINGS(MemberTypeNo, NoSavingsAccount, DateCreated, DateModified)
	VALUES(@MemberTypeNo, @NoAllowed, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
END

GO

