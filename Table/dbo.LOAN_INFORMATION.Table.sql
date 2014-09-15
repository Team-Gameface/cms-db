USE [CMS]
GO

/****** Object:  Table [dbo].[LOAN_INFORMATION]    Script Date: 7/3/2015 9:13:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LOAN_INFORMATION](
	[LoanApplicationId] [int] IDENTITY(1,1) NOT NULL,
	[AccountNo] [varchar](15) NOT NULL,
	[LoanTypeId] [int] NOT NULL,
	[Purpose] [varchar](160) NOT NULL,
	[PaymentDurationStatus] [varchar](30) NOT NULL,
	[PaymentDurationValue] [int] NOT NULL,
	[Terms] [varchar](30) NOT NULL,
	[LoanAmount] [decimal](10, 2) NOT NULL,
	[ApprovedAmount] [decimal](10, 2) NOT NULL,
	[DateFiled] [date] NOT NULL,
	[DateApproved] [date] NOT NULL,
	[MaturityDate] [date] NOT NULL,
	[LessCharges] [decimal](10, 2) NOT NULL,
	[LessLoanBalance] [decimal](10, 2) NOT NULL,
	[LessPenalties] [decimal](10, 2) NOT NULL,
	[LessInterest] [decimal](10, 2) NOT NULL,
	[NetLoanProceeds] [decimal](15, 2) NOT NULL,
	[isCleared] [bit] NOT NULL,
	[isAmnestized] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Interest] [decimal](10, 2) NULL,
 CONSTRAINT [PK_LOAN_APPLICATION] PRIMARY KEY CLUSTERED 
(
	[LoanApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[LOAN_INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_LOAN_APPLICATION_MEMBER] FOREIGN KEY([AccountNo])
REFERENCES [dbo].[MEMBER] ([AccountNo])
GO

ALTER TABLE [dbo].[LOAN_INFORMATION] CHECK CONSTRAINT [FK_LOAN_APPLICATION_MEMBER]
GO

