-- *** CALCULAR EDAD DESDE LA FECHA DE NACIMIENTO **** ---

-- Forma1 --
SELECT (((12* year(getdate()))-(12*(year('03/11/1994'))))+ (month(getdate())-month('03/11/1994')))/12
SELECT (((12* year(getdate()))-(12*(year(CAMPO_FECHA))))+ (month(getdate())-month(CAMPO_FECHA)))/12 FROM TBL_FECHAS 

-- Forma2 --

Select floor(
(cast(convert(varchar(8),getdate(),112) as int)-cast(convert(varchar(8),CAMPO_FECHA,112) as int) ) / 10000
) as EDAD FROM TABLA

-- Forma3 --
Select DATEDIFF(YEAR,CAMPO_FECHA,GETDATE()) AS EDAD FROM TABLA


