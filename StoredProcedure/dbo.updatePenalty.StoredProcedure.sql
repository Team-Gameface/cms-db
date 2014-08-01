USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updatePenalty]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updatePenalty]
(@PenaltyId as int, @PenaltyName AS varchar(30), @GracePeriod AS int, @Amount AS decimal(10,2), @AmountStatus AS VARCHAR(30),
@Deduction as varchar(30), @DurationStatus as varchar(30), @DurationValue as int, @Status as bit)

AS
BEGIN
UPDATE PENALTY SET PenaltyName=@PenaltyName,
GracePeriod=@GracePeriod, Amount = @Amount, AmountStatus= @AmountStatus, Deduction=@Deduction,
DurationStatus=@DurationStatus, DurationValue=@DurationValue, Status=@Status, DateModified=CURRENT_TIMESTAMP WHERE PenaltyId=@PenaltyId;

END























GO
