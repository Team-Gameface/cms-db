USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[MEMBER_TYPE] ON 

INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Regular', 1, 1, 1, 18, 0, 1, CAST(N'2014-09-20 01:17:43.630' AS DateTime), CAST(N'2014-09-20 01:17:43.630' AS DateTime), 0)
INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (2, N'Associate A', 1, 1, 1, 18, 0, 1, CAST(N'2014-09-20 01:17:57.300' AS DateTime), CAST(N'2014-09-20 01:17:57.300' AS DateTime), 0)
INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (3, N'Associate B', 1, 0, 1, 18, 0, 1, CAST(N'2014-09-20 01:18:07.727' AS DateTime), CAST(N'2014-09-20 01:18:07.727' AS DateTime), 0)
INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (4, N'Kiddie Savers', 0, 1, 0, 0, 17, 1, CAST(N'2014-09-20 01:18:28.290' AS DateTime), CAST(N'2014-09-20 01:18:28.290' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[MEMBER_TYPE] OFF
