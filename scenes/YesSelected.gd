extends Control


const SHAKE_DELTA: float = 0.1


var shaking_the_goat: bool = false
var delta_until_shake: float = SHAKE_DELTA


# SHAKE THE GOAT
func _shake_the_goat():
	shaking_the_goat = true


func _after_animation():
	Global.switch_scene(preload('res://scenes/YouWon.tscn'))


func _process(delta):
	if shaking_the_goat:
		delta_until_shake -= delta
		
		if delta_until_shake <= 0:
			delta_until_shake = SHAKE_DELTA
			%Itchy.position = Vector2(-10 + 20*randf(), -10 + 20*randf())
