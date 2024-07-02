extends CanvasLayer

signal start_game

func _ready():
	pass # Replace with function body.

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	#This function is called when we want to display a message temporarily

func show_game_over():
	show_message("Game Over")
	yield($MessageTimer, "timeout")
	# Wait until the MessageTimer has counted down.
	
	$Message.text = "Dodge the\nCreeps!"
	$Message.show()
	
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()
	# Make a one-shot timer and wait for it to finish.
	
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_MessageTimer_timeout():
	$Message.hide()

func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")
