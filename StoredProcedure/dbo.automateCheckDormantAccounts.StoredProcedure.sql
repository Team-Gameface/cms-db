USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[automateCheckDormantAccounts]    Script Date: 10/31/2014 9:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[automateCheckDormantAccounts]
AS
BEGIN
	SELECT SavingsAccountNo, Balance, DormancyValue, DormancyStatus, PenaltyValue, PenaltyStatus, ChargeDurationValue,ChargeDurationStatus INTO #Temp FROM SAVINGS_ACCOUNT INNER JOIN SAVINGS_ACCOUNT_TYPE ON SAVINGS_ACCOUNT.AccountTypeId = SAVINGS_ACCOUNT_TYPE.AccountTypeId INNER JOIN DORMANCY ON SAVINGS_ACCOUNT_TYPE.AccountTypeId = DORMANCY.AccountTypeId Where SAVINGS_ACCOUNT.Status = 1

	Declare @SavingsAcctNo varchar(20)
	Declare @Balance decimal(10,2)  
	Declare @DormancyValue int
	Declare @DormancyStatus varchar(20)
	Declare @PenaltyValue decimal (18,2)
	Declare @PenaltyStatus varchar(20)
	Declare @ComputedCharge decimal(10,4)
	Declare @ChargeDurationValue int
	Declare @ChargeDurationStatus varchar(10)
	Declare @ComputedDuration int
	Declare @ComputedDormancyDuration int
	Declare @PassbookNo int
	Declare @LastChargeDate datetime = SYSDATETIME()
	Declare @shallCharge bit
	Declare @Multiplier int

	While (SELECT COUNT(*) FROM #Temp) > 0
	BEGIN

	   Select TOP 1 @SavingsAcctNo = SavingsAccountNo, @Balance = Balance, @DormancyValue = DormancyValue, @DormancyStatus = DormancyStatus, @PenaltyValue = PenaltyValue, @PenaltyStatus = PenaltyStatus, @ChargeDurationValue = ChargeDurationValue, @ChargeDurationStatus = ChargeDurationStatus FROM #Temp

	-- check if kakaltasan

		IF (@DormancyStatus = 'Day/s')
		BEGIN
			SELECT @ComputedDormancyDuration = @DormancyValue
		
		END
		ELSE IF (@DormancyStatus = 'Month/s')
		BEGIN
			SELECT @ComputedDormancyDuration = @DormancyValue * 30
			PRINT 'Reached this 2'
		END
		ELSE IF (@DormancyStatus = 'Year/s')
			SELECT @ComputedDormancyDuration = @DormancyValue * 360

		if (dbo.WeekDayCount((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo AND TransactionMode IN('Deposit','Withdraw')),SYSDATETIME()) > @ComputedDormancyDuration)	--check kung mababa
		BEGIN
		IF (@ChargeDurationStatus = 'Day/s')
		BEGIN
			SELECT @ComputedDuration = @ChargeDurationValue
		
		END
		ELSE IF (@ChargeDurationStatus = 'Month/s')
		BEGIN
			SELECT @ComputedDuration = @ChargeDurationValue * 30
			PRINT 'Reached this 2'
		END
		ELSE IF (@ChargeDurationStatus = 'Year/s')
			SELECT @ComputedDuration = @ChargeDurationValue * 360

		SELECT @LastChargeDate = MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Dormancy Penalty' AND SavingsAccountNo = @SavingsAcctNo
		IF (ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),-1)) > @ComputedDuration
				SELECT @LastChargeDate = dbo.AddWorkDays(@ComputedDormancyDuration, (SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo AND TransactionMode IN('Deposit','Withdraw')))
		IF (ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),-1) >= @ComputedDuration AND ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),-1) >= 0)
		SELECT @shallCharge = 1
		ELSE IF ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),-1) = -1
		SELECT @shallCharge = 1
		ELSE SELECT @shallCharge = 0

		if (@shallCharge = 1)
			BEGIN
			SELECT @Multiplier = ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),1)/@ComputedDuration
			if (@Multiplier < 1) SELECT @Multiplier = ISNULL(dbo.WeekDayCount((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo),SYSDATETIME()),-1)/@ComputedDuration
			WHILE (@Multiplier > 0 AND @Balance > 0.00)
			BEGIN
				if (@PenaltyStatus = '%')
					SELECT @ComputedCharge = @Balance*(@PenaltyValue/100)
				else
					SELECT @ComputedCharge = @PenaltyValue
				SELECT @PassbookNo = MAX(SavingsPassbookNo) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo
				INSERT INTO SAVINGS_TRANSACTION(SavingsAccountNo, TransactionMode, Amount, Representative, SavingsPassbookNo, DateCreated, TellerId)
			VALUES( @SavingsAcctNo,'Dormancy Penalty',@ComputedCharge,'', @PassbookNo, ISNULL(dbo.AddWorkDays(@ComputedDuration,@LastChargeDate),dbo.AddWorkDays(@ComputedDormancyDuration, (SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo AND TransactionMode IN('Deposit','Withdraw')))), 'SU-0000000')
				UPDATE SAVINGS_ACCOUNT SET Balance = Balance - @ComputedCharge WHERE SavingsAccountNo = @SavingsAcctNo
				PRINT @SavingsAcctNo + ' is subjected to penalty charges.'
				SELECT @Multiplier = @Multiplier - 1
				SELECT @LastChargeDate = ISNULL(dbo.AddWorkDays(@ComputedDuration,@LastChargeDate),dbo.AddWorkDays(@ComputedDuration,(SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo)))
				SELECT @Balance = Balance FROM SAVINGS_ACCOUNT WHERE SavingsAccountNo = @SavingsAcctNo
				END
				END
			END	

			DELETE FROM #Temp WHERE SavingsAccountNo = @SavingsAcctNo
		END
	DROP TABLE #Temp
END







GO
