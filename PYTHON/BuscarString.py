nombre = 'Luis Enrique Pacheco Luis Pacheco Luis Pache'

contador = nombre.count('Luis') #Cuenta la coincidencias que encuentra en una cadena
print(contador)

contador = nombre.count('Pacheco')
print(contador)

contador = nombre.count('i')
print(contador)

contador = nombre.count('x')
print(contador)


#Busqueda por medio de print in

print('Pacheco' in nombre)
print('pacheco' in nombre)
print('Pacheco' not in nombre)
print('pacheco' not in nombre)

#Para python el uso de mayúsculas y minúsculas si importa

print('Pacheco' in nombre.lower())

print(nombre.startswith('Luis')) #saber si esta palabra se encuantra al inicio de la cadena con startswith()

print(nombre.endswith('Pache')) #saber si esta palabra se encuantra al final de la cadena con endswith()
