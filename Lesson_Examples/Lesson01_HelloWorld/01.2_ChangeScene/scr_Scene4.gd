extends Node2D

export(PackedScene) var goto_scene

func _on_Button_pressed():
	get_tree().change_scene_to(goto_scene)
