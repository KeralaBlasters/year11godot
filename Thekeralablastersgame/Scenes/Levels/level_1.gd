extends Node2D

@onready var audio_player = $AudioStreamPlayer2D

const level_2 = "res://Scenes/Levels/level_2.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _enter_tree():
	MusicPlayer.playcalmer()
