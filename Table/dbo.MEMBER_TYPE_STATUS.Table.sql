USE [CMS]
GO
/****** Object:  Table [dbo].[MEMBER_TYPE_STATUS]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBER_TYPE_STATUS](
	[MemberStatusNo] [int] NOT NULL,
	[MemberTypeNo] [int] NOT NULL,
 CONSTRAINT [PK_MEMBER_TYPE_STATUS] PRIMARY KEY CLUSTERED 
(
	[MemberStatusNo] ASC,
	[MemberTypeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[MEMBER_TYPE_STATUS]  WITH CHECK ADD  CONSTRAINT [FK_MEMBER_TYPE_STATUS_MEMBER_STATUS] FOREIGN KEY([MemberStatusNo])
REFERENCES [dbo].[MEMBER_STATUS] ([MemberStatusNo])
GO
ALTER TABLE [dbo].[MEMBER_TYPE_STATUS] CHECK CONSTRAINT [FK_MEMBER_TYPE_STATUS_MEMBER_STATUS]
GO
ALTER TABLE [dbo].[MEMBER_TYPE_STATUS]  WITH CHECK ADD  CONSTRAINT [FK_MEMBER_TYPE_STATUS_MEMBER_TYPE] FOREIGN KEY([MemberTypeNo])
REFERENCES [dbo].[MEMBER_TYPE] ([MemberTypeNo])
GO
ALTER TABLE [dbo].[MEMBER_TYPE_STATUS] CHECK CONSTRAINT [FK_MEMBER_TYPE_STATUS_MEMBER_TYPE]
GO
