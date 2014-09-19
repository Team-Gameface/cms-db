USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[PENALTY] ON 

INSERT [dbo].[PENALTY] ([PenaltyId], [PenaltyName], [GracePeriod], [Amount], [AmountStatus], [Deduction], [DurationStatus], [DurationValue], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Overdue Penalty', 3, CAST(25.00 AS Decimal(10, 2)), N'Php', N'', N'week/s', 1, 1, CAST(N'2014-09-20 01:34:49.443' AS DateTime), CAST(N'2014-09-20 01:34:49.443' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PENALTY] OFF
