
#Calculando el área de un circulo , usando parámetros(argumentos) en la función.

#Ejemplo 1
print ('Ejemplo1')

def area_circulo(radio, pi):
    return pi * (radio ** 2) # Los dos arteriscos ** cumplen la función de potencia. 

resultado = area_circulo(10, 3.14)
print(resultado)

#Ejemplo 2
print ('Ejemplo2')
def area_circulo(radio, pi=3.14):
    return pi * (radio ** 2) # Los dos arteriscos ** cumplen la función de potencia. 

resultado = area_circulo(10)
print(resultado)

#Ejemplo 3
print ('Ejemplo3')
def area_circulo(radio, pi=3.14):
    return pi * (radio ** 2) # Los dos arteriscos ** cumplen la función de potencia. 

resultado = area_circulo(10,3.141592) #Un nuevo valor se asigna sin importar que antes tuviera un parámetro.
print(resultado)

#Ejemplo 4
print ('Ejemplo4')
def area_circulo(radio, pi=3.14):
    return pi * (radio ** 2) # Los dos arteriscos ** cumplen la función de potencia. 

resultado = area_circulo(radio = 5 ,pi = 3.141592) #Un nuevo valor se asigna sin importar que antes tuviera un parámetro.
print(resultado)