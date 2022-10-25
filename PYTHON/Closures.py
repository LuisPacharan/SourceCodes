e = 'e' #variable global

def function_principal(): #En esta funcion se crean dos variables locales
    a= 'a'
    b= 'b'

    def funcion_anidada(): #en ésta funcion se crea una variable 'c' local
        c= 'c'
        b ='si declaro "b" aquí , tendrá un id diferente, un valor diferente'

        print(e)
        print(a)
        print(b)


        print(id(b))
       

    funcion_anidada()
    #print(c) #Aqui falla porque no está declarada de manera global
    print('Ahora "b" vale', id(b))

function_principal()
