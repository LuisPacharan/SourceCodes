-- Búsqueda por columna o campo en SQL server--

--- Query Simplificado---

USE DB_PRUEBAS

SELECT TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%NOMBRE_DEL_CAMPO%'
ORDER BY COLUMN_NAME


--- Query Largo ----

--Solo hay que cambiar donde dice "NombreDelCampo" por el nombre de la columna que desean buscar. 

USE DB_PRUEBAS

SELECT
    sysobjects.name AS table_name,
    syscolumns.name AS column_name,
    systypes.name AS datatype,
    syscolumns.LENGTH AS LENGTH
FROM
    sysobjects
    INNER JOIN syscolumns ON sysobjects.id = syscolumns.id
    INNER JOIN systypes ON syscolumns.xtype = systypes.xtype
WHERE
    (sysobjects.xtype = 'U')
    and (
        UPPER(syscolumns.name) like upper('%NombreDelCampo%')
    )
ORDER BY
    sysobjects.name,
    syscolumns.colid