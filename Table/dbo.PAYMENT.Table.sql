USE [CMS]
GO

/****** Object:  Table [dbo].[PAYMENT]    Script Date: 09/11/2014 13:56:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PAYMENT](
	[ORNo] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](20) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Penalty] [decimal](10, 2) NULL,
	[Interest] [decimal](10, 2) NULL,
	[PaymentDate] [datetime] NOT NULL,
	[hasInterest] [bit] NULL,
	[AccountNo] [varchar](20) NOT NULL,
	[LoanApplicationId] [int] NULL,
	[isFullyPaid] [bit] NOT NULL,
 CONSTRAINT [PK_MEMBERSHIP_PAYMENT_1] PRIMARY KEY CLUSTERED 
(
	[ORNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

