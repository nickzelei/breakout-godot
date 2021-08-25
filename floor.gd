extends Area2D



func _on_Floor_area_entered(area):
	if area.name == "Ball":
		area.reset()
