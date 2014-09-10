USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[MEMBER_TYPE] ON 

INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (1, N'Regular', 1, 1, 1, 18, 0, 1, CAST(N'2014-09-10 17:16:11.860' AS DateTime), CAST(N'2014-09-10 17:16:11.860' AS DateTime), 0)
INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (2, N'Associate', 1, 1, 1, 18, 0, 1, CAST(N'2014-09-10 17:16:21.170' AS DateTime), CAST(N'2014-09-10 17:16:21.170' AS DateTime), 0)
INSERT [dbo].[MEMBER_TYPE] ([MemberTypeNo], [Description], [hasLoan], [hasSavings], [hasShareCapital], [MinimumAge], [MaximumAge], [Status], [DateCreated], [DateModified], [isArchived]) VALUES (3, N'Kiddie Savers', 0, 1, 0, 1, 17, 1, CAST(N'2014-09-10 17:16:36.083' AS DateTime), CAST(N'2014-09-10 17:16:36.083' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[MEMBER_TYPE] OFF
