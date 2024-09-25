extends Node2D


#This function plays the intense music and stops any other music if it is playing
func playintense():
	$intensemusic.play()
	$calmmusic.stop()
	$MenuMusic.stop()
	

#This function plays the calmer music and stops any other music if it is playing
func playcalmer():
	$calmmusic.play()
	$intensemusic.stop()
	$MenuMusic.stop()
	

#This function plays the menu music and stops any other music if it is playing
func playmenu():
	$MenuMusic.play()
	$intensemusic.stop()
	$calmmusic.stop()
	
