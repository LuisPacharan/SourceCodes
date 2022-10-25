#usando try y except para posibles problemas con los generadores

def pares(): #Generador
    for numero in range(0,12,2):
        yield numero #la funcion suspende su ejecución

        print('Se reanuda la ejecución')

generador = pares()

while True:
    try:
        par = next(generador)
        print(par)
    except StopIteration:
        print('El generador finalizó')
        break #Si no se finaliza el While se cicla el programa 