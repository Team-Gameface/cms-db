USE [CMS]
GO
/****** Object:  Table [dbo].[PENALTY]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PENALTY](
	[PenaltyId] [int] IDENTITY(1,1) NOT NULL,
	[PenaltyName] [varchar](30) NOT NULL,
	[GracePeriod] [int] NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[AmountStatus] [varchar](30) NOT NULL,
	[Deduction] [varchar](30) NULL,
	[DurationStatus] [varchar](30) NOT NULL,
	[DurationValue] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NOT NULL,
 CONSTRAINT [PK_PENALTY] PRIMARY KEY CLUSTERED 
(
	[PenaltyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
