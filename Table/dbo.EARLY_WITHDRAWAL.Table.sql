USE [CMS]
GO

/****** Object:  Table [dbo].[EARLY_WITHDRAWAL]    Script Date: 09/10/2014 14:31:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EARLY_WITHDRAWAL](
	[EarlyWithdrawalId] [int] IDENTITY(1,1) NOT NULL,
	[InterestReduction] [decimal](7, 4) NOT NULL,
	[TermsElapsedFrom] [int] NOT NULL,
	[TermsElapsedTo] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_TIME_DEPOSIT] PRIMARY KEY CLUSTERED 
(
	[EarlyWithdrawalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EARLY_WITHDRAWAL] ADD  CONSTRAINT [DF_TIME_DEPOSIT_Status]  DEFAULT ((0)) FOR [Status]
GO

