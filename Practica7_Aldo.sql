CREATE VIEW Vw_1
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO

CREATE VIEW Vw_2
AS
SELECT Alumnos.Matricula, Libros.ID
FROM Alumnos
INNER JOIN Libros
ON Alumnos.Matricula= Libros.ID;
GO

CREATE VIEW Vw_3
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO

CREATE VIEW Vw_4
AS
SELECT Maestros2.FechaNacimiento,Alumnos.FechaNacimiento
FROM Maestros2
INNER JOIN Alumnos
ON Maestros2.FechaNacimiento=Alumnos.FechaNacimiento;
GO

CREATE VIEW Vw_5
AS
SELECT Maestros2.PrimerApellido,Alumnos.SegundoApellido
FROM Maestros2
INNER JOIN Alumnos
ON Maestros2.PrimerApellido=Alumnos.SegundoApellido;
GO

CREATE VIEW Vw_6
AS
SELECT PELICULAS.Nombre,PLATILLOS.Nombre
FROM PELICULAS
INNER JOIN PLATILLOS
ON PELICULAS.Nombre=PLATILLOS.Nombre;
GO

CREATE VIEW Vw_7
AS
SELECT PELICULAS.Precio, PLATILLOS.Precio
FROM PELICULAS
INNER JOIN PLATILLOS
ON PELICULAS.Precio=PLATILLOS.Precio;
GO

CREATE VIEW Vw_8
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO

CREATE VIEW Vw_9
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO

CREATE VIEW Vw_10
AS
SELECT Carrera.IDCarrera, Clubs.IDClub
FROM Carrera
INNER JOIN Clubs
ON Carrera.IDCarrera=Clubs.IDClub;
GO