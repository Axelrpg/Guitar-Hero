extends Node2D

# Cargar la canción desde la variable global
var song = load(GLOBAL.SONG)

func _ready():
	# Establece la cantidad de vidas y puntos en cero
	GLOBAL.LIVES = 9
	GLOBAL.POINTS = 0
	# Asigna la canción cargada al stream del reproductor
	$music.stream =song
	# Comienza a reproducir la canción
	$music.play()

# Se ejecuta al terminar la canción
func _on_music_finished():
	# Cambia la escena actual a la escena de "canción completada"
	get_tree().change_scene("res://scenes/GUI/completed_song.tscn")
