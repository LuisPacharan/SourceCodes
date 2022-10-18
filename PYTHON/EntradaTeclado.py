
## ENTRADA DE DATO POR TECLADO 


nombre_usuario = input ('Ingresa tu nombre completo: ') #tipo de dato str
edad = input ('Ingresa tu edad: ')
edad = int(edad)

altura = input('Ingresa tu altura: ')
altura = float(altura)

print(nombre_usuario)
print(type(nombre_usuario))

print(edad)
print(type(edad))

print(altura)
print(type(altura))

autorizacion = input ('¿Autorizas el programa? (si/no): ')
autorizacion = autorizacion =='si'
print(autorizacion)
print(type(autorizacion))

#Optimizando el Código, se realiza lo mismo pero con menos lineas.

print("Optimizando el Código, se realiza lo mismo pero con menos lineas.")

nombre_usuario = input ('Ingresa tu nombre completo: ') #tipo de dato str
edad = int(input ('Ingresa tu edad: '))
altura = float(input('Ingresa tu altura: '))
autorizacion = input ('¿Autorizas el programa? (si/no): ') == 'si'

print(nombre_usuario)
print(edad)
print(altura)
print(autorizacion) 
