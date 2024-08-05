extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):
	
	
	
	move_and_slide()



func _on_detect_player_area_body_entered(body):
	pass # Replace with function body.
