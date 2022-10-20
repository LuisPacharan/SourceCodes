#Ejemplo 1 Se visusliza la frase completa caractér por caractér
frase = 'Yo solo se que no se nada'

for caracter in frase:
    print(caracter)

#Ejemplo 2 solo se viualiza (Yo solo se que no se)
frase = 'Yo solo se que no se Nada'

for caracter in frase:
    if caracter == 'N':
       break
    
    print(caracter)

#Ejemplo 3 , solo se viualiza (Yo)
frase = 'Yo solo se que no se Nada'

for caracter in frase:
    if caracter == ' ':
       break
    
    print(caracter)

#Ejemplo 4 con (Continue) , se visualizan los caracters sin espacios
frase = 'Yo solo se que no se Nada'

for caracter in frase:
    if caracter == ' ':
       continue
    
    print(caracter)

#Ejemplo 5 con (Continue) , Se descarta la letra "o", no se muestra en el resultado.
frase = 'Yo solo se que no se Nada'

for caracter in frase:
    if caracter == 'o':
       continue
    
    print(caracter)