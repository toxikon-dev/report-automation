USE [master]
GO
/****** Object:  Database [Toxikon_ra]    Script Date: 12/13/2011 10:24:48 ******/
CREATE DATABASE [Toxikon_ra] ON  PRIMARY 
( NAME = N'Toxikon_dat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\Toxikon_ra.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Toxikon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\Toxikon_ra.ldf' , SIZE = 24384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'Toxikon_ra', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Toxikon_ra].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Toxikon_ra] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Toxikon_ra] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Toxikon_ra] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Toxikon_ra] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Toxikon_ra] SET ARITHABORT OFF 
GO
ALTER DATABASE [Toxikon_ra] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Toxikon_ra] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Toxikon_ra] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Toxikon_ra] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Toxikon_ra] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Toxikon_ra] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Toxikon_ra] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Toxikon_ra] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Toxikon_ra] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Toxikon_ra] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Toxikon_ra] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Toxikon_ra] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Toxikon_ra] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Toxikon_ra] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Toxikon_ra] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Toxikon_ra] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Toxikon_ra] SET  READ_WRITE 
GO
ALTER DATABASE [Toxikon_ra] SET RECOVERY FULL 
GO
ALTER DATABASE [Toxikon_ra] SET  MULTI_USER 
GO
ALTER DATABASE [Toxikon_ra] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Toxikon_ra] SET DB_CHAINING OFF 
GO
/* Agar */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblAgarDiffusion]    Script Date: 09/24/2009 10:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAgarDiffusion](
	[txtStudyNumber] [nvarchar](50) NOT NULL,
	[txtPositiveControl] [nvarchar](50) NULL,
	[txtNegativeControl] [nvarchar](50) NULL,
	[txtHowPrepared] [nvarchar](50) NULL,
	[txtOtherPrep] [nvarchar](50) NULL,
	[dteExperimentDate_0hrs] [datetime] NULL,
	[dteExperimentDate_24hrs] [datetime] NULL,
	[dteExperimentDate_48hrs] [datetime] NULL,
	[txtTestAZone_0hrs] [nchar](10) NULL,
	[intTestAGrade_0hrs] [int] NULL,
	[txtTestBZone_0hrs] [nchar](10) NULL,
	[intTestBGrade_0hrs] [int] NULL,
	[txtTestCZone_0hrs] [nchar](10) NULL,
	[intTestCGrade_0hrs] [int] NULL,
	[txtTestAZone_24hrs] [nchar](10) NULL,
	[intTestAGrade_24hrs] [int] NULL,
	[txtTestBZone_24hrs] [nchar](10) NULL,
	[intTestBGrade_24hrs] [int] NULL,
	[txtTestCZone_24hrs] [nchar](10) NULL,
	[intTestCGrade_24hrs] [int] NULL,
	[txtTestAZone_48hrs] [nchar](10) NULL,
	[intTestAGrade_48hrs] [int] NULL,
	[txtTestBZone_48hrs] [nchar](10) NULL,
	[intTestBGrade_48hrs] [int] NULL,
	[txtTestCZone_48hrs] [nchar](10) NULL,
	[intTestCGrade_48hrs] [int] NULL,
	[txtPositiveAZone_0hrs] [nchar](10) NULL,
	[intPositiveAGrade_0hrs] [int] NULL,
	[txtPositiveBZone_0hrs] [nchar](10) NULL,
	[intPositiveBGrade_0hrs] [int] NULL,
	[txtPositiveCZone_0hrs] [nchar](10) NULL,
	[intPositiveCGrade_0hrs] [int] NULL,
	[txtPositiveAZone_24hrs] [nchar](10) NULL,
	[intPositiveAGrade_24hrs] [int] NULL,
	[txtPositiveBZone_24hrs] [nchar](10) NULL,
	[intPositiveBGrade_24hrs] [int] NULL,
	[txtPositiveCZone_24hrs] [nchar](10) NULL,
	[intPositiveCGrade_24hrs] [int] NULL,
	[txtPositiveAZone_48hrs] [nchar](10) NULL,
	[intPositiveAGrade_48hrs] [int] NULL,
	[txtPositiveBZone_48hrs] [nchar](10) NULL,
	[intPositiveBGrade_48hrs] [int] NULL,
	[txtPositiveCZone_48hrs] [nchar](10) NULL,
	[intPositiveCGrade_48hrs] [int] NULL,
	[txtNegativeDirectAZone_0hrs] [nchar](10) NULL,
	[intNegativeDirectAGrade_0hrs] [int] NULL,
	[txtNegativeDirectBZone_0hrs] [nchar](10) NULL,
	[intNegativeDirectBGrade_0hrs] [int] NULL,
	[txtNegativeDirectCZone_0hrs] [nchar](10) NULL,
	[intNegativeDirectCGrade_0hrs] [int] NULL,
	[txtNegativeDirectAZone_24hrs] [nchar](10) NULL,
	[intNegativeDirectAGrade_24hrs] [int] NULL,
	[txtNegativeDirectBZone_24hrs] [nchar](10) NULL,
	[intNegativeDirectBGrade_24hrs] [int] NULL,
	[txtNegativeDirectCZone_24hrs] [nchar](10) NULL,
	[intNegativeDirectCGrade_24hrs] [int] NULL,
	[txtNegativeDirectAZone_48hrs] [nchar](10) NULL,
	[intNegativeDirectAGrade_48hrs] [int] NULL,
	[txtNegativeDirectBZone_48hrs] [nchar](10) NULL,
	[intNegativeDirectBGrade_48hrs] [int] NULL,
	[txtNegativeDirectCZone_48hrs] [nchar](10) NULL,
	[intNegativeDirectCGrade_48hrs] [int] NULL,
	[txtNegativeDiscAZone_0hrs] [nchar](10) NULL,
	[intNegativeDiscAGrade_0hrs] [int] NULL,
	[txtNegativeDiscBZone_0hrs] [nchar](10) NULL,
	[intNegativeDiscBGrade_0hrs] [int] NULL,
	[txtNegativeDiscCZone_0hrs] [nchar](10) NULL,
	[intNegativeDiscCGrade_0hrs] [int] NULL,
	[txtNegativeDiscAZone_24hrs] [nchar](10) NULL,
	[intNegativeDiscAGrade_24hrs] [int] NULL,
	[txtNegativeDiscBZone_24hrs] [nchar](10) NULL,
	[intNegativeDiscBGrade_24hrs] [int] NULL,
	[txtNegativeDiscCZone_24hrs] [nchar](10) NULL,
	[intNegativeDiscCGrade_24hrs] [int] NULL,
	[txtNegativeDiscAZone_48hrs] [nchar](10) NULL,
	[intNegativeDiscAGrade_48hrs] [int] NULL,
	[txtNegativeDiscBZone_48hrs] [nchar](10) NULL,
	[intNegativeDiscBGrade_48hrs] [int] NULL,
	[txtNegativeDiscCZone_48hrs] [nchar](10) NULL,
	[intNegativeDiscCGrade_48hrs] [int] NULL,
 CONSTRAINT [PK_tblAgarDiffusion] PRIMARY KEY CLUSTERED 
(
	[txtStudyNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Ames */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblAmes]    Script Date: 09/24/2009 10:21:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAmes](
	[txtStudyNumber] [nvarchar](50) NOT NULL,
	[intNonActivatedTA98Rep1Positive] [int] NULL,
	[intNonActivatedTA98Rep2Positive] [int] NULL,
	[intNonActivatedTA98Rep3Positive] [int] NULL,
	[intNonActivatedTA98PositiveMean] [int] NULL,
	[intNonActivatedTA98PositiveSD] [int] NULL,
	[intNonActivatedTA98Rep1NegativeNaCl] [int] NULL,
	[intNonActivatedTA98Rep2NegativeNaCl] [int] NULL,
	[intNonActivatedTA98Rep3NegativeNaCl] [int] NULL,
	[intNonActivatedTA98NegativeNaClMean] [int] NULL,
	[intNonActivatedTA98NegativeNaClSD] [int] NULL,
	[intNonActivatedTA98Rep1NegativeCSO] [int] NULL,
	[intNonActivatedTA98Rep2NegativeCSO] [int] NULL,
	[intNonActivatedTA98Rep3NegativeCSO] [int] NULL,
	[intNonActivatedTA98NegativeCSOMean] [int] NULL,
	[intNonActivatedTA98NegativeCSOSD] [int] NULL,
	[intNonActivatedTA98Rep1TestNaCl] [int] NULL,
	[intNonActivatedTA98Rep2TestNaCl] [int] NULL,
	[intNonActivatedTA98Rep3TestNaCl] [int] NULL,
	[intNonActivatedTA98TestNaClMean] [int] NULL,
	[intNonActivatedTA98TestNaClSD] [int] NULL,
	[intNonActivatedTA98Rep1TestCSO] [int] NULL,
	[intNonActivatedTA98Rep2TestCSO] [int] NULL,
	[intNonActivatedTA98Rep3TestCSO] [int] NULL,
	[intNonActivatedTA98TestCSOMean] [int] NULL,
	[intNonActivatedTA98TestCSOSD] [int] NULL,
	[intNonActivatedTA100Rep1Positive] [int] NULL,
	[intNonActivatedTA100Rep2Positive] [int] NULL,
	[intNonActivatedTA100Rep3Positive] [int] NULL,
	[intNonActivatedTA100PositiveMean] [int] NULL,
	[intNonActivatedTA100PositiveSD] [int] NULL,
	[intNonActivatedTA100Rep1NegativeNaCl] [int] NULL,
	[intNonActivatedTA100Rep2NegativeNaCl] [int] NULL,
	[intNonActivatedTA100Rep3NegativeNaCl] [int] NULL,
	[intNonActivatedTA100NegativeNaClMean] [int] NULL,
	[intNonActivatedTA100NegativeNaClSD] [int] NULL,
	[intNonActivatedTA100Rep1NegativeCSO] [int] NULL,
	[intNonActivatedTA100Rep2NegativeCSO] [int] NULL,
	[intNonActivatedTA100Rep3NegativeCSO] [int] NULL,
	[intNonActivatedTA100NegativeCSOMean] [int] NULL,
	[intNonActivatedTA100NegativeCSOSD] [int] NULL,
	[intNonActivatedTA100Rep1TestNaCl] [int] NULL,
	[intNonActivatedTA100Rep2TestNaCl] [int] NULL,
	[intNonActivatedTA100Rep3TestNaCl] [int] NULL,
	[intNonActivatedTA100TestNaClMean] [int] NULL,
	[intNonActivatedTA100TestNaClSD] [int] NULL,
	[intNonActivatedTA100Rep1TestCSO] [int] NULL,
	[intNonActivatedTA100Rep2TestCSO] [int] NULL,
	[intNonActivatedTA100Rep3TestCSO] [int] NULL,
	[intNonActivatedTA100TestCSOMean] [int] NULL,
	[intNonActivatedTA100TestCSOSD] [int] NULL,
	[intNonActivatedTA1535Rep1Positive] [int] NULL,
	[intNonActivatedTA1535Rep2Positive] [int] NULL,
	[intNonActivatedTA1535Rep3Positive] [int] NULL,
	[intNonActivatedTA1535PositiveMean] [int] NULL,
	[intNonActivatedTA1535PositiveSD] [int] NULL,
	[intNonActivatedTA1535Rep1NegativeNaCl] [int] NULL,
	[intNonActivatedTA1535Rep2NegativeNaCl] [int] NULL,
	[intNonActivatedTA1535Rep3NegativeNaCl] [int] NULL,
	[intNonActivatedTA1535NegativeNaClMean] [int] NULL,
	[intNonActivatedTA1535NegativeNaClSD] [int] NULL,
	[intNonActivatedTA1535Rep1NegativeCSO] [int] NULL,
	[intNonActivatedTA1535Rep2NegativeCSO] [int] NULL,
	[intNonActivatedTA1535Rep3NegativeCSO] [int] NULL,
	[intNonActivatedTA1535NegativeCSOMean] [int] NULL,
	[intNonActivatedTA1535NegativeCSOSD] [int] NULL,
	[intNonActivatedTA1535Rep1TestNaCl] [int] NULL,
	[intNonActivatedTA1535Rep2TestNaCl] [int] NULL,
	[intNonActivatedTA1535Rep3TestNaCl] [int] NULL,
	[intNonActivatedTA1535TestNaClMean] [int] NULL,
	[intNonActivatedTA1535TestNaClSD] [int] NULL,
	[intNonActivatedTA1535Rep1TestCSO] [int] NULL,
	[intNonActivatedTA1535Rep2TestCSO] [int] NULL,
	[intNonActivatedTA1535Rep3TestCSO] [int] NULL,
	[intNonActivatedTA1535TestCSOMean] [int] NULL,
	[intNonActivatedTA1535TestCSOSD] [int] NULL,
	[intNonActivatedTA1537Rep1Positive] [int] NULL,
	[intNonActivatedTA1537Rep2Positive] [int] NULL,
	[intNonActivatedTA1537Rep3Positive] [int] NULL,
	[intNonActivatedTA1537PositiveMean] [int] NULL,
	[intNonActivatedTA1537PositiveSD] [int] NULL,
	[intNonActivatedTA1537Rep1NegativeNaCl] [int] NULL,
	[intNonActivatedTA1537Rep2NegativeNaCl] [int] NULL,
	[intNonActivatedTA1537Rep3NegativeNaCl] [int] NULL,
	[intNonActivatedTA1537NegativeNaClMean] [int] NULL,
	[intNonActivatedTA1537NegativeNaClSD] [int] NULL,
	[intNonActivatedTA1537Rep1NegativeCSO] [int] NULL,
	[intNonActivatedTA1537Rep2NegativeCSO] [int] NULL,
	[intNonActivatedTA1537Rep3NegativeCSO] [int] NULL,
	[intNonActivatedTA1537NegativeCSOMean] [int] NULL,
	[intNonActivatedTA1537NegativeCSOSD] [int] NULL,
	[intNonActivatedTA1537Rep1TestNaCl] [int] NULL,
	[intNonActivatedTA1537Rep2TestNaCl] [int] NULL,
	[intNonActivatedTA1537Rep3TestNaCl] [int] NULL,
	[intNonActivatedTA1537TestNaClMean] [int] NULL,
	[intNonActivatedTA1537TestNaClSD] [int] NULL,
	[intNonActivatedTA1537Rep1TestCSO] [int] NULL,
	[intNonActivatedTA1537Rep2TestCSO] [int] NULL,
	[intNonActivatedTA1537Rep3TestCSO] [int] NULL,
	[intNonActivatedTA1537TestCSOMean] [int] NULL,
	[intNonActivatedTA1537TestCSOSD] [int] NULL,
	[intNonActivatedWP2Rep1Positive] [int] NULL,
	[intNonActivatedWP2Rep2Positive] [int] NULL,
	[intNonActivatedWP2Rep3Positive] [int] NULL,
	[intNonActivatedWP2PositiveMean] [int] NULL,
	[intNonActivatedWP2PositiveSD] [int] NULL,
	[intNonActivatedWP2Rep1NegativeNaCl] [int] NULL,
	[intNonActivatedWP2Rep2NegativeNaCl] [int] NULL,
	[intNonActivatedWP2Rep3NegativeNaCl] [int] NULL,
	[intNonActivatedWP2NegativeNaClMean] [int] NULL,
	[intNonActivatedWP2NegativeNaClSD] [int] NULL,
	[intNonActivatedWP2Rep1NegativeCSO] [int] NULL,
	[intNonActivatedWP2Rep2NegativeCSO] [int] NULL,
	[intNonActivatedWP2Rep3NegativeCSO] [int] NULL,
	[intNonActivatedWP2NegativeCSOMean] [int] NULL,
	[intNonActivatedWP2NegativeCSOSD] [int] NULL,
	[intNonActivatedWP2Rep1TestNaCl] [int] NULL,
	[intNonActivatedWP2Rep2TestNaCl] [int] NULL,
	[intNonActivatedWP2Rep3TestNaCl] [int] NULL,
	[intNonActivatedWP2TestNaClMean] [int] NULL,
	[intNonActivatedWP2TestNaClSD] [int] NULL,
	[intNonActivatedWP2Rep1TestCSO] [int] NULL,
	[intNonActivatedWP2Rep2TestCSO] [int] NULL,
	[intNonActivatedWP2Rep3TestCSO] [int] NULL,
	[intNonActivatedWP2TestCSOMean] [int] NULL,
	[intNonActivatedWP2TestCSOSD] [int] NULL,
	[intActivatedTA98Rep1Positive] [int] NULL,
	[intActivatedTA98Rep2Positive] [int] NULL,
	[intActivatedTA98Rep3Positive] [int] NULL,
	[intActivatedTA98PositiveMean] [int] NULL,
	[intActivatedTA98PositiveSD] [int] NULL,
	[intActivatedTA98Rep1NegativeNaCl] [int] NULL,
	[intActivatedTA98Rep2NegativeNaCl] [int] NULL,
	[intActivatedTA98Rep3NegativeNaCl] [int] NULL,
	[intActivatedTA98NegativeNaClMean] [int] NULL,
	[intActivatedTA98NegativeNaClSD] [int] NULL,
	[intActivatedTA98Rep1NegativeCSO] [int] NULL,
	[intActivatedTA98Rep2NegativeCSO] [int] NULL,
	[intActivatedTA98Rep3NegativeCSO] [int] NULL,
	[intActivatedTA98NegativeCSOMean] [int] NULL,
	[intActivatedTA98NegativeCSOSD] [int] NULL,
	[intActivatedTA98Rep1TestNaCl] [int] NULL,
	[intActivatedTA98Rep2TestNaCl] [int] NULL,
	[intActivatedTA98Rep3TestNaCl] [int] NULL,
	[intActivatedTA98TestNaClMean] [int] NULL,
	[intActivatedTA98TestNaClSD] [int] NULL,
	[intActivatedTA98Rep1TestCSO] [int] NULL,
	[intActivatedTA98Rep2TestCSO] [int] NULL,
	[intActivatedTA98Rep3TestCSO] [int] NULL,
	[intActivatedTA98TestCSOMean] [int] NULL,
	[intActivatedTA98TestCSOSD] [int] NULL,
	[intActivatedTA100Rep1Positive] [int] NULL,
	[intActivatedTA100Rep2Positive] [int] NULL,
	[intActivatedTA100Rep3Positive] [int] NULL,
	[intActivatedTA100PositiveMean] [int] NULL,
	[intActivatedTA100PositiveSD] [int] NULL,
	[intActivatedTA100Rep1NegativeNaCl] [int] NULL,
	[intActivatedTA100Rep2NegativeNaCl] [int] NULL,
	[intActivatedTA100Rep3NegativeNaCl] [int] NULL,
	[intActivatedTA100NegativeNaClMean] [int] NULL,
	[intActivatedTA100NegativeNaClSD] [int] NULL,
	[intActivatedTA100Rep1NegativeCSO] [int] NULL,
	[intActivatedTA100Rep2NegativeCSO] [int] NULL,
	[intActivatedTA100Rep3NegativeCSO] [int] NULL,
	[intActivatedTA100NegativeCSOMean] [int] NULL,
	[intActivatedTA100NegativeCSOSD] [int] NULL,
	[intActivatedTA100Rep1TestNaCl] [int] NULL,
	[intActivatedTA100Rep2TestNaCl] [int] NULL,
	[intActivatedTA100Rep3TestNaCl] [int] NULL,
	[intActivatedTA100TestNaClMean] [int] NULL,
	[intActivatedTA100TestNaClSD] [int] NULL,
	[intActivatedTA100Rep1TestCSO] [int] NULL,
	[intActivatedTA100Rep2TestCSO] [int] NULL,
	[intActivatedTA100Rep3TestCSO] [int] NULL,
	[intActivatedTA100TestCSOMean] [int] NULL,
	[intActivatedTA100TestCSOSD] [int] NULL,
	[intActivatedTA1535Rep1Positive] [int] NULL,
	[intActivatedTA1535Rep2Positive] [int] NULL,
	[intActivatedTA1535Rep3Positive] [int] NULL,
	[intActivatedTA1535PositiveMean] [int] NULL,
	[intActivatedTA1535PositiveSD] [int] NULL,
	[intActivatedTA1535Rep1NegativeNaCl] [int] NULL,
	[intActivatedTA1535Rep2NegativeNaCl] [int] NULL,
	[intActivatedTA1535Rep3NegativeNaCl] [int] NULL,
	[intActivatedTA1535NegativeNaClMean] [int] NULL,
	[intActivatedTA1535NegativeNaClSD] [int] NULL,
	[intActivatedTA1535Rep1NegativeCSO] [int] NULL,
	[intActivatedTA1535Rep2NegativeCSO] [int] NULL,
	[intActivatedTA1535Rep3NegativeCSO] [int] NULL,
	[intActivatedTA1535NegativeCSOMean] [int] NULL,
	[intActivatedTA1535NegativeCSOSD] [int] NULL,
	[intActivatedTA1535Rep1TestNaCl] [int] NULL,
	[intActivatedTA1535Rep2TestNaCl] [int] NULL,
	[intActivatedTA1535Rep3TestNaCl] [int] NULL,
	[intActivatedTA1535TestNaClMean] [int] NULL,
	[intActivatedTA1535TestNaClSD] [int] NULL,
	[intActivatedTA1535Rep1TestCSO] [int] NULL,
	[intActivatedTA1535Rep2TestCSO] [int] NULL,
	[intActivatedTA1535Rep3TestCSO] [int] NULL,
	[intActivatedTA1535TestCSOMean] [int] NULL,
	[intActivatedTA1535TestCSOSD] [int] NULL,
	[intActivatedTA1537Rep1Positive] [int] NULL,
	[intActivatedTA1537Rep2Positive] [int] NULL,
	[intActivatedTA1537Rep3Positive] [int] NULL,
	[intActivatedTA1537PositiveMean] [int] NULL,
	[intActivatedTA1537PositiveSD] [int] NULL,
	[intActivatedTA1537Rep1NegativeNaCl] [int] NULL,
	[intActivatedTA1537Rep2NegativeNaCl] [int] NULL,
	[intActivatedTA1537Rep3NegativeNaCl] [int] NULL,
	[intActivatedTA1537NegativeNaClMean] [int] NULL,
	[intActivatedTA1537NegativeNaClSD] [int] NULL,
	[intActivatedTA1537Rep1NegativeCSO] [int] NULL,
	[intActivatedTA1537Rep2NegativeCSO] [int] NULL,
	[intActivatedTA1537Rep3NegativeCSO] [int] NULL,
	[intActivatedTA1537NegativeCSOMean] [int] NULL,
	[intActivatedTA1537NegativeCSOSD] [int] NULL,
	[intActivatedTA1537Rep1TestNaCl] [int] NULL,
	[intActivatedTA1537Rep2TestNaCl] [int] NULL,
	[intActivatedTA1537Rep3TestNaCl] [int] NULL,
	[intActivatedTA1537TestNaClMean] [int] NULL,
	[intActivatedTA1537TestNaClSD] [int] NULL,
	[intActivatedTA1537Rep1TestCSO] [int] NULL,
	[intActivatedTA1537Rep2TestCSO] [int] NULL,
	[intActivatedTA1537Rep3TestCSO] [int] NULL,
	[intActivatedTA1537TestCSOMean] [int] NULL,
	[intActivatedTA1537TestCSOSD] [int] NULL,
	[intActivatedWP2Rep1Positive] [int] NULL,
	[intActivatedWP2Rep2Positive] [int] NULL,
	[intActivatedWP2Rep3Positive] [int] NULL,
	[intActivatedWP2PositiveMean] [int] NULL,
	[intActivatedWP2PositiveSD] [int] NULL,
	[intActivatedWP2Rep1NegativeNaCl] [int] NULL,
	[intActivatedWP2Rep2NegativeNaCl] [int] NULL,
	[intActivatedWP2Rep3NegativeNaCl] [int] NULL,
	[intActivatedWP2NegativeNaClMean] [int] NULL,
	[intActivatedWP2NegativeNaClSD] [int] NULL,
	[intActivatedWP2Rep1NegativeCSO] [int] NULL,
	[intActivatedWP2Rep2NegativeCSO] [int] NULL,
	[intActivatedWP2Rep3NegativeCSO] [int] NULL,
	[intActivatedWP2NegativeCSOMean] [int] NULL,
	[intActivatedWP2NegativeCSOSD] [int] NULL,
	[intActivatedWP2Rep1TestNaCl] [int] NULL,
	[intActivatedWP2Rep2TestNaCl] [int] NULL,
	[intActivatedWP2Rep3TestNaCl] [int] NULL,
	[intActivatedWP2TestNaClMean] [int] NULL,
	[intActivatedWP2TestNaClSD] [int] NULL,
	[intActivatedWP2Rep1TestCSO] [int] NULL,
	[intActivatedWP2Rep2TestCSO] [int] NULL,
	[intActivatedWP2Rep3TestCSO] [int] NULL,
	[intActivatedWP2TestCSOMean] [int] NULL,
	[intActivatedWP2TestCSOSD] [int] NULL,
 CONSTRAINT [PK_tblAmes] PRIMARY KEY CLUSTERED 
(
	[txtStudyNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Audit */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblAuditRecords]    Script Date: 09/24/2009 10:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuditRecords](
	[lngAuditID] [int] IDENTITY(1,1) NOT NULL,
	[txtProjectNumber] [nvarchar](20) NULL,
	[lngCreatorID] [int] NULL,
	[txtAction] [nvarchar](50) NULL,
	[dteCreatedDateTime] [datetime] NULL,
	[txtDocumentVersion] [nvarchar](20) NULL,
	[lngProxyID] [int] NULL,
 CONSTRAINT [PK_tblAuditRecords] PRIMARY KEY CLUSTERED 
(
	[lngAuditID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Empty */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblEmpty]    Script Date: 09/24/2009 10:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpty](
	[txtEmpty] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/* Kligman */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblKligman]    Script Date: 09/24/2009 10:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKligman](
	[txtStudyNumber] [nvarchar](50) NOT NULL,
	[intReaction] [smallint] NULL,
 CONSTRAINT [PK_tblKligman] PRIMARY KEY CLUSTERED 
(
	[txtStudyNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Mem */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblMemElution]    Script Date: 09/24/2009 10:22:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMemElution](
	[txtStudyNumber] [nvarchar](50) NOT NULL,
	[txtPositiveControl] [nvarchar](50) NULL,
	[txtNegativeControl] [nvarchar](50) NULL,
	[txtUntreatedControl] [nvarchar](50) NULL,
	[dteExperimentDate_0hrs] [datetime] NULL,
	[dteExperimentDate_24hrs] [datetime] NULL,
	[dteExperimentDate_48hrs] [datetime] NULL,
	[intMediaA_0hrs] [int] NULL,
	[intMediaA_24hrs] [int] NULL,
	[intMediaA_48hrs] [int] NULL,
	[intMediaB_0hrs] [int] NULL,
	[intMediaB_24hrs] [int] NULL,
	[intMediaB_48hrs] [int] NULL,
	[intMediaC_0hrs] [int] NULL,
	[intMediaC_24hrs] [int] NULL,
	[intMediaC_48hrs] [int] NULL,
	[intNegativeA_0hrs] [int] NULL,
	[intNegativeA_24hrs] [int] NULL,
	[intNegativeA_48hrs] [int] NULL,
	[intNegativeB_0hrs] [int] NULL,
	[intNegativeB_24hrs] [int] NULL,
	[intNegativeB_48hrs] [int] NULL,
	[intNegativeC_0hrs] [int] NULL,
	[intNegativeC_24hrs] [int] NULL,
	[intNegativeC_48hrs] [int] NULL,
	[intPositiveA_0hrs] [int] NULL,
	[intPositiveA_24hrs] [int] NULL,
	[intPositiveA_48hrs] [int] NULL,
	[intPositiveB_0hrs] [int] NULL,
	[intPositiveB_24hrs] [int] NULL,
	[intPositiveB_48hrs] [int] NULL,
	[intPositiveC_0hrs] [int] NULL,
	[intPositiveC_24hrs] [int] NULL,
	[intPositiveC_48hrs] [int] NULL,
	[intTestA_0hrs] [int] NULL,
	[intTestA_24hrs] [int] NULL,
	[intTestA_48hrs] [int] NULL,
	[intTestB_0hrs] [int] NULL,
	[intTestB_24hrs] [int] NULL,
	[intTestB_48hrs] [int] NULL,
	[intTestC_0hrs] [int] NULL,
	[intTestC_24hrs] [int] NULL,
	[intTestC_48hrs] [int] NULL,
	[txtExtractSterilized] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblMemElution] PRIMARY KEY CLUSTERED 
(
	[txtStudyNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Ordinal */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblOrdinal]    Script Date: 09/24/2009 10:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdinal](
	[intNumeral] [smallint] NOT NULL,
	[txtOrdinal] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblOrdinal] PRIMARY KEY CLUSTERED 
(
	[intNumeral] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Projects (studies) */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblProjects]    Script Date: 09/24/2009 10:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProjects](
	[txtSampleNumber] [varchar](20) NOT NULL,
	[txtTestType] [varchar](1) NULL,
	[intProjectNumber] [int] NULL,
	[txtProjectNumber] [varchar](20) NOT NULL,
	[txtStudyNumber] [varchar](50) NOT NULL,
	[txtProtocolNumber] [varchar](50) NULL,
	[txtTRFProtocolNumber] [varchar](50) NULL,
	[txtDepartment] [nvarchar](50) NULL,
	[intStudyDirector] [int] NULL,
	[intStudySupervisor] [int] NULL,
	[booReportCreated] [bit] NOT NULL CONSTRAINT [DF_tblProjects_booReportCreate]  DEFAULT ((0)),
	[txtStatus] [nvarchar](20) NULL,
	[txtVehicleDescription] [varchar](50) NULL,
	[txtVehicle1] [varchar](50) NULL,
	[txtVehicle2] [varchar](50) NULL,
	[txtVehicle3] [varchar](50) NULL,
	[txtVehicle4] [varchar](50) NULL,
	[txtVehicle5] [varchar](50) NULL,
	[txtVehicle6] [varchar](50) NULL,
	[txtExtractionConditions] [varchar](50) NULL,
	[txtRatio] [varchar](50) NULL,
	[txtVehicleQty] [nvarchar](50) NULL,
	[txtComment] [nvarchar](100) NULL,
	[dteTestInitiationDate] [datetime] NULL,
	[dteTestCompletionDate] [datetime] NULL,
	[dteFinalReportDate] [datetime] NULL,
	[dteLastAmendDate] [datetime] NULL,
	[dteProjectLogDate] [datetime] NULL,
	[dteStudyInitiationDate] [datetime] NULL,
	[dteExtractionStartDate] [datetime] NULL,
	[dteExtractionEndDate] [datetime] NULL,
	[booAmendmentPending] [bit] NOT NULL CONSTRAINT [DF_tblProjects_booAmendmentPending]  DEFAULT ((0)),
	[booReformatPending] [bit] NOT NULL CONSTRAINT [DF_tblProjects_booReformatPennding]  DEFAULT ((0)),
	[memAmendments] [ntext] NULL,
	[txtUnforeseenConsequences] [ntext] NULL,
	[txtProtocolAmendments] [ntext] NULL,
	[txtpHChange] [ntext] NULL,
	[txtActiveTaskGUID] [nvarchar](38) NULL,
	[memConclusions] [ntext] NULL,
	[txtPhase1Text] [varchar](50) NULL,
	[dtePhase1InspectionDate] [datetime] NULL,
	[dtePhase1SDReportDate] [datetime] NULL,
	[dtePhase1MgtReportDate] [datetime] NULL,
	[txtPhase2Text] [nvarchar](50) NULL,
	[dtePhase2InspectionDate] [datetime] NULL,
	[dtePhase2SDReportDate] [datetime] NULL,
	[dtePhase2MgtReportDate] [datetime] NULL,
	[txtPhase3Text] [nvarchar](50) NULL,
	[dtePhase3InspectionDate] [datetime] NULL,
	[dtePhase3SDReportDate] [datetime] NULL,
	[dtePhase3MgtReportDate] [datetime] NULL,
	[txtPhase4Text] [nvarchar](50) NULL,
	[dtePhase4InspectionDate] [datetime] NULL,
	[dtePhase4SDReportDate] [datetime] NULL,
	[dtePhase4MgtReportDate] [datetime] NULL,
	[txtPhase5Text] [nvarchar](50) NULL,
	[dtePhase5InspectionDate] [datetime] NULL,
	[dtePhase5SDReportDate] [datetime] NULL,
	[dtePhase5MgtReportDate] [datetime] NULL,
	[txtPhase6Text] [nvarchar](50) NULL,
	[dtePhase6InspectionDate] [datetime] NULL,
	[dtePhase6SDReportDate] [datetime] NULL,
	[dtePhase6MgtReportDate] [datetime] NULL,
	[txtPhase7Text] [nvarchar](50) NULL,
	[dtePhase7InspectionDate] [datetime] NULL,
	[dtePhase7SDReportDate] [datetime] NULL,
	[dtePhase7MgtReportDate] [datetime] NULL,
	[txtPhase8Text] [nvarchar](50) NULL,
	[dtePhase8InspectionDate] [datetime] NULL,
	[dtePhase8SDReportDate] [datetime] NULL,
	[dtePhase8MgtReportDate] [datetime] NULL,
	[txtPhase9Text] [nvarchar](50) NULL,
	[dtePhase9InspectionDate] [datetime] NULL,
	[dtePhase9SDReportDate] [datetime] NULL,
	[dtePhase9MgtReportDate] [datetime] NULL,
	[txtPhase10Text] [nvarchar](50) NULL,
	[dtePhase10InspectionDate] [datetime] NULL,
	[dtePhase10SDReportDate] [datetime] NULL,
	[dtePhase10MgtReportDate] [datetime] NULL,
	[txtPhase11Text] [nvarchar](50) NULL,
	[dtePhase11InspectionDate] [datetime] NULL,
	[dtePhase11SDReportDate] [datetime] NULL,
	[dtePhase11MgtReportDate] [datetime] NULL,
	[txtPhase12Text] [nvarchar](50) NULL,
	[dtePhase12InspectionDate] [datetime] NULL,
	[dtePhase12SDReportDate] [datetime] NULL,
	[dtePhase12MgtReportDate] [datetime] NULL,
	[txtPhase13Text] [nvarchar](50) NULL,
	[dtePhase13InspectionDate] [datetime] NULL,
	[dtePhase13SDReportDate] [datetime] NULL,
	[dtePhase13MgtReportDate] [datetime] NULL,
	[txtPhase14Text] [nvarchar](50) NULL,
	[dtePhase14InspectionDate] [datetime] NULL,
	[dtePhase14SDReportDate] [datetime] NULL,
	[dtePhase14MgtReportDate] [datetime] NULL,
	[txtPhase15Text] [nvarchar](50) NULL,
	[dtePhase15InspectionDate] [datetime] NULL,
	[dtePhase15SDReportDate] [datetime] NULL,
	[dtePhase15MgtReportDate] [datetime] NULL,
	[txtPhase16Text] [nvarchar](50) NULL,
	[dtePhase16InspectionDate] [datetime] NULL,
	[dtePhase16SDReportDate] [datetime] NULL,
	[dtePhase16MgtReportDate] [datetime] NULL,
	[txtPhase17Text] [nvarchar](50) NULL,
	[dtePhase17InspectionDate] [datetime] NULL,
	[dtePhase17SDReportDate] [datetime] NULL,
	[dtePhase17MgtReportDate] [datetime] NULL,
	[txtPhase18Text] [nvarchar](50) NULL,
	[dtePhase18InspectionDate] [datetime] NULL,
	[dtePhase18SDReportDate] [datetime] NULL,
	[dtePhase18MgtReportDate] [datetime] NULL,
	[txtPhase19Text] [nvarchar](50) NULL,
	[dtePhase19InspectionDate] [datetime] NULL,
	[dtePhase19SDReportDate] [datetime] NULL,
	[dtePhase19MgtReportDate] [datetime] NULL,
	[txtPhase20Text] [nvarchar](50) NULL,
	[dtePhase20InspectionDate] [datetime] NULL,
	[dtePhase20SDReportDate] [datetime] NULL,
	[dtePhase20MgtReportDate] [datetime] NULL,
	[txtPhase21Text] [nvarchar](50) NULL,
	[dtePhase21InspectionDate] [datetime] NULL,
	[dtePhase21SDReportDate] [datetime] NULL,
	[dtePhase21MgtReportDate] [datetime] NULL,
	[txtPhase22Text] [nvarchar](50) NULL,
	[dtePhase22InspectionDate] [datetime] NULL,
	[dtePhase22SDReportDate] [datetime] NULL,
	[dtePhase22MgtReportDate] [datetime] NULL,
	[txtPhase23Text] [nvarchar](50) NULL,
	[dtePhase23InspectionDate] [datetime] NULL,
	[dtePhase23SDReportDate] [datetime] NULL,
	[dtePhase23MgtReportDate] [datetime] NULL,
	[txtPhase24Text] [nvarchar](50) NULL,
	[dtePhase24InspectionDate] [datetime] NULL,
	[dtePhase24SDReportDate] [datetime] NULL,
	[dtePhase24MgtReportDate] [datetime] NULL,
	[txtPhase25Text] [nvarchar](50) NULL,
	[dtePhase25InspectionDate] [datetime] NULL,
	[dtePhase25SDReportDate] [datetime] NULL,
	[dtePhase25MgtReportDate] [datetime] NULL,
	[txtPhase26Text] [nvarchar](50) NULL,
	[dtePhase26InspectionDate] [datetime] NULL,
	[dtePhase26SDReportDate] [datetime] NULL,
	[dtePhase26MgtReportDate] [datetime] NULL,
	[txtPhase27Text] [nvarchar](50) NULL,
	[dtePhase27InspectionDate] [datetime] NULL,
	[dtePhase27SDReportDate] [datetime] NULL,
	[dtePhase27MgtReportDate] [datetime] NULL,
	[txtPhase28Text] [nvarchar](50) NULL,
	[dtePhase28InspectionDate] [datetime] NULL,
	[dtePhase28SDReportDate] [datetime] NULL,
	[dtePhase28MgtReportDate] [datetime] NULL,
	[txtPhase29Text] [nvarchar](50) NULL,
	[dtePhase29InspectionDate] [datetime] NULL,
	[dtePhase29SDReportDate] [datetime] NULL,
	[dtePhase29MgtReportDate] [datetime] NULL,
	[txtPhase30Text] [nvarchar](50) NULL,
	[dtePhase30InspectionDate] [datetime] NULL,
	[dtePhase30SDReportDate] [datetime] NULL,
	[dtePhase30MgtReportDate] [datetime] NULL,
	[txtPhase31Text] [nvarchar](50) NULL,
	[dtePhase31InspectionDate] [datetime] NULL,
	[dtePhase31SDReportDate] [datetime] NULL,
	[dtePhase31MgtReportDate] [datetime] NULL,
	[txtPhase32Text] [nvarchar](50) NULL,
	[dtePhase32InspectionDate] [datetime] NULL,
	[dtePhase32SDReportDate] [datetime] NULL,
	[dtePhase32MgtReportDate] [datetime] NULL,
	[txtPhase33Text] [nvarchar](50) NULL,
	[dtePhase33InspectionDate] [datetime] NULL,
	[dtePhase33SDReportDate] [datetime] NULL,
	[dtePhase33MgtReportDate] [datetime] NULL,
	[txtPhase34Text] [nvarchar](50) NULL,
	[dtePhase34InspectionDate] [datetime] NULL,
	[dtePhase34SDReportDate] [datetime] NULL,
	[dtePhase34MgtReportDate] [datetime] NULL,
	[txtPhase35Text] [nvarchar](50) NULL,
	[dtePhase35InspectionDate] [datetime] NULL,
	[dtePhase35SDReportDate] [datetime] NULL,
	[dtePhase35MgtReportDate] [datetime] NULL,
	[txtPhase36Text] [nvarchar](50) NULL,
	[dtePhase36InspectionDate] [datetime] NULL,
	[dtePhase36SDReportDate] [datetime] NULL,
	[dtePhase36MgtReportDate] [datetime] NULL,
	[txtPhase37Text] [nvarchar](50) NULL,
	[dtePhase37InspectionDate] [datetime] NULL,
	[dtePhase37SDReportDate] [datetime] NULL,
	[dtePhase37MgtReportDate] [datetime] NULL,
	[txtPhase38Text] [nvarchar](50) NULL,
	[dtePhase38InspectionDate] [datetime] NULL,
	[dtePhase38SDReportDate] [datetime] NULL,
	[dtePhase38MgtReportDate] [datetime] NULL,
	[txtPhase39Text] [nvarchar](50) NULL,
	[dtePhase39InspectionDate] [datetime] NULL,
	[dtePhase39SDReportDate] [datetime] NULL,
	[dtePhase39MgtReportDate] [datetime] NULL,
	[txtPhase40Text] [nvarchar](50) NULL,
	[dtePhase40InspectionDate] [datetime] NULL,
	[dtePhase40SDReportDate] [datetime] NULL,
	[dtePhase40MgtReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblProjects_1] PRIMARY KEY CLUSTERED 
(
	[txtStudyNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/* Protocols */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblProtocols]    Script Date: 09/24/2009 10:23:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProtocols](
	[intProtocolID] [int] IDENTITY(1,1) NOT NULL,
	[txtProtocolName] [varchar](50) NULL,
	[txtProtocolType] [varchar](50) NULL,
	[txtReportQuery] [varchar](2000) NULL,
	[booQAReview] [bit] NOT NULL CONSTRAINT [DF_tblProtocols_booQAReview]  DEFAULT ((0)),
	[txtWebForm] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProtocols] PRIMARY KEY CLUSTERED 
(
	[intProtocolID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/* Proxies */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblProxies]    Script Date: 09/24/2009 10:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProxies](
	[lngProxyId] [int] IDENTITY(1,1) NOT NULL,
	[intUserID] [int] NOT NULL,
	[intProxyID] [int] NOT NULL,
	[dteExpires] [datetime] NOT NULL,
 CONSTRAINT [PK_tblProxies] PRIMARY KEY CLUSTERED 
(
	[lngProxyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Samples */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblSamples]    Script Date: 09/24/2009 10:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSamples](
	[txtSampleNumber] [varchar](20) NOT NULL,
	[txtSponsorName] [varchar](50) NULL,
	[txtSponsorAddress1] [varchar](50) NULL,
	[txtSponsorAddress2] [varchar](50) NULL,
	[txtSponsorAddress3] [varchar](50) NULL,
	[txtSponsorContact] [varchar](100) NULL,
	[txtSponsorEmail] [varchar](50) NULL,
	[txtPONumber] [varchar](50) NULL,
	[txtTestArticleName] [varchar](100) NULL,
	[txtLotBatch] [varchar](50) NULL,
	[txtTestArticleReceiptDate] [varchar](50) NULL,
	[txtQuantity] [varchar](50) NULL,
	[txtCASCode] [varchar](50) NULL,
	[txtPhysicalState] [varchar](50) NULL,
	[txtColor] [varchar](50) NULL,
	[txtExpirationDate] [varchar](50) NULL,
	[txtDensity] [varchar](50) NULL,
	[txtStability] [varchar](50) NULL,
	[txtSolubility] [varchar](50) NULL,
	[txtPH] [varchar](50) NULL,
	[txtStorageConditions] [varchar](50) NULL,
	[txtSafetyPrecautions] [varchar](50) NULL,
	[booConfidentialityAgreement] [bit] NULL,
	[txtDisposition] [varchar](50) NULL,
	[txtTestType] [varchar](50) NULL,
 CONSTRAINT [PK_tblSamples] PRIMARY KEY CLUSTERED 
(
	[txtSampleNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/* Users */
USE [Toxikon_ra]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 09/24/2009 10:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[intUserID] [int] IDENTITY(1,1) NOT NULL,
	[txtUsername] [varchar](20) NULL,
	[txtUserRole] [varchar](50) NULL,
	[txtEmail] [varchar](50) NULL,
	[txtFullName] [varchar](50) NULL,
	[txtPhone] [varchar](50) NULL,
	[bloSignature] [varbinary](max) NULL,
	[txtSPUserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[intUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/* Lab Schedule View */
USE [Toxikon_ra]
GO
/****** Object:  View [dbo].[LabScheduleVw]    Script Date: 09/24/2009 10:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[LabScheduleVw]
AS
SELECT     p.txtSampleNumber, p.txtTestType, p.intProjectNumber, p.txtProjectNumber, p.txtStudyNumber, p.txtProtocolNumber, p.intStudyDirector, 
                      p.intStudySupervisor, p.txtStatus, p.txtVehicleDescription, p.txtVehicle1, p.txtVehicle2, p.txtVehicle3, p.txtVehicle4, p.txtVehicle5, p.txtVehicle6, 
                      p.txtExtractionConditions, p.dteTestInitiationDate, p.dteTestCompletionDate, p.dteProjectLogDate, p.dteStudyInitiationDate, 
                      p.dteExtractionStartDate, p.dteExtractionEndDate, p.booAmendmentPending, p.booReformatPending, p.memAmendments, 
					  p.txtUnforeseenConsequences, p.txtProtocolAmendments, p.txtpHChange, p.txtActiveTaskGUID, 
                      p.memConclusions, p.txtPhase1Text, p.dtePhase1InspectionDate, p.dtePhase1SDReportDate, p.dtePhase1MgtReportDate, p.txtPhase2Text, 
                      p.dtePhase2InspectionDate, p.dtePhase2SDReportDate, p.dtePhase2MgtReportDate, p.txtPhase3Text, p.dtePhase3InspectionDate, 
                      p.dtePhase3SDReportDate, p.dtePhase3MgtReportDate, p.txtPhase4Text, p.dtePhase4InspectionDate, p.dtePhase4SDReportDate, 
                      p.dtePhase4MgtReportDate, p.txtPhase5Text, p.dtePhase5InspectionDate, p.dtePhase5SDReportDate, p.dtePhase5MgtReportDate, p.txtPhase6Text, 
                      p.dtePhase6InspectionDate, p.dtePhase6SDReportDate, p.dtePhase6MgtReportDate, p.txtPhase7Text, p.dtePhase7InspectionDate, 
                      p.dtePhase7SDReportDate, p.dtePhase7MgtReportDate, p.txtPhase8Text, p.dtePhase8InspectionDate, p.dtePhase8SDReportDate, 
                      p.dtePhase8MgtReportDate, p.txtPhase9Text, p.dtePhase9InspectionDate, p.dtePhase9SDReportDate, p.dtePhase9MgtReportDate, p.txtPhase10Text, 
                      p.dtePhase10InspectionDate, p.dtePhase10SDReportDate, p.dtePhase10MgtReportDate, p.txtPhase11Text, p.dtePhase11InspectionDate, 
                      p.dtePhase11SDReportDate, p.dtePhase11MgtReportDate, p.txtPhase12Text, p.dtePhase12InspectionDate, p.dtePhase12SDReportDate, 
                      p.dtePhase12MgtReportDate, p.txtPhase13Text, p.dtePhase13InspectionDate, p.dtePhase13SDReportDate, p.dtePhase13MgtReportDate, 
                      p.txtPhase14Text, p.dtePhase14InspectionDate, p.dtePhase14SDReportDate, p.dtePhase14MgtReportDate, p.txtPhase15Text, 
                      p.dtePhase15InspectionDate, p.dtePhase15SDReportDate, p.dtePhase15MgtReportDate, p.txtPhase16Text, p.dtePhase16InspectionDate, 
                      p.dtePhase16SDReportDate, p.dtePhase16MgtReportDate, p.txtPhase17Text, p.dtePhase17InspectionDate, p.dtePhase17SDReportDate, 
                      p.dtePhase17MgtReportDate, p.txtPhase18Text, p.dtePhase18InspectionDate, p.dtePhase18SDReportDate, p.dtePhase18MgtReportDate, 
                      p.txtPhase19Text, p.dtePhase19InspectionDate, p.dtePhase19SDReportDate, p.dtePhase19MgtReportDate, p.txtPhase20Text, 
                      p.dtePhase20InspectionDate, p.dtePhase20SDReportDate, p.dtePhase20MgtReportDate, p.txtPhase21Text, p.dtePhase21InspectionDate, 
                      p.dtePhase21SDReportDate, p.dtePhase21MgtReportDate, p.txtPhase22Text, p.dtePhase22InspectionDate, p.dtePhase22SDReportDate, 
                      p.dtePhase22MgtReportDate, p.txtPhase23Text, p.dtePhase23InspectionDate, p.dtePhase23SDReportDate, p.dtePhase23MgtReportDate, 
                      p.txtPhase24Text, p.dtePhase24InspectionDate, p.dtePhase24SDReportDate, p.dtePhase24MgtReportDate, p.txtPhase25Text, 
                      p.dtePhase25InspectionDate, p.dtePhase25SDReportDate, p.dtePhase25MgtReportDate, p.txtPhase26Text, p.dtePhase26InspectionDate, 
                      p.dtePhase26SDReportDate, p.dtePhase26MgtReportDate, p.txtPhase27Text, p.dtePhase27InspectionDate, p.dtePhase27SDReportDate, 
                      p.dtePhase27MgtReportDate, p.txtPhase28Text, p.dtePhase28InspectionDate, p.dtePhase28SDReportDate, p.dtePhase28MgtReportDate, 
                      p.txtPhase29Text, p.dtePhase29InspectionDate, p.dtePhase29SDReportDate, p.dtePhase29MgtReportDate, p.txtPhase30Text, 
                      p.dtePhase30InspectionDate, p.dtePhase30SDReportDate, p.dtePhase30MgtReportDate, p.txtPhase31Text, p.dtePhase31InspectionDate, 
                      p.dtePhase31SDReportDate, p.dtePhase31MgtReportDate, p.txtPhase32Text, p.dtePhase32InspectionDate, p.dtePhase32SDReportDate, 
                      p.dtePhase32MgtReportDate, p.txtPhase33Text, p.dtePhase33InspectionDate, p.dtePhase33SDReportDate, p.dtePhase33MgtReportDate, 
                      p.txtPhase34Text, p.dtePhase34InspectionDate, p.dtePhase34SDReportDate, p.dtePhase34MgtReportDate, p.txtPhase35Text, 
                      p.dtePhase35InspectionDate, p.dtePhase35SDReportDate, p.dtePhase35MgtReportDate, p.txtPhase36Text, p.dtePhase36InspectionDate, 
                      p.dtePhase36SDReportDate, p.dtePhase36MgtReportDate, p.txtPhase37Text, p.dtePhase37InspectionDate, p.dtePhase37SDReportDate, 
                      p.dtePhase37MgtReportDate, p.txtPhase38Text, p.dtePhase38InspectionDate, p.dtePhase38SDReportDate, p.dtePhase38MgtReportDate, 
                      p.txtPhase39Text, p.dtePhase39InspectionDate, p.dtePhase39SDReportDate, p.dtePhase39MgtReportDate, p.txtPhase40Text, 
                      p.dtePhase40InspectionDate, p.dtePhase40SDReportDate, p.dtePhase40MgtReportDate, s.txtTestArticleName
FROM         dbo.tblProjects AS p LEFT OUTER JOIN
                      dbo.tblSamples AS s ON p.txtSampleNumber = s.txtSampleNumber

GO
/* Max Audit View */
USE [Toxikon_ra]
GO
/****** Object:  View [dbo].[MaxAudit]    Script Date: 09/24/2009 10:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaxAudit]
AS
SELECT     dbo.tblAuditRecords.txtProjectNumber, dbo.tblAuditRecords.lngCreatorID, dbo.tblAuditRecords.txtAction, dbo.tblAuditRecords.dteCreatedDateTime, 
                      dbo.tblAuditRecords.txtDocumentVersion
FROM         dbo.tblAuditRecords INNER JOIN
                          (SELECT     MAX(dteCreatedDateTime) AS dteCreatedDateTime, txtProjectNumber
                            FROM          dbo.tblAuditRecords AS tblAuditRecords_1
                            GROUP BY txtProjectNumber) AS maxAudit ON maxAudit.txtProjectNumber = dbo.tblAuditRecords.txtProjectNumber AND 
                      maxAudit.dteCreatedDateTime = dbo.tblAuditRecords.dteCreatedDateTime

GO
/* Workflow Report View */
USE [Toxikon_ra]
GO
/****** Object:  View [dbo].[WorkFlowReport]    Script Date: 09/24/2009 10:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[WorkFlowReport]
AS
SELECT     dbo.tblProjects.txtStudyNumber, dbo.tblProjects.txtDepartment, dbo.tblSamples.txtSponsorName, dbo.tblUsers.txtFullName, 
                      dbo.tblProjects.txtProtocolNumber, dbo.tblProjects.dteTestInitiationDate, dbo.tblProjects.dteTestCompletionDate, dbo.tblProjects.dteFinalReportDate, 
                      dbo.tblProjects.dteLastAmendDate, dbo.tblProjects.dteProjectLogDate, dbo.tblProjects.dteExtractionStartDate, dbo.tblProjects.dteExtractionEndDate, 
                      dbo.tblProjects.dteStudyInitiationDate, dbo.MaxAudit.txtAction, dbo.MaxAudit.dteCreatedDateTime, dbo.MaxAudit.txtDocumentVersion, 
                      dbo.tblProjects.txtStatus
FROM         dbo.tblProjects INNER JOIN
                      dbo.tblSamples ON dbo.tblProjects.txtSampleNumber = dbo.tblSamples.txtSampleNumber INNER JOIN
                      dbo.tblUsers ON dbo.tblProjects.intStudyDirector = dbo.tblUsers.intUserID LEFT OUTER JOIN
                      dbo.MaxAudit ON dbo.tblProjects.txtStudyNumber = dbo.MaxAudit.txtProjectNumber

GO
