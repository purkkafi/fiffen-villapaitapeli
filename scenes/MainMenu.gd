extends TextureRect


func _ready():
	Global.play_sound(preload('res://sounds/fiffenvillapaitapeli.ogg'))


func _on_start_button_clicked():
	Global.switch_scene(preload("res://scenes/Choice.tscn"))
