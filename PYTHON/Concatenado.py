#-------***********  USO DE operador + para concatenar *********** ------------

nombre = 'Luis'
apellido = 'Enrique'

nombre_completo = 'Mr.' + nombre + ' ' + apellido
print(nombre_completo)

#-------***********  USO DE operador %s para concatenar *********** ------------

nombre_completo = 'Mr. %s %s %s;' %(nombre , apellido, 'Pacheco')
print(nombre_completo)

#-------***********  USO DE método Format *********** ------------

nombre_completo = 'Mr. {} {} {} ;'.format(nombre , apellido, 'Pacheco')
print(nombre_completo)

nombre_completo = 'Mr. {nombre} {primer_apellido} {segundo_apellido} _ _'.format(
nombre =nombre,
primer_apellido=apellido,
segundo_apellido='Pacheco'
)

print(nombre_completo)