USE [CMS]
GO
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (1, CAST(2000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'Pesos (Php)', 3, N'month/s')
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (2, CAST(5000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'Pesos (Php)', 2, N'month/s')
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (3, CAST(10000.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), N'Pesos (Php)', 2, N'month/s')
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (4, CAST(500.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'Pesos (Php)', 3, N'month/s')
