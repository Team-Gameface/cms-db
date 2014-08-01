USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertPenalty]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertPenalty]
(@PenaltyName AS varchar(30), @GracePeriod AS int, @Amount AS decimal(10,2), @AmountStatus AS VARCHAR(30),
@Deduction as varchar(30), @DurationStatus as varchar(30), @DurationValue as int, @Status as bit, @isArchived AS BIT)

AS
BEGIN

INSERT INTO PENALTY(PenaltyName, GracePeriod, Amount, AmountStatus, Deduction, DurationStatus, DurationValue, Status, DateCreated, DateModified, isArchived)
VALUES (@PenaltyName, @GracePeriod, @Amount, @AmountStatus, @Deduction, @DurationStatus, @DurationValue, @Status, CURRENT_TIMESTAMP,CURRENT_TIMESTAMP, @isArchived)

END


















GO
