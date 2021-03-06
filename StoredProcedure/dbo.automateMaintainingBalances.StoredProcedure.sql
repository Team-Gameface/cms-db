USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[automateMaintainingBalances]    Script Date: 10/31/2014 9:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[automateMaintainingBalances]
	
AS
BEGIN
	SELECT SavingsAccountNo, Balance, MaintainingBalance, ServiceChargeValue, ServiceChargeStatus, ChargeDurationValue,ChargeDurationStatus INTO #Temp FROM SAVINGS_ACCOUNT INNER JOIN SAVINGS_ACCOUNT_TYPE ON SAVINGS_ACCOUNT.AccountTypeId = SAVINGS_ACCOUNT_TYPE.AccountTypeId INNER JOIN MAINTAINING_BALANCE ON SAVINGS_ACCOUNT_TYPE.AccountTypeId = MAINTAINING_BALANCE.SavingsAccountTypeId Where SAVINGS_ACCOUNT.Status = 1

	Declare @SavingsAcctNo varchar(20)
	Declare @Balance decimal(10,4)  
	Declare @MaintainingBalance decimal(10,4)
	Declare @ServiceChargeValue decimal (5,2)
	Declare @ServiceChargeStatus varchar(20)
	Declare @ComputedCharge decimal(5,2)
	Declare @ChargeDurationValue int
	Declare @ChargeDurationStatus varchar(10)
	Declare @ComputedDuration int
	Declare @PassbookNo int
	Declare @LastChargeDate datetime = SYSDATETIME()
	Declare @shallCharge bit
	Declare @Multiplier int

	While (SELECT COUNT(*) FROM #Temp) > 0
	BEGIN

	   Select TOP 1 @SavingsAcctNo = SavingsAccountNo, @Balance = Balance, @MaintainingBalance = MaintainingBalance, @ServiceChargeValue = ServiceChargeValue, @ServiceChargeStatus = ServiceChargeStatus, @ChargeDurationValue = ChargeDurationValue, @ChargeDurationStatus = ChargeDurationStatus FROM #Temp

	-- check if kakaltasan
		if (@Balance < @MaintainingBalance AND @Balance > 0.00)	--check kung mababa
		BEGIN
		IF (@ChargeDurationStatus = 'day/s')
		BEGIN
			SELECT @ComputedDuration = @ChargeDurationValue
		
		END
		ELSE IF (@ChargeDurationStatus = 'week/s')
		BEGIN
			SELECT @ComputedDuration = @ChargeDurationValue * 7
		END
		IF (@ChargeDurationStatus = 'month/s')
		BEGIN
			SELECT @ComputedDuration = @ChargeDurationValue * 30
			PRINT 'Reached this 2'
		END
		ELSE IF (@ChargeDurationStatus = 'year/s')
			SELECT @ComputedDuration = @ChargeDurationValue * 360

		SELECT @LastChargeDate = MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Service Charge' AND SavingsAccountNo = @SavingsAcctNo
		IF (ISNULL(dbo.WeekDayCount(@LastChargeDate,SYSDATETIME()),-1)) > @ComputedDuration
				SELECT @LastChargeDate = MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo
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
			if (@ServiceChargeStatus = '% of Current Balance')
				SELECT @ComputedCharge = @Balance*(@ServiceChargeValue/100)
			else
				SELECT @ComputedCharge = @ServiceChargeValue
			SELECT @PassbookNo = MAX(SavingsPassbookNo) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo
			
			INSERT INTO SAVINGS_TRANSACTION(SavingsAccountNo, TransactionMode, Amount, Representative, SavingsPassbookNo, DateCreated, TellerId)
		VALUES( @SavingsAcctNo,'Service Charge',@ComputedCharge,'', @PassbookNo, dbo.AddWorkDays(@ComputedDuration,(SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo)), 'SU-0000000')
			UPDATE SAVINGS_ACCOUNT SET Balance = Balance - @ComputedCharge WHERE SavingsAccountNo = @SavingsAcctNo
			PRINT @SavingsAcctNo + ' is subjected to service charges.'
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
