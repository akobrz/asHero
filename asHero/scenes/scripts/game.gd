extends Node

@export var menu: PackedScene = preload("res://scenes/menu.tscn")

func _ready():
	show_menu()

func _process(delta):
	pass

func show_menu():
	print("Show Menu")
	var _menu = menu.instantiate()
	_menu.visible = true
	self.add_child(_menu)
