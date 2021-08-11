extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Level 2".disabled = true
	$"Level 3".disabled = true
	$LoadingIcon.hide()

func _process(delta):

	if PlayerData.player.Citylevel2 == "unlocked":
		$"Level 2".disabled = false
		PlayerData.save()
	elif PlayerData.player.Citylevel2 == "complete":
		$"Level 2".disabled = false
		PlayerData.save()

	if PlayerData.player.Citylevel3 == "unlocked":
		$"Level 3".disabled = false
		PlayerData.save()
	elif PlayerData.player.Citylevel3 == "complete":
		$"Level 3".disabled = false

		PlayerData.save()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level_1_pressed():
	PlayerData.player.currentLevel = "Citylevel1"
	background_load.load_scene("res://Scenes/Levels/City/City-Level 1.tscn")
	$LoadingIcon.show()
	$LoadingIcon.play()
func _on_Level_2_pressed():
	PlayerData.player.currentLevel = "Citylevel2"
	background_load.load_scene("res://Scenes/Levels/City/City-Level 2.tscn")
	$LoadingIcon.show()
	$LoadingIcon.play()


func _on_Level_3_pressed():
	PlayerData.player.currentLevel = "Citylevel3"
	background_load.load_scene("res://Scenes/Levels/City/City-Level 2.tscn")
	$LoadingIcon.show()
	$LoadingIcon.play()

func _on_Level_4_pressed():
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
