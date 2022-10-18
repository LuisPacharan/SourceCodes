
# ---------*****  Agregar (append) elementos al final de una lista *****---------

lista_de_compras = ['verdura','leche','huevo','cereal']

lista_de_compras.append('lentejas')
lista_de_compras.append('pan_integral')
lista_de_compras.append(10)

# ---------*****  Insertar (insert) elementos a una lista *****---------

lista_de_compras.insert(1, 'Lechuga') # (indice, valor) Se añade un elemento en algún indice específico.
lista_de_compras.insert(3, 'Mermelada') 

print(lista_de_compras)

# ---------*****  Unión (extend) de dos listas *****---------

lista_de_compras2 = ['Azúcar','Arroz','Jabón']

lista_de_compras.extend(lista_de_compras2)

print(lista_de_compras2)
print(lista_de_compras)

# ---------*****  Contar (len) elementos a una lista *****---------

print(len(lista_de_compras))
print(len(lista_de_compras2))

# ---------*****  Eliminar (remov) (del) (clear) elementos a una lista *****---------

lista_de_compras.remove('cereal')
print(lista_de_compras) #Quitó el elemento 'Cereal'

del lista_de_compras[0] #Quitó 'Verdura' el cual es el indice 0 de la lista.
print(lista_de_compras)

del lista_de_compras[-1] #Quitó el último elemento de la lista.
print(lista_de_compras)

lista_de_compras.clear() #Limpia la lista, dejandola sin elementos, completamente vacía.
print(lista_de_compras)
print(len(lista_de_compras))

