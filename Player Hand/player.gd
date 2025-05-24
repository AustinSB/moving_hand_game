extends CharacterBody2D

var offset = Vector2(25, 40)
var follow_speed = 15.0

func _process(delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	var target_position = mouse_position + offset
	
	position = position.lerp(target_position, follow_speed * delta)
