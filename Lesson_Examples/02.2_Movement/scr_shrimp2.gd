extends KinematicBody2D

const speed = 150

func _process(delta):
	var direction = get_local_mouse_position().normalized()
	position += direction * speed * delta
