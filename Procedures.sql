--VER DATOS

CREATE PROC SP_Mostrar
AS
SELECT * FROM Personas
GO

--INSERTAR DATOS

CREATE PROC SP_Insertar
@ID INT,
@Nombre NVARCHAR(30),
@Apellido NVARCHAR(30),
@Sexo NVARCHAR(12)
AS
INSERT INTO Personas VALUES(@ID, @Nombre, @Apellido, @Sexo)
GO

--ACTUALIZAR DATOS

CREATE PROC SP_Modificar
@ID INT,
@Nombre NVARCHAR(30),
@Apellido NVARCHAR(30),
@Sexo NVARCHAR(12)
AS
UPDATE Personas SET Nombre = @Nombre, Apellido = @Apellido, Sexo = @Sexo
WHERE ID = @ID
GO

--ELIMINAR REGISTROS

CREATE PROC SP_Eliminar
@ID INT
AS
DELETE Personas WHERE ID = @ID
GO

--BUSCAR DATOS

CREATE PROC SP_Buscar
@Buscar NVARCHAR(30)
AS
SELECT * FROM Personas
WHERE Nombre LIKE @Buscar + '%' 
GO