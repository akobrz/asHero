extends Area2D

@export var card: PackedScene = preload("res://scenes/card.tscn")

func _ready():
	show_card()

func _process(delta):
	pass
	
func show_card():
	print("Show card")
	var new_card = card.instantiate()
	new_card.visible = true
	self.add_child(new_card)
