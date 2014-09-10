USE [CMS]
GO

/****** Object:  Table [dbo].[INTEREST_RATE]    Script Date: 09/10/2014 17:27:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INTEREST_RATE](
	[AccountTypeId] [int] NOT NULL,
	[InterestRate] [decimal](7, 4) NOT NULL,
	[MinimumRange] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_INTEREST_RATE] PRIMARY KEY CLUSTERED 
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[INTEREST_RATE]  WITH CHECK ADD  CONSTRAINT [FK_INTEREST_RATE_SAVINGS_ACCOUNT_TYPE] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[SAVINGS_ACCOUNT_TYPE] ([AccountTypeId])
GO

ALTER TABLE [dbo].[INTEREST_RATE] CHECK CONSTRAINT [FK_INTEREST_RATE_SAVINGS_ACCOUNT_TYPE]
GO

