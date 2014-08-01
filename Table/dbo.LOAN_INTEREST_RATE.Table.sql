USE [CMS]
GO
/****** Object:  Table [dbo].[LOAN_INTEREST_RATE]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAN_INTEREST_RATE](
	[InterestRateId] [int] IDENTITY(1,1) NOT NULL,
	[LoanTypeId] [int] NOT NULL,
	[InterestRateStatus] [varchar](20) NOT NULL,
	[InterestRateValue] [decimal](10, 2) NOT NULL,
	[Per] [varchar](20) NOT NULL,
	[ActivationDate] [date] NOT NULL,
	[isArchived] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_LOAN_INTEREST_RATE_1] PRIMARY KEY CLUSTERED 
(
	[InterestRateId] ASC,
	[LoanTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[LOAN_INTEREST_RATE]  WITH CHECK ADD  CONSTRAINT [FK_LOAN_INTEREST_RATE_LOAN_TYPE] FOREIGN KEY([LoanTypeId])
REFERENCES [dbo].[LOAN_TYPE] ([LoanTypeId])
GO
ALTER TABLE [dbo].[LOAN_INTEREST_RATE] CHECK CONSTRAINT [FK_LOAN_INTEREST_RATE_LOAN_TYPE]
GO
