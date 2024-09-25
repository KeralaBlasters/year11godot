extends Node2D

@onready var audio_player = $AudioStreamPlayer2D

const level_2 = "res://Scenes/Levels/Level2.tscn"
const level_3 = "res://Scenes/Levels/Level3.tscn"
const you_win = "res://Scenes/Levels/you_win.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _enter_tree():
	MusicPlayer.playcalmer()
	

func _on_go_to_level_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file(level_2)
		

func _on_go_to_level_3_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file(level_3)
		

func _on_go_to_win_screen_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file(you_win)
