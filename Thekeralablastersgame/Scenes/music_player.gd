extends Node2D

func playintense():
	$intensemusic.play()
	$calmmusic.stop()
	
func playcalmer():
	$calmmusic.play()
	$intensemusic.stop()
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
