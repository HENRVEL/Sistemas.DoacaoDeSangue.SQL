USE [master]
GO
/****** Object:  Database [BD_DOACAO]    Script Date: 08/08/2016 21:23:01 ******/
CREATE DATABASE [BD_DOACAO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_DOACAO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BD_DOACAO.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_DOACAO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BD_DOACAO_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD_DOACAO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_DOACAO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_DOACAO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_DOACAO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_DOACAO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_DOACAO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_DOACAO] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_DOACAO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_DOACAO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_DOACAO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_DOACAO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_DOACAO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_DOACAO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_DOACAO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_DOACAO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_DOACAO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_DOACAO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_DOACAO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_DOACAO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_DOACAO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_DOACAO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_DOACAO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_DOACAO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_DOACAO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_DOACAO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_DOACAO] SET  MULTI_USER 
GO
ALTER DATABASE [BD_DOACAO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_DOACAO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_DOACAO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_DOACAO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BD_DOACAO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_DOACAO] SET  READ_WRITE 
GO
