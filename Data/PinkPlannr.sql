USE [master]
GO
/****** Object:  Database [PinkPlannr]    Script Date: 3/28/2022 2:11:37 PM ******/
CREATE DATABASE [PinkPlannr]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PinkPlannr', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PinkPlannr.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PinkPlannr_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PinkPlannr_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PinkPlannr].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PinkPlannr] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PinkPlannr] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PinkPlannr] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PinkPlannr] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PinkPlannr] SET ARITHABORT OFF 
GO
ALTER DATABASE [PinkPlannr] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PinkPlannr] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PinkPlannr] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PinkPlannr] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PinkPlannr] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PinkPlannr] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PinkPlannr] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PinkPlannr] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PinkPlannr] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PinkPlannr] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PinkPlannr] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PinkPlannr] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PinkPlannr] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PinkPlannr] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PinkPlannr] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PinkPlannr] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PinkPlannr] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PinkPlannr] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PinkPlannr] SET  MULTI_USER 
GO
ALTER DATABASE [PinkPlannr] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PinkPlannr] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PinkPlannr] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PinkPlannr] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PinkPlannr] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PinkPlannr]
GO
/****** Object:  Table [dbo].[dietPlans]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dietPlans](
	[Breakfast] [varchar](max) NULL,
	[Lunch] [varchar](max) NULL,
	[Dinner] [varchar](max) NULL,
	[dietAdditional] [varchar](max) NULL,
	[userName] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exercisePlans]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exercisePlans](
	[exercisePlans] [varchar](50) NULL,
	[exercisesNames] [varchar](50) NULL,
	[Time] [time](7) NULL,
	[Reps] [int] NULL,
	[Impact] [varchar](50) NULL,
	[userName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hygienePlans]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hygienePlans](
	[hygieneRoutine] [time](7) NULL,
	[hygieneProducts] [varchar](max) NULL,
	[userName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_hygienePlans] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hygieneRoutine]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hygieneRoutine](
	[userName] [varchar](50) NOT NULL,
	[Morning] [time](7) NULL,
	[Afternoon] [time](7) NULL,
	[Evening] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_Additional]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_Additional](
	[userName] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[height] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[activityLevel] [varchar](50) NOT NULL,
	[medicalIssues] [varchar](max) NULL,
 CONSTRAINT [PK_user_Additional] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_Basic]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_Basic](
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user_Basic] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_Plans]    Script Date: 3/28/2022 2:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_Plans](
	[userName] [varchar](50) NOT NULL,
	[exercisePlans] [varchar](max) NULL,
	[dietPlans] [varchar](max) NULL,
	[hygienePlans] [varchar](max) NULL,
 CONSTRAINT [PK_user_Plans] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_user_Plans]    Script Date: 3/28/2022 2:11:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_user_Plans] ON [dbo].[user_Plans]
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dietPlans]  WITH CHECK ADD  CONSTRAINT [FK_dietPlans_user_Plans] FOREIGN KEY([userName])
REFERENCES [dbo].[user_Plans] ([userName])
GO
ALTER TABLE [dbo].[dietPlans] CHECK CONSTRAINT [FK_dietPlans_user_Plans]
GO
ALTER TABLE [dbo].[exercisePlans]  WITH CHECK ADD  CONSTRAINT [FK_exercisePlans_user_Plans] FOREIGN KEY([userName])
REFERENCES [dbo].[user_Plans] ([userName])
GO
ALTER TABLE [dbo].[exercisePlans] CHECK CONSTRAINT [FK_exercisePlans_user_Plans]
GO
ALTER TABLE [dbo].[hygienePlans]  WITH CHECK ADD  CONSTRAINT [FK_hygienePlans_user_Plans] FOREIGN KEY([userName])
REFERENCES [dbo].[user_Plans] ([userName])
GO
ALTER TABLE [dbo].[hygienePlans] CHECK CONSTRAINT [FK_hygienePlans_user_Plans]
GO
ALTER TABLE [dbo].[hygieneRoutine]  WITH CHECK ADD  CONSTRAINT [FK_hygieneRoutine_hygienePlans] FOREIGN KEY([userName])
REFERENCES [dbo].[hygienePlans] ([userName])
GO
ALTER TABLE [dbo].[hygieneRoutine] CHECK CONSTRAINT [FK_hygieneRoutine_hygienePlans]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [FK_user_Additional_user_Basic] FOREIGN KEY([userName])
REFERENCES [dbo].[user_Basic] ([userName])
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [FK_user_Additional_user_Basic]
GO
ALTER TABLE [dbo].[user_Plans]  WITH CHECK ADD  CONSTRAINT [FK_user_Plans_user_Additional] FOREIGN KEY([userName])
REFERENCES [dbo].[user_Additional] ([userName])
GO
ALTER TABLE [dbo].[user_Plans] CHECK CONSTRAINT [FK_user_Plans_user_Additional]
GO
ALTER TABLE [dbo].[dietPlans]  WITH CHECK ADD  CONSTRAINT [CK_dietPlans] CHECK  (([Breakfast] like '[^a-z A-Z]'))
GO
ALTER TABLE [dbo].[dietPlans] CHECK CONSTRAINT [CK_dietPlans]
GO
ALTER TABLE [dbo].[dietPlans]  WITH CHECK ADD  CONSTRAINT [CK_dietPlans_1] CHECK  (([Lunch] like '[^a-z A-Z]'))
GO
ALTER TABLE [dbo].[dietPlans] CHECK CONSTRAINT [CK_dietPlans_1]
GO
ALTER TABLE [dbo].[dietPlans]  WITH CHECK ADD  CONSTRAINT [CK_dietPlans_2] CHECK  (([Dinner] like '[^a-z A-Z]'))
GO
ALTER TABLE [dbo].[dietPlans] CHECK CONSTRAINT [CK_dietPlans_2]
GO
ALTER TABLE [dbo].[dietPlans]  WITH CHECK ADD  CONSTRAINT [CK_dietPlans_3] CHECK  (([dietAdditional] like '[^a-z A-Z]'))
GO
ALTER TABLE [dbo].[dietPlans] CHECK CONSTRAINT [CK_dietPlans_3]
GO
ALTER TABLE [dbo].[exercisePlans]  WITH CHECK ADD  CONSTRAINT [CK_exercisePlans] CHECK  (([exercisesNames] like 'a-z A-Z'))
GO
ALTER TABLE [dbo].[exercisePlans] CHECK CONSTRAINT [CK_exercisePlans]
GO
ALTER TABLE [dbo].[exercisePlans]  WITH CHECK ADD  CONSTRAINT [CK_exercisePlans_1] CHECK  (([Time] like '[^0-9]'))
GO
ALTER TABLE [dbo].[exercisePlans] CHECK CONSTRAINT [CK_exercisePlans_1]
GO
ALTER TABLE [dbo].[exercisePlans]  WITH CHECK ADD  CONSTRAINT [CK_exercisePlans_2] CHECK  (([Reps] like '[^0-9]'))
GO
ALTER TABLE [dbo].[exercisePlans] CHECK CONSTRAINT [CK_exercisePlans_2]
GO
ALTER TABLE [dbo].[exercisePlans]  WITH CHECK ADD  CONSTRAINT [CK_exercisePlans_3] CHECK  (([Impact] like 'Low Impact' OR [Impact] like 'High Impact'))
GO
ALTER TABLE [dbo].[exercisePlans] CHECK CONSTRAINT [CK_exercisePlans_3]
GO
ALTER TABLE [dbo].[hygienePlans]  WITH CHECK ADD  CONSTRAINT [CK_hygienePlans] CHECK  (([hygieneProducts] like 'a-z A-Z 0-9'))
GO
ALTER TABLE [dbo].[hygienePlans] CHECK CONSTRAINT [CK_hygienePlans]
GO
ALTER TABLE [dbo].[hygieneRoutine]  WITH CHECK ADD  CONSTRAINT [CK_hygieneRoutine] CHECK  (([Morning] like '[^0-9][^0-9]:[^0-9][^0-9]'))
GO
ALTER TABLE [dbo].[hygieneRoutine] CHECK CONSTRAINT [CK_hygieneRoutine]
GO
ALTER TABLE [dbo].[hygieneRoutine]  WITH CHECK ADD  CONSTRAINT [CK_hygieneRoutine_1] CHECK  (([Afternoon] like '[^0-9][^0-9]:[^0-9][^0-9]'))
GO
ALTER TABLE [dbo].[hygieneRoutine] CHECK CONSTRAINT [CK_hygieneRoutine_1]
GO
ALTER TABLE [dbo].[hygieneRoutine]  WITH CHECK ADD  CONSTRAINT [CK_hygieneRoutine_2] CHECK  (([Evening] like '[^0-9][^0-9]:[^0-9][^0-9]'))
GO
ALTER TABLE [dbo].[hygieneRoutine] CHECK CONSTRAINT [CK_hygieneRoutine_2]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional] CHECK  (([age] like '%[^14-80]%'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional_1] CHECK  (([gender] like 'Male' OR [gender] like 'Female' OR [gender] like 'Other'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional_1]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional_2] CHECK  (([height] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional_2]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional_3] CHECK  (([weight] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional_3]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional_4] CHECK  (([activityLevel] like 'Sedentary' OR [activityLevel] like 'Likely active' OR [activityLevel] like 'Moderately active' OR [activityLevel] like 'Very active'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional_4]
GO
ALTER TABLE [dbo].[user_Additional]  WITH CHECK ADD  CONSTRAINT [CK_user_Additional_5] CHECK  (([medicalIssues] like '%[^a-zA-Z]%'))
GO
ALTER TABLE [dbo].[user_Additional] CHECK CONSTRAINT [CK_user_Additional_5]
GO
ALTER TABLE [dbo].[user_Basic]  WITH CHECK ADD  CONSTRAINT [CK_user_Basic] CHECK  ((NOT [firstName] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[user_Basic] CHECK CONSTRAINT [CK_user_Basic]
GO
ALTER TABLE [dbo].[user_Basic]  WITH CHECK ADD  CONSTRAINT [CK_user_Basic_1] CHECK  ((NOT [lastName] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[user_Basic] CHECK CONSTRAINT [CK_user_Basic_1]
GO
ALTER TABLE [dbo].[user_Basic]  WITH CHECK ADD  CONSTRAINT [CK_user_Basic_2] CHECK  (([userName] like '%[^a-zA-Z0-9]%'))
GO
ALTER TABLE [dbo].[user_Basic] CHECK CONSTRAINT [CK_user_Basic_2]
GO
ALTER TABLE [dbo].[user_Basic]  WITH CHECK ADD  CONSTRAINT [CK_user_Basic_3] CHECK  (([email] like '%@%'))
GO
ALTER TABLE [dbo].[user_Basic] CHECK CONSTRAINT [CK_user_Basic_3]
GO
USE [master]
GO
ALTER DATABASE [PinkPlannr] SET  READ_WRITE 
GO
