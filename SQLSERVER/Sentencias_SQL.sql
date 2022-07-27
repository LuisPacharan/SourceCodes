
/*----------Creación de una tabla (CREATE TABLE)--------------*/

CREATE TABLE TBL_ESCUELA 
(
    ID_ALUMNO    int IDENTITY(1,1) PRIMARY KEY,  --LLave primaria (autoincremantal)
	NOM_ALUMNO   varchar(100) NOT NULL,			   --No permite valores nulos
	APE_PATERNO  varchar(100) NULL,			       --Si permite valores nulos
	APE_MATERNO  varchar(100) NULL,                --Si permite valores nulos
	ANIOINGRESO  smallint DEFAULT 2020 NULL CHECK (ANIOINGRESO > 2019), --Si permite valores nulos, por default es 2020 y solo permite valores mayores a 2019
	TURNO        varchar(20) NULL DEFAULT 'MATUTINO', --Si permite valores nulos y el default es 'MATUTINO'
	FECHA_REGISTRO  date DEFAULT GETDATE()			  --Formato de fecha y el default es la fecha de hoy
CONSTRAINT ID_ALUMNO UNIQUE (NOM_ALUMNO,ANIOINGRESO)  --Restricción de valores únicos.

);

/*----------Alterar valores de una tabla (ALTER TABLE)-------------*/

ALTER TABLE 'NOMBRE_TABLA' ADD NUEVO_CAMPO INT;
ALTER TABLE 'NOMBRE_TABLA' ADD NUEVO_CAMPO VARCHAR(50);
ALTER TABLE 'NOMBRE_TABLA' DROP COLUMN NOMBRE_COLUMNA;
ALTER TABLE 'NOMBRE_TABLA' ALTER COLUMN NOMBRE_COLUMNA COLLATE Modern_Spanish_CI_AS NULL;


/*---------- Eliminar /Dropear (DROP)-------------*/

DROP TABLE 'NOMBRE_TABLA';
DROP SCHEMA 'ESQUEMA';
DROP DATABASE 'BASE_DE_DATOS';

/*---------- Truncar/ Vaciar (TRUNCATE)-------------*/

TRUNCATE TABLE 'NOMBRE_TABLA';

/*---------- Selección (SELECT)-------------*/

SELECT * FROM 'NOMBRE_TABLA';
SELECT CAMPO_1,CAMPO_2,CAMPO_3 FROM 'NOMBRE_TABLA';

/*---------- Selecciona número de registros para mostrar (SELECT TOP)-------------*/

SELECT TOP 10 * FROM 'NOMBRE_TABLA';
SELECT TOP 10 'NOMBRE_CAMPO' FROM 'NOMBRE_TABLA';

/*---------- Insertar valores a una tabla (INSERT INTO)-------------*/

INSERT INTO 'NOMBRE_TABLA' (COLUMNA_1,COLUMNA_2,COLUMNA_3,...)
VALUES ('VALOR1','VALOR2','VALOR3',...)

/*---------- Actualizar valores en una tabla (UPDATE)-------------*/

UPDATE 'NOMBRE_TABLA' 
SET CAMPO_1 = 'NUEVO_VALOR' 
WHERE CAMPO_2 = 'N';

------------------------------

UPDATE T1
SET   T1.CAMPO_1 = 'NUEVO_VALOR' 
FROM 'NOMBRE_TABLA_1' T1
INNER JOIN 'NOMBRE_TABLA_2' T2
ON T1.NOMBRE_CAMPO= T2.NOMBRE_CAMPO;

/*---------- Borrar registros de una tabla (DELETE)-------------*/

DELETE FROM 'NOMBRE_TABLA' WHERE CAMPO = 'N';


/*---------- CLÁUSULAS -------------*/

- SELECT
- FROM
- WHERE
- GROUP BY
- HAVING
- ORDER BY

--Ejemplo: 

SELECT COLUMNA_1, COUNT(COLUMNA_2)
FROM 'NOMBRE_TABLA'
WHERE COLUMNA_1 = 'VALOR'
GROUP BY COLUMNA_1
HAVING COUNT(COLUMNA_2)>1
ORDER BY 2 DESC

----------------------------------------------

SELECT COLUMNA_1, SUM(COLUMNA_2)
FROM 'NOMBRE_TABLA'
GROUP BY COLUMNA_1
HAVING SUM(COLUMNA_2) < 'VALOR'