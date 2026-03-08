extends CharacterBody2D

var speed = 3
var timer

func _ready() -> void:
	timer = $Timer
	#timer.start()
	velocity = Vector2.ZERO

func _physics_process(_delta: float) -> void:
	move_and_collide(velocity * speed)
	#if velocity != Vector2.ZERO:
	#	move_and_slide()
	#position += velocity.normalized() * speed * delta
	#position.x += speed * delta

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_released("interact"):
		self.queue_free()

func _change_direction():
	velocity = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()

func _on_timer_timeout() -> void:
	_change_direction()
	#print('timeout')
