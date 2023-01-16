extends Area2D

# Función que se ejecuta al entrar en contacto con otro objeto de tipo Area2D
func _on_button_3_area_entered(area):
	# Comprobar si el objeto con el que se ha entrado en contacto pertenece al grupo "points"
	if area.is_in_group("points"):
		# Hacer al objeto vulnerable
		area.vulnerable()

# Función que se ejecuta al salir de contacto con otro objeto de tipo Area2D
func _on_button_3_area_exited(area):
	# Comprobar si el objeto con el que se ha salido de contacto pertenece al grupo "points"
	if area.is_in_group("points"):
		# Hacer al objeto invulnerable
		area.invulnerable()
