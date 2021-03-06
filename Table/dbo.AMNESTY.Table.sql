USE [CMS]
GO
/****** Object:  Table [dbo].[AMNESTY]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AMNESTY](
	[AmnestyId] [int] IDENTITY(1,1) NOT NULL,
	[DateFrom] [date] NOT NULL,
	[DateTo] [varchar](15) NOT NULL,
	[Duration] [int] NOT NULL,
	[DurationStatus] [varchar](10) NOT NULL,
	[waiveInterest] [bit] NULL,
	[waivePenalty] [bit] NULL,
	[Status] [bit] NOT NULL,
	[isArchived] [bit] NOT NULL,
	[DateCreated] [date] NOT NULL,
	[DateModified] [date] NOT NULL,
 CONSTRAINT [PK_AMNESTY] PRIMARY KEY CLUSTERED 
(
	[AmnestyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
