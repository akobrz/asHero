extends Node

class_name Cards

var cards = []

func _init():
	print("Construct cards list")
	var single_card = Card.new()
	cards.append(single_card)
	

