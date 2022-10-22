#Scope , significa que una misma variable tiene alcances diferentes y por ende al no ser creada dentro de un bloque
#se convierte en una variable global

animal = 'León'

def imprimir_animal(): 
    animal= 'Ballena'  #Esta es una variable de Funcion local

    print(animal) 
    print(id(animal))  #Éste id de variable es diferente al de la variable global

imprimir_animal()

print(animal)
print(id(animal))      #Éste id de variable es diferente al de la variable de la funcion local

#Ejemplo usando la palabra reservada "global"
print('Ejemplo usando la palabra reservada "global"')

def imprimir_animal(): 
    global animal  #Con esta sentencia podemos usar la variable global dentro de la función sin que sea local
    animal= 'Ballena'  #Se convierte en variable global 
    
    print(animal) 
    print(id(animal)) #Éste id de variable es lo mismo que el de afuera de la función

imprimir_animal()

print(animal)
print(id(animal))      #Éste id de variable es lo mismo que el de adentro de la función
