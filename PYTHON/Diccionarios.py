elementos = {} #las llaves denotan que es de tipo diccionario

 #las llaves de un diccionario son inmutables, no modifican su valor
 
elementos['nombre'] = 'Cruz' #crea la llave con cu correspondiente valor
elementos[(1,2,3)] = 'La llave es una tupla'

elementos['nombre'] = 'Azul' #Actualiza el valor que la llave almacena

print(elementos)
print(len(elementos))
print(type(elementos))

#Otro ejemeplo

valores = {'a': 1 ,'b': 2 ,'c': 3 ,'a': 4 ,'e': 5}
#El útimo valor asignado a la llave es el que se muestra, en valores repetidos
print(valores)

#Para versiones actuales de python >3.7 
#los diccionarios conservan el orden respecto a sus llaves tal como fueron definidas o creadas
