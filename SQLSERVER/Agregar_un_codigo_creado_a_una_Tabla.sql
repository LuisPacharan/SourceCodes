--********************* CREANDO UN CAMPO DE CODIGO CON FECHA Y SECUENCIA DE NUMEROS AGREGARLO A UNA TABLA *********************--

use DBPRUEBAS

IF EXISTS
	(
		Select * From Sys.objects
		Where object_id = object_id(N'dbo.TBL_Nueva')
	)
	Begin
		Drop Table TBL_Nueva
	End

Go

	Create Table TBL_Nueva
	(
	id int Identity(1,1),
	Codigo_Creado varchar(100)
	)

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

--Print 'CODIGO_'+@Fechatxt+'_'+Cast(@i as Char(50)) --Convert(Char(50), @i)
Insert Into TBL_Nueva
Values ('CODIGO_'+@Fechatxt+'_'+Cast(@i as Char(5))+'_Nvo')
Set @i = @i + 1
End

Select * from TBL_Nueva

select id,Replace(Codigo_Creado,' ','')Codigo_Creado From TBL_Nueva

--Resultado--
--id  Codigo_Creado
--1	  CODIGO_13102022_1_Nvo
--2	  CODIGO_13102022_2_Nvo
--3	  CODIGO_13102022_3_Nvo
--4	  CODIGO_13102022_4_Nvo
--5	  CODIGO_13102022_5_Nvo
--6	  CODIGO_13102022_6_Nvo                                          
