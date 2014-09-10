USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[EARLY_WITHDRAWAL] ON 

INSERT [dbo].[EARLY_WITHDRAWAL] ([EarlyWithdrawalId], [InterestReduction], [TermsElapsedFrom], [TermsElapsedTo], [Status], [DateCreated], [DateModified]) VALUES (1, CAST(100.0000 AS Decimal(7, 4)), 1, 25, 1, CAST(N'2014-09-10 17:53:44.493' AS DateTime), CAST(N'2014-09-10 17:53:44.493' AS DateTime))
INSERT [dbo].[EARLY_WITHDRAWAL] ([EarlyWithdrawalId], [InterestReduction], [TermsElapsedFrom], [TermsElapsedTo], [Status], [DateCreated], [DateModified]) VALUES (2, CAST(75.0000 AS Decimal(7, 4)), 26, 50, 1, CAST(N'2014-09-10 17:54:13.000' AS DateTime), CAST(N'2014-09-10 17:54:13.000' AS DateTime))
INSERT [dbo].[EARLY_WITHDRAWAL] ([EarlyWithdrawalId], [InterestReduction], [TermsElapsedFrom], [TermsElapsedTo], [Status], [DateCreated], [DateModified]) VALUES (3, CAST(50.0000 AS Decimal(7, 4)), 51, 75, 1, CAST(N'2014-09-10 17:54:26.920' AS DateTime), CAST(N'2014-09-10 17:54:26.920' AS DateTime))
INSERT [dbo].[EARLY_WITHDRAWAL] ([EarlyWithdrawalId], [InterestReduction], [TermsElapsedFrom], [TermsElapsedTo], [Status], [DateCreated], [DateModified]) VALUES (4, CAST(25.0000 AS Decimal(7, 4)), 76, 80, 1, CAST(N'2014-09-10 17:55:04.667' AS DateTime), CAST(N'2014-09-10 17:55:04.667' AS DateTime))
SET IDENTITY_INSERT [dbo].[EARLY_WITHDRAWAL] OFF
