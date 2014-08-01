USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertDormancy]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertDormancy](
	@TypeId AS INT, @PenaltyValue AS DECIMAL(18, 2), @PenaltyStatus AS VARCHAR(20), @DormancyValue AS INT, @DormancyStatus AS VARCHAR(20), @ChargeValue AS INT, @ChargeStatus AS VARCHAR(20))
AS
BEGIN
	INSERT INTO DORMANCY(AccountTypeId, PenaltyValue, PenaltyStatus, DormancyValue, DormancyStatus, ChargeDurationValue, ChargeDurationStatus)
	VALUES(@TypeId, @PenaltyValue, @PenaltyStatus, @DormancyValue, @DormancyStatus, @ChargeValue, @ChargeStatus);
END

















GO
