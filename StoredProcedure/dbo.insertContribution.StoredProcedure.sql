USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertContribution]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[insertContribution] 
	-- Add the parameters for the stored procedure here
	@accountNo varchar(15) = 0, 
	@amount decimal(8,2) = 0
AS
BEGIN

    -- Insert statements for procedure here
	INSERT INTO MEMBER_SHARECAPITAL (AccountNo, ShareCapital) VALUES (@accountNo,@amount);
END










GO
