USE [CMS]
GO
INSERT [dbo].[SAVINGS_ACCOUNT] ([SavingsAccountNo], [WithdrawalMode], [Status], [DateCreated], [AccountTypeId], [Balance]) VALUES (N'SV-00001', N'', 1, CAST(N'2014-09-10 19:04:33.653' AS DateTime), 2, CAST(20000.00 AS Decimal(18, 2)))
INSERT [dbo].[SAVINGS_ACCOUNT] ([SavingsAccountNo], [WithdrawalMode], [Status], [DateCreated], [AccountTypeId], [Balance]) VALUES (N'SV-00002', N'', 1, CAST(N'2014-09-10 19:05:00.997' AS DateTime), 3, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[SAVINGS_ACCOUNT] ([SavingsAccountNo], [WithdrawalMode], [Status], [DateCreated], [AccountTypeId], [Balance]) VALUES (N'SV-00003', N'', 1, CAST(N'2014-09-10 19:05:21.600' AS DateTime), 1, CAST(1000.00 AS Decimal(18, 2)))
