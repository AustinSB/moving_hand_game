extends CharacterBody2D

var speed = 3
var timer

func _ready() -> void:
	timer = $Timer
	velocity = Vector2.ZERO

func _physics_process(_delta: float) -> void:
	move_and_collide(velocity * speed)

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if _event.is_action_pressed("interact"):
		PlayerVariables.remove_cat(self)

func _change_direction():
	velocity = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()

func _on_timer_timeout() -> void:
	_change_direction()
