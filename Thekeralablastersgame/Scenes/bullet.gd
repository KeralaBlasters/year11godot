extends Area2D

var speed =750
func _ready():
	pass
func _physics_process(delta):
	position += transform.x * speed * delta
	

	

func _on_body_entered(body):
	queue_free()
	if body.is_in_group("Enemy") and body.has_method("take_damage"):
		body.take_damage(BulletStats.bullet_damage)
