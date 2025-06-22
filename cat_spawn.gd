extends Area2D

var cat_count = 0
var spawn_limit = 5
var timer
var cat

func _ready() -> void:
	timer = $Timer
	cat = preload("res://cat.tscn").instantiate()

func _on_timer_timeout() -> void:
	if cat_count < spawn_limit:
		create_cat()

func create_cat():
	var c = cat.duplicate()
	c.name = "Cat " + str(cat_count)
	cat_count += 1
	self.add_child(c)

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		self.queue_free()
