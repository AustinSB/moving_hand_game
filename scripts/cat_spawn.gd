extends Area2D

var cat_count = 0
var spawn_limit = 5
var timer
var cat

func _ready() -> void:
	timer = $Timer

func _on_timer_timeout() -> void:
	pass

func create_cat():
	var c = cat.duplicate()
	c.name = "Cat " + str(cat_count)
	cat_count += 1
	self.add_child(c)

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if _event.is_action_pressed("interact"):
		PlayerVariables.spawn_cat(position)
