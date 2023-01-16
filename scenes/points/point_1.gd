extends Area2D

# Variable para controlar si el objeto puede ser eliminado
var can_die = false

# Función que se ejecuta en cada frame
func _physics_process(delta):
	# Actualizar la posición del objeto
	position.y += GLOBAL.VELOCITY
	
	# Comprobar si el objeto puede ser eliminado y si se ha presionado el botón "button_a"
	if can_die and Input.is_action_just_pressed("button_1"):
		# Aumentar puntos al jugador
		GLOBAL.POINTS += 100
		# Eliminar el objeto
		queue_free()

# Función para hacer al objeto vulnerable
func vulnerable():
	can_die = true

# Función para hacer al objeto invulnerable
func invulnerable():
	can_die = false
