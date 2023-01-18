---*** Crea una función que calcule el promedio de 3 valores ***---

Create function fnd_promedio
( 
@valor1 decimal(5,2), @valor2 decimal(5,2) , @valor3 decimal(5,2) 

)
returns decimal(8,2)
as
begin
	declare @resultado decimal(8,2)
	set @resultado = (@valor1+@valor2+@valor3)/3
	return @resultado
end;

--Ejecución Ejemplo:
--select dbo.fnd_promedio(3,5,6) = 4.67