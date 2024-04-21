extends Node2D

@onready var menu: Control = $menu
@onready var board: Node2D = $board
@onready var scene: Node2D = $scene

# Called when the node enters the scene tree for the first time.
func _ready():
	board.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
