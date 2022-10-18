#Metodos de Ordenamiento de listas (sort) (reverse)

lista = [8, 90, 1, 5, 44, 132, 600, 3, 4]
print(lista)

lista.sort()
print("De menor a mayor - Ascendente")
print(lista)

lista.sort(reverse=True)

print("De mayor a menor - Descendente")
print(lista)

#Encontrar el Minimo y el Máximo con (sort)
print("Encontrar el Minimo y el Máximo")
lista.sort()
print(lista[0])  #min
print(lista[-1]) #max

#Encontrar el Minimo y el Máximo con funciones (min y max)

print(min(lista))  #min
print(max(lista))  #max

#Búsqueda de un elemento (in) (not in)

print (10 in lista)
print (5 in lista)

print (11 not in lista)
print (8 not in lista)