extends Area2D

var sprite: AnimatedSprite2D
var is_entered = false

func _ready():
	sprite = $AnimatedSprite

func _process(_delta: float) -> void:
	if is_entered and Input.is_key_pressed(KEY_SPACE):
		print("activate")

func _on_area_entered(_area: Area2D) -> void:
	is_entered = true

func _on_area_exited(_area: Area2D) -> void:
	is_entered = false
