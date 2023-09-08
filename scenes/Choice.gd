extends TextureRect


func _ready():
	Global.play_sound(preload('res://sounds/puefiffellevillapaita.ogg'))


func _on_no_clicked():
	Global.switch_scene(preload('res://scenes/NoSelected.tscn'))


func _on_yes_clicked():
	Global.stop_sound()
	Global.switch_scene(preload('res://scenes/YesSelected.tscn'))
