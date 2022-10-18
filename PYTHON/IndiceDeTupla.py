
tupla_cursos = ('Python', 'Sql Server', 'Java', 'MongoDB','Ruby' ,'Flask')
#INDICE        (    0   ,       1     ,   2   ,   3      ,    4  ,   5   ) 

primer_curso = tupla_cursos[0]
print(primer_curso)

ultimo_curso = tupla_cursos[-1]
print(ultimo_curso)

#Creando SubTuplas

Sub_Tupla = tupla_cursos[0:3] # del elemento 0 al 3
print(Sub_Tupla)

Sub_Tupla = tupla_cursos[:3] #solo los primeros 3 elementos
print(Sub_Tupla)

Sub_Tupla = tupla_cursos[0:] # Todos los elementos
print(Sub_Tupla)

Sub_Tupla = tupla_cursos[0:5:2] #Con saltos de 2 en 2
print(Sub_Tupla)