#DESEMPAQUETAR

uno,dos, tres, cuatro = 1,2,3,4

print(uno)
print(dos)
print(tres)
print(cuatro)

#Valores con respecto a los INDICES de una Tupla
numeros = (1,2,3,4,5)
uno,dos, tres, cuatro, cinco =  numeros

print(uno)
print(dos)
print(tres)
print(cuatro)
print(cinco)


#Se declara un asterisco (*) como prefijo que significa que es una lista de valores que no son desempaquetados.
# * Lista de elementos restantes
numeros = (1,2,3,4,5,6,7,8,9,10)
uno , dos, tres, cuatro, cinco, *resto_de_valores =  numeros

print(uno)
print(dos)
print(tres)
print(cuatro)
print(cinco)
print(resto_de_valores)

#Indicar a Python que el resto de valores no se deben tomar en cuenta
# _ Omitir valores
numeros = (1,2,3,4,5,6,7,8,9,10)
uno , dos, tres, cuatro, cinco, *_ =  numeros

print(uno)
print(dos)
print(tres)
print(cuatro)
print(cinco)

#Omitir valores de la tupla con (_)
# _ Omitir valores
numeros = (1,2,3,4,5,6,7,8,9,10)
uno , dos, tres, cuatro, cinco, *_ , nueve, diez =  numeros

print(uno)
print(dos)
print(tres)
print(cuatro)
print(cinco)
print(nueve)
print(diez)


numeros = (1,2,3,4,5,6,7,8,9,10)
uno , _, tres, _ , cinco, *_ , nueve, diez =  numeros

print(uno)
print(tres)
print(cinco)
print(nueve)
print(diez)