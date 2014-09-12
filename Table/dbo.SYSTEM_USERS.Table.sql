USE [CMS]
GO
/****** Object:  Table [dbo].[SYSTEM_USERS]    Script Date: 09/13/2014 00:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYSTEM_USERS](
	[UserId] [varchar](11) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SYSTEM_USERS] ([UserId], [FirstName], [MiddleName], [LastName], [Position], [Username], [Password], [UserType], [DateCreated], [DateModified]) VALUES (N'SU-0000000', N' ', N' ', N' ', N'Administrator', N'admin', N'admin', N'Superuser', CAST(N'2014-09-12 22:02:46.683' AS DateTime), CAST(N'2014-09-12 22:02:46.683' AS DateTime))
