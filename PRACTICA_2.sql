USE [Practica2]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 02/03/2019 11:58:20 p. m. ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[IDCarrera] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Profesores] [varchar](50) NOT NULL,
	[NumeroEstud] [varchar](50) NOT NULL,
	[Grupos] [varchar](50) NOT NULL,
	[Horarios] [varchar](50) NOT NULL,
	[DuraciónTotal] [time](7) NOT NULL,
	[Aulas] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clubs]    Script Date: 02/03/2019 11:58:21 p. m. ******/
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
/****** Object:  Table [dbo].[Libros]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[ID] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Autor] [varchar](1) NOT NULL,
	[FechaDLanz] [date] NOT NULL,
	[FechaDImpr] [date] NOT NULL,
	[FechaDentr] [date] NOT NULL,
	[FechaDREcib] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestros2]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros2](
	[NumEmpl] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[FechaIngreso] [date] NULL,
	[Edad] [varbinary](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumEmpl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 02/03/2019 11:58:21 p. m. ******/
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
/****** Object:  Table [dbo].[MUSICA]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUSICA](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Autor] [varchar](1) NOT NULL,
	[FechaDLanz] [date] NOT NULL,
	[FechaDCompr] [date] NOT NULL,
	[Duración] [time](7) NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS](
	[ID] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Director] [varchar](1) NOT NULL,
	[FechaDLanz] [date] NOT NULL,
	[FechaDentr] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
	[Clasificación] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLATILLOS]    Script Date: 02/03/2019 11:58:21 p. m. ******/
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
/****** Object:  Table [dbo].[VIDEOJUEGOS]    Script Date: 02/03/2019 11:58:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEOJUEGOS](
	[ID] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Creadores] [varchar](1) NOT NULL,
	[FechaDLanz] [date] NOT NULL,
	[FechaDentr] [date] NOT NULL,
	[Precio] [money] NOT NULL,
	[Categoría] [varchar](50) NOT NULL,
	[Clasificación] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
