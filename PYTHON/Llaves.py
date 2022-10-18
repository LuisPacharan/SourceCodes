diccionario = {'a': 1 ,'b': 2 ,'c': 3 ,'d': 4}

#keys
#values
#items

llaves = tuple(diccionario.keys())
print(llaves)

valores = tuple(diccionario.values())
print(valores)

elementos =diccionario.items()
print(elementos)

elementos =tuple(diccionario.items())
print(elementos)    

#('a', 'b', 'c', 'd')
#(1, 2, 3, 4)
#dict_items([('a', 1), ('b', 2), ('c', 3), ('d', 4)])
#(('a', 1), ('b', 2), ('c', 3), ('d', 4))