extends Area2D

const MOVE_SPEED = 400

var _ball_dir = -1

onready var _screen_size_x = get_viewport_rect().size.x

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	position.x = clamp(position.x + input * MOVE_SPEED * delta, 16, _screen_size_x - 16)


func _on_Paddle_area_entered(area):
	$PaddleSound.play()
	if area.name == "Ball":
		area.direction = Vector2(randf() * 2 -1, _ball_dir).normalized()
