extends TextureRect


func _ready():
	Global.play_sound(preload('res://sounds/mmmmmmmm.ogg'))
	
	var tween: Tween = create_tween()
	tween.tween_interval(1.5)
	tween.tween_callback(_after_animation)


func _after_animation():
	Global.play_sound(preload('res://sounds/hävisitpelin.ogg'))
	%YouLost.visible = true


func _on_again_clicked():
	Global.switch_scene(load('res://scenes/MainMenu.tscn'))
