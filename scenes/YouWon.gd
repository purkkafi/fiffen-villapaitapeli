extends TextureRect


func _ready():
	Global.play_sound(preload('res://sounds/voititpelin.ogg'))


func _on_again_clicked():
	Global.switch_scene(load('res://scenes/MainMenu.tscn'))
