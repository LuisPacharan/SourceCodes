#Decoración Es una funciónn la cual toma como entrada una funcion y a su vez retorna otra función
#Es decir se trabaja con 3 funciones 

def funcion_a(funcion_b):

    def funcion_c(*args, **kwargs):

        print('>>>antes del llamado')
       
        funcion_b(*args, **kwargs)

        print('>>>después del llamado')
       
    return funcion_c
#-------------------------------------------

@funcion_a
def suma(numero_1 , numero_2):
    return numero_1 + numero_2

resultado = suma(10,20)
print(resultado)
