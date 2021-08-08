extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Level 2".disabled = true
	$"Level 3".disabled = true

func _process(delta):

	#if the variable is unlocked then the button is enabled
	if PlayerData.player.Minelevel2 == "unlocked":
		$"Level 2".disabled = false
		PlayerData.save()
	elif PlayerData.player.Minelevel2 == "complete":
		$"Level 2".disabled = false

	if PlayerData.player.Minelevel3 == "unlocked":
		$"Level 3".disabled = false
		PlayerData.save()
	if PlayerData.player.Minelevel3 == "complete":
		$"Level 3".disabled = false

		PlayerData.save()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level_1_pressed():
	PlayerData.player.currentLevel = "Minelevel1"
	background_load.load_scene("res://Scenes/Levels/Mine/Mine-Level 1.tscn")


func _on_Level_2_pressed():
	PlayerData.player.currentLevel = "Minelevel2"
	background_load.load_scene("res://Scenes/Levels/Mine/Mine-Level 2.tscn")

	


func _on_Level_3_pressed():
	PlayerData.player.currentLevel = "Minelevel3"
	background_load.load_scene("res://Scenes/Levels/Mine/Mine-Level 2.tscn")



func _on_Level_4_pressed():
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
