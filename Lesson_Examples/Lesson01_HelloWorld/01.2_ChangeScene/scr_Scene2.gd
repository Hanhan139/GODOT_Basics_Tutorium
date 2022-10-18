extends Node2D

var scene = "res://scn_Scene3.tscn"

func _on_Button_pressed():
	get_tree().change_scene(scene)
