extends Control

@onready var new_game_button: Button = $new_game
@onready var continue_game_button: Button = $continue_game
@onready var exit_game_button: Button = $exit_game
@export var board: PackedScene = preload("res://scenes/board.tscn")

func _ready():
	pass

func _process(_delta):
	pass
	
func hide_menu():
	new_game_button.queue_free()
	continue_game_button.queue_free()
	exit_game_button.queue_free()
	
func show_board():
	print("Show board")
	var new_board = board.instantiate()
	new_board.visible = true
	self.add_child(new_board)

func _on_new_game_button_up():
	print("new game selected")
	hide_menu()
	show_board()

func _on_continue_game_button_up():
	print("continue game selected")
	hide_menu()
	show_board()

func _on_exit_game_button_up():
	print("exit game selected")
	hide_menu()
	show_board()
