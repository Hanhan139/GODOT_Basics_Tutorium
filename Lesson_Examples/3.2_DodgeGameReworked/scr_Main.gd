extends Node

export(PackedScene) var mob_scene
#drag in the scene via Inspector
var score

func _ready():
	randomize()

func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()

	$HUD.show_game_over()
	
	$Music.stop()
	$DeathSound.play()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()

	$HUD.update_score(score)
	$HUD.show_message("Get Ready")

	get_tree().call_group("mobs", "queue_free")

	$Music.play()

func _on_MobTimer_timeout():
	var mob = mob_scene.instance()
	# Create a new instance of the Mob scene.

	var mob_spawn_location = get_node("MobPath/MobSpawnLocation")
	mob_spawn_location.offset = randi()
	# Choose a random location on Path2D.

	var direction = mob_spawn_location.rotation + PI / 2
	# Set the mob's direction perpendicular to the path direction.

	mob.position = mob_spawn_location.position
	# Set the mob's position to a random location.

	direction += rand_range(-PI / 4, PI / 4)
	mob.rotation = direction
	# Add some randomness to the direction.

	var velocity = Vector2(rand_range(150.0, 250.0), 0.0)
	mob.linear_velocity = velocity.rotated(direction)
	# Choose the velocity for the mob.

	add_child(mob)
	# Spawn the mob by adding it to the Main scene.


func _on_ScoreTimer_timeout():
	if (score == 40): $MobTimer.wait_time = 0.4
	if (score == 80): $MobTimer.wait_time = 0.3
	if (score == 120): $MobTimer.wait_time = 0.2
	if (score == 150): $MobTimer.wait_time = 0.1
	if (score == 200): $MobTimer.wait_time = 0.05
	score += 1
	$HUD.update_score(score)
	$ScoreSound.play()

func _on_StartTimer_timeout():
	$MobTimer.wait_time = 0.5
	$MobTimer.start()
	$ScoreTimer.start()

