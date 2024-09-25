extends Control

func _enter_tree():
	MusicPlayer.playmenu()

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/menu.tscn")

func _on_quit_pressed():
	get_tree().quit()
