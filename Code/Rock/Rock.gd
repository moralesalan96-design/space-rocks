extends Area2D
class_name Rock



func _ready() -> void:
	area_entered.connect(on_area_entered)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
