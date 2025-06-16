extends Area2D

var sprite: AnimatedSprite2D
var is_entered = false
var is_on = false
signal activated

func _ready():
	sprite = $AnimatedSprite

func _process(_delta: float) -> void:
	if is_entered and Input.is_action_just_released("interact"):
		toggle_button()

func _on_area_entered(_area: Area2D) -> void:
	is_entered = true

func _on_area_exited(_area: Area2D) -> void:
	is_entered = false

func toggle_button():
	is_on = !is_on
	if is_on:
		sprite.animation = "on"
	if !is_on:
		sprite.animation = "off"
	emit_signal("activated")
