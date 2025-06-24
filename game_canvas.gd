extends CanvasLayer

var viewport_size
var canvas_area = Area2D
var canvas_collision = CollisionShape2D
var cat_spawn

func _ready() -> void:
	viewport_size = get_viewport().get_size()
	canvas_area = $"Canvas Area"
	canvas_collision = $"Canvas Area/Canvas Collision"
	cat_spawn = preload("res://cat_spawn.tscn").instantiate()
	
	canvas_collision.shape.extents = Vector2(1920, 1080)
	canvas_area.position = viewport_size / 2

func _on_canvas_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		var cs = cat_spawn.duplicate()
		cs.position = get_viewport().get_mouse_position()
		self.add_child(cs)
		print(get_viewport().get_mouse_position())
