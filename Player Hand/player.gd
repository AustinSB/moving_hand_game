extends CharacterBody2D

var speed = 450
var sprite: AnimatedSprite2D
var idle_collide: CollisionShape2D
var move_collide: CollisionShape2D

func _ready():
	sprite = $AnimatedSprite2D
	idle_collide = $IdleCollision
	move_collide = $MoveCollision

func _process(_delta: float) -> void:
	move()

func move():
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
		player_is_moving(true)
		velocity = velocity.normalized() * speed
		rotation = velocity.angle()
	else:
		player_is_moving(false)
	
	move_and_slide()

func player_is_moving(moving: bool):
	if moving:
		idle_collide.disabled = true
		move_collide.disabled = false
		sprite.animation = "move"
	if !moving:
		idle_collide.disabled = false
		move_collide.disabled = true
		sprite.animation = "idle"
