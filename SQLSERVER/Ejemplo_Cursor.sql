---***Creacion de un Cursor***---

DECLARE @Nombre VARCHAR(400) -- Variable para guardar info
DECLARE @Telefono VARCHAR(400) --Variable para guardar info

DECLARE InfoProd CURSOR DYNAMIC FOR SELECT Nombre, Telefono FROM TBL_SYS_WEB_CLIENTES --Declaracion de un Cursor

OPEN InfoProd --Apertura del Cursor
FETCH NEXT FROM InfoProd INTO @Nombre , @Telefono
WHILE @@fetch_status = 0
BEGIN
	PRINT CONCAT(@Nombre,'+'+ @Telefono, ' ' ,@@fetch_status)
	FETCH NEXT FROM InfoProd INTO @Nombre , @Telefono --Recorrido del cursor y datos	
END
CLOSE  InfoProd		--Cierre del Cursor
DEALLOCATE InfoProd --Desalojo del Cursor
PRINT @@fetch_status
