﻿USE [master]
GO
/****** Object:  Database [JobDB]    Script Date: 4/29/2018 2:38:35 AM ******/
CREATE DATABASE [JobDB]
GO
ALTER DATABASE [JobDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JobDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JobDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JobDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JobDB] SET  MULTI_USER 
GO
ALTER DATABASE [JobDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JobDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [JobDB]
GO
/****** Object:  User [myaccount]    Script Date: 4/29/2018 2:38:35 AM ******/
CREATE USER [myaccount] FOR LOGIN [myaccount] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/29/2018 2:38:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyCode] [varchar](20) NOT NULL,
	[CompanyName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 4/29/2018 2:38:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [varchar](50) NULL,
	[CompanyCode] [varchar](50) NULL,
	[YearExp] [int] NULL,
	[Description] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName]) VALUES (N'FSOFT', N'FPT Software')
INSERT [dbo].[Company] ([CompanyCode], [CompanyName]) VALUES (N'FU', N'FPT University')
INSERT [dbo].[Company] ([CompanyCode], [CompanyName]) VALUES (N'VNPT', N'VNPT Viet Nam')
INSERT [dbo].[Company] ([CompanyCode], [CompanyName]) VALUES (N'FHO', N'FPT')
SET IDENTITY_INSERT [dbo].[Job] ON

INSERT [dbo].[Job] ([ID], [JobTitle], [CompanyCode], [YearExp], [Description]) VALUES (1, N'Software Developer', N'FSOFT', 0, N'A fullstack developer who creates both client and server modules for a website')
INSERT [dbo].[Job] ([ID], [JobTitle], [CompanyCode], [YearExp], [Description]) VALUES (2, N'Admission Staff', N'FU', 0, N'Person in charge of Admission works in one of the most famous University in Viet Nam')
INSERT [dbo].[Job] ([ID], [JobTitle], [CompanyCode], [YearExp], [Description]) VALUES (3, N'Marketing Manager', N'FHO', 5, N'Planning for Marketing strategies and manage working teams')
SET IDENTITY_INSERT [dbo].[Job] OFF
USE [master]
GO
ALTER DATABASE [JobDB] SET  READ_WRITE 
GO
