extends Node2D

func _on_Button_pressed():
	print("Hello World!")

# Godot has a powerful built-in signal system. While you can code signals
# manually, you can also use the pre-provided signals on the right hand side
# window, under Node. Choosing an option gives you the chance to pick which
# scene you want the signal to connect with. The code will appear in the code
# of the scene you connected with. 

# To position an object into the center of the scene, first make it the child
# of a CanvasLayer (this covers the whole scene) and a CenterContainer (which
# centers its children within its parent's boundaries.)
