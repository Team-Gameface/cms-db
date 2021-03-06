USE [CMS]
GO
/****** Object:  Table [dbo].[SAVINGS_ACCOUNT]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAVINGS_ACCOUNT](
	[SavingsAccountNo] [varchar](15) NOT NULL,
	[WithdrawalMode] [varchar](3) NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SAVINGS_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[SavingsAccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
