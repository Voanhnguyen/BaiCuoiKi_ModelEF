USE [master]
GO
/****** Object:  Database [VoNguyenDB]    Script Date: 06/20/2021 20:30:57 ******/
CREATE DATABASE [VoNguyenDB] ON  PRIMARY 
( NAME = N'HoTenDB', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HoTenDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HoTenDB_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HoTenDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VoNguyenDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VoNguyenDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VoNguyenDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [VoNguyenDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [VoNguyenDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [VoNguyenDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [VoNguyenDB] SET ARITHABORT OFF
GO
ALTER DATABASE [VoNguyenDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [VoNguyenDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [VoNguyenDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [VoNguyenDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [VoNguyenDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [VoNguyenDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [VoNguyenDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [VoNguyenDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [VoNguyenDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [VoNguyenDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [VoNguyenDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [VoNguyenDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [VoNguyenDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [VoNguyenDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [VoNguyenDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [VoNguyenDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [VoNguyenDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [VoNguyenDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [VoNguyenDB] SET  READ_WRITE
GO
ALTER DATABASE [VoNguyenDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [VoNguyenDB] SET  MULTI_USER
GO
ALTER DATABASE [VoNguyenDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [VoNguyenDB] SET DB_CHAINING OFF
GO
USE [VoNguyenDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/20/2021 20:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAcount]    Script Date: 06/20/2021 20:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAcount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06/20/2021 20:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_ID] [int] NULL,
	[Name] [nvarchar](250) NOT NULL,
	[UnitCost] [decimal](18, 1) NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 06/20/2021 20:30:57 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
