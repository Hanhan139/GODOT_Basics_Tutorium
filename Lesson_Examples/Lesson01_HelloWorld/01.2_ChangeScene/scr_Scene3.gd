extends Node2D

export var scene = "res://scn_Scene4.tscn"

func _on_Button_pressed():
	get_tree().change_scene(scene)
