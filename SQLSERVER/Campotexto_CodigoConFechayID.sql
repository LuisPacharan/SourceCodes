--********************* CREANDO UN CAMPO DE CODIGO CON FECHA Y SECUENCIA DE NUMEROS *********************--

use DBPRUEBAS

Declare @num_columns Int
Set @num_columns = (select count(*) from PRODUCTO)
--Print @num_columns

Declare @Fechahoy datetime, @Fechatxt varchar(50)
Set @Fechahoy =Getdate()
Set @Fechatxt = (select Replace(convert(char(10),@Fechahoy,103),'/',''))
--Print @Fechatxt

Declare @i Int
Set @i = 1
While (@i <= @num_columns)
Begin
Print 'CODIGO_'+@Fechatxt+'_'+Cast(@i as Char(50)) --Convert(Char(50), @i)
Set @i = @i + 1
End


--Resultado--
--CODIGO_07102022_1                                                 
--CODIGO_07102022_2                                                 
--CODIGO_07102022_3                                                 
--CODIGO_07102022_4                                                 
--CODIGO_07102022_5                                                 
--CODIGO_07102022_6                                                 
