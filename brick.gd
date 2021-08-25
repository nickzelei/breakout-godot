extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var _ball_dir = 1

func _on_Brick_area_entered(area):
	if area.name == "Ball":
		area.direction = Vector2(randf() * 2 -1, _ball_dir).normalized()
		queue_free()
