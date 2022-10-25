def saludar():

    def mostrar_mensaje():
        print('Hola')

    return mostrar_mensaje

respuesta = saludar()
print(respuesta)
print(type(respuesta))

respuesta()