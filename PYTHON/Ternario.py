#opcion 1
calificacion  = 7
color = None

if calificacion >= 7:
    color = 'verde'
else:
    color = 'Rojo'

print(calificacion,color)

#opcion 2

color = 'verde' if calificacion >= 7 else 'Rojo'
print(calificacion,color)

