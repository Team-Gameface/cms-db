@echo off
echo Inserting Dummy Data (cms-db)

echo -MEMBER MAINTENANCE Data
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_TYPE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_STATUS.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_TYPE_STATUS.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.FEE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_TYPE_FEE.Table.sql

echo -LOAN MAINTENANCE DATA
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.LOAN_TYPE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.LOAN_TYPE_AVAILABILITY.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.LOAN_INTEREST_RATE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.CHARGES.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.LOAN_TYPE_CHARGES.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.PENALTY.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.LOAN_TYPE_PENALTY.Table.sql

echo -SAVINGS MAINTENANCE DATA
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.SAVINGS_ACCOUNT_TYPE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_TYPE_SAVINGS_TYPE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MAINTAINING_BALANCE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.DORMANCY.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.INTEREST_RATE.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.TIME_DEPOSIT_INTEREST.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.EARLY_WITHDRAWAL.Table.sql

echo -MEMBER DATA
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_CAPITAL_PASSBOOK.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_LOAN_PASSBOOK.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_SHARECAPITAL.Table.sql

echo -SAVINGS ACCOUNT DATA
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.SAVINGS_ACCOUNT.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_SAVINGS_ACCOUNT.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.MEMBER_SAVINGS_PASSBOOK.Table.sql
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.SAVINGS_TRANSACTION.Table.sql

echo -AUDIT LOG Data
sqlcmd.exe -S AGAPHETOS -i DummyData\dbo.AUDIT_LOG.Table.sql
pause