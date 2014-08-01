USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[SpInsert_MinimumCapitalContribution]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpInsert_MinimumCapitalContribution]
	(
	@MinimumContribution as decimal(10,2),
	@Duration as varchar(20),
	@Status as bit,
	@MemberTypeNo as int
	)
AS
BEGIN
	Insert into MINIMUM_CAPITAL_CONTRIBUTION
	([MinimumContribution],
	[Duration],
	[DateCreated],
	[DateModified],
	[isArchived],
	[Status],
	[MemberTypeNo]
	)
	VALUES
	(@MinimumContribution,
	@Duration,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	0,	
	@Status,
	@MemberTypeNo);
END
















GO
