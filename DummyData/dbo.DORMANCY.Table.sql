USE [CMS]
GO
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (1, CAST(200.00 AS Decimal(18, 2)), N'Php', 1, N'Year/s', 6, N'Month/s')
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (2, CAST(500.00 AS Decimal(18, 2)), N'Php', 1, N'Year/s', 1, N'Year/s')
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (3, CAST(100.00 AS Decimal(18, 2)), N'Php', 6, N'Month/s', 3, N'Month/s')
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (4, CAST(100.00 AS Decimal(18, 2)), N'Php', 1, N'Year/s', 3, N'Month/s')
