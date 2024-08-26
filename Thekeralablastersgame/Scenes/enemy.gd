extends CharacterBody2D

@export var enemy_speed = 50
var attacking = false
var player = null

@onready var animation_player = $AnimationPlayer

@export var player_look_at: NodePath

@export var Enemy_bullet = PackedScene

enum state {IDLE, ATTACK}
var enemy_anim_state = state.IDLE

func _physics_process(delta):
	if attacking:
		position += (player.position - position)/enemy_speed
		enemy_anim_state = state.ATTACK
	else:
		enemy_anim_state = state.IDLE
	
	#if _on_detect_player_area_body_entered(player):
		#var c = Enemy_bullet.instantiate()
		#owner.add_child(c)
		#c.transform = $EnemyMuzzle.global_transform
	
	if player:
		look_at(player.global_position)
	
	update_enemy_animation()

func update_enemy_animation():
	match enemy_anim_state:
		state.IDLE:
			$AnimationPlayer.play("idle")
		state.ATTACK:
			$AnimationPlayer.play("attack")
			

func _on_detect_player_area_body_entered(body):
	player = body
	attacking = true
	



func _on_detect_player_area_body_exited(body):
	player = null
	attacking = false
