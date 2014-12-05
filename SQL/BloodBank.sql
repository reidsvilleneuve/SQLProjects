--CREATE TABLE BloodBankPatients
--(
--	PatientID int not null primary key identity(1,1)
--	,PatientName nvarchar(50) not null
--	,PatientBloodType nvarchar(3) not null
--)


--CREATE TABLE BloodBankDonors
--(
--	DonorID int not null primary key identity(1,1)
--	,DonorName nvarchar(50) not null
--	,DonorBloodType nvarchar(3) not null
--)

--CREATE TABLE BloodBanks
--(
--	BloodBankID int not null primary key identity(1,1)
--	,BloodBankName nvarchar(50) not null
--	,BloodBankAddress nvarchar(200) not null
--	,BloodBankContactNumber nvarchar(20) not null
--)


--CREATE PROCEDURE InsertPatient
--	@PatientName nvarchar(50)
--	,@PatientBloodType nvarchar(3)
--AS
--BEGIN
--	INSERT INTO BloodBankPatients(PatientName, PatientBloodType)
--	VALUES(@PatientName, @PatientBloodType)
--END


--CREATE PROCEDURE InsertDonor
--	@DonorName nvarchar(50)
--	,@DonorBloodType nvarchar(3)
--AS
--BEGIN
--	INSERT INTO BloodBankDonors(DonorName, DonorBloodType)
--	VALUES(@DonorName, @DonorBloodType)
--END


--CREATE PROCEDURE InsertBloodBank
--	@BloodBankName nvarchar(50) 
--	,@BloodBankAddress nvarchar(200)
--	,@BloodBankContactNumber nvarchar(20)
--AS
--BEGIN
--	INSERT INTO BloodBanks(BloodBankName, BloodBankAddress, BloodBankContactNumber)
--	VALUES(@BloodBankName, @BloodBankAddress, @BloodBankContactNumber)
--END


--CREATE PROCEDURE UpdatePatient
--	@PatientID int
--	,@PatientName nvarchar(50)
--	,@PatientBloodType nvarchar(3)
--AS
--BEGIN
--	UPDATE BloodBankPatients
--	SET
--		PatientName = @PatientName
--		,PatientBloodType = @PatientBloodType
--	WHERE PatientID = @PatientID
--END


--CREATE PROCEDURE UpdateDonor
--	@DonorID int
--	,@DonorName nvarchar(50)
--	,@DonorBloodType nvarchar(3)
--AS
--BEGIN
--	UPDATE BloodBankDonors
--	SET
--		@DonorName = @DonorName
--		,DonorBloodType = @DonorBloodType
--	WHERE DonorID = @DonorID
--END


--CREATE PROCEDURE UpdateBloodBank
--	@BloodBankID int
--	,@BloodBankName nvarchar(50) 
--	,@BloodBankAddress nvarchar(200)
--	,@BloodBankContactNumber nvarchar(20)
--AS
--BEGIN
--	UPDATE BloodBanks
--	SET
--		BloodBankName = @BloodBankName
--		,BloodBankAddress = @BloodBankAddress
--		,BloodBankContactNumber = @BloodBankContactNumber
--	WHERE BloodBankID = @BloodBankID
--END


--CREATE PROCEDURE GetPatientByID
--	@PatientID int
--AS
--BEGIN
--	SELECT *
--	FROM BloodBankPatients
--	WHERE PatientID = @PatientID
--END


--CREATE PROCEDURE GetDonorByID
--	@DonorID int
--AS
--BEGIN
--	SELECT *
--	FROM BloodBankDonors
--	WHERE DonorID = @DonorID
--END


--CREATE PROCEDURE GetBloodBankByID
--	@BloodBankID int
--AS
--BEGIN
--	SELECT *
--	FROM BloodBanks
--	WHERE BloodBankID = @BloodBankID
--END


--CREATE PROCEDURE DeletePatientByID
--	@PatientID int
--AS
--BEGIN
--	DELETE
--	FROM BloodBankPatients
--	WHERE PatientID = @PatientID
--END


--CREATE PROCEDURE DeleteDonorByID
--	@DonorID int
--AS
--BEGIN
--	DELETE
--	FROM BloodBankDonors
--	WHERE DonorID = @DonorID
--END


--CREATE PROCEDURE DeleteBloodBankByID
--	@BloodBankID int
--AS
--BEGIN
--	DELETE
--	FROM BloodBanks
--	WHERE BloodBankID = @BloodBankID
--END

--DROP PROCEDURE GetAllDonersByPatientID

--CREATE PROCEDURE GetAllDonersByPatientID
--	@PatientID int
--AS
--BEGIN
--	DECLARE @BloodType nvarchar(3)
--	SET @BloodType = (SELECT TOP(1) PatientBloodType 
--					 FROM BloodBankPatients
--					 WHERE PatientID = @PatientID)

--	IF @BloodType = 'A+'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--			OR DonorBloodType = 'O+'
--			OR DonorBloodType = 'A-'
--			OR DonorBloodType = 'A+'
--	END

--	IF @BloodType = 'A-'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--			OR DonorBloodType = 'A-'
--	END

--	ELSE IF @BloodType = 'O+'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--			OR DonorBloodType = 'O+'
--	END

--	ELSE IF @BloodType = 'O-'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--	END

--	ELSE IF @BloodType = 'B+'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--			OR DonorBloodType = 'O+'
--			OR DonorBloodType = 'B-'
--			OR DonorBloodType = 'B+'
--	END

--	ELSE IF @BloodType = 'B-'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType = 'O-'
--			OR DonorBloodType = 'B-'
--	END

--	ELSE IF @BloodType = 'AB+'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--	END

--	ELSE IF @BloodType = 'AB-'
--	BEGIN
--		SELECT *
--		FROM BloodBankDonors
--		WHERE DonorBloodType like '%-'
--	END

--END

EXEC GetAllDonersByPatientID @PatientID = 1