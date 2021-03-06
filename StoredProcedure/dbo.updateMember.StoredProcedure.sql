USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateMember]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateMember] 
	-- Add the parameters for the stored procedure here
   (@AccountNo AS VARCHAR(20)
   , @MemberTypeNo AS INT, @Picture AS VARBINARY(MAX), @dateMembership AS DATE, @LastName AS VARCHAR(50),
	@FirstName AS VARCHAR(50), @MiddleName AS VARCHAR(50), @AddressNo AS VARCHAR(10),
	@AddressStreet AS VARCHAR(30), @AddressBarangay AS VARCHAR(30), @AddressCity AS VARCHAR(30),
	@AddressProvince AS VARCHAR(30), @AddressZip AS VARCHAR(4), @Telephone AS VARCHAR(30), @CellphoneNo AS VARCHAR(30), 
	@EmailAddress AS VARCHAR(50),@ResidenceYear AS INT,	@ResidenceMonths AS INT, 
	@ResidentialType AS VARCHAR(20), @BirthDate AS DATE,
	@BirthPlace AS VARCHAR(50), @Gender AS VARCHAR(6), @CivilStatus AS VARCHAR(20),
	@SpouseName AS VARCHAR(50), @NoOfChildren AS INT, @NoOfDependents AS INT,
	@EducAttainment AS VARCHAR(20), @Course AS VARCHAR(50), @EmploymentStatus AS VARCHAR(20),
	@EmploymentYears AS INT, @EmploymentOccupation AS VARCHAR(50), @SelfEmployedYears AS INT,
	@Gross AS DECIMAL(10, 2), @EmployerName AS VARCHAR(50),
	@EmployerNature AS VARCHAR(50), @EmployerAddress AS VARCHAR(100),
	@EmployerContact AS VARCHAR(11), @OtherCoop AS INT, @CoopName AS VARCHAR(50),
	@CoopAddress AS VARCHAR(100), @guardianName AS VARCHAR(50), @guardianRelation AS VARCHAR(50),
	@AcctHolderSign1 AS varbinary(MAX),@AcctHolderSign2 AS varbinary(MAX), @AcctHolderSign3 AS varbinary(MAX),
	@GuardianSign1 AS varbinary(MAX), @GuardianSign2 AS varbinary(MAX), @GuardianSign3 AS varbinary(MAX)
	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	UPDATE MEMBER
   SET 
	   [MemberTypeNo] = @MemberTypeNo
      ,[Picture] = @Picture
	  , [MembershipDate] = @dateMembership
      ,[LastName] = @LastName
      ,[FirstName] = @FirstName
      ,[MiddleName] = @MiddleName
      ,[AddressNo] = @AddressNo
      ,[AddressStreet] = @AddressStreet
      ,[AddressBarangay] = @AddressBarangay
      ,[AddressCity] = @AddressCity
      ,[AddressProvince] = @AddressProvince
      ,[AddressZipCode] = @AddressZip
      ,[TelephoneNo] = @Telephone
      ,[CellphoneNo] = @CellphoneNo
      ,[EmailAddress] = @EmailAddress
      ,[ResidenceYears] = @ResidenceYear
      ,[ResidenceMonths] = @ResidenceMonths
      ,[ResidentialType] = @ResidentialType
      ,[BirthDate] = @BirthDate
      ,[BirthPlace] = @BirthPlace
      ,[Gender] = @Gender
      ,[CivilStatus] = @CivilStatus
      ,[SpouseName] = @SpouseName
      ,[NoOfChildren] = @NoOfChildren
      ,[NoOfDependents] = @NoOfDependents
      ,[EducationalAttainment] = @EducAttainment
      ,[Course] = @Course
      ,[EmploymentStatus] = @EmploymentStatus
      ,[EmploymentYears] = @EmploymentYears
      ,[EmploymentOccupation] = @EmploymentOccupation
      ,[SelfEmployedYears] = @SelfEmployedYears
      ,[GrossIncome] = @Gross
      ,[EmployerName] = @EmployerName
      ,[EmployerNature] = @EmployerNature
      ,[EmployerAddress] = @EmployerAddress
      ,[EmployerContact] = @EmployerContact
      ,[OtherCoop] = @OtherCoop
      ,[CoopName] = @CoopName
      ,[CoopAddress] = @CoopAddress
      ,[GuardianName] = @GuardianName
      ,[GuardianRelation] = @GuardianRelation
      ,[AcctHolderSign1] = @AcctHolderSign1
      ,[AcctHolderSign2] = @AcctHolderSign2
      ,[AcctHolderSign3] = @AcctHolderSign3
      ,[GuardianSign1] = @GuardianSign1
      ,[GuardianSign2] = @GuardianSign2
      ,[GuardianSign3] = @GuardianSign3
      ,[DateModified] = CURRENT_TIMESTAMP
      ,[Status] = 1
 WHERE AccountNo = @AccountNo
END




GO
