USE [CMS]
GO

/****** Object:  Table [dbo].[LOAN_TYPE]    Script Date: 1/1/2015 1:27:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LOAN_TYPE](
	[LoanTypeId] [int] IDENTITY(1,1) NOT NULL,
	[LoanTypeName] [varchar](50) NOT NULL,
	[MinimumPaymentDuration] [int] NOT NULL,
	[MinPDStatus] [varchar](10) NOT NULL,
	[MaximumPaymentDuration] [int] NOT NULL,
	[MaxPDStatus] [varchar](10) NOT NULL,
	[MaxLoanableAmtFixed] [decimal](10, 2) NOT NULL,
	[MaxLoanableAmtShareCap] [decimal](10, 2) NULL,
	[CoMaker] [int] NOT NULL,
	[isCollateral] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NOT NULL,
 CONSTRAINT [PK_LOAN_TYPE] PRIMARY KEY CLUSTERED 
(
	[LoanTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

