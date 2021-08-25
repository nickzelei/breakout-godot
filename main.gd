extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const Brick = preload("res://Brick.tscn")
var OFFSET = 40

# Called when the node enters the scene tree for the first time.
func _ready():
	var offset = 0
	for n in 25:
		var brick = Brick.instance()
		brick.position = Vector2(25 + offset, 5)
		add_child(brick)
		offset += OFFSET
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
