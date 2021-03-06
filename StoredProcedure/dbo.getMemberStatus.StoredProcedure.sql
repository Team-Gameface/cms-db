USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[getMemberStatus]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[getMemberStatus] 
	-- Add the parameters for the stored procedure here
	@AccountNo varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Declare @EarliestMaturityDate date
Declare @MaturityDateDifference int
Declare @EarliestAmortizationDateUnpaid date
Declare @LatestAmortizationDateDifference int
Declare @Class varchar(50)
Declare @MemStatNo int
Declare @MemTypeNo int
Declare @Desc varchar(50)
Declare @DelValue int
Declare @DelUnit varchar(20)
Declare @DelBasis varchar(50)
Declare @ComputedDelValue bigint
Declare @CurrentDelValue bigint = 0
Declare @ctr int

	SELECT @ctr = COUNT(*) FROM MEMBER INNER JOIN MEMBER_TYPE ON MEMBER.MemberTypeNo = MEMBER_TYPE.MemberTypeNo INNER JOIN LOAN_INFORMATION ON MEMBER.AccountNo = LOAN_INFORMATION.AccountNo INNER JOIN LOAN_AMORTIZATION ON LOAN_INFORMATION.LoanApplicationId = LOAN_AMORTIZATION.LoanApplicationId WHERE Member.AccountNo = @AccountNo AND (AmortizationDueDate < SYSDATETIME() AND isPaid = 0) OR (MaturityDate < SYSDATETIME() and isCleared = 0)

	SELECT @Class = Description FROM MEMBER_STATUS WHERE DelinquencyValue = 0 --default
if (@ctr > 0)
	SELECT @ctr = COUNT(*) FROM MEMBER INNER JOIN MEMBER_TYPE ON MEMBER.MemberTypeNo = MEMBER_TYPE.MemberTypeNo INNER JOIN LOAN_INFORMATION ON MEMBER.AccountNo = LOAN_INFORMATION.AccountNo INNER JOIN LOAN_AMORTIZATION ON LOAN_INFORMATION.LoanApplicationId = LOAN_AMORTIZATION.LoanApplicationId WHERE Member.AccountNo = @AccountNo AND (MaturityDate < SYSDATETIME() and isCleared = 0)
	if (@ctr > 0)
	BEGIN
		SELECT @EarliestMaturityDate = MIN(MaturityDate),  @MemTypeNo = MemberTypeNo FROM MEMBER INNER JOIN LOAN_INFORMATION ON MEMBER.AccountNo = LOAN_INFORMATION.AccountNo INNER JOIN LOAN_AMORTIZATION ON LOAN_INFORMATION.LoanApplicationId = LOAN_AMORTIZATION.LoanApplicationId WHERE Member.AccountNo = @AccountNo AND MaturityDate < SYSDATETIME() and isCleared = 0 GROUP BY MemberTypeNo
		SELECT @MaturityDateDifference = DATEDIFF(day,@EarliestMaturityDate,SYSDATETIME())
		SELECT Member_STATUS.MemberStatusNo, MEMBER_STATUS.Description, DelinquencyValue, DelinquencyUnit, DelinquencyBasis INTO #Temp FROM MEMBER_STATUS INNER JOIN MEMBER_TYPE_STATUS ON MEMBER_STATUS.MemberStatusNo = MEMBER_TYPE_STATUS.MemberStatusNo INNER JOIN MEMBER_TYPE ON MEMBER_TYPE_STATUS.MemberTypeNo = MEMBER_TYPE.MemberTypeNo WHERE MEMBER_TYPE_STATUS.MemberTypeNo = @MemTypeNo AND DelinquencyBasis = 'Loan Maturity Date'
		While (SELECT COUNT(*) FROM #Temp) > 0
		BEGIN
				
				SELECT TOP 1 @MemStatNo = MemberStatusNo, @Desc = Description, @DelValue = DelinquencyValue, @DelUnit = DelinquencyUnit, @DelBasis = DelinquencyBasis FROM #Temp
				IF (@DelUnit = 'Days')
				BEGIN
					SELECT @ComputedDelValue = @DelValue
				END
				ELSE IF (@DelUnit = 'Months')
				BEGIN
					SELECT @ComputedDelValue = @DelValue * 28
				END
				ELSE IF (@DelUnit = 'Years')
					SELECT @ComputedDelValue = @DelValue * 28*12
				if (@MaturityDateDifference > @ComputedDelValue AND @ComputedDelValue > @CurrentDelValue)
				BEGIN
					SELECT @CurrentDelValue = @ComputedDelValue
					SELECT @Class = @Desc
				END

				DELETE FROM #Temp WHERE MemberStatusNo = @MemStatNo

		END
		DROP TABLE #Temp
	END
	ELSE
	BEGIN		--amortization
		SELECT @ctr = COUNT(*) FROM MEMBER INNER JOIN LOAN_INFORMATION ON MEMBER.AccountNo = LOAN_INFORMATION.AccountNo INNER JOIN LOAN_AMORTIZATION ON LOAN_INFORMATION.LoanApplicationId = LOAN_AMORTIZATION.LoanApplicationId WHERE Member.AccountNo = @AccountNo AND AmortizationDueDate < SYSDATETIME() and isPaid = 0
		SELECT @EarliestAmortizationDateUnpaid = MIN(AmortizationDueDate), @MemTypeNo = MemberTypeNo FROM MEMBER INNER JOIN LOAN_INFORMATION ON MEMBER.AccountNo = LOAN_INFORMATION.AccountNo INNER JOIN LOAN_AMORTIZATION ON LOAN_INFORMATION.LoanApplicationId = LOAN_AMORTIZATION.LoanApplicationId WHERE Member.AccountNo = @AccountNo AND AmortizationDueDate < SYSDATETIME() and isPaid = 0 GROUP BY MemberTypeNo
		SELECT @LatestAmortizationDateDifference = DATEDIFF(day,@EarliestAmortizationDateUnpaid,SYSDATETIME())

		SELECT Member_STATUS.MemberStatusNo, MEMBER_STATUS.Description, DelinquencyValue, DelinquencyUnit, DelinquencyBasis INTO #Temp2 FROM MEMBER_STATUS INNER JOIN MEMBER_TYPE_STATUS ON MEMBER_STATUS.MemberStatusNo = MEMBER_TYPE_STATUS.MemberStatusNo INNER JOIN MEMBER_TYPE ON MEMBER_TYPE_STATUS.MemberTypeNo = MEMBER_TYPE.MemberTypeNo WHERE MEMBER_TYPE_STATUS.MemberTypeNo = @MemTypeNo AND DelinquencyBasis = 'Amortization Due Date'
		While (SELECT COUNT(*) FROM #Temp2) > 0
		BEGIN
				SELECT TOP 1 @MemStatNo = MemberStatusNo, @Desc = Description, @DelValue = DelinquencyValue, @DelUnit = DelinquencyUnit, @DelBasis = DelinquencyBasis FROM #Temp2
				IF (@DelUnit = 'Days')
				BEGIN
					SELECT @ComputedDelValue = @DelValue
				END
				ELSE IF (@DelUnit = 'Months')
				BEGIN
					SELECT @ComputedDelValue = @DelValue * 28
				END
				ELSE IF (@DelUnit = 'Years')
					SELECT @ComputedDelValue = @DelValue * 28*12
				if (@LatestAmortizationDateDifference > @ComputedDelValue AND @ComputedDelValue > @CurrentDelValue)
				BEGIN
					SELECT @CurrentDelValue = @ComputedDelValue
					SELECT @Class = @Desc
				END

				DELETE FROM #Temp2 WHERE MemberStatusNo = @MemStatNo

		END
		DROP TABLE #Temp2
	END


	

SELECT @Class

END




GO
