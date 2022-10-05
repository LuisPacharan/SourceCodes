
--********************* SEGMENTACION DE FACTURAS POR DIAS DE LA SEMANA Y HORARIO *********************--

--- TOTAL DE REGISTROS EN LA BASE --

SELECT COUNT(*) FROM TBL_BASE_ECOMMERCE --25,943

--********************* CREACION DE TABLAS *********************--

--Facturación de Lunes a Viernes antes de las 6 a.m.
SELECT COUNT(ID_CLIENTE)ID_CLIENTE,DATEPART(MM,FECHA_FACT)MES 
INTO #LVAD6
FROM TBL_BASE_ECOMMERCE
WHERE DATENAME(DW,FECHA_FACT) IN ('Monday','Tuesday','Wednesday','Thursday','Friday')
AND CONVERT(VARCHAR,FECHA_FACT,108) <= '05:59'
GROUP BY FECHA_FACT

--Facturación de Lunes a Viernes de 6 a.m. a 6 p.m.
SELECT COUNT(ID_CLIENTE)ID_CLIENTE,DATEPART(MM,FECHA_FACT)MES 
INTO #LVD6A6
FROM TBL_BASE_ECOMMERCE
WHERE DATENAME(DW,FECHA_FACT) IN ('Monday','Tuesday','Wednesday','Thursday','Friday')
AND CONVERT(VARCHAR,FECHA_FACT,108) BETWEEN '05:59:59' AND '18:00:59'
GROUP BY FECHA_FACT

--Facturación de Lunes a Viernes después de las 6 p.m.
SELECT COUNT(ID_CLIENTE)ID_CLIENTE,DATEPART(MM,FECHA_FACT)MES 
INTO #LVDDL6
FROM TBL_BASE_ECOMMERCE
WHERE DATENAME(DW,FECHA_FACT) IN ('Monday','Tuesday','Wednesday','Thursday','Friday')
AND CONVERT(VARCHAR,FECHA_FACT,108) >= '18:01'
GROUP BY FECHA_FACT

--Facturación en Sábado y Domingo sin importar la hora
SELECT COUNT(ID_CLIENTE)ID_CLIENTE,DATEPART(MM,FECHA_FACT)MES 
INTO #SYD
FROM TBL_BASE_ECOMMERCE
WHERE DATENAME(DW,FECHA_FACT) IN ('Saturday','Sunday')
GROUP BY FECHA_FACT


--********************* CREACION DE RESUMEN *********************--

--Pivot #LVAD6 Lunes a Viernes antes de las 6 a.m.
SELECT *
FROM (SELECT 'LVAD6' as DESCRIPCION,* FROM #LVAD6) S
PIVOT (
	SUM(ID_CLIENTE)
	FOR [MES] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  ) P
UNION 
--Pivot #LVD6A6 Lunes a Viernes de 6 a.m. a 6 p.m.
SELECT *
FROM (SELECT 'LVD6A6' as DESCRIPCION,* FROM #LVD6A6) S
PIVOT (
	SUM(ID_CLIENTE)
	FOR [MES] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  ) P
UNION
--Pivot #LVDDL6 Lunes a Viernes después de las 6 p.m.
SELECT *
FROM (SELECT 'LVDDL6' as DESCRIPCION,* FROM #LVDDL6) S
PIVOT (
	SUM(ID_CLIENTE)
	FOR [MES] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  ) P
UNION
--Pivot #SYD Sábado y Domingo
SELECT *
FROM (SELECT 'SYD' as DESCRIPCION,* FROM #SYD) S
PIVOT (
	SUM(ID_CLIENTE)
	FOR [MES] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  ) P

--********************* RESULTADO *********************--
DESCRIPCION |1	 |2	  |3   |4   |5   |   6|   7|   8|   9| 10 | 11 | 12 |
-------------------------------------------------------------------------
LVD6A6		|1241|1283|1562|1266|1598|1587|1400|1692|1657|1672|2301|1002|
-------------------------------------------------------------------------
LVDDL6		|16	 |20  |64  |36  |36  |90  |50  |49  |44  |43  |28 |23   |
-------------------------------------------------------------------------
SYD			|665 |349 |422 |526 |551 |686 |860 |391 |729 |834 |727|443  |
-------------------------------------------------------------------------


--SELECT DATENAME(DW,GETDATE())   --Wednesday 
--SELECT DATENAME(DW,GETDATE()+1) --Thursday 
--SELECT DATENAME(DW,GETDATE()+2) --Friday 
--SELECT DATENAME(DW,GETDATE()+3) --Saturday 
--SELECT DATENAME(DW,GETDATE()+4) --Sunday 
--SELECT DATENAME(DW,GETDATE()+5) --Monday 
--SELECT DATENAME(DW,GETDATE()+6) --Tuesday 
