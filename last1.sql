USE [master]
GO
/****** Object:  Database [Mesajlasma_Sistemi]    Script Date: 21.10.2022 15:36:43 ******/
CREATE DATABASE [Mesajlasma_Sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mesajlasma_Sistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mesajlasma_Sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mesajlasma_Sistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mesajlasma_Sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mesajlasma_Sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET QUERY_STORE = OFF
GO
USE [Mesajlasma_Sistemi]
GO
/****** Object:  Table [dbo].[KISILER]    Script Date: 21.10.2022 15:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KISILER](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](20) NULL,
	[SOYAD] [varchar](20) NULL,
	[NUMARA] [varchar](4) NULL,
	[SIFRE] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MESAJ]    Script Date: 21.10.2022 15:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MESAJ](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[GONDEREN] [varchar](4) NULL,
	[ALICI] [varchar](4) NULL,
	[BASLIK] [varchar](20) NULL,
	[MESAJ] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Mesajlasma_Sistemi] SET  READ_WRITE 
GO
