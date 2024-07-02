extends KinematicBody2D

func _ready():
	pass # Replace with function body.

func _process(_delta):
	var mouse_position = get_viewport().get_mouse_position()
	global_position = mouse_position
