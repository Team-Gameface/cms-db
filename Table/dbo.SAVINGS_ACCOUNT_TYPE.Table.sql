USE [CMS]
GO

/****** Object:  Table [dbo].[SAVINGS_ACCOUNT_TYPE]    Script Date: 09/07/2014 11:33:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SAVINGS_ACCOUNT_TYPE](
	[AccountTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SavingsTypeName] [varchar](50) NOT NULL,
	[InitialDeposit] [decimal](18, 2) NOT NULL,
	[MaximumWithdrawal] [decimal](18, 2) NOT NULL,
	[NoOfAccountHolders] [int] NOT NULL,
	[isMaintainingBalance] [bit] NOT NULL,
	[isInterestRate] [bit] NOT NULL,
	[isDormancy] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[isArchived] [bit] NOT NULL CONSTRAINT [DF_SAVINGS_ACCOUNT_TYPE_isArchived]  DEFAULT ((0)),
 CONSTRAINT [PK_SAVINGS_ACCOUNT_TYPE] PRIMARY KEY CLUSTERED 
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

