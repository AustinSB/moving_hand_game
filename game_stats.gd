extends Control

var points_label: Label

func _ready():
	points_label = $Points

func _process(_delta: float):
	points_label.text = "Points: " + str(PlayerVariables.total_points)
