USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateMemberSavingsAccountSettings]    Script Date: 09/11/2014 03:51:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateMemberSavingsAccountSettings](
	@MemberTypeNo AS INT, @NoAllowed AS INT)
AS
BEGIN
	UPDATE MEMBER_SAVINGS_ACCOUNT_SETTINGS SET MemberTypeNo = @MemberTypeNo, NoSavingsAccount = @NoAllowed, DateModified = CURRENT_TIMESTAMP;
END

GO

