USE [CMS]
GO
/****** Object:  Table [dbo].[CHARGES]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHARGES](
	[ChargeId] [int] IDENTITY(1,1) NOT NULL,
	[ChargeName] [varchar](30) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[AmountStatus] [varchar](30) NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NOT NULL,
 CONSTRAINT [PK_CHARGES] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
