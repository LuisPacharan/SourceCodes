# Docstring 
# Comentario que se coloca en las lineas de código de un afunción
# __doc__ (Módulos, Clases, Métodos y Funciones)

def suma(numero_1, numero_2):
    """
    La función suma 2 números enteros.

    Argumentos:
    numero_1 (int)
    numero_2 (int)

    Se retorna la suma de los parámetros.

    TODO:
        *

    >>> suma(10, 20)
    30

    >>> suma(100, 200)
    300

    """
    return numero_1 + numero_2


def resta(numero_1, numero_2):
    """
    >>> resta(100, 200)
    -100
    """
    return numero_1 - numero_2 

print(suma.__doc__)

# También se puede usar el comando help

print(help(suma))
