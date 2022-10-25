class usuario:

#para que se considere esta configuración como método, esta debe de contener un  parámetro
#haciendo referencia al objeto persé (por si mismo)
    def inicializar(self): #el nombre del parámetro es self
        self.username = ''
        self.password = ''

user1 = usuario()
user2 = usuario()

#Aqui se agrega información en las llaves.
user1.inicializar() 
user2.inicializar()

print(user1.__dict__) # debe aparecer vacio de manera inicial {} 
print(user2.__dict__) # debe aparecer vacio de manera inicial {} 

#ejemplo agregando atributos

class usuario:
    
#Añadiendo atributos.

    def inicializar(self, username, password):
        self.username = username
        self.password = password

user1 = usuario()
user2 = usuario()
user3 = usuario()

#Aqui se agrega información en las llaves.
user1.inicializar('User1', 'Password1')  #Aqui se agrega la información de los atributos
user2.inicializar('User2', 'Password2')  #Aqui se agrega la información de los atributos
user3.inicializar('User3', 'Password3')  #Aqui se agrega la información de los atributos

print(user1.__dict__) # debe aparecer vacio de manera inicial {} 
print(user2.__dict__) # debe aparecer vacio de manera inicial {} 
print(user3.__dict__) # debe aparecer vacio de manera inicial {} 