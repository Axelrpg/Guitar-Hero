extends Control

# Referencia al nodo que mostrará la puntuación
onready var points = $VBoxContainer/HBoxContainer2/points

# Se ejecuta al terminar de cargar la escena
func _ready():
	# Establece el texto de la puntuación con el valor de la variable global
	points.text = str(GLOBAL.POINTS)

# Se ejecuta al presionar el botón "Retry"
func _on_retry_pressed():
	# Cambia la escena actual a la escena de juego
	get_tree().change_scene("res://scenes/play.tscn")

# Se ejecuta al presionar el botón "Songs List"
func _on_songs_list_pressed():
	# Cambia la escena actual a la escena de la lista de canciones
	get_tree().change_scene("res://scenes/GUI/songs_list.tscn")
