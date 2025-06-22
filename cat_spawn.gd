extends Area2D

var count = 1
var spawn_limit = 5
var timer
var cat

func _ready() -> void:
	timer = $Timer
	cat = preload("res://cat.tscn").instantiate()
	
func _on_timer_timeout() -> void:
	var c = cat.duplicate()
	
	c.name = "Cat " + str(count)
	count += 1
	if (count > 5):
		timer.stop()
	
	self.add_child(c)
	for child in get_children():
		print(child.name)
