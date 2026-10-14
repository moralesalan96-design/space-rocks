extends Area2D
class_name Ship

var turn_speed: float = 500 # degrees / sec.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()

	if Input.is_action_just_pressed("turn_cw"): 
		rotation_degrees += turn_speed * delta

	if Input.is_action_just_pressed("turn_ccw"):
		rotation_degrees += turn_speed * delta

func fire():
	print("Fire!")
	
