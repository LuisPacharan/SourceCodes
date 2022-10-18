"""

and, or, not  en minúsculas

 """

#------------ AND 
print ('"and"')


resultado_final = True and True and True
print (resultado_final)

resultado_final = True and True and False
print (resultado_final)

resultado_final = True and True and 100 > 20
print (resultado_final)

resultado_final = True and True and 100 < 20
print (resultado_final)


#------------ OR
print ('"or"')

resultado_final = True or True or True
print (resultado_final)

resultado_final = True and (False or 5>10)
print (resultado_final)



#------------ NOT
print ('"not"')
resultado_final = not True
print (resultado_final)

resultado_final = not False
print (resultado_final)