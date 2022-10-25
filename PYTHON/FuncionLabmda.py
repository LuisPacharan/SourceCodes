
#Funcion para determinar los grados centígrados a farhenheit

def centigrados_a_farhenheit(grados):
    return grados * 1.8 + 32

print(centigrados_a_farhenheit(10))
print(centigrados_a_farhenheit(-1))
print(centigrados_a_farhenheit(8))

#LLamando una Funcion a través de una variable (Ciudadanos de primera clase)

mi_funcion = centigrados_a_farhenheit
print(type(mi_funcion))
print(mi_funcion(10))
print(mi_funcion(-1))
print(mi_funcion(8))


#como funcionaría con Función Labmda siempre retornará la linea de código que será ejecutada,
#No es necesario hacer uso de return

print('Con Función Labmda')
#Estructura
#nombre_variable = lambda <parámetros> : <cuerpo de la función>
funcion_grados = lambda grados : grados * 1.8 + 32

print(funcion_grados(10))
print(funcion_grados(-1))
print(funcion_grados(8))

#Craendo Función Labmda sin parámetros

"""

sin_parametros = lambda :True
parametros_default = lambda p1= 10, p2=20, p3= 30 : p1 + p2 + p3
asterisco = lambda * args, **kwargs: len(args) + len(kwargs)

"""