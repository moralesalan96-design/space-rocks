extends Area2D
class_name Bullet

var speed: float = 60.0 #px / sec.
var lifespan: float = 2.0 # seconds till end. 

func _process(delta: float) -> void:
	
	
	
	position.x += cos(rotation) * delta * speed
	position.y += sin(rotation) * delta * speed
	
	lifespan -= delta
	if lifespan < 0.0:
		queue_free()
