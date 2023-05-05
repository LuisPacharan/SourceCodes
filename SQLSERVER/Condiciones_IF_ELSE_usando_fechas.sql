

DECLARE @Query VARCHAR(MAX),@ANIO VARCHAR(10),@MES VARCHAR(10)
SET @ANIO = DATEPART(YY,GETDATE()-1)

IF (SELECT DATEPART(DD,GETDATE())) IN (1,2,3,4,5) --si est� entre los primeros 5 d�as del MES
	BEGIN
		SET @MES =RIGHT('0' + RTRIM(datepart(MM,getdate()-1)-1),2) --MES es igual a mes anterior
		--PRINT @MES
	END
ELSE
	BEGIN
		SET @MES = RIGHT('0' + RTRIM(datepart(MM,getdate()-1)),2)	--MES es igual a mes actual
		--PRINT @MES
	END

--SEGUNDA CONDICI�N

--Si el mes es Enero y est�s en los primeros 5 d�as del mes
IF DATENAME(MONTH,GETDATE()) IN (N'January') AND (SELECT DATEPART(DD,GETDATE())) IN (1,2,3,4,5)
	 BEGIN
		 SET @ANIO = DATEPART(YY,GETDATE()-1)-1  --A�O Vencido solo los primeros 5 d�as del mes
		 --PRINT 'A';
	END
ELSE
	 BEGIN
		 SET @ANIO = DATEPART(YY,GETDATE()-1)  --A�O Actual a un d�a vencido
		 --PRINT 'B';
	END

--ACA PUEDES COLOCAR ALGUN SET @Query PARA USAR TUS CONDICIONES ARRIBA CREADAS:

SET @Query = 'SELECT '+@ANIO+''+@MES+''
EXEC (@Query)