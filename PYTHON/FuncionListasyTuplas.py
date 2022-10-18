#Una variable es de tipo lista si se define con CORCHETES
#Una variable es de tipo Tupla si se define con PARENTESIS

#Uso de funciones tuple() y list()

cursos = ['C++','C#','CCS']

curso_tupla  = tuple(cursos)
print(curso_tupla)
print(type(curso_tupla))

niveles = ('Básico','Intermedio','Avanzado')

niveles_lista = list(niveles)
print(niveles_lista)
print(type(niveles_lista))
