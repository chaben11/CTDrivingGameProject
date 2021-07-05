extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Level1ImageComplete = load("res://DigitalTechMenu/Buttons/1x/City-Level1-Complete.png") #images that will replace the default button texture when the level is completed
onready var Level1ImageCompleteHover = load("res://DigitalTechMenu/Buttons/1x/City-Level1-Complete-Hover.png")
onready var Level2ImageComplete = load("res://DigitalTechMenu/Buttons/1x/City-Level2-Complete.png")
onready var Level2ImageCompleteHover = load("res://DigitalTechMenu/Buttons/1x/City-Level2-Complete-Hover.png")
onready var Level3ImageComplete = load("res://DigitalTechMenu/Buttons/1x/City-Level3-Complete.png")
onready var Level3ImageCompleteHover = load("res://DigitalTechMenu/Buttons/1x/City-Level3-Complete-Hover.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	$"Level 2".disabled = true
	$"Level 3".disabled = true

func _process(delta):
	if PlayerData.player.Citylevel1 == "complete":
		$"Level 1".texture_normal = Level1ImageComplete #when level 1 is completed the texture will change to show this (blue to green coloured button)
		$"Level 1".texture_hover = Level1ImageCompleteHover
	#if the variable is unlocked then the button is enabled
	if PlayerData.player.Citylevel2 == "unlocked":
		$"Level 2".disabled = false
		PlayerData.save()
	elif PlayerData.player.Citylevel2 == "complete":
		$"Level 2".disabled = false
		PlayerData.save()
		$"Level 2".texture_normal = Level2ImageComplete
		$"Level 2".texture_hover = Level2ImageCompleteHover
	if PlayerData.player.Citylevel3 == "unlocked":
		$"Level 3".disabled = false
		PlayerData.save()
	elif PlayerData.player.Citylevel3 == "complete":
		$"Level 3".disabled = false
		$"Level 3".texture_normal = Level3ImageComplete
		$"Level 3".texture_hover = Level3ImageCompleteHover		
		PlayerData.save()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level_1_pressed():
	background_load.load_scene("res://Scenes/Levels/City/City-Level 1.tscn")
	PlayerData.player.currentLevel = "Citylevel1"
func _on_Level_2_pressed():
	get_tree().change_scene("res://Scenes/Levels/City/City-Level 2.tscn")
	PlayerData.player.currentLevel = "Citylevel2"


func _on_Level_3_pressed():
	get_tree().change_scene("res://Scenes/Levels/City/City-Level 2.tscn")
	PlayerData.player.currentLevel = "Citylevel3"


func _on_Level_4_pressed():
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
