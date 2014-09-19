USE [CMS]
GO
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (1, CAST(0.2500 AS Decimal(7, 4)), CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (2, CAST(0.3000 AS Decimal(7, 4)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (3, CAST(0.5000 AS Decimal(7, 4)), CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[INTEREST_RATE] ([AccountTypeId], [InterestRate], [MinimumRange]) VALUES (4, CAST(0.2000 AS Decimal(7, 4)), CAST(500.00 AS Decimal(18, 2)))
