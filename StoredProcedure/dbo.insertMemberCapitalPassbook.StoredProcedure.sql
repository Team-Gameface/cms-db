USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberCapitalPassbook]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertMemberCapitalPassbook]
	(@CapitalPassbook AS INT, @AccountNo AS varchar(20))
AS
BEGIN
	INSERT INTO MEMBER_CAPITAL_PASSBOOK(CapitalPassbookNo, AccountNo, Status, DateCreated) VALUES(@CapitalPassbook, @AccountNo, 1, CURRENT_TIMESTAMP)
END















GO
