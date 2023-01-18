---***Creacion de un Cursor***---

DECLARE @Nombre varchar(400) -- Variable para guardar info
DECLARE @Descripcion varchar(400) --Variable para guardar info

Declare InfoProd CURSOR FOR SELECT

Open InfoProd --Apertura del Cursor