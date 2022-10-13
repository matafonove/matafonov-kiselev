USE [master]
GO
/****** Object:  Database [Банк]    Script Date: 19.03.2022 12:52:35 ******/
CREATE DATABASE [Банк]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Банк', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Банк.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Банк_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Банк_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Банк] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Банк].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Банк] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Банк] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Банк] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Банк] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Банк] SET ARITHABORT OFF 
GO
ALTER DATABASE [Банк] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Банк] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Банк] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Банк] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Банк] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Банк] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Банк] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Банк] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Банк] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Банк] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Банк] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Банк] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Банк] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Банк] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Банк] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Банк] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Банк] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Банк] SET RECOVERY FULL 
GO
ALTER DATABASE [Банк] SET  MULTI_USER 
GO
ALTER DATABASE [Банк] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Банк] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Банк] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Банк] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Банк] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Банк] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Банк', N'ON'
GO
ALTER DATABASE [Банк] SET QUERY_STORE = OFF
GO
USE [Банк]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 19.03.2022 12:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[КодКлиента] [bigint] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[ДрИнициалы] [nvarchar](10) NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
	[ИдентБанкСчёта] [nchar](15) NOT NULL,
	[ТекущСальдоСчёта] [money] NOT NULL,
	[ДатаОткрСчёта] [datetime] NOT NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[КодКлиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипыОпераций]    Script Date: 19.03.2022 12:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипыОпераций](
	[КодТипа] [int] IDENTITY(1,1) NOT NULL,
	[ОписаниеОпераций] [nvarchar](30) NOT NULL,
	[ТипКредитаДебета] [bit] NOT NULL,
 CONSTRAINT [PK_ТипыОпераций] PRIMARY KEY CLUSTERED 
(
	[КодТипа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ФинансовыеПродукты]    Script Date: 19.03.2022 12:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ФинансовыеПродукты](
	[КодПродукта] [bigint] NOT NULL,
	[НазваниеПродукта] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ФинансовыеПродукты] PRIMARY KEY CLUSTERED 
(
	[КодПродукта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ФинансовыеПродуктыКлиентов]    Script Date: 19.03.2022 12:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ФинансовыеПродуктыКлиентов](
	[КодФПрКл] [bigint] NOT NULL,
	[КодКлиента] [bigint] NOT NULL,
	[КодФинансПрод] [bigint] NOT NULL,
	[Сумма] [money] NOT NULL,
	[ТребДатаОплаты] [datetime] NOT NULL,
	[ДатаВнесПослПлатежа] [datetime] NOT NULL,
 CONSTRAINT [PK_ФинансовыеПродуктыКлиентов] PRIMARY KEY CLUSTERED 
(
	[КодФПрКл] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Клиенты] ([КодКлиента], [Фамилия], [ДрИнициалы], [Имя], [Адрес], [ИдентБанкСчёта], [ТекущСальдоСчёта], [ДатаОткрСчёта]) VALUES (1231, N'Антоноа', N'И.В', N'Иван', N'Куйбышева35.4', N'90901          ', 40000.0000, CAST(N'2015-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Клиенты] ([КодКлиента], [Фамилия], [ДрИнициалы], [Имя], [Адрес], [ИдентБанкСчёта], [ТекущСальдоСчёта], [ДатаОткрСчёта]) VALUES (1232, N'Бираев', N'А.П', N'Асхаб', N'пр.Мира44\3', N'90902          ', 50000.0000, CAST(N'2015-04-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Клиенты] ([КодКлиента], [Фамилия], [ДрИнициалы], [Имя], [Адрес], [ИдентБанкСчёта], [ТекущСальдоСчёта], [ДатаОткрСчёта]) VALUES (1233, N'Куницин', N'И.А', N'Игорь', N'мр.36.дом30.97', N'90903          ', 123000.0000, CAST(N'2015-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Клиенты] ([КодКлиента], [Фамилия], [ДрИнициалы], [Имя], [Адрес], [ИдентБанкСчёта], [ТекущСальдоСчёта], [ДатаОткрСчёта]) VALUES (1234, N'Зайцев', N'Т.Б', N'Тамерлан', N'пер.Пионерский.31', N'90904          ', 543200.0000, CAST(N'2015-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ФинансовыеПродукты] ([КодПродукта], [НазваниеПродукта]) VALUES (331, N'ЦБ-РН')
INSERT [dbo].[ФинансовыеПродукты] ([КодПродукта], [НазваниеПродукта]) VALUES (332, N'ЦН-ГП')
INSERT [dbo].[ФинансовыеПродукты] ([КодПродукта], [НазваниеПродукта]) VALUES (333, N'Ак.Вф')
GO
INSERT [dbo].[ФинансовыеПродуктыКлиентов] ([КодФПрКл], [КодКлиента], [КодФинансПрод], [Сумма], [ТребДатаОплаты], [ДатаВнесПослПлатежа]) VALUES (601, 1231, 331, 900.0000, CAST(N'2016-06-06T00:00:00.000' AS DateTime), CAST(N'2016-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[ФинансовыеПродуктыКлиентов] ([КодФПрКл], [КодКлиента], [КодФинансПрод], [Сумма], [ТребДатаОплаты], [ДатаВнесПослПлатежа]) VALUES (602, 1232, 332, 70000.0000, CAST(N'2016-07-07T00:00:00.000' AS DateTime), CAST(N'2016-07-22T00:00:00.000' AS DateTime))
INSERT [dbo].[ФинансовыеПродуктыКлиентов] ([КодФПрКл], [КодКлиента], [КодФинансПрод], [Сумма], [ТребДатаОплаты], [ДатаВнесПослПлатежа]) VALUES (603, 1233, 333, 66534.0000, CAST(N'2016-09-04T00:00:00.000' AS DateTime), CAST(N'2016-01-11T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[ФинансовыеПродуктыКлиентов]  WITH CHECK ADD  CONSTRAINT [FK_ФинансовыеПродуктыКлиентов_Клиенты] FOREIGN KEY([КодКлиента])
REFERENCES [dbo].[Клиенты] ([КодКлиента])
GO
ALTER TABLE [dbo].[ФинансовыеПродуктыКлиентов] CHECK CONSTRAINT [FK_ФинансовыеПродуктыКлиентов_Клиенты]
GO
ALTER TABLE [dbo].[ФинансовыеПродуктыКлиентов]  WITH CHECK ADD  CONSTRAINT [FK_ФинансовыеПродуктыКлиентов_ФинансовыеПродукты] FOREIGN KEY([КодФинансПрод])
REFERENCES [dbo].[ФинансовыеПродукты] ([КодПродукта])
GO
ALTER TABLE [dbo].[ФинансовыеПродуктыКлиентов] CHECK CONSTRAINT [FK_ФинансовыеПродуктыКлиентов_ФинансовыеПродукты]
GO
USE [master]
GO
ALTER DATABASE [Банк] SET  READ_WRITE 
GO
