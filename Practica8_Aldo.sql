  CREATE TABLE tablalog(
     idlog INT,
	 accion varchar(45),
  );
  GO

  CREATE TRIGGER log_trigger_insertmaestro ON Maestro
    for INSERT
    AS
    BEGIN
		set nocount on;
		INSERT INTO tablalog VALUES((SELECT COUNT(*) FROM tablalog) + 1,'agregó el maestro numero:' + STR((SELECT idMaestro FROM inserted)));
    END
GO

CREATE TRIGGER log_trigger_deletemaestro ON Maestro
    for DELETE
    AS
    BEGIN
		set nocount on;
		INSERT INTO tablalog VALUES((SELECT COUNT(*) FROM tablalog) + 1,'agregó el maestro numero:' + STR((SELECT idMaestro FROM deleted)));
    END
GO

CREATE PROCEDURE sp_vw1
AS
SELECT * FROM Vw_1
GO

CREATE PROCEDURE sp_vw2
AS
SELECT * FROM Vw_2
GO

CREATE PROCEDURE sp_vw3
AS
SELECT * FROM Vw_3
GO

CREATE PROCEDURE sp_vw4
AS
SELECT * FROM Vw_4
GO

CREATE PROCEDURE sp_vw5
AS
SELECT * FROM Vw_5
GO

CREATE PROCEDURE sp_vw6
AS
SELECT * FROM Vw_6
GO

CREATE PROCEDURE sp_vw7
AS
SELECT * FROM Vw_7
GO

CREATE PROCEDURE sp_vw8
AS
SELECT * FROM Vw_8
GO

CREATE PROCEDURE sp_vw9
AS
SELECT * FROM Vw_9
GO

CREATE PROCEDURE sp_vw10
AS
SELECT * FROM Vw_10
GO