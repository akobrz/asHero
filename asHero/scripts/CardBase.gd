extends MarginContainer

@onready var card_database = preload("res://resource/Cards/CardsDatabase.gd")
@onready var card_info = card_database.DATA[card_database.Footman]

func _ready():
	print(card_info)
