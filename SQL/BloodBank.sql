CREATE TABLE BloodBankPatients
(
	PatientID int not null primary key identity(1,1)
	,PatientName nvarchar(50) not null
	,PatientBloodType nvarchar(3) not null
)

CREATE TABLE BloodBankDonors
(
	DonorID int not null primary key identity(1,1)
	,DonorName nvarchar(50) not null
	,DonorBloodType nvarchar(3) not null
	,BloodBankAddress nvarchar(200) not null
	,BloodBankContactNumber nvarchar(20) not null
)

CREATE TABLE BloodBanks
(
	BloodBankID int not null primary key identity(1,1)
	,BloodBankName nvarchar(50) not null
	,BloodBankAddress nvarchar(200) not null
	,BloodBankContactNumber nvarchar(20) not null
)


CREATE PROCEDURE InsertPatient
	@PatientName nvarchar(50)
	,@PatientBloodType nvarchar(3)
AS
BEGIN
	INSERT INTO BloodBankPatients(PatientName, PatientBloodType)
	VALUES(@PatientName, @PatientBloodType)
END


CREATE PROCEDURE InsertDonor
	@DonorName nvarchar(50)
	,@DonorBloodType nvarchar(3)
	,@BloodBankAddress nvarchar(200)
	,@BloodBankContactNumber nvarchar(20)
AS
BEGIN
	INSERT INTO BloodBankPatients(DonorName, DonorBloodType, BloodBankAddress, BloodBankContactNumber)
	VALUES(@DonorName, @DonorBloodType, @BloodBankAddress, @BloodBankContactNumber)
END


CREATE PROCEDURE InsertBloodBank
	@BloodBankName nvarchar(50) 
	,@BloodBankAddress nvarchar(200)
	,@BloodBankContactNumber nvarchar(20)
AS
BEGIN
	INSERT INTO BloodBankPatients(BloodBankName, BloodBankAddress, BloodBankContactNumber)
	VALUES(@BloodBankName, @BloodBankAddress, @BloodBankContactNumber)
END


CREATE PROCEDURE UpdatePatient
	@PatientID int
	,@PatientName nvarchar(50)
	,@PatientBloodType nvarchar(3)
AS
BEGIN
	UPDATE BloodBankPatients
	SET
		PatientName = @PatientName
		,PatientBloodType = @PatientBloodType
	WHERE PatientID = @PatientID
END


CREATE PROCEDURE UpdateDonor
	@DonorName nvarchar(50)
	,@DonorBloodType nvarchar(3)
	,@BloodBankAddress nvarchar(200)
	,@BloodBankContactNumber nvarchar(20)
AS
BEGIN
	UPDATE BloodBankDonors
	SET
		DonorName = @DonorName
		,DonorBloodType = @DonorBloodType
		,BloodBankAddress = @BloodBankAddress
		,BloodBankContactNumber = @BloodBankContactNumber
	WHERE @DonorID = @DonorID
END


CREATE PROCEDURE UpdateBloodBank
	@BloodBankID int
	,@BloodBankName nvarchar(50) 
	,@BloodBankAddress nvarchar(200)
	,@BloodBankContactNumber nvarchar(20)
AS
BEGIN
	UPDATE BloodBanks
	SET
		BloodBankName = @BloodBankName
		,BloodBankAddress = @BloodBankAddress
		,BloodBankContactNumber = @BloodBankContactNumber
	WHERE BloodBankID = @BloodBankID
END


CREATE PROCEDURE GetPatientByID
	@PatientID int
AS
BEGIN
	SELECT *
	WHERE PatientID = @PatientID
END