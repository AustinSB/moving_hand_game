extends Area2D

var speed = 50
var velocity = Vector2.ZERO
var timer

func _ready() -> void:
	timer = $Timer

func _process(delta: float) -> void:
	position += velocity.normalized() * speed * delta
	#position.x += speed * delta

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		self.queue_free()

func _change_direction():
	velocity = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()

func _on_timer_timeout() -> void:
	_change_direction()
