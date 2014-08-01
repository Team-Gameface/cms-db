USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertFee]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[insertFee] 
	-- Add the parameters for the stored procedure here
	@feeDesc varchar(50),
	@amount decimal(10,2),
	@status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into FEE (Description, Amount, Status, DateCreated, DateModified, isArchived) Values (@feeDesc,@amount,@status,GETDATE(),GETDATE(),0);
END
















GO
