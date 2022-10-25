class usuario:
    
  # __init__   #Se ejectuta siempre que se crea un objeto de la clase

    #Object
    print('Ejemplo 1 , Sin parámetros (argumentos)')
    def __init__(self):
        print('Creando un usuario')
        self.username = ''
        self.password = ''

user1 = usuario()
user2 = usuario()
user3 = usuario()


print(user1.__dict__) # debe aparecer vacio de manera inicial, si no tiene argumentos {} 
print(user2.__dict__) # debe aparecer vacio de manera inicial, si no tiene argumentos {} 
print(user3.__dict__) # debe aparecer vacio de manera inicial, si no tiene argumentos {} 


#Ahora con parámetros

print('Ejemplo 2 , Ahora con parámetros')
class usuario:

    def __init__(self, username='', password=''):
        self.username = username
        self.password = password

user1 = usuario('user1','password1')
user2 = usuario('user2','password2')
user3 = usuario('user3','password3')
user4 = usuario()

print(user1.__dict__) 
print(user2.__dict__) 
print(user3.__dict__)
print(user4.__dict__) # debe aparecer valores por default.