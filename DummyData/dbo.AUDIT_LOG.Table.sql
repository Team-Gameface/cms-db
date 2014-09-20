USE [CMS]
GO
SET IDENTITY_INSERT [dbo].[AUDIT_LOG] ON 

INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (1, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 01:17:23.590' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (2, N'Add ''Regular''', N'Maintenance - Member Types', N'SU-0000000', CAST(N'2014-09-20 01:17:45.253' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (3, N'Add ''Associate A''', N'Maintenance - Member Types', N'SU-0000000', CAST(N'2014-09-20 01:17:57.873' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (4, N'Add ''Associate B''', N'Maintenance - Member Types', N'SU-0000000', CAST(N'2014-09-20 01:18:08.233' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (5, N'Add ''Kiddie Savers''', N'Maintenance - Member Types', N'SU-0000000', CAST(N'2014-09-20 01:18:29.327' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (6, N'Add ''Class A''', N'Maintenance - Delinquency Classifications', N'SU-0000000', CAST(N'2014-09-20 01:19:36.273' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (7, N'Add ''Class B''', N'Maintenance - Delinquency Classifications', N'SU-0000000', CAST(N'2014-09-20 01:19:51.950' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (8, N'Add ''Class C''', N'Maintenance - Delinquency Classifications', N'SU-0000000', CAST(N'2014-09-20 01:20:05.487' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (9, N'Add ''Class D''', N'Maintenance - Delinquency Classifications', N'SU-0000000', CAST(N'2014-09-20 01:20:23.480' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (10, N'Add ''Identification Card''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:21:16.703' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (11, N'Add ''Savings Passbook''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:21:38.327' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (12, N'Add ''Loan Passbook''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:21:55.013' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (13, N'Add ''Share Capital Passbook''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:22:08.190' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (14, N'Add ''Damayan - Deceased Member''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:22:27.900' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (15, N'Add ''Damayan - Deceased Relative''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:22:45.447' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (16, N'Add ''General Assembly Non-Attendance Fee''', N'Maintenance - Miscellaneous Fee Schedule', N'SU-0000000', CAST(N'2014-09-20 01:23:11.180' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (17, N'Add for Loan Type ID ''1''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:30:02.653' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (18, N'Add for Loan Type ID ''2''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:30:11.600' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (19, N'Add for Loan Type ID ''3''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:30:24.077' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (20, N'Add for Loan Type ID ''4''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:30:35.313' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (21, N'Add for Loan Type ID ''5''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:30:51.180' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (22, N'Add for Loan Type ID ''6''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:31:03.007' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (23, N'Add for Loan Type ID ''7''', N'Maintenance - Loan Interest Rates', N'SU-0000000', CAST(N'2014-09-20 01:31:17.030' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (24, N'Add ''Filing Fee''', N'Maintenance - Loan Charges', N'SU-0000000', CAST(N'2014-09-20 01:31:50.553' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (25, N'Add ''Processing Fee - Regular Loans''', N'Maintenance - Loan Charges', N'SU-0000000', CAST(N'2014-09-20 01:32:29.863' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (26, N'Add ''Processing Fee - Short-Term''', N'Maintenance - Loan Charges', N'SU-0000000', CAST(N'2014-09-20 01:33:16.620' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (27, N'Update ''Processing Fee - Short-Term''', N'Maintenance - Loan Charges', N'SU-0000000', CAST(N'2014-09-20 01:33:25.777' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (28, N'Add ''Cooperative Mutual Aid Fund''', N'Maintenance - Loan Charges', N'SU-0000000', CAST(N'2014-09-20 01:34:16.207' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (29, N'Add ''Overdue Penalty''', N'Maintenance - Loan Penalties', N'SU-0000000', CAST(N'2014-09-20 01:34:50.453' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (30, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-20 02:10:41.463' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (31, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 02:12:13.810' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (32, N'Add', N'Maintenance - Savings Account Type', N'SU-0000000', CAST(N'2014-09-20 02:13:42.440' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (33, N'Add', N'Maintenance - Savings Account Type', N'SU-0000000', CAST(N'2014-09-20 02:14:50.957' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (34, N'Add', N'Maintenance - Savings Account Type', N'SU-0000000', CAST(N'2014-09-20 02:15:51.803' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (35, N'Add', N'Maintenance - Savings Account Type', N'SU-0000000', CAST(N'2014-09-20 02:17:07.923' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (36, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:17:44.560' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (37, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:18:15.757' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (38, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:19:01.093' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (39, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:19:34.653' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (40, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:19:41.280' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (41, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-20 02:20:29.937' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (42, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 02:22:01.460' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (43, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:22:27.953' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (44, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:22:46.303' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (45, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:23:21.900' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (46, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:23:27.973' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (47, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:23:35.220' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (48, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:23:41.993' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (49, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:23:57.730' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (50, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:24:21.707' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (51, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:24:46.340' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (52, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:25:09.843' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (53, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:25:41.550' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (54, N'Update', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:25:46.843' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (55, N'Add', N'Maintenance - Time Deposit Terms and Rates', N'SU-0000000', CAST(N'2014-09-20 02:26:03.940' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (56, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:26:22.263' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (57, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:26:32.037' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (58, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:26:39.293' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (59, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:26:51.340' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (60, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:27:01.890' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (61, N'Add', N'Maintenance - Early Withdrawal Penalties', N'SU-0000000', CAST(N'2014-09-20 02:27:13.210' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (62, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-20 02:27:26.560' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (63, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 09:02:18.743' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (64, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:20:01.803' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (65, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:20:02.830' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (66, N'Add member ''CP-00001''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:20:03.753' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (67, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:25:26.237' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (68, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:25:27.693' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (69, N'Add member ''CP-00002''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:25:29.637' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (70, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:28:29.250' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (71, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:28:30.747' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (72, N'Add member ''CP-00003''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:28:31.940' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (73, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:31:52.713' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (74, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:31:53.633' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (75, N'Add member ''CP-00004''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:31:54.330' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (76, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:36:43.413' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (77, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:36:44.580' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (78, N'Add member ''CP-00005''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:36:46.820' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (79, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:43:58.043' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (80, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:43:58.847' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (81, N'Add member ''CP-00006''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:43:59.500' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (82, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:52:26.113' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (83, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:52:27.390' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (84, N'Add member ''CP-00007''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 09:52:28.910' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (85, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:03:57.693' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (86, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:03:59.477' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (87, N'Add member ''CP-00008''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:04:00.493' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (88, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-20 10:09:04.493' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (89, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 10:14:32.950' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (90, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:19:45.360' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (91, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:19:46.460' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (92, N'Add member ''CP-00009''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:19:47.470' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (93, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:24:53.643' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (94, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:24:54.410' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (95, N'Add member ''CP-00010''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-20 10:24:55.083' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (96, N'Processed for Account No. ''CP-00001''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:27:16.570' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (97, N'Processed for Account No. ''CP-00002''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:27:27.013' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (98, N'Processed for Account No. ''CP-00003''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:27:33.623' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (99, N'Processed for Account No. ''CP-00004''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:27:41.300' AS DateTime))
GO
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (100, N'Processed for Account No. ''CP-00005''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:27:52.147' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (101, N'Processed for Account No. ''CP-00006''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:28:12.877' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (102, N'Processed for Account No. ''CP-00007''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:28:24.923' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (103, N'Processed for Account No. ''CP-00008''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:28:34.973' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (104, N'Processed for Account No. ''CP-00009''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:28:46.550' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (105, N'Processed for Account No. ''CP-00010''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-20 10:28:54.270' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (106, N'Processed for Account No. ''CP-00001''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:09.200' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (107, N'Processed for Account No. ''CP-00002''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:15.963' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (108, N'Processed for Account No. ''CP-00003''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:24.623' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (109, N'Processed for Account No. ''CP-00004''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:33.720' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (110, N'Processed for Account No. ''CP-00005''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:41.943' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (111, N'Processed for Account No. ''CP-00006''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:47.957' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (112, N'Processed for Account No. ''CP-00007''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:29:54.650' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (113, N'Processed for Account No. ''CP-00008''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:30:06.207' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (114, N'Processed for Account No. ''CP-00009''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:30:16.247' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (115, N'Processed for Account No. ''CP-00010''', N'Transaction - Share Capital Contribution', N'SU-0000000', CAST(N'2014-09-21 10:30:23.657' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (116, N'Loan Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-21 10:38:07.620' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (117, N'Share Capital Passbook Generated', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-21 10:38:09.530' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (118, N'Add member ''CP-00011''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-21 10:38:11.003' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (119, N'Add member ''CP-00012''', N'Transaction - Member Profile', N'SU-0000000', CAST(N'2014-09-21 10:42:33.930' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (120, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-21 10:42:54.663' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (121, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 11:30:29.780' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (122, N'Open Account - SV-00001', N'Transaction - Savings Account', N'SU-0000000', CAST(N'2014-09-20 11:31:54.420' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (123, N'Open Account - SV-00002', N'Transaction - Savings Account', N'SU-0000000', CAST(N'2014-09-20 11:32:22.643' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (124, N'Open Account - SV-00003', N'Transaction - Savings Account', N'SU-0000000', CAST(N'2014-09-20 11:32:34.400' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (125, N'Open Account - SV-00004', N'Transaction - Savings Account', N'SU-0000000', CAST(N'2014-09-20 11:33:36.947' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (126, N'Open Account - SV-00005', N'Transaction - Savings Account', N'SU-0000000', CAST(N'2014-09-20 11:33:54.857' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (127, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-20 11:34:54.393' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (128, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-20 12:50:17.393' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (129, N'Deposit(5000) - SV-00001', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-06 12:51:42.447' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (130, N'Deposit(15000) - SV-00001', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-08 12:51:57.180' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (131, N'Withdraw(5000) - SV-00001', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-12 12:52:11.863' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (132, N'Deposit(500) - SV-00002', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-08 12:52:48.020' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (133, N'Deposit(10000) - SV-00002', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-12 12:53:05.320' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (134, N'Withdraw(5000) - SV-00002', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-15 12:53:22.897' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (135, N'Deposit(5000) - SV-00003', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-15 12:54:10.660' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (136, N'Deposit(5000) - SV-00003', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-19 12:54:25.827' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (137, N'Withdraw(20000) - SV-00004', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-15 12:54:45.667' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (138, N'Deposit(15000) - SV-00004', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-22 12:55:17.170' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (139, N'Deposit(5000) - SV-00005', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-12 12:55:55.257' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (140, N'Deposit(10000) - SV-00005', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-15 12:56:06.080' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (141, N'Withdraw(5000) - SV-00005', N'Transaction - Savings Transaction', N'SU-0000000', CAST(N'2014-09-19 12:56:17.960' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (142, N'Processed Miscellaneous - OR# ''1''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:01:34.520' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (143, N'Processed Miscellaneous - OR# ''2''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:02:00.070' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (144, N'Processed Miscellaneous - OR# ''3''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:03:32.727' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (145, N'Processed Miscellaneous - OR# ''4''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:03:48.707' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (146, N'Processed Miscellaneous - OR# ''5''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:04:15.473' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (147, N'Processed Miscellaneous - OR# ''6''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:04:47.190' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (148, N'Processed Miscellaneous - OR# ''7''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:05:07.043' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (149, N'Processed Miscellaneous - OR# ''8''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:05:24.570' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (150, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-19 13:07:11.703' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (151, N'User Log In', N'Login', N'SU-0000000', CAST(N'2014-09-19 13:07:11.703' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (152, N'Processed Miscellaneous - OR# ''10''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:07:54.467' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (153, N'Processed Miscellaneous - OR# ''11''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:08:20.260' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (154, N'Processed Miscellaneous - OR# ''12''', N'Payment', N'SU-0000000', CAST(N'2014-09-19 13:08:32.780' AS DateTime))
INSERT [dbo].[AUDIT_LOG] ([LogId], [Activity], [Module], [UserId], [LogTime]) VALUES (155, N'User Log Out', N'CMS Dashboard', N'SU-0000000', CAST(N'2014-09-19 13:09:29.207' AS DateTime))
SET IDENTITY_INSERT [dbo].[AUDIT_LOG] OFF
