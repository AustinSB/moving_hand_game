extends Node

var total_points
#var total_points_all_time
var total_cats
#var total_cats_all_time
#var upgrades_purchased

func _ready():
	total_points = 0
	total_cats = 0

#var current_scene = null
#
#func _ready():
	#var root = get_tree().root
	## Using a negative index counts from the end, so this gets the last child node of `root`.
	#current_scene = root.get_child(-1)
