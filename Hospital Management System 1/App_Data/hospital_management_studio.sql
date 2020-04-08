USE [master]
GO
/****** Object:  Database [Hospital_Management_System]    Script Date: 08-04-2020 21:14:26 ******/
CREATE DATABASE [Hospital_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital_Management_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital_Management_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital_Management_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital_Management_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hospital_Management_System] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET RECOVERY FULL 
GO
ALTER DATABASE [Hospital_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital_Management_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hospital_Management_System] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hospital_Management_System', N'ON'
GO
ALTER DATABASE [Hospital_Management_System] SET QUERY_STORE = OFF
GO
USE [Hospital_Management_System]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[VendorId] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Question] [nvarchar](50) NOT NULL,
	[Answer] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment1]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment1](
	[AppointmentId] [int] NOT NULL,
	[Date] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[Medicare_Services] [varchar](50) NULL,
 CONSTRAINT [PK_Appointment1] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Bill_No] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[PatientId] [nvarchar](50) NULL,
	[Consultation] [nvarchar](50) NULL,
	[Rate] [int] NULL,
	[StayIn] [int] NULL,
	[Amount_Due] [int] NULL,
	[Amount_Paid] [int] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[Bill_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorId] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Speciality] [nvarchar](50) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Question] [nvarchar](50) NOT NULL,
	[Answer] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicare]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicare](
	[MId] [int] IDENTITY(1,1) NOT NULL,
	[Medicare_Services] [nvarchar](50) NULL,
 CONSTRAINT [PK_medicare] PRIMARY KEY CLUSTERED 
(
	[MId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientId] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nchar](10) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Question] [nvarchar](50) NOT NULL,
	[Answer] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientRecord]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientRecord](
	[PR_Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [nvarchar](50) NULL,
	[DoctorId] [nvarchar](50) NULL,
	[AdmissionDate] [nvarchar](50) NULL,
	[MedicalService] [nvarchar](50) NULL,
	[DischargeDate] [nvarchar](50) NULL,
	[TestId] [int] NULL,
	[BillId] [int] NULL,
 CONSTRAINT [PK_PatientRecord] PRIMARY KEY CLUSTERED 
(
	[PR_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestResult]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResult](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[DoctorId] [int] NULL,
	[Date] [varchar](50) NULL,
	[MedicalService] [varchar](50) NULL,
	[TestResult] [varchar](50) NULL,
 CONSTRAINT [PK_TestResult] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[A1]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[A1]
@AppointmentId int,
@Date varchar(50),
@Medicare_Services varchar(50),
@Doctor varchar(50)
AS
BEGIN
IF(@AppointmentId=0)
BEGIN
INSERT INTO Appointment1(Date,Doctor,Medicare_Services)
VALUES(@Date,@Doctor,@Medicare_Services)
END
ELSE
BEGIN
UPDATE Appointment1
SET
Date = @Date,
Doctor= @Doctor,
Medicare_Services = @Medicare_Services
WHERE AppointmentId = @AppointmentId
END

END
GO
/****** Object:  StoredProcedure [dbo].[A2]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[A2]
AS
BEGIN
SELECT *
FROM Appointment1
END
GO
/****** Object:  StoredProcedure [dbo].[A3]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[A3]
@AppointmentId int
AS
BEGIN
SELECT *
FROM Appontment1
WHERE AppointmentId=@AppointmentId
END
GO
/****** Object:  StoredProcedure [dbo].[A4]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[A4]
@AppointmentId int
AS
BEGIN
DELETE FROM Appointment1
WHERE AppointmentId=@AppointmentId
END
GO
/****** Object:  StoredProcedure [dbo].[AppointmentDeleteByID]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AppointmentDeleteByID]
@AppointmentId int
AS
BEGIN
DELETE FROM Appointment1
WHERE AppointmentId=@AppointmentId
END
GO
/****** Object:  StoredProcedure [dbo].[AppointmentViewALL]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AppointmentViewALL]
AS
BEGIN
SELECT *
FROM Appointment1
END
GO
/****** Object:  StoredProcedure [dbo].[AppointmentViewByID]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AppointmentViewByID]
@AppointmentId nvarchar(50)
AS
BEGIN
SELECT *
FROM Appointment1
WHERE AppointmentId=@AppointmentId
END
GO
/****** Object:  StoredProcedure [dbo].[ContactCreateOrUpdate]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ContactCreateOrUpdate]
@AppointmentId int,
@Date varchar(50),
@Doctor varchar(50),
@Medicare_Services varchar(50)
AS
BEGIN
IF(@AppointmentId=0)
	BEGIN
	INSERT INTO Appointment1(AppointmentId,Date,Doctor,Medicare_Services)
	VALUES(@AppointmentId,@Date,@Doctor,@Medicare_Services)
	END
ELSE
	BEGIN
	UPDATE Appointment1
	SET
		Date = @Date,
		Doctor= @Doctor,
		Medicare_Services = @Medicare_Services
		WHERE AppointmentId=@AppointmentId
		END

END
GO
/****** Object:  StoredProcedure [dbo].[M1]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[M1]
@MId int,
@Medicare_Services varchar(50)
AS
BEGIN
IF(@MId=0)
BEGIN
INSERT INTO Medicare(Medicare_Services)
VALUES(@Medicare_Services)
END
ELSE
BEGIN
UPDATE Medicare
SET
Medicare_Services = @Medicare_Services
WHERE MId = @MId
END

END
GO
/****** Object:  StoredProcedure [dbo].[M2]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[M2]
AS
BEGIN
SELECT *
FROM Medicare
END
GO
/****** Object:  StoredProcedure [dbo].[M3]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[M3]
@MId int
AS
BEGIN
SELECT *
FROM Medicare
WHERE MId=@MId
END
GO
/****** Object:  StoredProcedure [dbo].[M5]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[M5]
@MId int
AS
BEGIN
DELETE FROM Medicare
WHERE MId=@MId
END
GO
/****** Object:  StoredProcedure [dbo].[PR1]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR1]
@PR_Id int,
@PatientId nvarchar(50),
@DoctorId nvarchar(50),
@AdmissionDate varchar(50),
@MedicalService nchar(10),
@DischargeDate varchar(50),
@TestId int,
@BillId int
AS
BEGIN
IF(@PR_Id=0)
BEGIN
INSERT INTO PatientRecord(PatientId,DoctorId,MedicalService,TestId,BillId,AdmissionDate,DischargeDate)
VALUES(@PatientId,@DoctorId,@MedicalService,@TestId,@BillId,@AdmissionDate,@DischargeDate)
END
ELSE
BEGIN
UPDATE PatientRecord
SET
PatientId = @PatientId,
DoctorId = @DoctorId,
MedicalService = @MedicalService,
TestId= @TestId,
BillId= @BillId,
AdmissionDate = @AdmissionDate,
DischargeDate= @DischargeDate
WHERE PR_Id=@PR_Id
END

END
GO
/****** Object:  StoredProcedure [dbo].[PR2]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR2]
AS
BEGIN
SELECT *
FROM PatientRecord
END
GO
/****** Object:  StoredProcedure [dbo].[PR3]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR3]
@PR_Id int
AS
BEGIN
SELECT *
FROM PatientRecord
WHERE PR_Id=@PR_Id
END
GO
/****** Object:  StoredProcedure [dbo].[PR4]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR4]
@PR_Id int
AS
BEGIN
DELETE FROM PatientRecord
WHERE PR_Id=@PR_Id
END
GO
/****** Object:  StoredProcedure [dbo].[TestResultCCU]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestResultCCU]
@TestId int,
@PatientId int,
@DoctorId int,
@Date varchar(50),
@MedicalService varchar(50),
@TestResult varchar(50)
AS
BEGIN
IF(@TestId=0)
	BEGIN
	INSERT INTO TestResult(PatientId,DoctorId,Date,MedicalService,TestResult)
	VALUES(@PatientId,@DoctorId,@Date,@MedicalService,@TestResult)
	END
ELSE
	BEGIN
	UPDATE TestResult
	SET
		PatientId = @PatientId,
		DoctorId = @DoctorId,
		Date = @Date,
		MedicalService = @MedicalService,
		TestResult = @TestResult
		WHERE TestId=@TestId
		END

END
GO
/****** Object:  StoredProcedure [dbo].[TestResultDeleteByID]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestResultDeleteByID]
@TestId int
AS
BEGIN
DELETE FROM TestResult
WHERE TestId=@TestId
END
GO
/****** Object:  StoredProcedure [dbo].[TestResultViewALL]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestResultViewALL]
AS
BEGIN
SELECT *
FROM TestResult
END
GO
/****** Object:  StoredProcedure [dbo].[TestResultViewByID]    Script Date: 08-04-2020 21:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestResultViewByID]
@TestId int
AS
BEGIN
SELECT *
FROM TestResult
WHERE TestId=@TestId
END
GO
USE [master]
GO
ALTER DATABASE [Hospital_Management_System] SET  READ_WRITE 
GO
