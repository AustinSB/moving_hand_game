extends Node2D

var idle = load("res://Player Hand/hand_idle_icon.png")
var point = load("res://Player Hand/hand_point_icon.png")

func _on_box_mouse_entered() -> void:
	#print("test")
	Input.set_custom_mouse_cursor(point, Input.CURSOR_ARROW)
	#Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)

func _on_box_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(idle, Input.CURSOR_ARROW)


func _on_box_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass
	#Input.set_custom_mouse_cursor(arrow, Input.CURSOR_ARROW)
