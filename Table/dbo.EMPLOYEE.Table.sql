USE [CMS]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EmployeeUsername] [varchar](50) NOT NULL,
	[EmployeePassword] [varchar](50) NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeMiddleName] [varchar](50) NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[EmployeeUserRole] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EmployeeUsername] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
