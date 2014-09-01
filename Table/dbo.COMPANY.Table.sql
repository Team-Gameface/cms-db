USE [CMS]
GO

/****** Object:  Table [dbo].[COMPANY]    Script Date: 09/01/2014 12:26:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[COMPANY](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[AccreditationNo] [varchar](50) NULL,
	[CompanyAddress] [varchar](100) NOT NULL,
	[CompanyLogo] [varbinary](max) NOT NULL,
	[Telephone] [varchar](10) NULL,
	[Cellphone] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_COMPANY_Status]  DEFAULT ((1)),
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

