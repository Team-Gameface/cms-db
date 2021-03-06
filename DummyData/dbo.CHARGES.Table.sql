USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[CHARGES] ON 

INSERT [dbo].[CHARGES] ([ChargeId], [ChargeName], [Amount], [AmountStatus], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Filing Fee', CAST(30.00 AS Decimal(10, 2)), N'Php', 1, CAST(N'2014-09-20 01:31:49.663' AS DateTime), CAST(N'2014-09-20 01:31:49.663' AS DateTime), 0)
INSERT [dbo].[CHARGES] ([ChargeId], [ChargeName], [Amount], [AmountStatus], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (2, N'Processing Fee - Regular Loans', CAST(120.00 AS Decimal(10, 2)), N'Php', 1, CAST(N'2014-09-20 01:32:28.983' AS DateTime), CAST(N'2014-09-20 01:32:28.983' AS DateTime), 0)
INSERT [dbo].[CHARGES] ([ChargeId], [ChargeName], [Amount], [AmountStatus], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (3, N'Processing Fee - Short-Term', CAST(100.00 AS Decimal(10, 2)), N'Php', 1, CAST(N'2014-09-20 01:33:15.830' AS DateTime), CAST(N'2014-09-20 01:33:24.650' AS DateTime), 0)
INSERT [dbo].[CHARGES] ([ChargeId], [ChargeName], [Amount], [AmountStatus], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (4, N'Cooperative Mutual Aid Fund', CAST(50.00 AS Decimal(10, 2)), N'Php', 1, CAST(N'2014-09-20 01:34:14.917' AS DateTime), CAST(N'2014-09-20 01:34:14.917' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CHARGES] OFF
