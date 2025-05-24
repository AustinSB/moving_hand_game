extends Node2D

var offset = Vector2(25, 40)
var follow_speed = 15.0
var mouse_position
var target_position

func _process(delta: float) -> void:
	mouse_position = get_global_mouse_position()
	target_position = mouse_position + offset
	
	position = position.lerp(target_position, follow_speed * delta)
