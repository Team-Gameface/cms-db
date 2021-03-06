USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[MEMBER_STATUS] ON 

INSERT [dbo].[MEMBER_STATUS] ([MemberStatusNo], [Description], [DelinquencyValue], [DelinquencyUnit], [DelinquencyBasis], [DateCreated], [DateModified], [isArchived], [Status]) VALUES (1, N'Class A', 0, N'', N'', CAST(N'2014-09-20 01:19:35.417' AS DateTime), CAST(N'2014-09-20 01:19:35.417' AS DateTime), 0, 1)
INSERT [dbo].[MEMBER_STATUS] ([MemberStatusNo], [Description], [DelinquencyValue], [DelinquencyUnit], [DelinquencyBasis], [DateCreated], [DateModified], [isArchived], [Status]) VALUES (2, N'Class B', 1, N'Days', N'Amortization Due Date', CAST(N'2014-09-20 01:19:51.177' AS DateTime), CAST(N'2014-09-20 01:19:51.177' AS DateTime), 0, 1)
INSERT [dbo].[MEMBER_STATUS] ([MemberStatusNo], [Description], [DelinquencyValue], [DelinquencyUnit], [DelinquencyBasis], [DateCreated], [DateModified], [isArchived], [Status]) VALUES (3, N'Class C', 1, N'Days', N'Loan Maturity Date', CAST(N'2014-09-20 01:20:05.047' AS DateTime), CAST(N'2014-09-20 01:20:05.047' AS DateTime), 0, 1)
INSERT [dbo].[MEMBER_STATUS] ([MemberStatusNo], [Description], [DelinquencyValue], [DelinquencyUnit], [DelinquencyBasis], [DateCreated], [DateModified], [isArchived], [Status]) VALUES (4, N'Class D', 3, N'Months', N'Loan Maturity Date', CAST(N'2014-09-20 01:20:22.407' AS DateTime), CAST(N'2014-09-20 01:20:22.407' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[MEMBER_STATUS] OFF
