extends Area2D

export var _bound_direction = -1

func _ready():
	var n = name.to_lower()
	if n == "leftwall":
		_bound_direction = 1
	elif n == "rightwall":
		_bound_direction = -1

func _on_wall_area_entered(area):
	if area.name == "Ball":
		area.direction = (area.direction + Vector2(_bound_direction, 0)).normalized()
