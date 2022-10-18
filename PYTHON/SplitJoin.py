#-------***********  USO DE split() para crear Listados *********** ------------

productos = 'Lechuga Crema Huevo Leche Mantequilla'

listado_del_mercado = productos.split()

print(listado_del_mercado)
#['Lechuga', 'Crema', 'Huevo', 'Leche', 'Mantequilla']

#Split divide realiza la segmentación por cada espacio que encuentra en el string (cadena)

productos2 = 'Lechuga-Crema-Huevo-Leche-Mantequilla'
listado_del_mercado2 = productos2.split('-') #Como argumento se coloca el caractér por el que se requiera separar
print(listado_del_mercado2)

productos2 = 'Lechuga//Crema//Huevo//Leche//Mantequilla'
listado_del_mercado2 = productos2.split('//') #Como argumento se coloca el caractér por el que se requiera separar
print(listado_del_mercado2)

productos2 = 'Lechuga//Crema//Huevo//Leche//Mantequilla'
listado_del_mercado2 = productos2.split('//',2) #Un segundo argumento numérico indica las veces que realizará la separación
print(listado_del_mercado2)

#-------***********  USO DE join() *********** ------------

#E método Join, divide los elementos de un listado retornando un string o cadena.

productos = ['Lechuga','Crema','Huevo','Leche','Mantequilla']

string_productos = ' '.join(productos)
print(string_productos)

string_productos = '/'.join(productos)
print(string_productos)

string_productos = ' - '.join(productos)
print(string_productos)