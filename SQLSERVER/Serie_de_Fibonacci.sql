--Resuelve la Serie de Fibonacci que es la sucesión donde cada término es la suma de los dos anteriores.

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
	
	
--Resultado --

Fibonacci Series
1
2
3
5
8
13
21
34
55
89
