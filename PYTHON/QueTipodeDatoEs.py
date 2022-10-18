#Tipado dinámico, es una variable que puede cambiar de tipo de dato durante un programa

Valor = "Luis"
tipo = type(Valor)
print(tipo)

Valor = 2
tipo = type(Valor)
print(tipo)

Valor = 3.1
tipo = type(Valor)
print(tipo)

Valor = True
tipo = type(Valor)
print(tipo)


#Realiza lo mismo pero ahorrandonos una variable, simplificando el código
print("Realiza lo mismo pero ahorrandonos una variable, simplificando el código")

Valor = "Luis"
print(type(Valor))

Valor = 2
print(type(Valor))

Valor = 3.1
print(type(Valor))

Valor = True
print(type(Valor))


'''
<class 'str'>
<class 'int'>
<class 'float'>
<class 'bool'>

'''