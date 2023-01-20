extends Area2D

# Funcion que se ejecuta cuando un objeto entra en la zona de esta area
func _on_point_optimizer_area_entered(area):
	# Verificar si el objeto entrante pertenece al grupo "points"
	if area.is_in_group("points"):
		if GLOBAL.LIVES > 0:
			# Reducir la cantidad de vidas en 1
			GLOBAL.LIVES -= 1
		else:
			get_tree().change_scene("res://scenes/GUI/failed_song.tscn")
		# Reproducir el sonido
		$error.play()
		# Eliminar el objeto entrante
		area.queue_free()
