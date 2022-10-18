diccionario = {'a': 1 ,'b': 2 ,'c': 3 ,'d': 4}

valor = diccionario['c']
print(valor)

valor = diccionario['a']
print(valor)

print('z' in diccionario)

#valor1 = diccionario['z'] #marcará Error


#Método Get

valor_a = diccionario.get('a', 'la llave no existe en el diccionario')
print(valor_a)
valor_a = diccionario.get('b', 'la llave no existe en el diccionario')
print(valor_a)
valor_a = diccionario.get('c', 'la llave no existe en el diccionario')
print(valor_a)
valor_a = diccionario.get('d', 'la llave no existe en el diccionario')
print(valor_a)
valor_a = diccionario.get('e', 'la llave no existe en el diccionario')
print(valor_a)
valor_a = diccionario.get('e', None)
print(valor_a)

#None hace referencia a al ausencia de algún valor


#Método Setdefault
#SE utiliza para añadir un elemento en un diccionario
valor_b = diccionario.setdefault('e', 5)
print(valor_b)
print(diccionario)