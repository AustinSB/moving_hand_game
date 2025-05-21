extends Node

var arrow = load("res://Player Hand/hand_idle_icon.png")
#var point = load("res://Player Hand/hand_point_icon.png")

func _ready():
	print("start")
	Input.set_custom_mouse_cursor(arrow, Input.CURSOR_ARROW)
	#Input.set_custom_mouse_cursor(arrow, Input.CURSOR_POINTING_HAND)
