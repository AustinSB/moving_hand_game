extends Node2D

var button
var arm_01
var arm_02
var gate_open = false

func _ready():
	button = $CircleButton
	arm_01 = $Arm01
	arm_02 = $Arm02
	
	button.connect("activated", Callable(self, "on_button_activated"))

func _process(_delta: float) -> void:
	pass

func on_button_activated():
	if button.is_on:
		print("BUTTON ON")
	if !button.is_on:
		print("BUTTON OFF")
