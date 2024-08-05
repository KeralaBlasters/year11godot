extends CharacterBody2D


@export var SPEED = 70.0
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0
@onready var sprite = $Sprite
@export var ROTATION_SPEED = 1.5

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	
	
	

	move_and_slide()
