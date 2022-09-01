
/* Requisitos para utilizar PIVOT

			1.- Columna de agrupación donde podamos utilizar cualquier función (MAX,MIN,COUNT,AVG,SUM, etc...), puede ser columna de año, mes montos , etc...
			2.- Tener una columna con la cual podamos generar más columnas (trasformar la visualización de vertical a horizontal)

	Requisitos para utilizar UNPIVOT

			1.- Columna de agrupación que se utilizó para hacer un PIVOT pero sin nunguna función de agregado.
			2.- Columna con la cual se generaron las columnas nuevas en la tabla con PIVOT al igual que el nombre de esas columnas.


EJEMPLO:

 *** ANTES****
 ------------------------
 | Year	| Month | Total	|
 ------------------------
 | 2019 | Enero	| 356.9	|
 ------------------------
 | 2020 | Enero	| 567.8	|
 ------------------------
 | 2021 | Enero	| 17.4	|
 ------------------------

*** DESPUÉS****

 --------------------------------------------------------------------------------------------
 |Year| Enero |Febrro|Marzo|Abril|Mayo |Junio |Julio|Agosto |Septiem|Octubre|Noviemb|Diciem |
 --------------------------------------------------------------------------------------------
 |2019|	356.9 |		 |	   |	 |	   |	  |		|		|		|		|		|		|
 --------------------------------------------------------------------------------------------
 |2020|	567.8 |		 |	   |	 |	   |	  |		|		|		|		|		|		|
 --------------------------------------------------------------------------------------------
 |2021|	17.4  |		 |	   |	 |	   |	  |		|		|		|		|		|		|
 --------------------------------------------------------------------------------------------

 */

 -------- Crear la base -----

 USE DB_PRUEBAS 
 create table TBL_EJEMPLO_PIVOT
 (
 ANIO VARCHAR (15),
 MES VARCHAR (15),
 TOTAL DECIMAL(18,2)
 )

 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','1',20)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','2',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','3',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','4',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','5',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','6',26)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','7',29)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','8',21)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','9',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','10',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','11',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2019','12',28)
GO
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','1',20)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','2',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','3',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','4',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','5',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','6',26)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','7',29)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','8',21)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','9',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','10',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','11',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2020','12',28)
 GO
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','1',20)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','2',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','3',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','4',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','5',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','6',26)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','7',29)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','8',21)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','9',24)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','10',27)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','11',22)
 INSERT INTO TBL_EJEMPLO_PIVOT (ANIO, MES, TOTAL)  VALUES ('2021','12',28)

  SELECT * FROM TBL_EJEMPLO_PIVOT


 --- ********** PIVOT *********** ---


 SELECT * 
 FROM (
		SELECT * FROM TBL_EJEMPLO_PIVOT
	  )  S

	  pivot (

	  max(TOTAL)
	  for [MES] in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  
	  	  ) P

 --- ********** UNPIVOT *********** ---

  SELECT * 
 FROM (
		SELECT * FROM TBL_EJEMPLO_PIVOT
	  )  S

	  pivot (

	  max(TOTAL)
	  for [MES] in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  
	  	  ) P
	  unpivot
	  (
		 TOTAL
		 for [MES] in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	  ) U
		

