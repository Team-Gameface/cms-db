USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[SAVINGS_TRANSACTION] ON 

INSERT [dbo].[SAVINGS_TRANSACTION] ([TransactionId], [SavingsAccountNo], [TransactionMode], [Amount], [Representative], [SavingsPassbookNo], [DateCreated], [TellerId]) VALUES (1, N'SV-00001', N'Deposit', CAST(25000.00 AS Decimal(18, 2)), N'', 1, CAST(N'2014-09-05 11:31:53.423' AS DateTime), N'SU-0000000')
INSERT [dbo].[SAVINGS_TRANSACTION] ([TransactionId], [SavingsAccountNo], [TransactionMode], [Amount], [Representative], [SavingsPassbookNo], [DateCreated], [TellerId]) VALUES (2, N'SV-00002', N'Deposit', CAST(25000.00 AS Decimal(18, 2)), N'', 2, CAST(N'2014-09-06 11:32:21.630' AS DateTime), N'SU-0000000')
INSERT [dbo].[SAVINGS_TRANSACTION] ([TransactionId], [SavingsAccountNo], [TransactionMode], [Amount], [Representative], [SavingsPassbookNo], [DateCreated], [TellerId]) VALUES (3, N'SV-00003', N'Deposit', CAST(5000.00 AS Decimal(18, 2)), N'', 3, CAST(N'2014-09-14 11:32:33.470' AS DateTime), N'SU-0000000')
INSERT [dbo].[SAVINGS_TRANSACTION] ([TransactionId], [SavingsAccountNo], [TransactionMode], [Amount], [Representative], [SavingsPassbookNo], [DateCreated], [TellerId]) VALUES (4, N'SV-00004', N'Deposit', CAST(40000.00 AS Decimal(18, 2)), N'', 4, CAST(N'2014-09-11 11:33:35.970' AS DateTime), N'SU-0000000')
INSERT [dbo].[SAVINGS_TRANSACTION] ([TransactionId], [SavingsAccountNo], [TransactionMode], [Amount], [Representative], [SavingsPassbookNo], [DateCreated], [TellerId]) VALUES (5, N'SV-00005', N'Deposit', CAST(20000.00 AS Decimal(18, 2)), N'', 5, CAST(N'2014-09-07 11:33:53.860' AS DateTime), N'SU-0000000')
SET IDENTITY_INSERT [dbo].[SAVINGS_TRANSACTION] OFF
