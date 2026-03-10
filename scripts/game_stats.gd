extends Control

var points_label: Label
var cats_label: Label

func _ready():
	points_label = $Points
	cats_label = $Cats

func _process(_delta: float):
	points_label.text = "Points: " + str(PlayerVariables.total_points)
	cats_label.text = "Cats: " + str(PlayerVariables.total_cats.size())
