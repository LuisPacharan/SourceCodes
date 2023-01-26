-- Ejemplo para quitar duplicados tomando como referencia la fecha máxima de la compra.

SELECT id_NOMBRE, NOMBRE, PRODUCTOS, FECHA_COMPRA
	FROM TBL_COMPRAS t1
		WHERE FECHA_COMPRA = (SELECT MAX(FECHA_COMPRA) FROM TBL_COMPRAS t2 WHERE t1.id_NOMBRE = t2.id_NOMBRE )