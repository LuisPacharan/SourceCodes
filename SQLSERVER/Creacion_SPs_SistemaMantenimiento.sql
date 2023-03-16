USE SISTEMA_MANTENIMIENTO

CREATE TABLE TBL_SM_TBL_SM_CLIENTES
(
CODIGO	 VARCHAR(5),
NOMBRE	 VARCHAR(50),
EDAD	 INT,
TELEFONO INT
);

GO
-------------------------------------------------------------------
CREATE PROC SP_SM_LISTAR_TBL_SM_CLIENTES
AS
SELECT * FROM TBL_SM_TBL_SM_CLIENTES ORDER BY CODIGO
GO
-------------------------------------------------------------------
CREATE PROC SP_SM_BUSCAR_TBL_SM_CLIENTES
@nombre VARCHAR(50)
AS
SELECT codigo,nombre,edad,telefono FROM TBL_SM_TBL_SM_CLIENTES where nombre like @nombre + '%'
GO

ALTER PROC SP_SM_MANTENIMIENTO_CLIENTES
@codigo VARCHAR(5),
@nombre VARCHAR(50),
@edad   INT,
@telefono VARCHAR(100),
@accion VARCHAR(50) OUTPUT
AS
IF (@accion='1')
BEGIN
	DECLARE @codnuevo VARCHAR(5), @codmax VARCHAR(5)
	SET @codmax = (SELECT MAX(codigo) FROM TBL_SM_CLIENTES)
	SET @codmax = ISNULL(@codmax,'A0000')
	SET @codnuevo = 'A'+RIGHT(RIGHT(@codmax,4)+10001,4)
	INSERT INTO TBL_SM_CLIENTES(codigo,nombre,edad,telefono)
	VALUES(@codnuevo,@nombre,@edad,@telefono)
	SET @accion='Se genero el código: ' +@codnuevo
END
ELSE IF (@accion='2')
BEGIN
	UPDATE TBL_SM_CLIENTES SET nombre=@nombre, edad=@edad, telefono=@telefono WHERE codigo=@codigo
	SET @accion='Se modifico el código: ' +@codigo select * from TBL_SM_CLIENTES
END
ELSE IF (@accion='3')
BEGIN
	DELETE FROM TBL_SM_CLIENTES WHERE codigo=@codigo
	SET @accion='Se borro el código: ' +@codigo
END
GO



SELECT * FROM TBL_SM_CLIENTES

ALTER TABLE TBL_SM_CLIENTES ALTER COLUMN TELEFONO VARCHAR(100)