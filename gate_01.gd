extends Node2D

var button

var arm_01
var arm_01_y
var arm_01_offset = -122

var arm_02
var arm_02_y
var arm_02_offset = 122

var gate_speed = 0.5
var gate_open = false

func _ready():
	button = $CircleButton
	arm_01 = $Arm01
	arm_01_y = $Arm01.position.y
	arm_02 = $Arm02
	arm_02_y = $Arm02.position.y
	
	button.connect("activated", Callable(self, "on_button_activated"))

func on_button_activated():
	var tween01 = get_node("Arm01").create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	var tween02 = get_node("Arm02").create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	if button.is_on:
		tween01.tween_property(arm_01, "position", Vector2(arm_01.position.x, arm_01_offset), gate_speed)
		tween02.tween_property(arm_02, "position", Vector2(arm_02.position.x, arm_02_offset), gate_speed)
	if !button.is_on:
		tween01.tween_property(arm_01, "position", Vector2(arm_01.position.x, arm_01_y), gate_speed)
		tween02.tween_property(arm_02, "position", Vector2(arm_02.position.x, arm_02_y), gate_speed)
