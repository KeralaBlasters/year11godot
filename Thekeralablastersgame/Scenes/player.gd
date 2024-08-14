extends CharacterBody2D

@export var SPEED = 60.0
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0
@onready var sprite = $Sprite
@export var ROTATION_SPEED = 1.5

@export var Bullet : PackedScene

@onready var animation_player = $AnimationPlayer
@onready var animator = $AnimatedSprite2D

enum state {IDLE, SHOOT}
var anim_state = state.IDLE

func update_animation():
	match anim_state:
		state.IDLE:
			$AnimationPlayer.play("idle")
		state.SHOOT:
			$AnimationPlayer.play("shoot")
			await $AnimationPlayer.animation_finished
			anim_state = state.IDLE
			

func _physics_process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()
		anim_state = state.SHOOT
	
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	
	update_animation()
	move_and_slide()

func shoot():
		
		var b = Bullet.instantiate()
		owner.add_child(b)
		b.transform = $Muzzle.global_transform
		
	
