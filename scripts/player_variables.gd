extends Node

var total_points
var total_cats

func _ready():
	total_points = 0
	total_cats = {}

func spawn_cat(p = Vector2.ZERO):
	var cat = load("res://scenes/cat.tscn").instantiate()
	get_tree().current_scene.add_child(cat)
	cat.position = p
	total_cats[cat.get_instance_id()] = cat

func remove_cat(cat: CharacterBody2D):
	cat.queue_free()
	total_cats.erase(cat.get_instance_id())
