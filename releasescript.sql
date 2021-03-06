USE [master]
GO
/****** Object:  Database [releasedb]    Script Date: 03-03-2021 12:09:54 ******/
CREATE DATABASE [releasedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'releasedb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\releasedb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'releasedb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\releasedb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [releasedb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [releasedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [releasedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [releasedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [releasedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [releasedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [releasedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [releasedb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [releasedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [releasedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [releasedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [releasedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [releasedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [releasedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [releasedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [releasedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [releasedb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [releasedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [releasedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [releasedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [releasedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [releasedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [releasedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [releasedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [releasedb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [releasedb] SET  MULTI_USER 
GO
ALTER DATABASE [releasedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [releasedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [releasedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [releasedb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [releasedb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [releasedb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [releasedb] SET QUERY_STORE = OFF
GO
USE [releasedb]
GO
/****** Object:  Table [dbo].[AddEmployee]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddEmployee](
	[EmpId] [int] NOT NULL,
	[EmpName] [varchar](50) NULL,
	[EmpRole] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeList]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeList](
	[EmployeeId] [int] NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[EmployeeRole] [varchar](50) NOT NULL,
	[Paassword] [varchar](max) NOT NULL,
 CONSTRAINT [PK_EmployeeList] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpTeam]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpTeam](
	[sno] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
 CONSTRAINT [PK_EmpTeam] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProId] [int] NOT NULL,
	[ProName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectList]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectList](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[Pid] [int] NULL,
	[Pname] [varchar](50) NULL,
	[ProjManagerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] NOT NULL,
	[TeamLeadId] [int] NOT NULL,
	[LeadName] [varchar](50) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpTeam]  WITH CHECK ADD  CONSTRAINT [FK_EmpTeam_EmployeeList] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeList] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmpTeam] CHECK CONSTRAINT [FK_EmpTeam_EmployeeList]
GO
ALTER TABLE [dbo].[EmpTeam]  WITH CHECK ADD  CONSTRAINT [FK_EmpTeam_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[EmpTeam] CHECK CONSTRAINT [FK_EmpTeam_Teams]
GO
ALTER TABLE [dbo].[ProjectList]  WITH CHECK ADD FOREIGN KEY([ProjManagerId])
REFERENCES [dbo].[EmployeeList] ([EmployeeId])
GO
ALTER TABLE [dbo].[ProjectList]  WITH CHECK ADD FOREIGN KEY([Pid])
REFERENCES [dbo].[Project] ([ProId])
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_EmployeeList] FOREIGN KEY([TeamLeadId])
REFERENCES [dbo].[EmployeeList] ([EmployeeId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_EmployeeList]
GO
/****** Object:  StoredProcedure [dbo].[proc_CheckLogin]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_CheckLogin](@un int, @pass varchar(max))
as
	select EmployeeId, EmployeeRole from EmployeeList where EmployeeId=@un and Paassword=@pass
GO
/****** Object:  StoredProcedure [dbo].[S_AddEmployee_p]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[S_AddEmployee_p]
@Eid int,
@Ename varchar(50),
@Erole varchar(20)
as
begin
	insert into AddEmployee values(@Eid,@Ename,@Erole)
end
GO
/****** Object:  StoredProcedure [dbo].[S_AddTeamLeadtoProject_p]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[S_AddTeamLeadtoProject_p]
@Pid int,
@Pname varchar(50),
@leadid int
as
begin
	insert into ProjectList values(@Pid,@Pname,@leadid)
end
GO
/****** Object:  StoredProcedure [dbo].[S_InsertIntoProject_p]    Script Date: 03-03-2021 12:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[S_InsertIntoProject_p]
@Pid int,
@Pname varchar(50)
as
begin
	insert into Project values(@Pid,@Pname)
end
GO
USE [master]
GO
ALTER DATABASE [releasedb] SET  READ_WRITE 
GO
