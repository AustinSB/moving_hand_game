extends CharacterBody2D

var speed = 450

var default_sprite: Texture
var wall_sprite: Texture
var sprite: Sprite2D

func _ready():
	sprite = $Sprite2D
	default_sprite = sprite.texture
	wall_sprite = preload("res://Player Hand/hand_side_icon.png")

func _process(_delta: float) -> void:
	if is_on_wall():
		sprite.texture = wall_sprite
	else:
		sprite.texture = default_sprite
	
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
		velocity = velocity.normalized() * speed
		rotation = velocity.angle()
	
	move_and_slide()
