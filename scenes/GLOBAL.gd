extends Node

# Variable para almacenar la velocidad en la que se moverá el objeto
var VELOCITY = 3

# Variables para almacenar el número de vidas y puntos del jugador
var LIVES = 9
var POINTS = 0

# Variable para almacenar el generador de números aleatorios
onready var rng : RandomNumberGenerator = RandomNumberGenerator.new()

# Función para generar un número aleatorio entre dos valores
func random(min_number, max_number):
	# Inicializar el generador de números aleatorios
	rng.randomize()
	# Generar un número aleatorio entre min_number y max_number
	var random : int = rng.randf_range(min_number, max_number)
	# Devolver el número aleatorio
	return random
