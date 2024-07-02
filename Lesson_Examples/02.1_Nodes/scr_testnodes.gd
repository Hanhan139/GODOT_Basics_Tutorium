extends Node2D

func _ready():
	$Sprite.visible = false
	$Timer2.start()
	$Sprite.position = Vector2(100,100)

#func _process(delta):
#	pass


func _on_Timer_timeout():
	print ("Time out! Timer 01")


func _on_Timer2_timeout():
	$Timer2.stop()
	print ("Time out! Timer 02")
	$Sprite.visible = true
