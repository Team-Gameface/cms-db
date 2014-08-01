USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateMaintainingBalance]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateMaintainingBalance]
				(@TypeId AS INT, @Balance AS DECIMAL(18, 2), @Charge AS DECIMAL(18, 2), @ChargeStatus AS VARCHAR(50), @Duration AS INT, @DurationStatus AS VARCHAR(50))
AS
BEGIN
	UPDATE MAINTAINING_BALANCE SET MaintainingBalance = @Balance, ServiceChargeValue = @Charge, ServiceChargeStatus = @ChargeStatus, ChargeDurationValue = @Duration, ChargeDurationStatus = @DurationStatus WHERE SavingsAccountTypeId = @TypeId;
END

















GO
