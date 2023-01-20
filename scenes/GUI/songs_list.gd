extends Control

# Referencia a los botones de selección de canción
onready var checkbuttons = [
	$VBoxContainer/song1/CheckButton,
	$VBoxContainer/song2/CheckButton
]

# Lista de canciones disponibles
var songlist = [
	"res://music/Theme From Spiderman.mp3",
	"res://music/Through The Fire And Flames.mp3"
]

# Se ejecuta al presionar el botón "start"
func _on_start_pressed():
	# Itera a través de cada botón de selección de canción
	for i in range(checkbuttons.size()):
		# Verifica si el botón está presionado
		if checkbuttons[i].pressed:
			# Asigna la canción seleccionada a la variable global
			GLOBAL.SONG = songlist[i]
			# Cambia a la escena de juego
			get_tree().change_scene("res://scenes/play.tscn")
