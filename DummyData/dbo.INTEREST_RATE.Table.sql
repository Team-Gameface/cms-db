USE [CMS]
GO
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (1, CAST(2.0000 AS Decimal(7, 4)), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (2, CAST(4.0000 AS Decimal(7, 4)), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (3, CAST(1.0000 AS Decimal(7, 4)), CAST(250.00 AS Decimal(18, 2)))
