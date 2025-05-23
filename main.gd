extends Node

var arrow = load("res://Player Hand/hand_idle_icon.png")

func _ready():
	Input.set_custom_mouse_cursor(arrow, Input.CURSOR_ARROW)
