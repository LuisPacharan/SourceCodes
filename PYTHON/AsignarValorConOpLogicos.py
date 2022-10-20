
variable = 'Luis' or 'Enrique'
print (variable)

variable = '' or 0 or [] or True
print (variable)


listado = [1]
nombre = 'Luis'

#proceso largo
if listado: #si listado contiene algo imprime TRUE
    variable =listado
else:
    variable = nombre #de lo contrario imprimirá el nombre

listado = [1]
nombre = 'Luis'

#proceso simplificado
variable = listado or nombre   #si listado contiene algo imprime EL VALOR
print(variable)                #de lo contrario imprimirá el nombre

listado = []
nombre = 'Luis'

#proceso simplificado
variable = listado or nombre   #si listado contiene algo imprime EL VALOR
print(variable)                #de lo contrario imprimirá el nombre

