USE [master]
GO
/****** Object:  Database [Practica2]    Script Date: 06/05/2019 04:49:06 p. m. ******/
CREATE DATABASE [Practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\Practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\Practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica2] SET QUERY_STORE = OFF
GO
USE [Practica2]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Matricula] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[ID] [varchar](10) NOT NULL,
	[Autor] [varchar](1) NOT NULL,
	[FechaDLanz] [date] NOT NULL,
	[FechaDREcib] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vw_2]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_2]
AS
SELECT Alumnos.Matricula, Libros.ID
FROM Alumnos
INNER JOIN Libros
ON Alumnos.Matricula= Libros.ID;
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[IDCarrera] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NumeroEstud] [varchar](50) NOT NULL,
	[Grupos] [varchar](50) NOT NULL,
	[DuraciónTotal] [time](7) NOT NULL,
	[Aulas] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clubs]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clubs](
	[IDClub] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Encargado] [varchar](1) NOT NULL,
	[Duración] [time](7) NOT NULL,
	[Aula] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDClub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vw_3]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_3]
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO
/****** Object:  Table [dbo].[Maestros2]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros2](
	[NumEmpl] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[FechaNacimiento1] [date] NULL,
	[FechaIngreso] [date] NULL,
	[Edad] [varbinary](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumEmpl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vw_5]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_5]
AS
SELECT Maestros2.PrimerApellido,Alumnos.SegundoApellido
FROM Maestros2
INNER JOIN Alumnos
ON Maestros2.PrimerApellido=Alumnos.SegundoApellido;
GO
/****** Object:  View [dbo].[Vw_8]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_8]
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO
/****** Object:  View [dbo].[Vw_9]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_9]
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO
/****** Object:  View [dbo].[Vw_10]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_10]
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO
/****** Object:  View [dbo].[Vw_1]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_1]
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO
/****** Object:  View [dbo].[Vw_4]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_4]
AS
SELECT Maestros2.FechaNacimiento1,Alumnos.FechaNacimiento
FROM Maestros2
INNER JOIN Alumnos
ON Maestros2.FechaNacimiento1=Alumnos.FechaNacimiento;
GO
/****** Object:  Table [dbo].[PELICULAS]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS](
	[ID] [varchar](10) NOT NULL,
	[Nombre1] [varchar](50) NOT NULL,
	[FechaDentr] [date] NOT NULL,
	[Precio1] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
	[Clasificación] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLATILLOS]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLATILLOS](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[FechaPedido] [date] NULL,
	[TiempoNServ] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vw_6]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_6]
AS
SELECT PELICULAS.Nombre1,PLATILLOS.Nombre
FROM PELICULAS
INNER JOIN PLATILLOS
ON PELICULAS.Nombre1=PLATILLOS.Nombre;
GO
/****** Object:  View [dbo].[Vw_7]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vw_7]
AS
SELECT PELICULAS.Precio1, PLATILLOS.Precio
FROM PELICULAS
INNER JOIN PLATILLOS
ON PELICULAS.Precio1=PLATILLOS.Precio;
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[IDMat] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Profesor] [varchar](1) NOT NULL,
	[Grupo] [varchar](50) NOT NULL,
	[Duración] [time](7) NOT NULL,
	[NomCarrera] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUSICA]    Script Date: 06/05/2019 04:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUSICA](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Autor] [varchar](1) NOT NULL,
	[FechaDCompr] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablalog]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablalog](
	[idlog] [int] NULL,
	[accion] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEOJUEGOS]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEOJUEGOS](
	[ID] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Creadores] [varchar](1) NOT NULL,
	[FechaDentr] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_vw1]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw1]
AS
SELECT * FROM Vw_1
GO
/****** Object:  StoredProcedure [dbo].[sp_vw10]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw10]
AS
SELECT * FROM Vw_10
GO
/****** Object:  StoredProcedure [dbo].[sp_vw2]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw2]
AS
SELECT * FROM Vw_2
GO
/****** Object:  StoredProcedure [dbo].[sp_vw3]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw3]
AS
SELECT * FROM Vw_3
GO
/****** Object:  StoredProcedure [dbo].[sp_vw4]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw4]
AS
SELECT * FROM Vw_4
GO
/****** Object:  StoredProcedure [dbo].[sp_vw5]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw5]
AS
SELECT * FROM Vw_5
GO
/****** Object:  StoredProcedure [dbo].[sp_vw6]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw6]
AS
SELECT * FROM Vw_6
GO
/****** Object:  StoredProcedure [dbo].[sp_vw7]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw7]
AS
SELECT * FROM Vw_7
GO
/****** Object:  StoredProcedure [dbo].[sp_vw8]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw8]
AS
SELECT * FROM Vw_8
GO
/****** Object:  StoredProcedure [dbo].[sp_vw9]    Script Date: 06/05/2019 04:49:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vw9]
AS
SELECT * FROM Vw_9
GO
USE [master]
GO
ALTER DATABASE [Practica2] SET  READ_WRITE 
GO
