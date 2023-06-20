
--Sentencia While SQL Server:

/*
Sentencia B�sica, Mientras la variable contador sea menor o igual a 5,
se imprimir� como resultado la frase 'Hola Mundo'
*/

DECLARE @Contador INT = 1; 
WHILE(@Contador <= 5)  
BEGIN 
  SELECT 'Hola Mundo' as Resultado; 
  SET @Contador += 1; 
END 

--Ejemplo Funcional

/*
Mientras la tabla clientes sea menor a 50 registros se ejecutar� un job,
si la tabla Clientes es mayor a 50 registros, rompe el ciclo y env�a el mensaje
'Se cumple condic�n  > 50'
*/

WHILE ( SELECT COUNT(*) FROM [dbo].[TBL_CLIENTES]) < 50
BEGIN  

EXEC msdb.dbo.sp_start_job N'Nombre_Job'

    IF ( SELECT COUNT(*) FROM [dbo].[TBL_CLIENTES]) > 50
        BREAK
	ELSE
		CONTINUE  
END  
PRINT 'Se cumple condic�n  > 50';

