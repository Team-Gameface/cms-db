USE [CMS]
GO

/****** Object:  Table [dbo].[TIME_DEPOSIT_INTEREST]    Script Date: 09/09/2014 23:15:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TIME_DEPOSIT_INTEREST](
	[InterestId] [int] IDENTITY(1,1) NOT NULL,
	[InterestRate] [decimal](7, 4) NOT NULL,
	[MinimumRange] [decimal](18, 2) NOT NULL,
	[MaximumRange] [decimal](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_TIME_DEPOSIT_INTEREST] PRIMARY KEY CLUSTERED 
(
	[InterestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

