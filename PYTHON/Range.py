#opcion 1
rango =range(5) #0 -10 range(0, 4)
print(rango)
print(type(rango))

for valor in rango:
    print(valor)

#opcion 2

for valor in range(21):  #range(0, 20)
 print(valor)


for valor in range(5,8):  #(inicio, final)
 print(valor)

#Agregando Saltos
for valor in range(5,20,2):  #(inicio, final,salto)
 print(valor)

 #Uso de función enumerate

numeros = [10, 20, 30, 40, 50]

for indice, numero in enumerate(numeros):
    print(indice, numero)

numeros = [10, 20, 30, 40, 50]

for indice, numero in enumerate(numeros,10): #Asignar como argumento un número desde donde queremos iniciar
    print(indice, numero)