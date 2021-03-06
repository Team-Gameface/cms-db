USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertCompanyNoLogo]    Script Date: 09/14/2014 17:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertCompanyNoLogo]
	(@CompanyName AS VARCHAR(50), @AccreditationNo AS VARCHAR(50), @CompanyAddress AS VARCHAR(100), @Telephone AS VARCHAR(10), @Cellphone AS VARCHAR(11), @Email AS VARCHAR(50))
AS
BEGIN
	INSERT INTO COMPANY(CompanyName, AccreditationNo, CompanyAddress, Telephone, Cellphone, Email, Status, DateCreated)
	VALUES(@CompanyName, @AccreditationNo, @CompanyAddress, @Telephone, @Cellphone, @Email, 1, CURRENT_TIMESTAMP)
END


GO
