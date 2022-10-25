#Un clusore  es una técnica, mediante la cuál se adjuntan los datos a algún código 
# incluso después de acabar una o más funciones

def salduar(username):
    mensaje =f'Hola {username}' #Variable local

    def mostrar_mensaje(): #Anidada
        print(mensaje)

    return mostrar_mensaje

username = 'Luis'
respuesta =salduar(username)

username = 'Enrique' #Aqui no se tomará en cuenta esta varible

respuesta()
respuesta()