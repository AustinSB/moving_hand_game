extends CharacterBody2D

var speed = 400

func _process(_delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_key_pressed(KEY_D):
		velocity.x += 1
	if Input.is_key_pressed(KEY_A):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_S):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		rotation = velocity.angle()
	
	move_and_slide()
