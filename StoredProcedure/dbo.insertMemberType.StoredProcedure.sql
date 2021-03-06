USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMemberType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[insertMemberType] 
	-- Add the parameters for the stored procedure here
	@TypeName varchar(20), 
	@hasLoan bit,
	@hasSavings bit,
	@hasShareCapital bit,
	@MinAge int,
	@MaxAge int,
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT into dbo.MEMBER_TYPE (Description, hasLoan, hasSavings, hasShareCapital, MinimumAge, MaximumAge,DateCreated,DateModified, Status, isArchived) values (@TypeName, 
	@hasLoan,
	@hasSavings,
	@hasShareCapital,
	@MinAge,
	@MaxAge,
	GETDATE(),GETDATE(),
	@Status, 0);
END















GO
