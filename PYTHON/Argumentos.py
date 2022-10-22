#Conocer el promedio de un listado de números enteros
#Ejemplo1
print('Ejemplo_1')
def promedio(listado):
    return sum(listado) / len(listado)

resultado = promedio([10,10,5,7,10])
print(resultado)

#Ejemplo2
print('Ejemplo_2')
def promedio(*args):  #El asterisco se coloca pegado, todo junto con el nombre del parámetro y descrito como "args"
    print(args)
    print(type(args))
    return sum(args) / len(args)

resultado = promedio(10,10,5,7,10,9,9) #Sin corchetes los valores que se necesiten colocar
print(resultado)

#Ejemplo3
print('Ejemplo_3')
def promedio(*args):
    return sum(args) / len(args)


                        #p3
def combinacion(p1,p2,*args, p4 = 500): #Con asterisco se generará una tupla, se renombra como *args
    print(p1)
    print(p2)
    print(args)
    print(p4)

combinacion(10, 20, 1, 8, 9 , p4 =555 )
