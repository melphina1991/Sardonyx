USE [master]
GO
/****** Object:  Database [Sardonyx]    Script Date: 02/13/2021 20:15:45 ******/
CREATE DATABASE [Sardonyx] ON  PRIMARY 
( NAME = N'Sardonyx', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sardonyx.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sardonyx_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sardonyx_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sardonyx] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sardonyx].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sardonyx] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Sardonyx] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Sardonyx] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Sardonyx] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Sardonyx] SET ARITHABORT OFF
GO
ALTER DATABASE [Sardonyx] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Sardonyx] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Sardonyx] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Sardonyx] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Sardonyx] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Sardonyx] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Sardonyx] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Sardonyx] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Sardonyx] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Sardonyx] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Sardonyx] SET  DISABLE_BROKER
GO
ALTER DATABASE [Sardonyx] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Sardonyx] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Sardonyx] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Sardonyx] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Sardonyx] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Sardonyx] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Sardonyx] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Sardonyx] SET  READ_WRITE
GO
ALTER DATABASE [Sardonyx] SET RECOVERY FULL
GO
ALTER DATABASE [Sardonyx] SET  MULTI_USER
GO
ALTER DATABASE [Sardonyx] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Sardonyx] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sardonyx', N'ON'
GO
USE [Sardonyx]
GO
/****** Object:  Table [dbo].[Adminlog]    Script Date: 02/13/2021 20:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adminlog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Adminlog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 02/13/2021 20:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[EmpViewId]    Script Date: 02/13/2021 20:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[EmpViewId]
@ContactID int
AS
BEGIN
Select * From Registration
where ContactID =@ContactID
END
GO
/****** Object:  StoredProcedure [dbo].[EmpView]    Script Date: 02/13/2021 20:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[EmpView]
AS
BEGIN
Select * From Registration
END
GO
/****** Object:  StoredProcedure [dbo].[Employee]    Script Date: 02/13/2021 20:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Employee]
@ContactID int,
@Name varchar(50),
@UserName varchar(50),
@Password varchar (50)
AS
BEGIN
If(@ContactID=0)
Begin
Insert into Registration(Name,UserName,Password)
Values(
@Name,
@UserName,
@Password
)
End
ELSE

Begin
Update Registration
Set 
Name =@Name,
UserName=@UserName,
Password=@Password

Where ContactID=@ContactID
End
END
GO
/****** Object:  StoredProcedure [dbo].[EmpDelete]    Script Date: 02/13/2021 20:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[EmpDelete]
@ContactID int
AS
BEGIN
Delete From Registration
where ContactID =@ContactID
END
GO
