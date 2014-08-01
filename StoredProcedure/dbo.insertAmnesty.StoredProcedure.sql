USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertAmnesty]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insertAmnesty]
(@DateFrom as date, @DateTo AS varchar(15), @Duration AS int, @DurationStatus AS varchar(10),
@waiveInterest AS bit, @waivePenalty AS bit, @Status AS BIT)

AS
BEGIN

INSERT INTO AMNESTY(DateFrom, DateTo, Duration, DurationStatus,
waiveInterest, waivePenalty, Status, isArchived, DateCreated, DateModified)
VALUES(@DateFrom, @DateTo, @Duration, @DurationStatus,
@waiveInterest, @waivePenalty, @Status, 0, CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)

END

















GO
