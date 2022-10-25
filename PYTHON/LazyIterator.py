#La ventaja de los generadores por medio de Lazy Iterator (iteración perezosa) 
# El uso de memoria se reduce al suspender momentaneamente la ejecución, 
# teniendo programas mucho más rápidos

def pares(): #Generador
    for numero in range(0,100,2):
        yield numero #la funcion suspende su ejecución

        print('Se reanuda la ejecución')

generador = pares()

#El comando next nos ayudará a reanudar la función 

print(next(generador))
print(next(generador))
print(next(generador))
print(next(generador))
print(next(generador))

print('Ejecutando código entre un llamado y otro')

print(next(generador))