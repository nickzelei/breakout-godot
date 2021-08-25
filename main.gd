extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const Brick = preload("res://Brick.tscn")
var COL_OFFSET = 40
var ROW_OFFSET = 12
var INIT_COL_OFFSET = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	var offset = INIT_COL_OFFSET
	var row_offset = 0
	for m in 4:
		for n in 25:
			var brick = Brick.instance()
			brick.position = Vector2(25 + offset, 5 + row_offset)
			add_child(brick)
			offset += COL_OFFSET
		row_offset += ROW_OFFSET
		offset = INIT_COL_OFFSET
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
