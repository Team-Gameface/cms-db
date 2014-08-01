USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateFee]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateFee] 
@feeId int, @feeDesc varchar(50), @feeAmount Decimal(10,2), @Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update FEE set Description= @feeDesc, Amount = @feeAmount, DateModified = GETDATE(), Status = @Status WHERE FeeId = @feeId;
END
















GO
