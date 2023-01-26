USE [master]
GO

/****** Object:  Database [login]    Script Date: 19.12.2022 18:01:36 ******/
CREATE DATABASE [login]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'login', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EGEHAN\MSSQL\DATA\login.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'login_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EGEHAN\MSSQL\DATA\login_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [login].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [login] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [login] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [login] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [login] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [login] SET ARITHABORT OFF 
GO

ALTER DATABASE [login] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [login] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [login] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [login] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [login] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [login] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [login] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [login] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [login] SET  DISABLE_BROKER 
GO

ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [login] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [login] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [login] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [login] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [login] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [login] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [login] SET RECOVERY FULL 
GO

ALTER DATABASE [login] SET  MULTI_USER 
GO

ALTER DATABASE [login] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [login] SET DB_CHAINING OFF 
GO

ALTER DATABASE [login] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [login] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [login] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [login] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [login] SET QUERY_STORE = OFF
GO

ALTER DATABASE [login] SET  READ_WRITE 
GO


create table AyarlarVeritabaný(
id int not null identity primary key,
mail varchar(50) not null,
telefon varchar(50) not null,
instagram varchar(50) not null,
youtube varchar(200) not null,
adres varchar(200) not null,
logo varchar(200) not null
)
create table KategoriVeritabaný(
id int not null identity primary key,
adi varchar(50) not null
)

create table DenemesýnavVeritabaný(
id int not null identity primary key,
isim varchar(50) not null,
aciklama varchar(50) not null,
resim varchar(200) not null
)

create table CikmissoruVeritabaný(
id int not null identity primary key,
isim1 varchar(50) not null,
aciklama1 varchar(50) not null,
resim1 varchar(200) not null
)

create table PaylasimVeritabaný(
id int not null identity primary key,
isim varchar(50) not null,
aciklama1 varchar(50) not null,
kategoriID int not null foreign key references KategoriVeritabaný(id),
resim varchar(50) not null
)










