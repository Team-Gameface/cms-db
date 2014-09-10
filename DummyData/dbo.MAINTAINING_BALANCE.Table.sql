USE [CMS]
GO
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (1, CAST(500.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Pesos (Php)', 1, N'week/s')
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (2, CAST(1000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'Pesos (Php)', 1, N'week/s')
INSERT [dbo].[MAINTAINING_BALANCE] ([SavingsAccountTypeId], [MaintainingBalance], [ServiceChargeValue], [ServiceChargeStatus], [ChargeDurationValue], [ChargeDurationStatus]) VALUES (3, CAST(250.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Pesos (Php)', 1, N'week/s')
