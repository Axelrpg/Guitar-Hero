extends Control

# Referencia al nodo que muestra el número de vidas
onready var lives = $VBoxContainer/HBoxContainer2/lives
# Referencia al nodo que muestra el número de puntos
onready var points = $VBoxContainer/HBoxContainer/points

# Función que se ejecuta en cada frame
func _physics_process(delta):
	# Actualizar el texto del nodo que muestra el número de vidas
	lives.text = str(GLOBAL.LIVES)
	# Actualizar el texto del nodo que muestra el número de puntos
	points.text = str(GLOBAL.POINTS)
