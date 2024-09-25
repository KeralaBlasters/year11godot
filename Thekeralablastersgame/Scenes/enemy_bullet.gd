extends Area2D

var speed = 750





func _physics_process(delta):
	position += transform.x * speed * delta


func _on_body_entered(body):
	queue_free()
	if body.is_in_group("Player") and body.has_method("player_take_damage"):
		body.player_take_damage(EnemyBulletStats.enemy_bullet_damage)
