USE [CMS]
GO
/****** Object:  UserDefinedFunction [dbo].[WeekDayCount]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[WeekDayCount]
        (@startDate DATETIME, @endDate DATETIME)
RETURNS int 
BEGIN
DECLARE @numDays int

 SELECT @numDays =
        (DATEDIFF(dd,d.StartDate,d.EndDate)+1) --Start with total number of days including weekends
      - (DATEDIFF(wk,d.StartDate,d.EndDate)*1) --Subtact 2 days for each full weekend
      - (1-SIGN(DATEDIFF(dd,6,d.StartDate)%7)) --If StartDate is a Sunday, Subtract 1
   FROM ( --=== Make sure the dates are in the correct order
         SELECT StartDate = CASE WHEN @startDate <= @endDate THEN @startDate ELSE @endDate   END
         ,      EndDate   = CASE WHEN @startDate <= @endDate THEN @endDate   ELSE @startDate END
        )d
;

RETURN @numDays
END




GO
