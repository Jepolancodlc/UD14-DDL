USE [master]
GO

/****** Object:  Database [e2]    Script Date: 15/01/2021 13:48:10 ******/
CREATE DATABASE [e2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'e2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\e2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'e2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\e2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [e2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [e2] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [e2] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [e2] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [e2] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [e2] SET ARITHABORT OFF 
GO

ALTER DATABASE [e2] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [e2] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [e2] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [e2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [e2] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [e2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [e2] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [e2] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [e2] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [e2] SET  DISABLE_BROKER 
GO

ALTER DATABASE [e2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [e2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [e2] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [e2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [e2] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [e2] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [e2] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [e2] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [e2] SET  MULTI_USER 
GO

ALTER DATABASE [e2] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [e2] SET DB_CHAINING OFF 
GO

ALTER DATABASE [e2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [e2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [e2] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [e2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [e2] SET QUERY_STORE = OFF
GO

ALTER DATABASE [e2] SET  READ_WRITE 
GO


