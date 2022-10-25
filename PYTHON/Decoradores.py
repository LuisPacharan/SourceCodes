#Decoración Es una funciónn la cual toma como entrada una funcion y a su vez retorna otra función
#Es decir se trabaja con 3 funciones 

"""

a -> La funcion principal (Decorador)
b -> La funcion de decorar
c -> L funcion decorada

a(b) -> c

"""
#Estructura base de un Decorador --------
def funcion_a(funcion_b):

    def funcion_c():

        print('>>>antes del llamado')
       
        funcion_b()

        print('>>>después del llamado')
       
    return funcion_c
#-------------------------------------------

#Extendiendo funcionalidades
@funcion_a
def saludar():
    print('Hola, Nos encontramos en una función')

@funcion_a
def suma():
    print(10+30)

saludar()
suma()

