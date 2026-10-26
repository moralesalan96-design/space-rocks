extends Area2D
class_name Ship

const Bullet: PackedScene = preload("res://Bullet/Bullet.tscn")


var turn_speed: float = 500 # degrees / sec.
var thrust_power: float = 10 #multiplier.px/ sec
var velocity: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()

	if Input.is_action_just_pressed("turn_cw"): 
		rotation_degrees += turn_speed * delta

	if Input.is_action_just_pressed("turn_ccw"):
		rotation_degrees += turn_speed * delta

func fire():
	print("Fire!")
	var bullet: Bullet = Bullet.instantiate()
	bullet.player = player 
	bullet.position = self.position
	bullet.rotation = rotation
	get_parent().add_child(bullet)
