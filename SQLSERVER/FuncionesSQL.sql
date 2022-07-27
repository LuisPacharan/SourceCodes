/*----------Uso de m�nimo y m�ximo valor MIN( ) y MAX( )--------------*/

SELECT MIN(DATO_COLUMNA) FROM 'NOMBRE_TABLA';
SELECT MAX(DATO_COLUMNA) FROM 'NOMBRE_TABLA';

--EJEMPLOS:

SELECT MIN(PRECIO) AS MINIMO_PRECIO FROM PRODUCTOS;

SELECT MAX(PRECIO) AS MAXIMO_PRECIO FROM PRODUCTOS;

/*----------Uso de contar COUNT( ) -------------*/

SELECT COUNT(*) FROM 'NOMBRE_TABLA';
SELECT COUNT(DATO_COLUMNA) FROM 'NOMBRE_TABLA';
SELECT COUNT(DISTINCT COLUMNA) FROM 'NOMBRE_TABLA';

--EJEMPLO:

SELECT COUNT(DISTINCT MARCAS) AS NUMERO_DE_MARCAS FROM PRODUCTOS;

/*---------- Uso de suma SUM( ) -------------*/

SELECT SUM(COLUMNA) FROM 'NOMBRE_TABLA'
WHERE CONDICION;

--EJEMPLO:

SELECT SUM(PRECIOS) FROM CATALOGO
WHERE YEAR(FECHA_PRODUCTO) > 2020;

/*---------- Uso de promedio AVG( ) -------------*/

SELECT AVG(COLUMNA) FROM 'NOMBRE_TABLA';

--EJEMPLO:

SELECT AVG(COSTO) FROM PRODUCTOS;

/*---------- Otras funciones: ------------*/


-- ASCII -- Devuelve el valor ASCII del car�cter espec�fico --
SELECT COLUMNA, ASCII(COLUMNA) AS CODIGO_ASCII FROM 'NOMBRE_TABLA';

---------------------------------------------------------------------
-- CHAR -- Devuelve el car�cter basado en el c�digo ASCII --
SELECT CHAR(46) AS CARACTER_ASCII;

---------------------------------------------------------------------
-- NCHAR -- Devuelve el car�cter Unicode basado en el c�digo num�rico --
SELECT NCHAR(46) AS CARACTER_ASCII;

---------------------------------------------------------------------
-- CHARINDEX -- Devuelve la posici�n de una sub-cadena en una cadena --
SELECT CHARINDEX('ro', 'Pedro') AS POCISION_DE_CARACTER;

---------------------------------------------------------------------
-- CONCAT -- Agrega dos o m�s cadenas juntas --
SELECT CONCAT('HOLA', ' ', 'MUNDO');

---------------------------------------------------------------------
-- CONCAT  �+� -- Agrega dos o m�s cadenas juntas con car�cter + --
SELECT 'HOLA' + ' ' + 'MUNDO';

---------------------------------------------------------------------
-- CONCAT WS -- Agrega dos o m�s cadenas junto con un separador --
SELECT CONCAT_WS('.', 'HOLA', 'A', 'TODOS','MIS','AMIGOS');

---------------------------------------------------------------------
-- DATALENGTH -- Devuelve el n�mero de bytes utilizados para representar una expresi�n --
SELECT DATALENGTH('CONTEO_DE_CARACTERES');

---------------------------------------------------------------------
-- FORMAT -- Da formato a un valor con el formato especificado --
SELECT FORMAT(123456789, '###-##-#####');

DECLARE @fecha DATETIME = '12/05/2020';
SELECT FORMAT (@fecha, 'd', 'en-US') AS 'US English Result'

---------------------------------------------------------------------
-- LEFT -- Extrae una cantidad de caracteres de una cadena (comenzando desde la izquierda) --
SELECT LEFT('HOLA MUNDO', 3) AS MUESTRA_CARACTERES_INICIALES;

---------------------------------------------------------------------
-- RIGHT -- Extrae una cantidad de caracteres de una cadena (comenzando desde la derecha) --
SELECT RIGHT('HOLA MUNDO', 3) AS MUESTRA_CARACTERES_FINALES;

---------------------------------------------------------------------
-- LEN -- Devuelve la longitud de una cadena --
SELECT LEN('CUENTANUMERODECARACTERES');

---------------------------------------------------------------------
-- LOWER -- Convierte una cadena a min�sculas --
SELECT LOWER('HOLA_MUNDO');

---------------------------------------------------------------------
-- UPPER -- Convierte una cadena a may�sculas --
SELECT UPPER('HOLA_MUNDO');

---------------------------------------------------------------------
-- QUOTENAME -- Devuelve una cadena Unicode con delimitadores agregados para convertir la cadena en un identificador delimitado de SQL Server v�lido --
SELECT QUOTENAME('CENVIERTE_A_CADENA');

---------------------------------------------------------------------
-- REPLACE -- Reemplaza todas las ocurrencias dentro de una cadena, con una nueva sub-cadena --
SELECT REPLACE('LLIGASTI-DIRRIPINTI', 'I', 'E');

---------------------------------------------------------------------
-- REPLICATE -- Repite una cadena un n�mero espec�fico de veces --
SELECT REPLICATE('REPETIR  ', 3);

---------------------------------------------------------------------
-- REVERSE -- Invierte una cadena y devuelve el resultado --

SELECT REVERSE('HOLA_MUNDO') AS TEXTO_INVERTIDO;

---------------------------------------------------------------------
-- TRIM -- Elimina los espacios iniciales y finales (u otros caracteres especificados) de una cadena --
SELECT TRIM('     HOLA_MUNDO     ') AS ELIMINA_ESPACIOS;

---------------------------------------------------------------------
-- RTRIM -- Elimina los espacios finales de una cadena --
SELECT RTRIM('     HOLA_MUNDO     ') AS ELIMINA_ESPACIOS_EN_DERECHA;

---------------------------------------------------------------------
-- LTRIM -- Elimina los espacios iniciales de una cadena --
SELECT LTRIM('     HOLA_MUNDO     ') AS ELIMINA_ESPACIOS_EN_IZQUIERDA;

---------------------------------------------------------------------
-- SPACE -- Devuelve una cadena del n�mero especificado de caracteres de espacio --
SELECT SPACE(5) REGRESA_ESPACIOS;

---------------------------------------------------------------------
-- STR -- Devuelve un n�mero como cadena --
SELECT STR(10) REGRESA_DIGITO_COMO_CADENA;

---------------------------------------------------------------------
-- STUFF -- Elimina una parte de una cadena y luego inserta otra parte en la cadena, comenzando en una posici�n espec�fica --
SELECT STUFF('HOLA MUNDO', 3, 3, '_');

---------------------------------------------------------------------
-- SUBSTRING -- Extrae algunos caracteres de una cadena --
SELECT SUBSTRING('HOLA MUNDO', 6, 4) AS EXTRAER_CARACTERES;

---------------------------------------------------------------------
-- UNICODE -- Devuelve el valor Unicode para el primer car�cter de la expresi�n de entrada --
SELECT UNICODE('HOLA') AS VALOR_UNICODE;
---------------------------------------------------------------------
