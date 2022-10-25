
#Funciones anidadas de varios niveles 

#Ejemplo sin parámetros
def operacion():

    def deposito(cantidad,balance):
        return cantidad + balance

    
    def retiro(cantidad, balance):
        if cantidad <= balance:
            return balance -cantidad
        else:
            return None

    print(deposito(10, 20))
    print(retiro(50, 30))

operacion()



#Ejemplo con parámetros por default
def operacion(cantidad,balance, tipo='deposito'):

    def deposito(cantidad,balance):
        return cantidad + balance

    
    def retiro(cantidad, balance):
        if cantidad <= balance:
            return balance -cantidad
        else:
            return None

    if tipo == 'deposito':
        return deposito(cantidad, balance)
    elif tipo == 'retiro':
        return retiro(cantidad, balance)


resultado = operacion(10, 30)
print(resultado)

resultado = operacion(10, 30,'retiro')
print(resultado)