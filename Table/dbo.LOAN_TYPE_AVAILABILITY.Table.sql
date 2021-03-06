USE [CMS]
GO
/****** Object:  Table [dbo].[LOAN_TYPE_AVAILABILITY]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAN_TYPE_AVAILABILITY](
	[MemberTypeNo] [int] NOT NULL,
	[LoanTypeId] [int] NOT NULL,
 CONSTRAINT [PK_LOAN_TYPE_AVAILABILITY] PRIMARY KEY CLUSTERED 
(
	[MemberTypeNo] ASC,
	[LoanTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LOAN_TYPE_AVAILABILITY]  WITH CHECK ADD  CONSTRAINT [FK_LOAN_TYPE_AVAILABILITY_LOAN_TYPE] FOREIGN KEY([LoanTypeId])
REFERENCES [dbo].[LOAN_TYPE] ([LoanTypeId])
GO
ALTER TABLE [dbo].[LOAN_TYPE_AVAILABILITY] CHECK CONSTRAINT [FK_LOAN_TYPE_AVAILABILITY_LOAN_TYPE]
GO
ALTER TABLE [dbo].[LOAN_TYPE_AVAILABILITY]  WITH CHECK ADD  CONSTRAINT [FK_LOAN_TYPE_AVAILABILITY_MEMBER_TYPE] FOREIGN KEY([MemberTypeNo])
REFERENCES [dbo].[MEMBER_TYPE] ([MemberTypeNo])
GO
ALTER TABLE [dbo].[LOAN_TYPE_AVAILABILITY] CHECK CONSTRAINT [FK_LOAN_TYPE_AVAILABILITY_MEMBER_TYPE]
GO
