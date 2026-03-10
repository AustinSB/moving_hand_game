extends StaticBody2D

var material_count = 10
#signal material_gained

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		_is_material_gone()

func _is_material_gone():
	if(material_count > 0):
		material_count -= 1
		PlayerVariables.total_points += 1
		#emit_signal('material_gained')
	else:
		print('gone!')
