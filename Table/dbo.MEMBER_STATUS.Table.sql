USE [CMS]
GO
/****** Object:  Table [dbo].[MEMBER_STATUS]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMBER_STATUS](
	[MemberStatusNo] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[DelinquencyValue] [int] NOT NULL,
	[DelinquencyUnit] [varchar](20) NULL,
	[DelinquencyBasis] [varchar](50) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_MEMBER_STATUS] PRIMARY KEY CLUSTERED 
(
	[MemberStatusNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
