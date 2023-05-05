

DECLARE @Query VARCHAR(MAX),@ANIO VARCHAR(10),@MES VARCHAR(10)
SET @ANIO = DATEPART(YY,GETDATE()-1)

IF (SELECT DATEPART(DD,GETDATE())) IN (1,2,3,4,5) --si está entre los primeros 5 días del MES
	BEGIN
		SET @MES =RIGHT('0' + RTRIM(datepart(MM,getdate()-1)-1),2) --MES es igual a mes anterior
		--PRINT @MES
	END
ELSE
	BEGIN
		SET @MES = RIGHT('0' + RTRIM(datepart(MM,getdate()-1)),2)	--MES es igual a mes actual
		--PRINT @MES
	END

--SEGUNDA CONDICIÓN

--Si el mes es Enero y estás en los primeros 5 días del mes
IF DATENAME(MONTH,GETDATE()) IN (N'January') AND (SELECT DATEPART(DD,GETDATE())) IN (1,2,3,4,5)
	 BEGIN
		 SET @ANIO = DATEPART(YY,GETDATE()-1)-1  --AÑO Vencido solo los primeros 5 días del mes
		 --PRINT 'A';
	END
ELSE
	 BEGIN
		 SET @ANIO = DATEPART(YY,GETDATE()-1)  --AÑO Actual a un día vencido
		 --PRINT 'B';
	END

--ACA PUEDES COLOCAR ALGUN SET @Query PARA USAR TUS CONDICIONES ARRIBA CREADAS:

SET @Query = 'SELECT '+@ANIO+''+@MES+''
EXEC (@Query)