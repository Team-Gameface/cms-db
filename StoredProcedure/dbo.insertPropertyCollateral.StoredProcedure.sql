USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertPropertyCollateral]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertPropertyCollateral]
	(
	@LoanApplicationId as int,
	@SerialNo as varchar(20),
	@Name as varchar(50),
	@Condition as varchar(30),
	@Description as varchar(100),
	@YearAcquired as int,
	@AcquiredAmount as decimal(10,2)
	)
AS
BEGIN
	Insert into PROPERTY_COLLATERAL(LoanApplicationId,SerialNo,Name,Condition,Description,YearAcquired,AcquiredAmount) VALUES
	(@LoanApplicationId,@SerialNo,@Name,@Condition,@Description,@YearAcquired,@AcquiredAmount);
END

















GO
