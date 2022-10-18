extends Node2D


func _process(delta):
	if Input.is_action_just_pressed("ui_space"):
		print("Hello World!")

# Make sure to use _process(delta): not _ready(). This means that this process
# runs at the rate of 1/60th of a second, as opposed to once in the start of the scene.

# Input.is_action_just_pressed can use custom keyboard mapping. Find it under
# Project / Project Settings / Input Map 

# When writing an If statement make sure to include a : at the end and an 
# indentation on the next line (automatically added.) 
