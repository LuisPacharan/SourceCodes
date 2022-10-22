#Pasando valores a una funcion mediante tuplas o diccionarios

def promedio(*arg): #Usando una Tupla
    return sum(args) / len(args)


def usuarios(**kwargs): #Usando un Diccionario con doble asterisco
    print(kwargs)
    print(type(kwargs))

usuarios(eduardo =[10,9,8], fernando=[7,6,7]) #parámetro signo igual y valor que queremos asignar sin espacios

def combinacion(*args, **kwargs):
    print(args)
    print(kwargs)

combinacion(1,2,3,4,5, valor =True , curso = 'Python')