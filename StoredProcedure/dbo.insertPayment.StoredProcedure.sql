USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertPayment]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertPayment]
(@PaymentType AS varchar(20), @AmountPaid AS decimal(10,2), @AccountNo AS varchar(20), @isFullyPaid AS BIT)

as
BEGIN

INSERT INTO PAYMENT(PaymentType, PaymentDate, Amount, AccountNo, isFullyPaid)
VALUES (@PaymentType, CURRENT_TIMESTAMP, @AmountPaid, @AccountNo, @isFullyPaid)

END




















GO
