lista_de_compras = ['verdura','leche','huevo','cereal']
#INDICES           [    0    ,   1   ,   2   ,   3    ]
#INDICES NEGATIVOS [    -4   ,  -3   ,  -2   ,  -1    ]

#[start:end]
Sub_lista1 = lista_de_compras[0:3]
Sub_lista2 = lista_de_compras[1:3]
Sub_lista3 = lista_de_compras[0:100] #No marcará Error
Sub_lista4 = lista_de_compras[0:]    #[start:] Todos los elemetos a partir del indice 0
Sub_lista5 = lista_de_compras[:3]    #[:end]   Lista con los primeros elementos de la lista
Sub_lista6 = lista_de_compras[0:5:2] #[start:end:skip] El tercer argumento realiza un salto de 2 en 2 en la lista. 
Sub_lista7 = lista_de_compras[:]     #Muestra todos los elementos de la lista
Sub_lista8 = lista_de_compras[::2]   #Muestra todos los elementos de la lista con salto de 2 en 2.
Sub_lista9 = lista_de_compras[::-1]  #Muestra todos los elementos de la lista a la inversa
Sub_lista10 = lista_de_compras[-3:]  #Muestra los ultimos 3 elementos de la lsta
print(Sub_lista1)
print(Sub_lista2)
print(Sub_lista3)
print(Sub_lista4)
print(Sub_lista5)
print(Sub_lista6)
print(Sub_lista7)
print(Sub_lista8)
print(Sub_lista9)
print(Sub_lista10)