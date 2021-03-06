USE [master]
GO
/****** Object:  Database [demoPRN]    Script Date: 6/30/2021 8:48:53 PM ******/
CREATE DATABASE [demoPRN] 
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [demoPRN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [demoPRN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [demoPRN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [demoPRN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [demoPRN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [demoPRN] SET ARITHABORT OFF 
GO
ALTER DATABASE [demoPRN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [demoPRN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [demoPRN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [demoPRN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [demoPRN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [demoPRN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [demoPRN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [demoPRN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [demoPRN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [demoPRN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [demoPRN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [demoPRN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [demoPRN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [demoPRN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [demoPRN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [demoPRN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [demoPRN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [demoPRN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [demoPRN] SET  MULTI_USER 
GO
ALTER DATABASE [demoPRN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [demoPRN] SET DB_CHAINING OFF 
GO
USE [demoPRN]
GO
/****** Object:  Table [dbo].[FilterResult]    Script Date: 6/30/2021 8:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterResult](
	[FileCPP] [varchar](150) NOT NULL,
	[NoQuestion] [varchar](50) NOT NULL,
	[FileInputResult] [varchar](150) NOT NULL,
	[FileOutputResult] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilterTestCase]    Script Date: 6/30/2021 8:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterTestCase](
	[FileTestCase] [varchar](150) NOT NULL,
	[FileQuestionTestCase] [varchar](150) NOT NULL,
	[NoPaper] [int] NOT NULL,
	[FileInputTestCase] [varchar](150) NOT NULL,
	[FileOutputTestCase] [varchar](150) NOT NULL,
	[MarkTestCase] [float] NOT NULL,
 CONSTRAINT [PK_FilterTeseCase] PRIMARY KEY CLUSTERED 
(
	[FileInputTestCase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderExam]    Script Date: 6/30/2021 8:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderExam](
	[FileSolution] [varchar](150) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[NoQuestion] [varchar](150) NOT NULL,
	[NoPaper] [int] NULL,
	[FileCPP] [varchar](150) NOT NULL,
 CONSTRAINT [PK_FolderExam] PRIMARY KEY CLUSTERED 
(
	[FileCPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderTestCase]    Script Date: 6/30/2021 8:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderTestCase](
	[FileQuestionTestCase] [varchar](150) NOT NULL,
	[NoQuestion] [varchar](50) NOT NULL,
	[NoPaper] [int] NOT NULL,
 CONSTRAINT [PK_FolderTestCase] PRIMARY KEY CLUSTERED 
(
	[FileQuestionTestCase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 6/30/2021 8:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[StudentID] [varchar](50) NOT NULL,
	[NoQuestion] [varchar](50) NOT NULL,
	[Mark] [float] NOT NULL,
	[FileTestCase-1] [varchar](150) NOT NULL,
	[CheckTestKey-1] [bit] NOT NULL,
	[FileTestCase-2] [varchar](150) NULL,
	[CheckTestKey-2] [bit] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[FilterResult] ([FileCPP], [NoQuestion], [FileInputResult], [FileOutputResult]) VALUES (N'SE1425\Paper-1\he141080-Huynv\Q1\src\x1.cpp', N'Q1', N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-1.txt', N'SE1425\he141080-Huynv-paper\Q1\ouputtc1.txt')
INSERT [dbo].[FilterResult] ([FileCPP], [NoQuestion], [FileInputResult], [FileOutputResult]) VALUES (N'SE1425\Paper-1\he141080-Huynv\Q1\src\x1.cpp', N'Q1', N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-2.txt', N'SE1425\he141080-Huynv-paper\Q1\ouputtc2.txt')
INSERT [dbo].[FilterResult] ([FileCPP], [NoQuestion], [FileInputResult], [FileOutputResult]) VALUES (N'SE1425\Paper-1\he141080-Huynv\Q2\src\x1.cpp', N'Q2', N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-1.txt', N'SE1425\he141080-Huynv-paper\Q2\ouputtc2.txt')
INSERT [dbo].[FilterResult] ([FileCPP], [NoQuestion], [FileInputResult], [FileOutputResult]) VALUES (N'SE1425\Paper-1\he141080-Huynv\Q2\src\x1.cpp', N'Q2', N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-2.txt', N'SE1425\he141080-Huynv-paper\Q2\ouputtc2.txt')
GO
INSERT [dbo].[FilterTestCase] ([FileTestCase], [FileQuestionTestCase], [NoPaper], [FileInputTestCase], [FileOutputTestCase], [MarkTestCase]) VALUES (N'TestCase-Paper1\Q1\testCase-1.txt', N'TestCase-Paper1\Q1', 1, N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-1.txt', N'TestCase-Paper1\Q1\OutputTestCase\outputTestCase-1.txt', 1)
INSERT [dbo].[FilterTestCase] ([FileTestCase], [FileQuestionTestCase], [NoPaper], [FileInputTestCase], [FileOutputTestCase], [MarkTestCase]) VALUES (N'TestCase-Paper1\Q1\testCase-2.txt', N'TestCase-Paper1\Q1', 1, N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-2.txt', N'TestCase-Paper1\Q1\OutputTestCase\outputTestCase-2.txt', 1)
INSERT [dbo].[FilterTestCase] ([FileTestCase], [FileQuestionTestCase], [NoPaper], [FileInputTestCase], [FileOutputTestCase], [MarkTestCase]) VALUES (N'TestCase-Paper1\Q2\testCase-1.txt', N'TestCase-Paper1\Q2', 1, N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-1.txt', N'TestCase-Paper1\Q2\OutputTestCase\outputTestCase-2.txt', 1)
INSERT [dbo].[FilterTestCase] ([FileTestCase], [FileQuestionTestCase], [NoPaper], [FileInputTestCase], [FileOutputTestCase], [MarkTestCase]) VALUES (N'TestCase-Paper1\Q2\testCase-2.txt', N'TestCase-Paper1\Q2', 1, N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-2.txt', N'TestCase-Paper1\Q2\OutputTestCase\outputTestCase-2.txt', 1)
GO
INSERT [dbo].[FolderExam] ([FileSolution], [StudentID], [NoQuestion], [NoPaper], [FileCPP]) VALUES (N'Paper-1\he141080-Huynv', N'he141080', N'Q1', 1, N'SE1425\Paper-1\he141080-Huynv\Q1\src\x1.cpp')
INSERT [dbo].[FolderExam] ([FileSolution], [StudentID], [NoQuestion], [NoPaper], [FileCPP]) VALUES (N'Paper-1\he141080-Huynv', N'he141080', N'Q2', 2, N'SE1425\Paper-1\he141080-Huynv\Q2\src\x1.cpp')
GO
INSERT [dbo].[FolderTestCase] ([FileQuestionTestCase], [NoQuestion], [NoPaper]) VALUES (N'TestCase-Paper1\Q1', N'Q1', 1)
INSERT [dbo].[FolderTestCase] ([FileQuestionTestCase], [NoQuestion], [NoPaper]) VALUES (N'TestCase-Paper1\Q2', N'Q2', 1)
GO
INSERT [dbo].[Score] ([StudentID], [NoQuestion], [Mark], [FileTestCase-1], [CheckTestKey-1], [FileTestCase-2], [CheckTestKey-2]) VALUES (N'he141080', N'Q1', 1, N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-1.txt', 1, N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-2.txt', 1)
INSERT [dbo].[Score] ([StudentID], [NoQuestion], [Mark], [FileTestCase-1], [CheckTestKey-1], [FileTestCase-2], [CheckTestKey-2]) VALUES (N'he141080', N'Q2', 1, N'TestCase-Paper1\Q1\InputTestCase\inputTestCase-2.txt', 1, N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-2.txt', 1)
INSERT [dbo].[Score] ([StudentID], [NoQuestion], [Mark], [FileTestCase-1], [CheckTestKey-1], [FileTestCase-2], [CheckTestKey-2]) VALUES (N'he141080', N'Q3', 1, N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-1.txt', 0, NULL, NULL)
INSERT [dbo].[Score] ([StudentID], [NoQuestion], [Mark], [FileTestCase-1], [CheckTestKey-1], [FileTestCase-2], [CheckTestKey-2]) VALUES (N'he141080', N'Q4', 1, N'TestCase-Paper1\Q2\InputTestCase\inputTestCase-2.txt', 1, NULL, NULL)
GO
ALTER TABLE [dbo].[FilterResult]  WITH CHECK ADD  CONSTRAINT [FK_FilterResult_FilterTestCase] FOREIGN KEY([FileInputResult])
REFERENCES [dbo].[FilterTestCase] ([FileInputTestCase])
GO
ALTER TABLE [dbo].[FilterResult] CHECK CONSTRAINT [FK_FilterResult_FilterTestCase]
GO
ALTER TABLE [dbo].[FilterResult]  WITH CHECK ADD  CONSTRAINT [FK_FilterResult_FolderExam] FOREIGN KEY([FileCPP])
REFERENCES [dbo].[FolderExam] ([FileCPP])
GO
ALTER TABLE [dbo].[FilterResult] CHECK CONSTRAINT [FK_FilterResult_FolderExam]
GO
ALTER TABLE [dbo].[FilterTestCase]  WITH CHECK ADD  CONSTRAINT [FK_FilterTestCase_FolderTestCase] FOREIGN KEY([FileQuestionTestCase])
REFERENCES [dbo].[FolderTestCase] ([FileQuestionTestCase])
GO
ALTER TABLE [dbo].[FilterTestCase] CHECK CONSTRAINT [FK_FilterTestCase_FolderTestCase]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_FilterTestCase] FOREIGN KEY([FileTestCase-1])
REFERENCES [dbo].[FilterTestCase] ([FileInputTestCase])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_FilterTestCase]
GO
USE [master]
GO
ALTER DATABASE [demoPRN] SET  READ_WRITE 
GO
