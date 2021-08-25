extends Area2D

export var _bound_direction = 1

func _on_wall_area_entered(area):
	if area.name == "Ball":
		$CollisionSound.play()
		area.direction = (area.direction + Vector2(0, _bound_direction)).normalized()
