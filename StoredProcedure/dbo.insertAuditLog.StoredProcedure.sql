USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertAuditLog]    Script Date: 09/15/2014 10:42:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertAuditLog](
	@Activity AS VARCHAR(50), @Module AS VARCHAR(50), @UserId AS VARCHAR(11))
AS
BEGIN
	INSERT INTO AUDIT_LOG(Activity, Module, LogTime, UserId)
	VALUES(@Activity, @Module, CURRENT_TIMESTAMP, @UserId)
END

GO

