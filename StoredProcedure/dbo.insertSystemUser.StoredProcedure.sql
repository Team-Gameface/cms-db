USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertSystemUser]    Script Date: 09/12/2014 22:51:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertSystemUser](
	@Id AS VARCHAR(11), @FirstName AS VARCHAR(50), @MiddleName AS VARCHAR(50), @LastName AS VARCHAR(50), @Position AS VARCHAR(50), @Username AS VARCHAR(50), @Password AS VARCHAR(50), @UserType AS VARCHAR(50))
AS
BEGIN
	INSERT INTO SYSTEM_USERS(UserId, FirstName, MiddleName, LastName, Position, Username, Password, UserType, DateCreated, DateModified)
	VALUES(@Id, @FirstName, @MiddleName, @LastName, @Position, @Username, @Password, @UserType, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
END

GO

