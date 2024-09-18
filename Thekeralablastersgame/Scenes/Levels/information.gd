extends Control




func _on_do_it_for_the_blasters_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Level1.tscn")



func _on_quit_pressed():
	get_tree().quit()
