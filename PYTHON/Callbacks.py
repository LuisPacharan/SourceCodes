#Ejemplo el promedio de una tupla al pasar N cantidad de elementos

promedio = lambda *args : sum(args) / len(args)
print(promedio(10,10,9,8,7))

#Saber si el alumno aprobó o no la materia

promedio = lambda *args : sum(args) / len(args)
aprobatorio = lambda calificacion : calificacion >= 7
print(aprobatorio(5))

#Saber si el alumno aprobó o no la materia dependidndo la calificación de un alumno
#Divide y vencerás

promedio = lambda *args : sum(args) / len(args)
aprobatorio = lambda calificacion : calificacion >= 7

def mostrar_mensaje(func_promedio, func_aprobatorio, *args):
     promedio = func_promedio(*args)

     if func_aprobatorio(promedio):
         print(f'Felicidades, aprobaste la materia con {promedio}.')
     else:
         print('No aprobaste la materia.')


mostrar_mensaje(promedio, aprobatorio, 10, 10, 8, 7, 7)

#Conocer si es o no es aprobatoria pero con una condición diferente 

promedio = lambda *args : sum(args) / len(args)

aprobatorio = lambda calificacion : calificacion >= 7

def es_aprobatorio(calificacion):
    return calificacion >= 90

def mostrar_mensaje(func_promedio, func_aprobatorio, *args):
     promedio = func_promedio(*args)

     if func_aprobatorio(promedio):
         print(f'Felicidades, aprobaste la materia con {promedio}.')
     else:
         print('No aprobaste la materia.')


mostrar_mensaje(promedio, es_aprobatorio, 10, 10, 8, 7, 7)

#Resultados

#8.8
#False
#Felicidades, aprobaste la materia con 8.4.
#No aprobaste la materia.