extends Node

const FILE_NAME = "user://CTDriverData.json" #A new game will change all levels to be locked excpet the level 1 for both stages
var player = {
"score": 0, 
"currentLevel": "Citylevel1",
"Citylevel1": "unlocked",
"Citylevel2": "locked",
"Citylevel3": "locked",
"CityBonus": "locked",
"Citylevel4": "locked",
"Minelevel1": "unlocked",
"Minelevel2": "locked",
"Minelevel3": "locked",
"Minelevel4": "locked",
"MineBonus": "locked"
}
func _ready():
	load_data()
	print(player)
func save(): #Whenever the game is saved the new data is stored in the data file
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(player))
	file.close()


func load_data(): #The game finds the existing data file and reads the data 
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME,File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			player = data
		else:
			printerr("Corrupted Data!")
	else:
		printerr("No saved Data")
