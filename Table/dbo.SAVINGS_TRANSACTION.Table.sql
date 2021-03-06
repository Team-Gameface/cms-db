USE [CMS]
GO

/****** Object:  Table [dbo].[SAVINGS_TRANSACTION]    Script Date: 09/15/2014 10:25:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SAVINGS_TRANSACTION](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[SavingsAccountNo] [varchar](15) NOT NULL,
	[TransactionMode] [varchar](30) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Representative] [varchar](50) NULL,
	[SavingsPassbookNo] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[TellerId] [varchar](11) NOT NULL,
 CONSTRAINT [PK_SAVINGS_TRANSACTION_1] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_SAVINGS_TRANSACTION_MEMBER_SAVINGS_PASSBOOK] FOREIGN KEY([SavingsPassbookNo])
REFERENCES [dbo].[MEMBER_SAVINGS_PASSBOOK] ([SavingsPassbookNo])
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION] CHECK CONSTRAINT [FK_SAVINGS_TRANSACTION_MEMBER_SAVINGS_PASSBOOK]
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_SAVINGS_TRANSACTION_SAVINGS_ACCOUNT] FOREIGN KEY([SavingsAccountNo])
REFERENCES [dbo].[SAVINGS_ACCOUNT] ([SavingsAccountNo])
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION] CHECK CONSTRAINT [FK_SAVINGS_TRANSACTION_SAVINGS_ACCOUNT]
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_SAVINGS_TRANSACTION_SYSTEM_USERS] FOREIGN KEY([TellerId])
REFERENCES [dbo].[SYSTEM_USERS] ([UserId])
GO

ALTER TABLE [dbo].[SAVINGS_TRANSACTION] CHECK CONSTRAINT [FK_SAVINGS_TRANSACTION_SYSTEM_USERS]
GO

