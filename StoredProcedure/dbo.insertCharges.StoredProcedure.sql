USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertCharges]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertCharges]
(@Status AS BIT, @ChargeName AS VARCHAR(30), @Amount AS decimal(10,2), @AmountStatus AS VARCHAR(30), @isArchived AS BIT)

AS
BEGIN

INSERT INTO CHARGES(ChargeName, Amount, AmountStatus, Status, DateCreated, DateModified, isArchived)
VALUES (@ChargeName, @Amount, @AmountStatus, @Status, CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,@isArchived)

END


















GO
