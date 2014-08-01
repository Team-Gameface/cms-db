USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateDormancy]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateDormancy](
	@TypeId AS INT, @PenaltyValue AS DECIMAL(18, 2), @PenaltyStatus AS VARCHAR(20), @DormancyValue AS INT, @DormancyStatus AS VARCHAR(20), @ChargeValue AS INT, @ChargeStatus AS VARCHAR(20))
AS
BEGIN
	UPDATE DORMANCY SET PenaltyValue = @PenaltyValue, PenaltyStatus = @PenaltyStatus, DormancyValue = @DormancyValue, DormancyStatus = @DormancyStatus, ChargeDurationValue = @ChargeValue, ChargeDurationStatus = @ChargeStatus WHERE AccountTypeId = @TypeId;
END

















GO
