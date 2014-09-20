USE [CMS]
GO
INSERT [dbo].[TIME_DEPOSIT] ([CertificateNo], [AccountNo], [DepositAmount], [Maturity], [DateCreated], [Status]) VALUES (N'TD-00001', N'CP-00001', CAST(75000.00 AS Decimal(18, 2)), CAST(N'2015-03-15' AS Date), CAST(N'2014-09-15 12:58:10.490' AS DateTime), 1)
INSERT [dbo].[TIME_DEPOSIT] ([CertificateNo], [AccountNo], [DepositAmount], [Maturity], [DateCreated], [Status]) VALUES (N'TD-00002', N'CP-00007', CAST(150000.00 AS Decimal(18, 2)), CAST(N'2014-12-16' AS Date), CAST(N'2014-09-16 12:59:49.330' AS DateTime), 1)
INSERT [dbo].[TIME_DEPOSIT] ([CertificateNo], [AccountNo], [DepositAmount], [Maturity], [DateCreated], [Status]) VALUES (N'TD-00003', N'CP-00010', CAST(500000.00 AS Decimal(18, 2)), CAST(N'2015-09-19' AS Date), CAST(N'2014-09-19 13:00:35.583' AS DateTime), 1)
