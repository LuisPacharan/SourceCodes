--Resuelve la Serie de Fibonacci que es la sucesi�n donde cada t�rmino es la suma de los dos anteriores.

Print 'Fibonacci Series'
declare @a int , @b int , @c int , @i int
set @a=0 set @b=1 set @i=0 set @c=0 

while @i<10
	Begin
		set @c=@a+@b
		print @c
		set @i=@i+1
		set @a=@b set @b=@c
	end