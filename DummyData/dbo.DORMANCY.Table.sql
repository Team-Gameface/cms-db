USE [CMS]
GO
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (1, CAST(12.00 AS Decimal(18, 2)), N'Php', 2, N'Year/s', 1, N'Day/s')
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (2, CAST(24.00 AS Decimal(18, 2)), N'Php', 2, N'Year/s', 1, N'Day/s')
INSERT [dbo].[DORMANCY] ([AccountTypeId], [PenaltyValue], [PenaltyStatus], [DormancyValue], [DormancyStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (3, CAST(5.00 AS Decimal(18, 2)), N'Php', 2, N'Year/s', 1, N'Day/s')
