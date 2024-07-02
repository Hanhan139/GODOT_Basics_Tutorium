extends KinematicBody2D

func _process(_delta):
	move_and_collide(Vector2(2, 0)) # Move up 1 pixel per physics frame
