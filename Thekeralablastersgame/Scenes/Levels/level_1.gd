extends Node2D

@onready var audio_player = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _enter_tree():
	MusicPlayer.playcalmer()


#func _on_go_to_level_2_body_entered(Player):
#		get_tree().change_scene_to_file("res://Scenes/Levels/Level2.tscn")
