USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertMember]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMember]
	(@AccountNo AS VARCHAR(20), @MemberTypeNo AS INT, @DateMembership AS DATE, @Picture AS VARBINARY(MAX), @LastName AS VARCHAR(50),
	@FirstName AS VARCHAR(50), @MiddleName AS VARCHAR(50), @AddressNo AS VARCHAR(10),
	@AddressStreet AS VARCHAR(30), @AddressBarangay AS VARCHAR(30), @AddressCity AS VARCHAR(30),
	@AddressProvince AS VARCHAR(30), @AddressZip AS VARCHAR(4), @Telephone AS VARCHAR(30), @CellphoneNo AS VARCHAR(30), 
	@EmailAddress AS VARCHAR(50),@ResidenceYear AS INT,	@ResidenceMonths AS INT, 
	@ResidentialType AS VARCHAR(20), @BirthDate AS DATE,
	@BirthPlace AS VARCHAR(50), @Gender AS VARCHAR(6), @CivilStatus AS VARCHAR(20),
	@SpouseName AS VARCHAR(50), @NoOfChildren AS INT, @NoOfDependents AS INT,
	@EducAttainment AS VARCHAR(20), @Course AS VARCHAR(50), @EmployementStatus AS VARCHAR(20),
	@EmploymentYears AS INT, @EmploymentOccupation AS VARCHAR(50), @SelfEmployedYears AS INT,
	@Gross AS DECIMAL(10, 2), @EmployerName AS VARCHAR(50),
	@EmployerNature AS VARCHAR(50), @EmployerAddress AS VARCHAR(100),
	@EmployerContact AS VARCHAR(11), @OtherCoop AS INT, @CoopName AS VARCHAR(50),
	@CoopAddress AS VARCHAR(100), @guardianName AS VARCHAR(50), @guardianRelation AS VARCHAR(50),
	@AcctHolderSign1 AS varbinary(MAX),@AcctHolderSign2 AS varbinary(MAX), @AcctHolderSign3 AS varbinary(MAX),
	@GuardianSign1 AS varbinary(MAX), @GuardianSign2 AS varbinary(MAX), @GuardianSign3 AS varbinary(MAX))
AS
BEGIN
	INSERT INTO MEMBER(AccountNo, MemberTypeNo, MembershipDate, Picture, LastName, FirstName, MiddleName, AddressNo,
	AddressStreet, AddressBarangay, AddressCity, AddressProvince, AddressZipCode, TelephoneNo,CellphoneNo,EmailAddress,
	ResidenceYears, ResidenceMonths, ResidentialType, BirthDate, BirthPlace, Gender,
	CivilStatus, SpouseName, NoOfChildren, NoOfDependents, EducationalAttainment, Course,
	EmploymentStatus, EmploymentYears, EmploymentOccupation, SelfEmployedYears,
	GrossIncome, EmployerName, EmployerNature, EmployerAddress, EmployerContact,
	OtherCoop, CoopName, CoopAddress, GuardianName, GuardianRelation, AcctHolderSign1,AcctHolderSign2, AcctHolderSign3,
	GuardianSign1,GuardianSign2,GuardianSign3,DateCreated, DateModified, Status)
	VALUES(@AccountNo, @MemberTypeNo, @DateMembership, @Picture, @LastName, @FirstName, @MiddleName, @AddressNo,
	@AddressStreet, @AddressBarangay, @AddressCity, @AddressProvince, @AddressZip, @Telephone, @CellphoneNo, @EmailAddress,
	@ResidenceYear, @ResidenceMonths, @ResidentialType, @BirthDate, @BirthPlace, @Gender,
	@CivilStatus, @SpouseName, @NoOfChildren, @NoOfDependents, @EducAttainment, @Course,
	@EmployementStatus, @EmploymentYears, @EmploymentOccupation, @SelfEmployedYears,
	@Gross, @EmployerName, @EmployerNature, @EmployerAddress, @EmployerContact,
	@OtherCoop, @CoopName, @CoopAddress, @guardianName, @guardianRelation, @AcctHolderSign1, @AcctHolderSign2, @AcctHolderSign3,
	@GuardianSign1, @GuardianSign2,@GuardianSign3,
	CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1);
END





GO
