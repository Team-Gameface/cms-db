USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[FEE] ON 

INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Identification Card', CAST(35.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:21:15.580' AS DateTime), CAST(N'2014-09-20 01:21:15.580' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (2, N'Savings Passbook', CAST(50.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:21:37.247' AS DateTime), CAST(N'2014-09-20 01:21:37.247' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (3, N'Loan Passbook', CAST(50.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:21:54.100' AS DateTime), CAST(N'2014-09-20 01:21:54.100' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (4, N'Share Capital Passbook', CAST(50.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:22:07.433' AS DateTime), CAST(N'2014-09-20 01:22:07.433' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (5, N'Damayan - Deceased Member', CAST(100.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:22:27.120' AS DateTime), CAST(N'2014-09-20 01:22:27.120' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (6, N'Damayan - Deceased Relative', CAST(50.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:22:44.547' AS DateTime), CAST(N'2014-09-20 01:22:44.547' AS DateTime), 0)
INSERT [dbo].[FEE] ([FeeId], [Description], [Amount], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (7, N'General Assembly Non-Attendance Fee', CAST(150.00 AS Decimal(10, 2)), 1, CAST(N'2014-09-20 01:23:10.370' AS DateTime), CAST(N'2014-09-20 01:23:10.370' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[FEE] OFF
