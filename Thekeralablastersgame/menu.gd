extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/information.tscn")


func _enter_tree():
	MusicPlayer.playmenu()




func _on_quit_pressed():
	get_tree().quit()
