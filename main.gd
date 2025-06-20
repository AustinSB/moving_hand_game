extends Node

var arrow = load("res://resources/cursor_green.png")

func _ready():
	Input.set_custom_mouse_cursor(arrow, Input.CURSOR_ARROW)
