
#Comprimir elementos para generar Tuplas funcion (zip)

lista = [1, 2, 3, 4, 5,7]

tupla = (10, 20, 30, 40, 50)

lista2 = [100,200,300,400,500]

tupla2 = (1000,2000,3000,4000,5000)

resultado = zip(tupla,lista,lista2,tupla2)  #<zip object at 0x000001D1DF467740>
resultado2 = zip(lista,tupla)  #<zip object at 0x000001D1DF467740>
resultado = tuple(resultado)
resultado2 = tuple(resultado2)

print(resultado) 
#((10, 1), (20, 2), (30, 3), (40, 4), (50, 5))
print(resultado2) 


#NOTA, Los elementos restantes no son tomados en cuenta, ya que la combinación debe ser exacta entre listas y tuplas
# de lo contraroio los valores restantes serán omitidos.