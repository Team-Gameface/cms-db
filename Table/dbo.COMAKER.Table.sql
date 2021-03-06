USE [CMS]
GO
/****** Object:  Table [dbo].[COMAKER]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMAKER](
	[LoanApplicationId] [int] NOT NULL,
	[AccountNo] [varchar](15) NOT NULL,
	[ResidentCertificateNo] [varchar](20) NOT NULL,
	[RPlaceIssued] [varchar](30) NOT NULL,
	[RDateIssued] [date] NOT NULL,
	[SpouseCertificateNo] [varchar](20) NULL,
	[SPlaceIssued] [varchar](30) NULL,
	[SDateIssued] [date] NULL,
 CONSTRAINT [PK_COMAKER] PRIMARY KEY CLUSTERED 
(
	[LoanApplicationId] ASC,
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[COMAKER]  WITH CHECK ADD  CONSTRAINT [FK_COMAKER_LOAN_APPLICATION] FOREIGN KEY([LoanApplicationId])
REFERENCES [dbo].[LOAN_INFORMATION] ([LoanApplicationId])
GO
ALTER TABLE [dbo].[COMAKER] CHECK CONSTRAINT [FK_COMAKER_LOAN_APPLICATION]
GO
ALTER TABLE [dbo].[COMAKER]  WITH CHECK ADD  CONSTRAINT [FK_COMAKER_MEMBER] FOREIGN KEY([AccountNo])
REFERENCES [dbo].[MEMBER] ([AccountNo])
GO
ALTER TABLE [dbo].[COMAKER] CHECK CONSTRAINT [FK_COMAKER_MEMBER]
GO
