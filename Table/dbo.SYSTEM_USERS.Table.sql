USE [CMS]
GO
/****** Object:  Table [dbo].[SYSTEM_USERS]    Script Date: 09/15/2014 10:25:56 ******/
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
	[Picture] [varbinary](max) NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
