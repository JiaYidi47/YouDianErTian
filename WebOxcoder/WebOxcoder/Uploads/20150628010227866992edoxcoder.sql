USE [master]
GO
/****** Object:  Database [oxcoder]    Script Date: 2015/6/25 21:18:42 ******/
CREATE DATABASE [oxcoder]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'oxcoder', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\oxcoder.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'oxcoder_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\oxcoder_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [oxcoder] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [oxcoder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [oxcoder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [oxcoder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [oxcoder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [oxcoder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [oxcoder] SET ARITHABORT OFF 
GO
ALTER DATABASE [oxcoder] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [oxcoder] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [oxcoder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [oxcoder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [oxcoder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [oxcoder] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [oxcoder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [oxcoder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [oxcoder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [oxcoder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [oxcoder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [oxcoder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [oxcoder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [oxcoder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [oxcoder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [oxcoder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [oxcoder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [oxcoder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [oxcoder] SET RECOVERY FULL 
GO
ALTER DATABASE [oxcoder] SET  MULTI_USER 
GO
ALTER DATABASE [oxcoder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [oxcoder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [oxcoder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [oxcoder] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'oxcoder', N'ON'
GO
USE [oxcoder]
GO
/****** Object:  Table [dbo].[challenge]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[challenge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[challengeLevel] [int] NOT NULL,
	[isPhoto] [int] NULL,
	[isPublished] [int] NULL,
	[question1ID] [int] NOT NULL,
	[question2ID] [int] NOT NULL,
	[question3ID] [int] NOT NULL,
	[companyEmail] [nvarchar](50) NOT NULL,
	[state] [int] NULL,
	[duration] [nvarchar](25) NULL,
 CONSTRAINT [PK_challenge] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[challengeRecord]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[challengeRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[challengeId] [int] NOT NULL,
	[coderEmail] [nvarchar](50) NOT NULL,
	[result] [nvarchar](30) NULL,
	[subResult] [nvarchar](50) NULL,
	[time] [nvarchar](20) NULL,
	[subTime1] [int] NULL,
	[subTime2] [int] NULL,
	[subTime3] [int] NULL,
	[isInvited] [int] NULL,
        [ideoneID] [nvarchar](50) NULL,
 CONSTRAINT [PK_challengeRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[coder]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coder](
	[email] [nvarchar](50) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[age] [int] NOT NULL,
	[sex] [int] NOT NULL,
	[phone] [nvarchar](11) NULL,
	[price] [int] NULL,
	[performance0] [float] NULL,
	[performance1] [float] NULL,
	[performance2] [float] NULL,
	[performance3] [float] NULL,
	[performance4] [float] NULL,
	[bindinginfo] [nvarchar](7) NOT NULL,
 CONSTRAINT [PK_coder] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enterprise]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise](
	[email] [nvarchar](50) NOT NULL,
	[shortName] [nvarchar](20) NULL,
	[fullName] [nvarchar](40) NULL,
	[location] [nvarchar](80) NULL,
	[introduction] [nvarchar](200) NULL,
	[scale] [nvarchar](10) NOT NULL,
	[website] [nvarchar](30) NULL,
	[logo] [nvarchar](30) NULL,
	[label] [nvarchar](30) NULL,
	[ischeck] [int] NOT NULL,
	[restInvite] [int] NULL,
	[restCreate] [int] NULL,
 CONSTRAINT [PK_enterprise] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companyEmail] [nvarchar](50) NULL,
	[type] [int] NULL,
	[number] [int] NULL,
	[money] [float] NULL,
	[time] [nvarchar](20) NULL,
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[promoCode]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promoCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [nvarchar](10) NULL,
	[inviteCount] [int] NULL,
	[createCount] [int] NULL,
 CONSTRAINT [PK_promoCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[question]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
	[intro] [nvarchar](50) NULL,
	[knowledge] [nvarchar](30) NULL,
	[tecnology] [nvarchar](20) NULL,
	[questionLevel] [int] NULL,
	[questionContent] [nvarchar](100) NULL,
	[answer] [nvarchar](100) NULL,
	[typeId] [int] NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[type]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[content] [nvarchar](200) NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 2015/6/25 21:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[type] [int] NOT NULL,
	[registerTime] [timestamp] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[challenge] ADD  CONSTRAINT [DF_challenge_isPhoto]  DEFAULT ((0)) FOR [isPhoto]
GO
ALTER TABLE [dbo].[challenge] ADD  CONSTRAINT [DF_challenge_isPublished]  DEFAULT ((0)) FOR [isPublished]
GO
ALTER TABLE [dbo].[challenge] ADD  CONSTRAINT [DF_challenge_state]  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[challengeRecord] ADD  CONSTRAINT [DF_challengeRecord_isInvited]  DEFAULT ((0)) FOR [isInvited]
GO
ALTER TABLE [dbo].[coder] ADD  CONSTRAINT [DF_coder_age]  DEFAULT ((0)) FOR [age]
GO
ALTER TABLE [dbo].[coder] ADD  CONSTRAINT [DF_coder_sex]  DEFAULT ((1)) FOR [sex]
GO
ALTER TABLE [dbo].[coder] ADD  CONSTRAINT [DF_coder_bindinginfo]  DEFAULT ((0)) FOR [bindinginfo]
GO
ALTER TABLE [dbo].[enterprise] ADD  CONSTRAINT [DF_enterprise_ischeck]  DEFAULT ((0)) FOR [ischeck]
GO
ALTER TABLE [dbo].[enterprise] ADD  CONSTRAINT [DF_enterprise_restInvite]  DEFAULT ((3)) FOR [restInvite]
GO
ALTER TABLE [dbo].[enterprise] ADD  CONSTRAINT [DF_enterprise_restCreate]  DEFAULT ((3)) FOR [restCreate]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF_orders_type]  DEFAULT ((0)) FOR [type]
GO
USE [master]
GO
ALTER DATABASE [oxcoder] SET  READ_WRITE 
GO
