@echo off
echo Re-Creating Database (cms-db)
sqlcmd.exe -i CMS.Database.sql

echo Creating USER DEFINED FUNCTIONS
sqlcmd.exe -i UserDefinedFunction\dbo.AddWorkDays.UserDefinedFunction.sql
sqlcmd.exe -i UserDefinedFunction\dbo.RemoveSpecialChars.UserDefinedFunction.sql
sqlcmd.exe -i UserDefinedFunction\dbo.WeekDayCount.UserDefinedFunction.sql

echo Creating TABLES (41 Tables)
echo -MEMBER MAINTENANCE TABLES (5 Table/s)
sqlcmd.exe -i Table\dbo.MEMBER_TYPE.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_STATUS.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_TYPE_STATUS.Table.sql
sqlcmd.exe -i Table\dbo.FEE.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_TYPE_FEE.Table.sql

echo -SAVINGS MAINTENANCE TABLES (6 Table/s)
sqlcmd.exe -i Table\dbo.SAVINGS_ACCOUNT_TYPE.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_TYPE_SAVINGS_TYPE.Table.sql
sqlcmd.exe -i Table\dbo.MAINTAINING_BALANCE.Table.sql
sqlcmd.exe -i Table\dbo.DORMANCY.Table.sql
sqlcmd.exe -i Table\dbo.INTEREST_RATE.Table.sql
sqlcmd.exe -i Table\dbo.TIME_DEPOSIT_INTEREST.Table.sql
sqlcmd.exe -i Table\dbo.EARLY_WITHDRAWAL.Table.sql

echo -LOAN MAINTENANCE TABLES (9 Table/s)
sqlcmd.exe -i Table\dbo.LOAN_TYPE.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_TYPE_AVAILABILITY.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_INTEREST_RATE.Table.sql
sqlcmd.exe -i Table\dbo.CHARGES.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_TYPE_CHARGES.Table.sql
sqlcmd.exe -i Table\dbo.PENALTY.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_TYPE_PENALTY.Table.sql
sqlcmd.exe -i Table\dbo.MINIMUM_CAPITAL_CONTRIBUTION.Table.sql
sqlcmd.exe -i Table\dbo.AMNESTY.Table.sql

echo -MEMBER TRANSACTION TABLES (4 Table/s)
sqlcmd.exe -i Table\dbo.MEMBER.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_CAPITAL_PASSBOOK.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_LOAN_PASSBOOK.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_SHARECAPITAL.Table.sql

echo -SAVINGS TRANSACTION TABLES (8 Table/s)
sqlcmd.exe -i Table\dbo.SAVINGS_ACCOUNT.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_SAVINGS_ACCOUNT.Table.sql
sqlcmd.exe -i Table\dbo.MEMBER_SAVINGS_PASSBOOK.Table.sql
sqlcmd.exe -i Table\dbo.SAVINGS_TERMINATION.Table.sql
sqlcmd.exe -i Table\dbo.SAVINGS_TRANSACTION.Table.sql
sqlcmd.exe -i Table\dbo.TIME_DEPOSIT.Table.sql
sqlcmd.exe -i Table\dbo.TIME_DEPOSIT_DETAILS.Table.sql
sqlcmd.exe -i Table\dbo.TERMINATION.Table.sql

echo -LOAN TRANSACTION TABLES (8 Table/s)
sqlcmd.exe -i Table\dbo.LOAN_INFORMATION.Table.sql
sqlcmd.exe -i Table\dbo.COMAKER.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_AMORTIZATION.Table.sql
sqlcmd.exe -i Table\dbo.PROPERTY_COLLATERAL.Table.sql
sqlcmd.exe -i Table\dbo.PAYMENT.Table.sql
sqlcmd.exe -i Table\dbo.PAYMENT_FEE.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_INFORMATION_AMNESTY.Table.sql
sqlcmd.exe -i Table\dbo.LOAN_AMNESTY.Table.sql

echo -SYSTEM TABLES (2 Table/s)
sqlcmd.exe -i Table\dbo.EMPLOYEE.Table.sql
sqlcmd.exe -i Table\dbo.COMPANY.Table.sql

echo Creating STORED PROCEDURES
sqlcmd.exe -i StoredProcedure\dbo.insertAmnesty.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertAmortizationPayment.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertCharges.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertClassification.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertComaker.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertCompany.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertContribution.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertDormancy.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertEarlyWithdrawal.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertFee.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertInitialDeposit.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertInterestRate.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertLoanAmortization.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertLoanInformation.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertLoanInformationAmnesty.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertLoanInterestRate.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertLoanType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMaintainingBalance.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMember.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberCapitalPassbook.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberLoanPassbook.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberSavingsAccount.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberSavingsPassbook.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertMemberTypeSavings.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertPayment.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertPenalty.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertPropertyCollateral.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertSavingsAccount.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertSavingsAccountType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertSavingsTermination.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertSavingsTransaction.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertTermination.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertTermOfPayment.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertTimeDeposit.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertTimeDepositDetails.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.insertTimeDepositInterest.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.SpInsert_MinimumCapitalContribution.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateCharges.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateClass.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateDormancy.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateEarlyWithdrawal.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateFee.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateInitialDeposit.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateInterestRate.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateLoanInterestRate.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateLoanType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateMaintainingBalance.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateMember.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateMemberType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updatePenalty.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateSavingsAccountType.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateTermOfPayment.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.updateTimeDepositInterest.StoredProcedure.sql

echo Creating AUTOMATION STORED PROCEDURES
sqlcmd.exe -i StoredProcedure\dbo.automateCheckDormantAccounts.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.automateMaintainingBalances.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.automateSavingsInterests.StoredProcedure.sql
sqlcmd.exe -i StoredProcedure\dbo.getMemberStatus.StoredProcedure.sql

echo Inserting DUMMY DATA
pause