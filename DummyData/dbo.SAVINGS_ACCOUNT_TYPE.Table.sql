USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[SAVINGS_ACCOUNT_TYPE] ON 

INSERT [dbo].[SAVINGS_ACCOUNT_TYPE] ([AccountTypeId], [SavingsTypeName], [InitialDeposit], [MaximumWithdrawal], [NoOfAccountHolders], [isMaintainingBalance], [isInterestRate], [isDormancy], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Regular', CAST(500.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), 1, 1, 1, 1, 1, CAST(N'2014-09-10 17:30:10.147' AS DateTime), CAST(N'2014-09-10 17:30:39.370' AS DateTime), 0)
INSERT [dbo].[SAVINGS_ACCOUNT_TYPE] ([AccountTypeId], [SavingsTypeName], [InitialDeposit], [MaximumWithdrawal], [NoOfAccountHolders], [isMaintainingBalance], [isInterestRate], [isDormancy], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (2, N'Premium', CAST(1000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), 1, 1, 1, 1, 1, CAST(N'2014-09-10 17:32:57.920' AS DateTime), CAST(N'2014-09-10 17:32:57.920' AS DateTime), 0)
INSERT [dbo].[SAVINGS_ACCOUNT_TYPE] ([AccountTypeId], [SavingsTypeName], [InitialDeposit], [MaximumWithdrawal], [NoOfAccountHolders], [isMaintainingBalance], [isInterestRate], [isDormancy], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (3, N'Kiddie', CAST(250.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), 1, 1, 1, 1, 1, CAST(N'2014-09-10 17:34:47.390' AS DateTime), CAST(N'2014-09-10 17:34:47.390' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[SAVINGS_ACCOUNT_TYPE] OFF
