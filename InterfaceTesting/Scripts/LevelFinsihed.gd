extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Finsihed_body_entered(body):
	if body.name == "Player":
		# Returns to level select but will end up as a menu
#		get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
		if PlayerData.player.currentLevel == "Citylevel1": 
			print("l1")
			get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
			#Checks the current level to unlock the right one
			PlayerData.player.Citylevel2 = "unlocked"
			PlayerData.player.Citylevel1 = "complete"
			PlayerData.save()
			#Unlocks next level in the list
		elif PlayerData.player.currentLevel == "Citylevel2":
			print("l2")
			if garage.car_index != 6: #Car is not limp
				get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
			#Checks the current level to unlock the right one
				PlayerData.player.Citylevel2 = "complete"
				PlayerData.player.Citylevel3 = "unlocked"
				PlayerData.save()
			elif garage.car_index == 6: #Car is limo
				PlayerData.player.Citylevel2 = "complete"
				PlayerData.player.CityBonus = "unlocked"
		elif PlayerData.player.currentLevel == "CityBonus":
			PlayerData.player.CityBonus = "complete"
			PlayerData.player.Citylevel3 = "unlocked"
			get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
			print("you finished the bonus stage a new vehicle is now available")
			PlayerData.save()
		elif PlayerData.player.currentLevel == "Citylevel3":
					get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
					PlayerData.player.Citylevel3 = "complete"
		elif PlayerData.player.currentLevel == "Minelevel1":
			get_tree().change_scene("res://Scenes/Mine-LevelSelect.tscn")
			PlayerData.player.Minelevel2 = "unlocked"
			PlayerData.player.Minelevel1 = "complete"
		elif PlayerData.player.currentLevel == "Minelevel2":
			get_tree().change_scene("res://Scenes/Mine-LevelSelect.tscn")
			PlayerData.player.Minelevel3 = "unlocked"
			PlayerData.player.Minelevel2 = "complete"
		elif PlayerData.player.currentLevel == "Minelevel3":
			if garage.car_index != 3:
				get_tree().change_scene("res://Scenes/Mine-LevelSelect.tscn")
				PlayerData.player.Minelevel3 = "complete"
			elif garage.car_index == 3:
				PlayerData.player.Minelevel3 = "complete"
				PlayerData.player.MineBonus = "unlocked"
		elif PlayerData.player.currentLevel == "MineBonus":
			PlayerData.player.MineBonus = "complete"
