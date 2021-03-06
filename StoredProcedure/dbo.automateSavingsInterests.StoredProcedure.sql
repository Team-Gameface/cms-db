USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[automateSavingsInterests]    Script Date: 10/31/2014 9:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[automateSavingsInterests]
AS
BEGIN
	SELECT SavingsAccountNo, Balance, InterestRate INTO #Temp FROM SAVINGS_ACCOUNT INNER JOIN SAVINGS_ACCOUNT_TYPE ON SAVINGS_ACCOUNT.AccountTypeId = SAVINGS_ACCOUNT_TYPE.AccountTypeId INNER JOIN INTEREST_RATE ON SAVINGS_ACCOUNT_TYPE.AccountTypeId = INTEREST_RATE.AccountTypeId Where SAVINGS_ACCOUNT.Status = 1 AND isInterestRate = 1 AND (MinimumRange <= Balance)

	Declare @SavingsAcctNo varchar(20)
	Declare @Balance decimal(10,4)  
	Declare @InterestRate decimal(7,4)
	Declare @ComputedCharge decimal(5,4)
	Declare @PassbookNo int
	Declare @LastChargeDate datetime = SYSDATETIME()
	Declare @ChargeDate date = EOMONTH(SYSDATETIME())
	Declare @shallCharge bit
	Declare @Multiplier int
	Declare @debitBalance decimal(10,4)
	Declare @creditBalance decimal(10,4)
	Declare @InterestAmount decimal(10,2)

	While (SELECT COUNT(*) FROM #Temp) > 0
	BEGIN

		Select TOP 1 @SavingsAcctNo = SavingsAccountNo, @Balance = Balance, @InterestRate = InterestRate FROM #Temp
	
		WHILE (DATEPART(weekday,@ChargeDate) IN (1,7))
			BEGIN
				SELECT @ChargeDate = DATEADD(day,-1, @ChargeDate)
			END
		PRINT @ComputedCharge
		if (DATEDIFF(day,SYSDATETIME(),@ChargeDate) = 0)
		BEGIN
			SELECT @ComputedCharge = ((@InterestRate/100)/12)	
		SELECT @LastChargeDate = ISNULL((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Interest' AND SavingsAccountNo = @SavingsAcctNo), (SELECT EOMONTH(MAX(DateCreated)) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo))
		if (ISNULL((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Interest' AND SavingsAccountNo = @SavingsAcctNo), 1) = 1 OR (ISNULL((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Interest' AND SavingsAccountNo = @SavingsAcctNo), 1) != 1 AND @LastChargeDate != @ChargeDate))
	
		SELECT @shallCharge = 1

			if (@shallCharge = 1)
			BEGIN

				Print @LastChargeDate
				if (ISNULL((SELECT MAX(DateCreated) FROM SAVINGS_TRANSACTION WHERE TransactionMode = 'Interest' AND SavingsAccountNo = @SavingsAcctNo), 1) = 1)
				BEGIN
					SELECT @LastChargeDate = @LastChargeDate
					if (DATEDIFF(day,EOMONTH(@LastChargeDate),@LastChargeDate) < 30)
						SELECT @LastChargeDate = DATEADD(month,1,@LastChargeDate)
				END
				ELSE
					SELECT @LastChargeDate = DATEADD(month,1,@LastChargeDate)
				SELECT @Multiplier = DATEDIFF(month,@LastChargeDate,@ChargeDate)
				WHILE (@Multiplier >= 0)
				BEGIN

					WHILE (DATEPART(weekday,@LastChargeDate) IN (1,7))
					BEGIN
						SELECT @LastChargeDate = DATEADD(day,-1, @LastChargeDate)
					END

					Print @lastChargeDate
					SELECT @debitBalance = SUM(Amount) FROM SAVINGS_TRANSACTION WHERE TransactionMode IN ('Deposit','Interest') AND SavingsAccountNo = @SavingsAcctNo AND DateCreated BETWEEN (SELECT MIN(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo) AND DATEFROMPARTS(DATEPART(year,@LastChargeDate),DATEPART(MONTH,@LastChargeDate),DATEPART(day,@LastChargeDate))
					PRINT @DebitBalance
					SELECT  @creditBalance = ISNULL((SELECT SUM(Amount) FROM SAVINGS_TRANSACTION WHERE NOT(TransactionMode IN ('Deposit','Interest')) AND SavingsAccountNo = @SavingsAcctNo AND DateCreated BETWEEN (SELECT MIN(DateCreated) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo) AND DATEFROMPARTS(DATEPART(year,@LastChargeDate),DATEPART(MONTH,@LastChargeDate),DATEPART(day,@LastChargeDate))),0.00)
					PRINT  @CreditBalance
					SELECT @Balance = @debitBalance - @creditBalance
					PRINT @Balance
					SELECT @InterestAmount = CAST(@Balance * @ComputedCharge as decimal(10,2))
					PRINT @InterestAmount
					SELECT @PassbookNo = MAX(SavingsPassbookNo) FROM SAVINGS_TRANSACTION WHERE SavingsAccountNo = @SavingsAcctNo
					INSERT INTO SAVINGS_TRANSACTION(SavingsAccountNo, TransactionMode, Amount, Representative, SavingsPassbookNo, DateCreated, TellerId)
						VALUES( @SavingsAcctNo,'Interest',@InterestAmount,'', @PassbookNo, @LastChargeDate, 'SU-0000000')
					UPDATE SAVINGS_ACCOUNT SET Balance = Balance + @InterestAmount WHERE SavingsAccountNo = @SavingsAcctNo
					PRINT @SavingsAcctNo + ' is subjected to interests.'
					SELECT @Multiplier = @Multiplier - 1
					SELECT @LastChargeDate = EOMONTH(DATEADD(month,1,@LastChargeDate))
				END
			END
		END	

		DELETE FROM #Temp WHERE SavingsAccountNo = @SavingsAcctNo
	END
	DROP TABLE #Temp
END







GO
