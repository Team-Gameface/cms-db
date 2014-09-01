USE [CMS]
GO

/****** Object:  StoredProcedure [dbo].[insertCompany]    Script Date: 09/01/2014 12:26:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertCompany]
	(@CompanyName AS VARCHAR(50), @AccreditationNo AS VARCHAR(50), @CompanyAddress AS VARCHAR(100), @CompanyLogo AS VARBINARY(MAX), @Telephone AS VARCHAR(10), @Cellphone AS VARCHAR(11), @Email AS VARCHAR(50))
AS
BEGIN
	INSERT INTO COMPANY(CompanyName, AccreditationNo, CompanyAddress, CompanyLogo, Telephone, Cellphone, Email, Status, DateCreated)
	VALUES(@CompanyName, @AccreditationNo, @CompanyAddress, @CompanyLogo, @Telephone, @Cellphone, @Email, 1, CURRENT_TIMESTAMP)
END

GO

