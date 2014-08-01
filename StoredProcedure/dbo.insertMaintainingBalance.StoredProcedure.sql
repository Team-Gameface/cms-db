USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMaintainingBalance]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertMaintainingBalance]
	(@TypeId AS INT, @Balance AS DECIMAL(18,2), @ChargeValue AS DECIMAL(18,2), @ChargeStatus AS VARCHAR(50), @DurationValue AS INT, @DurationStatus AS VARCHAR(50))
AS
BEGIN
	INSERT INTO MAINTAINING_BALANCE(SavingsAccountTypeId, MaintainingBalance, ServiceChargeValue, ServiceChargeStatus, ChargeDurationValue, ChargeDurationStatus)
	VALUES(@TypeId, @Balance, @ChargeValue, @ChargeStatus, @DurationValue, @DurationStatus);
END

















GO
