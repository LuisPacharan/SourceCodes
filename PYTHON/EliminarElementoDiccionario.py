diccionario = {'a': 1 ,'b': 2 ,'c': 3 ,'d': 4}

print(len(diccionario))
#usando del para eliminar elemento de diccionario
del diccionario['a'] #1
#Método (pop) tambipen elimina el elemento que se le indique como parámetro
valor = diccionario.pop('b') #2

diccionario.clear() #Con el método Clear() se procede a vaciar el diccionario

print(valor)
print(diccionario)
print(len(diccionario))

#si colocamos valores que no existen en el diccionario, por ejemplo 'z' el programa mandará Error




