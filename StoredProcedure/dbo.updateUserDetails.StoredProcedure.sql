USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateUserDetails]    Script Date: 09/14/2014 17:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateUserDetails](
	@Id AS VARCHAR(11), @Last AS VARCHAR(50), @First AS VARCHAR(50), @Middle AS VARCHAR(50), @Username AS VARCHAR(50), @Password AS VARCHAR(50), @Picture AS VARBINARY(MAX))
AS
BEGIN
	UPDATE SYSTEM_USERS SET LastName = @Last, FirstName = @First, MiddleName = @Middle, Username = @Username, Password = @Password, Picture = @Picture, DateModified = CURRENT_TIMESTAMP WHERE UserId = @Id;
END

GO
