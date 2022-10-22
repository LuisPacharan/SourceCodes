#Opcion 1: Uso de return

#def nombre_de_funcion (argumento1 ,argumento2 , ...)
def suma( n1, n2):
    resultado = n1 + n2
    return resultado

numero_uno = int (input('Ingresa el primer número entero:  ')) #str
numero_dos = int (input('Ingresa el segundo número entero: '))

resultado = suma(numero_uno, numero_dos)
print(resultado)

#Opcion 2: Uso de return simplificada

#def nombre_de_funcion (argumento1 ,argumento2 , ...)
def suma( n1, n2):
    return n1 + n2

numero_uno = int (input('Ingresa el primer número entero:  ')) #str
numero_dos = int (input('Ingresa el segundo número entero: '))

resultado = suma(numero_uno, numero_dos)
print('El resultado es: ', resultado)

#Ejemplo añadiendo un string en el return

#def nombre_de_funcion (argumento1 ,argumento2 , ...)
def suma( n1, n2):
    return n1 + n2, 'La funcion retorna 2 valores'

numero_uno = int (input('Ingresa el primer número entero:  ')) #str
numero_dos = int (input('Ingresa el segundo número entero: '))

resultado, mensaje = suma(numero_uno, numero_dos)
print('El resultado es: ', resultado)
print(mensaje)

#El resultado es:  (11, 'La funcion retorna 2 valores')