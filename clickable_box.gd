extends Node2D

var idle = load("res://Player Hand/hand_idle_icon.png")
var point = load("res://Player Hand/hand_point_icon.png")

func _on_box_mouse_entered() -> void:
	pass
	#Input.set_custom_mouse_cursor(point, Input.CURSOR_ARROW)

func _on_box_mouse_exited() -> void:
	pass
	#Input.set_custom_mouse_cursor(idle, Input.CURSOR_ARROW)
