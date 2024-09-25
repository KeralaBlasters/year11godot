extends Area2D

var speed =750


#This function makes the bullet move
func _physics_process(delta):
	position += transform.x * speed * delta
	

#This function makes the bullet delete itself when it hits something
#This function also makes the bullet damage the enemy
func _on_body_entered(body):
	queue_free()
	if body.is_in_group("Enemy") and body.has_method("take_damage"):
		body.take_damage(BulletStats.bullet_damage)
