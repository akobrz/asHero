extends Control

@onready var new_game_button: Button = $new_game
@onready var continue_game_button: Button = $continue_game
@onready var exit_game_button: Button = $exit_game

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func hide_menu():
	new_game_button.queue_free()
	continue_game_button.queue_free()
	exit_game_button.queue_free()

func _on_new_game_button_up():
	print("new game selected")
	hide_menu()

func _on_continue_game_button_up():
	print("continue game selected")
	hide_menu()

func _on_exit_game_button_up():
	print("exit game selected")
	hide_menu()
