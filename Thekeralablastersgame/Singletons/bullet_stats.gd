extends Node

var bullet_level = 1
var bullet_damage = 5
var bullet_speed = 500
var bullet_projectiles = 1
var bullet_knockback = 10

func level_up_knife():
	bullet_level += 1
	match bullet_level:
		1:
			pass
		2:
			bullet_damage = 10
			bullet_speed = 550
			bullet_projectiles = 2
			bullet_knockback = 15
		3:
			bullet_damage = 20
			bullet_speed = 600
			bullet_projectiles = 3
			bullet_knockback = 20
