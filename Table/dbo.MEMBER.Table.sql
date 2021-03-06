USE [CMS]
GO
/****** Object:  Table [dbo].[MEMBER]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMBER](
	[AccountNo] [varchar](15) NOT NULL,
	[MemberTypeNo] [int] NOT NULL,
	[Picture] [varbinary](max) NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[AddressNo] [varchar](10) NULL,
	[AddressStreet] [varchar](30) NULL,
	[AddressBarangay] [varchar](30) NULL,
	[AddressCity] [varchar](30) NULL,
	[AddressProvince] [varchar](30) NULL,
	[AddressZipCode] [varchar](4) NULL,
	[TelephoneNo] [varchar](30) NULL,
	[CellphoneNo] [varchar](30) NULL,
	[EmailAddress] [varchar](30) NULL,
	[ResidenceYears] [int] NULL,
	[ResidenceMonths] [int] NULL,
	[ResidentialType] [varchar](20) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[BirthPlace] [varchar](50) NULL,
	[Gender] [varchar](6) NOT NULL,
	[CivilStatus] [varchar](20) NOT NULL,
	[SpouseName] [varchar](50) NULL,
	[NoOfChildren] [int] NOT NULL,
	[NoOfDependents] [int] NOT NULL,
	[EducationalAttainment] [varchar](20) NOT NULL,
	[Course] [varchar](50) NULL,
	[EmploymentStatus] [varchar](20) NOT NULL,
	[EmploymentYears] [int] NULL,
	[EmploymentOccupation] [varchar](50) NULL,
	[SelfEmployedYears] [int] NULL,
	[GrossIncome] [decimal](10, 2) NULL,
	[EmployerName] [varchar](50) NULL,
	[EmployerNature] [varchar](50) NULL,
	[EmployerAddress] [varchar](100) NULL,
	[EmployerContact] [varchar](11) NULL,
	[OtherCoop] [bit] NOT NULL,
	[CoopName] [varchar](50) NULL,
	[CoopAddress] [varchar](100) NULL,
	[GuardianName] [varchar](50) NULL,
	[GuardianRelation] [varchar](30) NULL,
	[AcctHolderSign1] [varbinary](max) NULL,
	[AcctHolderSign2] [varbinary](max) NULL,
	[AcctHolderSign3] [varbinary](max) NULL,
	[GuardianSign1] [varbinary](max) NULL,
	[GuardianSign2] [varbinary](max) NULL,
	[GuardianSign3] [varbinary](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[MemberStatusNo] [int] NULL,
	[MembershipDate] [date] NULL,
 CONSTRAINT [PK_MEMBER] PRIMARY KEY CLUSTERED 
(
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[MEMBER] ADD  CONSTRAINT [DF_MEMBER_NoOfChildren]  DEFAULT ((0)) FOR [NoOfChildren]
GO
ALTER TABLE [dbo].[MEMBER] ADD  CONSTRAINT [DF_MEMBER_NoOfDependents]  DEFAULT ((0)) FOR [NoOfDependents]
GO
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD  CONSTRAINT [FK_MEMBER_MEMBER_STATUS] FOREIGN KEY([MemberStatusNo])
REFERENCES [dbo].[MEMBER_STATUS] ([MemberStatusNo])
GO
ALTER TABLE [dbo].[MEMBER] CHECK CONSTRAINT [FK_MEMBER_MEMBER_STATUS]
GO
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD  CONSTRAINT [FK_MEMBER_MEMBER_TYPE] FOREIGN KEY([MemberTypeNo])
REFERENCES [dbo].[MEMBER_TYPE] ([MemberTypeNo])
GO
ALTER TABLE [dbo].[MEMBER] CHECK CONSTRAINT [FK_MEMBER_MEMBER_TYPE]
GO
