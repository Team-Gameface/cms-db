USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateClass]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		updateClass
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateClass] 
	-- Add the parameters for the stored procedure here
	@statusNo int,
	@className varchar(50),
	@delValue int,
	@delUnit varchar(20),
	@delBasis varchar(50),
	@status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update MEMBER_STATUS set Description=@className, DelinquencyValue = @delValue, DelinquencyUnit = @delUnit, DelinquencyBasis = @delBasis, DateModified = GETDATE(), Status = @status where MemberStatusNo = @statusNo;
END
















GO
