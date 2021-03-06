USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateMemberType]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateMemberType] 
	-- Add the parameters for the stored procedure here
	@TypeNo int,
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
	UPDATE dbo.MEMBER_TYPE SET Description = @TypeName, 
	hasLoan = @hasLoan, hasSavings = @hasSavings, hasShareCapital =	@hasShareCapital, MinimumAge = 	@MinAge,  MaximumAge = @MaxAge, Status = @Status, DateModified=GETDATE() where MemberTypeNo = @TypeNo;
END















GO
