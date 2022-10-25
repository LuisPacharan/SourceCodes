# Docstring 
# Haciendo pruebas de la ejecución esperada dentro de los Docstring
# __doc__ (Módulos, Clases, Métodos y Funciones)

def suma(numero_1, numero_2):
    """
    La función suma 2 números enteros.

    Argumentos:
    numero_1 (int)
    numero_2 (int)

    Se retorna la suma de los parámetros.

    #primera prueba
    >>> suma (10,20)
    30

    #segunda prueba
    >>> suma (100,200)
    300

    #segunda prueba erronea
    >>> suma (100,200)
    500

    """
    return numero_1 + numero_2

 #Failed example:
 #   suma (100,200)
#Expected:
 #   500
 #Got:
 #   300


