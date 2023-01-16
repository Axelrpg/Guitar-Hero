extends Node2D

# Escenas de los puntos
var Point_1 = load("res://scenes/points/point_1.tscn")
var Point_2 = load("res://scenes/points/point_2.tscn")
var Point_3 = load("res://scenes/points/point_3.tscn")
var Point_4 = load("res://scenes/points/point_4.tscn")

# Tiempo de espera entre spawn de puntos
var spawn_wait_time = 1.5

# Funcion que se ejecuta cuando el tiempo de espera de spawn de puntos se acaba
func _on_spawn_timeout():
	# Generar un numero aleatorio
	var num = GLOBAL.random(1, 5)
	# Seleccionar una escena de punto segun el numero aleatorio generado
	match num:
		1:
			var point_1 = Point_1.instance()
			point_1.position = $pos_point_1.position
			add_child(point_1)
		2:
			var point_2 = Point_2.instance()
			point_2.position = $pos_point_2.position
			add_child(point_2)
		3:
			var point_3 = Point_3.instance()
			point_3.position = $pos_point_3.position
			add_child(point_3)
		4:
			var point_4 = Point_4.instance()
			point_4.position = $pos_point_4.position
			add_child(point_4)

# Funcion que se ejecuta cuando el tiempo de espera de spawn de puntos se acaba
func _on_spawn_speed_timeout():
	# Reducir el tiempo de espera de spawn de puntos
	if spawn_wait_time > 0.1:
		spawn_wait_time -= 0.1
		$spawn.wait_time = spawn_wait_time
	print(spawn_wait_time)

# Funcion que se ejecuta cuando el tiempo de espera del aumento de velocidad se acaba
func _on_velocity_timeout():
	# Aumentar la velocidad de los puntos
	GLOBAL.VELOCITY += 0.1
	print(GLOBAL.VELOCITY)
