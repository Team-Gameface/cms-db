USE [CMS]
GO
/****** Object:  Table [dbo].[LOAN_INFORMATION_AMNESTY]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAN_INFORMATION_AMNESTY](
	[LoanApplicationId] [int] NOT NULL,
	[Reason] [varchar](160) NOT NULL,
	[Penalty] [decimal](10, 2) NOT NULL,
	[Interest] [decimal](10, 2) NOT NULL,
	[WaivedPenaltyPercentage] [decimal](5, 2) NOT NULL,
	[WaivedInterestPercentage] [decimal](5, 2) NOT NULL,
	[LoanBalance] [decimal](13, 2) NOT NULL,
	[DateApproved] [date] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_LOAN_INFORMATION_AMNESTY] PRIMARY KEY CLUSTERED 
(
	[LoanApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[LOAN_INFORMATION_AMNESTY]  WITH CHECK ADD  CONSTRAINT [FK_LOAN_INFORMATION_AMNESTY_LOAN_INFORMATION] FOREIGN KEY([LoanApplicationId])
REFERENCES [dbo].[LOAN_INFORMATION] ([LoanApplicationId])
GO
ALTER TABLE [dbo].[LOAN_INFORMATION_AMNESTY] CHECK CONSTRAINT [FK_LOAN_INFORMATION_AMNESTY_LOAN_INFORMATION]
GO
