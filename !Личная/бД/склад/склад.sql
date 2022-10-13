USE [master]
GO
/****** Object:  Database [Sklad]    Script Date: 31.01.2022 12:14:24 ******/

USE [Sklad]
GO
/****** Object:  Table [dbo].[Поставщики]    Script Date: 31.01.2022 12:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщики](
	[код_поставщика] [int] NOT NULL,
	[наименование] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ПриходТовара]    Script Date: 31.01.2022 12:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПриходТовара](
	[код_прихода] [int] NOT NULL,
	[код_склад_един] [int] NOT NULL,
	[дата_прихода] [date] NULL,
	[объём] [nchar](10) NOT NULL,
	[срок_годности] [date] NULL,
 CONSTRAINT [PK_ПриходТовара] PRIMARY KEY CLUSTERED 
(
	[код_прихода] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[СкладскиеЕденицы]    Script Date: 31.01.2022 12:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[СкладскиеЕденицы](
	[код_единцы] [int] NOT NULL,
	[код_товара] [int] NOT NULL,
	[код_поставщика] [int] NOT NULL,
	[цена] [money] NULL,
	[един_измер] [nchar](10) NOT NULL,
	[сум_кол_тов] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Товары]    Script Date: 31.01.2022 12:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Товары](
	[код_товара] [int] NOT NULL,
	[наименование] [text] NOT NULL,
 CONSTRAINT [PK_Товары] PRIMARY KEY CLUSTERED 
(
	[код_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Поставщики] ([код_поставщика], [наименование]) VALUES (444, N'pr')
GO
INSERT [dbo].[Поставщики] ([код_поставщика], [наименование]) VALUES (445, N'bl')
GO
INSERT [dbo].[СкладскиеЕденицы] ([код_единцы], [код_товара], [код_поставщика], [цена], [един_измер], [сум_кол_тов]) VALUES (123, 221, 444, 1000.0000, N'кг        ', N'2         ')
GO
INSERT [dbo].[СкладскиеЕденицы] ([код_единцы], [код_товара], [код_поставщика], [цена], [един_измер], [сум_кол_тов]) VALUES (124, 222, 444, 800.0000, N'кг        ', N'3         ')
GO
USE [master]
GO
ALTER DATABASE [Sklad] SET  READ_WRITE 
GO
