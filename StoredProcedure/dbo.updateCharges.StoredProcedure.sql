USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateCharges]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateCharges]
(@ChargeId AS INT, @Status AS BIT, @ChargeName AS VARCHAR(30), @Amount AS decimal(10,2), @AmountStatus AS VARCHAR(30))

AS
BEGIN
UPDATE CHARGES SET Status = @Status,
ChargeName = @ChargeName, Amount = @Amount, AmountStatus= @AmountStatus, DateModified=CURRENT_TIMESTAMP WHERE ChargeId=@ChargeId;

END























GO
