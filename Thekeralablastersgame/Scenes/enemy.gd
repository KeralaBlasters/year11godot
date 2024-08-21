extends CharacterBody2D

@export var enemy_speed = 50
var attacking = false
var player = null

func _physics_process(delta):
	if attacking:
		position += (player.position - position)/enemy_speed
		



func _on_detect_player_area_body_entered(body):
	player = body
	attacking = true



func _on_detect_player_area_body_exited(body):
	player = null
	attacking = false
