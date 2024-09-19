extends CharacterBody2D

@onready var nav: NavigationAgent2D = $NavigationAgent2D
@export var enemy_speed = 20
var attacking = false
var player = null

@onready var animation_player = $AnimationPlayer
@export var player_look_at: NodePath
@export var Enemy_bullet = PackedScene
@export var enemy_health = 10

@export var calmer_music_path:NodePath
@export var intense_music_path: NodePath
@onready var calmer_music = $CalmerMusic
@onready var intense_music = $IntenseMusic

@export var enemy_bullet : PackedScene = preload("res://Scenes/enemy_bullet.tscn")
@onready var enemy_shoot_timer = $EnemyShootTimer

enum state {IDLE, ATTACK}
var enemy_anim_state = state.IDLE




func _physics_process(delta):
	if attacking:
		enemy_anim_state = state.ATTACK
		if enemy_shoot_timer.is_stopped():enemy_shoot_timer.start()
		#_on_enemy_shoot_timer_timeout()
	else:
		enemy_anim_state = state.IDLE
		enemy_shoot_timer.stop()
	
	if player:
		nav.target_position = player.global_position
		velocity = global_position.direction_to(nav.get_next_path_position()) * enemy_speed
		look_at(player.global_position)
		move_and_slide()
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
	change_music()
	
func _on_enemy_shoot_timer_timeout():
	enemy_shoot()

func _on_detect_player_area_body_exited(body):
	player = null
	attacking = false
	change_music()
	

func take_damage(dmg):
	enemy_health -= dmg
	enemy_health - 10
	if enemy_health <= 0:
		queue_free()



func change_music():
	if attacking:
		MusicPlayer.playintense()
	else:
		MusicPlayer.playcalmer()

func enemy_shoot():
	var b = enemy_bullet.instantiate()
	owner.add_child(b)
	b.transform = $EnemyMuzzle.global_transform
