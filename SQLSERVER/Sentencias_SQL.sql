
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