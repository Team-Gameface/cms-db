USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertTermination]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertTermination]
(@Reason AS varchar(20), @Details AS varchar(20), @AccountNo AS VARCHAR(20))

as
BEGIN

INSERT INTO TERMINATION(Reason, Details, AccountNo, DateCreated, DateModified)
VALUES (@Reason, @Details, @AccountNo, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


UPDATE MEMBER SET Status = 0 where AccountNo = @AccountNo;

END




















GO
