USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertClassification]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertClassification] 
	-- Add the parameters for the stored procedure here
	@desc  varchar(50),
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
	INSERT INTO MEMBER_STATUS (Description, DelinquencyValue, DelinquencyUnit, DelinquencyBasis, DateCreated,DateModified,status,isArchived) VALUES (@desc,@delValue,@delUnit,@delBasis,GETDATE(),GETDATE(),@status,0);
END















GO
