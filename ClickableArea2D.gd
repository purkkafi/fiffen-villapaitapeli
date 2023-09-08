class_name ClickableArea2D extends Area2D
# Area2D that changes cursor shape when hovered and defines
# a signal for when it is clicked
# NOTE: make sure Controls on top aren't eating mouse events by setting their
# mouse filter to Ignore


signal clicked


var hovering: bool = false


func _ready():
	connect('mouse_entered', _set_hover_cursor)
	connect('mouse_exited', _clear_cursor)
	# make sure to clear cursor when the current scene changes
	connect('tree_exited', _clear_cursor)


func _set_hover_cursor():
	hovering = true
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _clear_cursor():
	if hovering:
		hovering = false
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		emit_signal('clicked')
