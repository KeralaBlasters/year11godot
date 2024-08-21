extends Area2D

var speed =750
func _ready():
	pass
func _physics_process(delta):
	position += transform.x * speed * delta
	
