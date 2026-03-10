extends StaticBody2D

var material_count = 10
var collision = CollisionShape2D
var sprite: AnimatedSprite2D

func _ready():
	collision = $CollisionShape2D
	sprite = $AnimatedSprite2D
	sprite.animation = "full"

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		_is_material_gone()

func _is_material_gone():
	if(material_count > 0):
		material_count -= 1
		PlayerVariables.total_points += 1
	if(material_count <= 0):
		sprite.animation = "empty"
		collision.disabled = true
