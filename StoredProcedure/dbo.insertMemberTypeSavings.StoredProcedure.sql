USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberTypeSavings]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMemberTypeSavings]
	(@TypeId AS INT, @MemberTypeNo AS INT)
AS
BEGIN
	INSERT INTO MEMBER_TYPE_SAVINGS_TYPE(AccountTypeId, MemberTypeNo, DateCreated)
	VALUES(@TypeId, @MemberTypeNo, CURRENT_TIMESTAMP)
END














GO
