extends Node


func stop_sound():
	$Audio.stop()


func play_sound(sound: AudioStream):
	$Audio.stop()
	$Audio.stream = sound
	$Audio.play()


func switch_scene(scene: PackedScene):
	var old_scene = get_tree().current_scene
	var new_scene = scene.instantiate()
	
	get_tree().root.add_child(new_scene)
	get_tree().set_current_scene(new_scene)
	old_scene.queue_free()
