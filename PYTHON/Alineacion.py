mensaje = 'Hola mundo!'
mensaje2 = 'Hola mundo!'
mensaje3 = 'Hola mundo!'
# ljust  Justificar a la Izquierda
# rjust  Justificar a la Derecha
# center Centrar

mensaje = mensaje.ljust(20)
print(mensaje, '...')

mensaje2 = mensaje2.rjust(20)
print('...' , mensaje2)

mensaje3 = mensaje3.center(20)
print(mensaje3)