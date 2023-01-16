extends Control

onready var points = $VBoxContainer/HBoxContainer2/points

func _ready():
	points.text = str(GLOBAL.POINTS)

func _on_retry_pressed():
	get_tree().change_scene("res://scenes/play.tscn")
