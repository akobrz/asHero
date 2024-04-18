extends Node

var cards = {}
var choices = {}
var cards_file = "res://data/cards.json"
var choices_file = "res://data/choices.json"

func _ready():
	cards = load_json_file(cards_file)
	choices = load_json_file(choices_file)
	
	for key in cards:
		print(key, " ", cards[key]["description"], " ", cards[key]["choice"])	

func load_json_file (file_path: String):
	if FileAccess.file_exists(file_path):
		var data_file = FileAccess.open(file_path, FileAccess.READ)
		var data_content = JSON.parse_string(data_file.get_as_text())
		data_file.close()
		
		print("INFO, file: ", file_path, " loaded")
		
		if data_content is Dictionary:
			return data_content
		else:
			print("ERROR, file: ", file_path, " has unknown format, please check")
			
	else:
		print("ERROR, file: ", file_path, " does not exist, please check")
		
