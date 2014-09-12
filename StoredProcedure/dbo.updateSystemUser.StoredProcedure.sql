USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[updateSystemUser]    Script Date: 09/13/2014 00:17:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateSystemUser](
	@Id AS VARCHAR(11), @FirstName AS VARCHAR(50), @MiddleName AS VARCHAR(50), @LastName AS VARCHAR(50), @Position AS VARCHAR(50), @Username AS VARCHAR(50), @Password AS VARCHAR(50), @UserType AS VARCHAR(50))
AS
BEGIN
	UPDATE SYSTEM_USERS SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, Position = @Position, Username = @Username, Password = @Password, UserType = @UserType, DateModified = CURRENT_TIMESTAMP WHERE UserId = @Id
END

GO

