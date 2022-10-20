#programa que cuenta hasta 10 digitos
contador = 1
while contador <= 10:
    print(contador)
    contador = contador + 1


numero  = 123456789
contador_digitos = 0

while numero >= 1:
    contador_digitos = contador_digitos + 1
    numero = numero / 10 
    print(contador_digitos)


numero  = 123456789
contador_digitos = 0

while numero >= 1:
    contador_digitos += 1
    numero = numero / 10 
else:
    print(contador_digitos)
