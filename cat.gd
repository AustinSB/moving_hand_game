extends Area2D

var speed = 50
	
func _process(delta: float) -> void:
	position.x += speed * delta
