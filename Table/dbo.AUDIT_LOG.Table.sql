USE [CMS]
GO

/****** Object:  Table [dbo].[AUDIT_LOG]    Script Date: 09/15/2014 10:41:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AUDIT_LOG](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Activity] [varchar](50) NOT NULL,
	[Module] [varchar](50) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[UserId] [varchar](11) NOT NULL,
 CONSTRAINT [PK_AUDIT_LOG] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AUDIT_LOG]  WITH CHECK ADD  CONSTRAINT [FK_AUDIT_LOG_SYSTEM_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[SYSTEM_USERS] ([UserId])
GO

ALTER TABLE [dbo].[AUDIT_LOG] CHECK CONSTRAINT [FK_AUDIT_LOG_SYSTEM_USERS]
GO

