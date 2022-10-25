#Un generador es : un tipo especial de función la cual retorna objetos sin que esta finalice.
print("Ejercicio 1")
def pares():
    for numero in range(0,100,2):
        print(numero)
pares()

#ejercicio 2
print("Ejercicio 2")
def pares2():
    for numero in range(0,100,2):
        return numero
print(pares2())

#ejercicio 3 Uso de yield
print("Ejercicio 3, Uso de yield")

def pares3(): #Este ya es considerado un generador --Lazy iterator (iteración perezosa)
    for numero in range(0,100,2):
        yield numero   #Con yield suspenderemos de forma momentanea la ejecución de la función 
                       #se reanudará una vez que l valor haya sifo retornado
        print('Se reanuda la ejecución')
for par in pares3():
    print(par)