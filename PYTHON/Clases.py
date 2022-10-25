#Palabra reservada class <CamelCase> sin caratéres intermedios

class Usuario:
    pass       #Con este comando se entiende que éste bloque no tendrá acciones ni métodos por ahora.

usrLuis = Usuario() # clase sin argumentos
print(type(usrLuis))

#<class '__main__.Usuario'>


#  ***********   Atributos de Clase ****************

class alumno:
    username ='Username por default'
    email = '' 

print(alumno.username) # De esta manera se muestran los atributos de clases
print(alumno.email) # No muestra valores puesto es cadena vacia sin valor

alumno.username = 'User1'
alumno.email = 'Email1'

print(alumno.username)
print(alumno.email)

 
 #  ***********   Atributos de instancia ****************
 
class alumno:
    username ='Username por default'
    email = '' 

# __dict__

user1 = alumno()

#1.- Verifica si el atributo se encuantra dentro del objeto
#2.- Verifica si el atributo existe dentro de la clase
#3.- Lnazará Error

print(user1.username)

print(id(user1.username))
print(id(alumno.username))

print(user1.__dict__) # Dict es un metaatributo

 #  ***********   Atributos Dinámicos ****************


class usuario:
    username ='Username por default'
    email = '' 

user1 = usuario()

#1.- Verifica si el atributo se encuantra dentro del objeto
#2.- Verifica si el atributo existe dentro de la clase
#3.- Lnazará Error

user1.username = 'Luis Enrique' #Añadimos el atributo al objeto
user1.password = '1234'
print(user1.username) #Atributo  de instancia

print(id(user1.username))
print(id(usuario.username))

#Se puede realizar el cambio en el valor del atributo.
user1.password = '5678'

print(user1.__dict__) # Dict es un metaatributo