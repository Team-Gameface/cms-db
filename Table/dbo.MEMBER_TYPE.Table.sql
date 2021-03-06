USE [CMS]
GO
/****** Object:  Table [dbo].[MEMBER_TYPE]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMBER_TYPE](
	[MemberTypeNo] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
	[hasLoan] [bit] NOT NULL,
	[hasSavings] [bit] NOT NULL,
	[hasShareCapital] [bit] NOT NULL,
	[MinimumAge] [int] NULL,
	[MaximumAge] [int] NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NOT NULL,
 CONSTRAINT [PK_MEMBER_TYPE] PRIMARY KEY CLUSTERED 
(
	[MemberTypeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
