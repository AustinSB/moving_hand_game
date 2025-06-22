extends Area2D

var speed = 50
	
func _process(delta: float) -> void:
	position.x += speed * delta

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	print()
	if Input.is_action_just_released("interact"):
		self.queue_free()
